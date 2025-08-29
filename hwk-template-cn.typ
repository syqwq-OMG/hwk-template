#let hwk(course: "", hwk_id: 0, author: "小明", stu_id: 12345678901, body) = {
  let default_font= ("New Computer Modern","Source Han Serif SC")
  
  set text(font: default_font)
  let title = course + " -- HW " + str(hwk_id) + " 解答"
  set document(title: title)

  set page(
    paper: "a4",
    numbering: "1",
    header: context {
      if here().page() == 1 {
        return
      }
      box[#text(font: default_font)[#title by #author] #h(1fr) #counter(page).display()]
    },
    footer: context {
      // 仅在第一页显示页脚页码
      if here().page() == 1 {
        align(center, {
          counter(page).display()
        })
      }
    },
  )

  align(center)[
    #set text(font: default_font)
    #block(text(weight: 500, 20pt, title))
    #v(1.5em, weak: true)
    #text(14pt)[#author, #stu_id]
    #v(1.5em, weak: true)
    #text(14pt)[#datetime.today().display("[year].[month].[day]")]
    #v(2.0em, weak: true)
  ]

  body
}

#let problem-counter = counter("problem")

#let thmtitle(t) = {
  text(font: "Source Han Serif SC", weight: "semibold")[#t]
}



#let problem(body) = context {
  problem-counter.step()

  thmtitle[问题 #context problem-counter.display(). ]
  body
}

#let proof(body) = {
  thmtitle[证明：]
  body
  h(1fr)
  $square.filled$
}

#let solution(body) = {
  thmtitle[解答：]
  body
}

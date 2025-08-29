#let hwk(course: "", hwk_id: 0, author: "syqwq", stu_id: 12345678901, body) = {
  set text(font: "New Computer Modern")

  let title = course + " -- Homework " + str(hwk_id) + " Solutions"
  set document(title: title)

  set page(
    paper: "a4",
    numbering: "1",
    header: context {
      if here().page() == 1 {
        return
      }
      box[#text(font: "New Computer Modern")[#title by #author] #h(1fr) #counter(page).display()]
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
    #set text(font: "New Computer Modern")
    #block(text(weight: 400, 20pt, title))
    #v(1.5em, weak: true)
    #text(14pt)[#author, #stu_id]
    #v(1.5em, weak: true)
    #text(14pt)[#datetime.today().display("[month repr:long] [day], [year]")]
    #v(2.0em, weak: true)
  ]

  body
}

#let problem-counter = counter("problem")

#let thmtitle(t) = {
  text(font: "New Computer Modern", weight: "semibold")[#t]
}

#let problem(body) = context {
  problem-counter.step()

  thmtitle[Problem #context problem-counter.display(). ]
  body
}

#let proof(body) = {
  thmtitle[Proof. ]
  body
  h(1fr)
  $square.filled$
}

#let solution(body) = {
  thmtitle[Solution. ]
  body
}


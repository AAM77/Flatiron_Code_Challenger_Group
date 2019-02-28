participants = []

function select_participant() {
  let random_participant = participants.splice((Math.floor(Math.random() * participants.length)),1)
  return random_participant
}

select_participant()

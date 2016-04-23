ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Firestorm.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Firestorm.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Firestorm.Repo)


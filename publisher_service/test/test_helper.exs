ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PublisherService.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PublisherService.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PublisherService.Repo)


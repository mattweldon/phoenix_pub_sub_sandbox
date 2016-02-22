ExUnit.start

Mix.Task.run "ecto.create", ~w(-r SubscriberService.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r SubscriberService.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(SubscriberService.Repo)


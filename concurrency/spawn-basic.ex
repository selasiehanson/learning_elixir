defmodule SpawnBasic do
  def greet do
    receive do
      {sender, msg } ->
        send sender, {:ok, "Hello #{msg}"}
        greet
    end
  end
end

pid = spawn(SpawnBasic, :greet, [])
send pid, {self, "Selasie" }

receive  do
  {:ok, msg } -> IO.puts msg
end

send pid, {self, "Hanson" }
receive  do
  {:ok, msg } -> IO.puts msg
end
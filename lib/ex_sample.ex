defmodule ExSample do
  def run_me(arg) do
    :lumen_intrinsics.println({:yay, arg})
    :lumen_intrinsics.println("more text")
  end
end

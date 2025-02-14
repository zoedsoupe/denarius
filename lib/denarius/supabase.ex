defmodule Denarius.Supabase do
  @moduledoc "Supabase client"
  use Supabase.Client, otp_app: :denarius
end

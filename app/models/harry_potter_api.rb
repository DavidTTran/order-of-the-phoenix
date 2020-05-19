class HarryPotterApi
  def initialize
    @connection = connect
  end

  def connect
    Faraday.new(url: 'https://www.potterapi.com/v1/',
                params: { key: ENV['HARRY_POTTER_KEY'],
                          orderOfThePhoenix: true,
                          school: "Hogwarts School of Witchcraft and Wizardry" })
  end

  def parse_phoenix
    conn = @connection.get("https://www.potterapi.com/v1/characters")
    response = JSON.parse(conn.body, symbolize_names: true)
  end
end

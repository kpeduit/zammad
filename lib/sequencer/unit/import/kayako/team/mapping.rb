# Copyright (C) 2012-2022 Zammad Foundation, https://zammad-foundation.org/

class Sequencer::Unit::Import::Kayako::Team::Mapping < Sequencer::Unit::Base
  include ::Sequencer::Unit::Import::Common::Mapping::Mixin::ProvideMapped

  uses :resource

  def process
    provide_mapped do
      {
        name: resource['title'],
      }
    end
  end
end

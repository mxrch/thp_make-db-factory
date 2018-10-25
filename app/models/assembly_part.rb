class AssemblyPart < ApplicationRecord
  belongs_to :assembly, optional: true
  belongs_to :part, optional: true
end

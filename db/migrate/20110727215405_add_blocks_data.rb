class AddBlocksData < ActiveRecord::Migration
  def self.up
    blocks=[{:name=>'Parks Polas', :postcode=>'AH1 7HB', :build_date=>'1984/01/08'.to_datetime},
      {:name=>'Crow Andreet', :postcode=>'AA5 0EH', :build_date=>'1977/06/20'.to_datetime},
      {:name=>'Couse Gose', :postcode=>'EA9 4HA', :build_date=>'2002/01/27'.to_datetime},
      {:name=>'Manninate Jerming', :postcode=>'AE5 3EH', :build_date=>'1981/03/14'.to_datetime},
      {:name=>'Stremy Manning', :postcode=>'BB5 2EB', :build_date=>'2006/01/26'.to_datetime},
      {:name=>'Parrace Grave', :postcode=>'EH2 6EA', :build_date=>'2009/10/13'.to_datetime},
      {:name=>'Stana Hardens', :postcode=>'BB0 4HA', :build_date=>'2000/10/14'.to_datetime},
      {:name=>'Pardent Plansions', :postcode=>'EA9 9BH', :build_date=>'1981/07/15'.to_datetime},
      {:name=>'Parace Bark', :postcode=>'BA4 6BB', :build_date=>'1982/11/02'.to_datetime},
      {:name=>'Junsword Bardens', :postcode=>'BE6 2BA', :build_date=>'2007/01/28'.to_datetime},
      {:name=>'Milling Hourt', :postcode=>'HE9 2HE', :build_date=>'2009/12/29'.to_datetime},
      {:name=>'Bello Parcour', :postcode=>'AH5 2HA', :build_date=>'1970/05/03'.to_datetime},
      {:name=>'Garand Terrow', :postcode=>'AH8 6HE', :build_date=>'1991/05/19'.to_datetime},
      {:name=>'Croswick Parrad', :postcode=>'BB5 7AH', :build_date=>'1962/01/20'.to_datetime},
      {:name=>'Charf Shates', :postcode=>'AB5 7BB', :build_date=>'1982/10/04'.to_datetime},
      {:name=>'Pardens Omegens', :postcode=>'BB0 0BB', :build_date=>'1979/07/19'.to_datetime},
      {:name=>'Pemberrow Quardens', :postcode=>'EE4 7BA', :build_date=>'1965/07/26'.to_datetime},
      {:name=>'Yortlas Shoor', :postcode=>'BA2 0HH', :build_date=>'1983/01/21'.to_datetime},
      {:name=>'Warcour Drimrow', :postcode=>'EB4 0BH', :build_date=>'2000/12/09'.to_datetime},
      {:name=>'Chad Polannia', :postcode=>'AE7 0EB', :build_date=>'1997/10/06'.to_datetime}]
    blocks.each do |block|
      b = Block.new
      b.attributes=block
      b.save!
    end
  end

  def self.down
    Block.delete_all
  end
end

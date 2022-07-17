# frozen_string_literal: true

module Hontynoo
  module Questionaire
    def get_en_questions(index)
      return case index
      when 0 then ['You are thinking of youself, what you have planned to do, and all distraction']
      when 1 then ['You are thinking of financial status, payment, things you want. collectible']
      when 2 then ['You are thinking of friends, campanians, close person, relatives, journey, meeting, appointment or exhibitions']
      when 3 then ['You are thinking of sibling, family, household, building, lands, and living places']
      when 4 then ['You are thinking of children, employee, new starts new job, new investment']
      when 5 then ['You are thinking of problems, obstrucles, customer, clients, all happiness barriers']
      when 6 then ['You are thinking of lovers, husband or wife, partners, and opposte']
      when 7 then ['You are thinking of Journey, sickness, worries, or inherits']
      when 8 then ['You are thinking of supporter, helper, happiness, success, oversea, langauages']
      when 9 then ['You are thinking of working status, activities for success, and investments']
      when 10 then ['You are thinking of helping, helper, inrequire help and fortune']
      when 11 then ['You are thinking of Oversea, religious, ceremony, some failure and long journey.']
      end
    end

    def get_th_questions(index)
      return case index
      when 0
        ["คุณกำลังคิดจะทำอะไร หรือเปล่า?", "คุณกำลังนึกถึงตัวคุณเองอยู่รึ?", "คุณกำลังคิดทบทวนความเป็นตัวคุณอยู่ใช่ไหม?", "คุณกำลังนึกถึงตัวคุณในอดีตอยู่รึ?", "คุณกำลังคิดว่าอนาคตคุณจะเป็นอย่างไรใช่ไหม?"]

      when 1
        ["คุณกำลังคิดถึงเรื่องทรัพย์สินของคุณอยู่หรือ?", "คุณกำลังจะซื้ออะไรมาเก็บ?", "คุณกำลังนึกถึงสภาวะการเงินของคุณ ใช่หรือเปล่า?", "คุณกำลังคิดถึงสภาวะการเงินในอนาคตรึ?", "คุณกำลังคิดว่าสภาวะการเงินของคุณคล่องแค่ไหน?"]

      when 2
        [ "คุณกำลังคิดจะเดินทางไปไหน?", "เพื่อนของคุณกำลังมาหาหรือ?", "คุณคิดถึงเพื่อนของคุณอยู่หรือเปล่า?", "คุณกำลังคิดถึงเพื่อนสนิทของคุณ?", "คุณกำลังคิดว่าการเดินทางครั้งนี้จะเป็นอย่างไร?" ]

      when 3
        ["คุณกำลังคิดถึงคนที่บ้านอยู่รึ?", "ดีนะ ที่คุณกำลังนึกถึงคนในครอบครัว?", "บ้านที่กำลังสร้างเป็นอย่างไรบ้าง?", "คุณกำลังคิดจะเช่าซื้ออสังหาอยู่หรือเปล่า?", "คุณกำลังคิดถึงญาติพี่น้องของคุณอยู่หรือ?"]

      when 4
        ["คุณกำลังเคลียด อยู่หรือเปล่า?", "การเริ่มต้นอะไรใหม่ๆ ก็มักจะต้องลุ้น?", "คุณคิดอยากจะลงทำอะไร?", "คุณกำลังคิดถึง ลูก หรือ ลูกน้อง หรือ น้องล่ะ?", "คุณกำลังคิดอยากจะมีลูก หรือ บวิวาร กันแน่?"]

      when 5
        ["วันนี้ปัญหาคุณเยอะเลยใช่ไหม?", "อุปสรรค์นิดๆน่อยๆ ลุกขึ้นมาสู้ คิดว่าน่าจะคลี่คลายไปได้แน่", "วันนี้ลูกค้าเยอะ เหนื่อยหน่อยนะ", "ถูกขัดใจมากหรือเปล่า?", "ไม่ค่อยมีคนเห็นด้วยกับความคิดของคุณหรือ?"]

      when 6
        ["คุณกำลังคิดถึง แฟน ของคุณอยู่หรือเปล่า?", "วันนี้ต้องเจอคู่ค้า หรือคู่ครองดีล่ะ?", "ยังโสดหรือ  นึกถึงแต่คู่ครอง?", "คุณกำลังนึกถึงคู่กรณีของคุณหรือ?", "คุณกำลังคิดว่า แฟนของคุณ รักคุณหรือเปล่า?"]

      when 7
        ["การป่วยไข้ ไม่สบาย เป็นเรื่องธรรมดา", "ดูแลสุขภาพ ด้วยจะดีมาก", "คุณคิดว่าการเดินทางไกลของคุณ จะเป็นอย่างไร?", "คุณคิดว่าคุณมีมรดกเยอะหรือเปล่า?", "คุณกำลังเหนื่อยและ ง่วงนอนนะ"]

      when 8
        ["สิ่งที่คุณกำลังคิด มันถูกต้องแล้ว", "นั้นล่ะ ที่พึ่งของคุณเลย", "สมความปรารถนาแน่นอน ตามต้องการ", "คุณกำลังคิดว่ามันจะสำเร็จ ก็จะสำเร็จตามความปรารถนานะ", "ที่นั้นปลอดภัยแล้วสำหรับคุณ"]

      when 9
        ["คุณกำลังคิดถึงการงานของคุณหรือ?", "คุณกำลังคิดจะเปลี่ยนงานใช่ไหม?", "คุณคิดว่าจะได้งานจะสำเร็จไหมหรือ?", "ได้รับการติดต่อการงานมาใช่ไหม?", "คุณคิดว่าการงานของคุณจะเป็นอย่างไรต่อไปหรือ?"]

      when 10
        ["คุณกำลังจะขอความช่วยเหลือใครหรือเปล่า?", "คุณกำลังมองหาตัวช่วยใช่ไหม?", "คุณกำลังมองหาโชคลาภอยู่น่ะซิ", "กำลังจะมีคนมาขอความช่วยเหลือจากคุณ", "คุณคิดว่าคุณกำลังจะช่วยใครหรือเปล่า?"]

      when 11
        ["คุณกำลังคิดว่า การโยกย้ายเปลี่ยนแปลงครั้งนี้จะดีหรือไม่?", "การต่างประเทศอาจเป็นทางออกที่ดีสำหรับคุณนะ", "ช่วงนี้ปัญหาเยอะหน่อย คุณควรใจเย็น ค่อยๆคิด", "ความหงุดหงิดใจ วิตกกังวล คงจะคลี่คลายลงไปได้", "คุณกำลังคิดอยากจะจบปัญหาทุกอย่างหรือ?"]
      end
    end

    def question
      index = self.distance_house_end
      possible_questions = case self.lang
        when 'en'
          get_en_questions(index)
        else
          get_th_questions(index)
        end

      return possible_questions.sample
    end
  end
end

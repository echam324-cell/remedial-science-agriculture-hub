import '../models/lesson_model.dart';

const learningLessons = <String, LearningLesson>{
  'Microorganisms': LearningLesson(
    title: 'Microorganisms', subject: 'Science', grade: 7, duration: '30 minutes',
    introduction: 'Microorganisms are extremely small living things. Most cannot be seen with the unaided eye; a microscope helps us observe them. They are found in soil, water, air, food and inside the bodies of plants and animals.',
    objectives: [
      'Define microorganisms and explain why a microscope is useful.',
      'Name the main groups: bacteria, fungi, protozoa and microscopic algae.',
      'Describe useful and harmful effects of microorganisms.',
      'State simple ways to reduce the spread of disease.'
    ],
    keyTerms: ['Microorganism: a living thing too small to be seen clearly without magnification.', 'Microscope: an instrument used to make very small objects appear larger.', 'Pathogen: a microorganism that causes disease.', 'Fermentation: a process in which microorganisms change sugars into other substances.'],
    sections: [
      LessonSection(heading: 'Main groups of microorganisms', body: 'Bacteria are single-celled organisms with many shapes. Some are useful in decomposition and food production, while some cause disease. Fungi include yeasts and moulds. Yeast is used in baking; mould can spoil food. Protozoa are usually single-celled organisms often found in water or moist places. Some cause diseases. Microscopic algae contain chlorophyll and can make food by photosynthesis.', localExample: 'A drop of pond water may contain tiny organisms. Mould may grow on bread or other food left damp for several days.'),
      LessonSection(heading: 'Useful microorganisms', body: 'Microorganisms break down dead plants and animals, returning nutrients to the soil. Certain bacteria help make yoghurt and other fermented foods. Yeast makes dough rise by releasing carbon dioxide during fermentation. Some microorganisms are used to make medicines.'),
      LessonSection(heading: 'Harmful microorganisms', body: 'Some microorganisms cause diseases in people, animals and plants. Others spoil food and may produce harmful substances. Germs can spread through contaminated water or food, droplets from coughing and sneezing, dirty hands, or insects that carry disease.', localExample: 'Unsafe drinking water and poorly washed hands can help spread diarrhoeal diseases. Protect food from flies and use safe water.'),
      LessonSection(heading: 'Preventing infection', body: 'Wash hands with soap and safe water, especially before eating and after using the toilet. Drink treated or otherwise safe water. Cook food thoroughly, cover stored food, keep surroundings clean and follow health workers’ advice about vaccination and treatment. Do not take antibiotics unless prescribed by a qualified health professional.')
    ],
    activity: 'In small groups, list five places where microorganisms may be found around the home or school. Sort the examples into places where they may be useful and places where they may cause problems. Explain one hygiene measure for each risky place.',
    homework: ['Define microorganism and pathogen.', 'Name four groups of microorganisms.', 'Give three useful effects and two harmful effects of microorganisms.', 'Write five practices that help prevent the spread of infection.'],
    questions: [
      QuizQuestion(question: 'Which instrument helps us observe many microorganisms?', options: ['Telescope', 'Microscope', 'Thermometer', 'Barometer'], correctIndex: 1, explanation: 'A microscope magnifies very small objects so that they can be observed.'),
      QuizQuestion(question: 'Which microorganism is commonly used to make bread dough rise?', options: ['Yeast', 'Protozoa', 'Algae', 'Virus'], correctIndex: 0, explanation: 'Yeast ferments sugars and releases carbon dioxide, which makes dough rise.'),
      QuizQuestion(question: 'A disease-causing microorganism is called a:', options: ['Producer', 'Pathogen', 'Mineral', 'Pollinator'], correctIndex: 1, explanation: 'A pathogen is an organism or agent that causes disease.'),
      QuizQuestion(question: 'Which practice helps prevent food contamination?', options: ['Leaving food uncovered', 'Using dirty utensils', 'Covering stored food', 'Keeping food near refuse'], correctIndex: 2, explanation: 'Covering food helps keep flies, dust and other contaminants away.')
    ],
  ),
  'Photosynthesis': LearningLesson(
    title: 'Photosynthesis', subject: 'Science', grade: 7, duration: '30 minutes',
    introduction: 'Green plants make their own food through a process called photosynthesis. This process uses light energy, water and carbon dioxide to produce sugar (food), and oxygen is released.',
    objectives: ['Define photosynthesis.', 'Identify the raw materials and conditions needed.', 'Explain the role of leaves and chlorophyll.', 'Write the word equation for photosynthesis.'],
    keyTerms: ['Photosynthesis: the process by which green plants make food using light energy.', 'Chlorophyll: the green pigment that absorbs light energy.', 'Carbon dioxide: a gas in the air used by plants.', 'Stomata: tiny openings, mainly on leaves, that allow gases to move in and out.'],
    sections: [
      LessonSection(heading: 'Where photosynthesis takes place', body: 'Photosynthesis mainly takes place in the leaves. Leaf cells contain chloroplasts, which have the green pigment chlorophyll. Chlorophyll absorbs light energy. A leaf is usually broad and thin, helping it receive light and exchange gases.'),
      LessonSection(heading: 'What plants need', body: 'Plants need light energy, water and carbon dioxide. Roots absorb water from the soil and it moves to the leaves. Carbon dioxide enters leaves through tiny openings called stomata. Chlorophyll captures light energy.'),
      LessonSection(heading: 'What photosynthesis produces', body: 'Plants use the absorbed energy to make glucose, a simple sugar. Oxygen is released into the air. Some glucose is used for energy and growth; some is changed into starch for storage.', localExample: 'Healthy crops such as maize, cassava and vegetables need adequate sunlight and water for good growth.'),
      LessonSection(heading: 'Word equation', body: 'Carbon dioxide + water —(light energy and chlorophyll)→ glucose + oxygen. This equation summarises the materials used and the products formed. Light and chlorophyll are necessary conditions; they are not raw materials.')
    ],
    activity: 'Draw a simple leaf. Use arrows to show sunlight reaching the leaf, carbon dioxide entering, water arriving from the roots, and oxygen leaving. Label chlorophyll as the green pigment that absorbs light.',
    homework: ['Define photosynthesis.', 'List the raw materials and two necessary conditions.', 'Write the word equation for photosynthesis.', 'Explain two reasons why green plants are important to people and animals.'],
    questions: [
      QuizQuestion(question: 'Which green pigment absorbs light energy?', options: ['Haemoglobin', 'Chlorophyll', 'Starch', 'Glucose'], correctIndex: 1, explanation: 'Chlorophyll is the green pigment that absorbs light energy for photosynthesis.'),
      QuizQuestion(question: 'Which gas enters the leaf for photosynthesis?', options: ['Oxygen', 'Nitrogen', 'Carbon dioxide', 'Hydrogen'], correctIndex: 2, explanation: 'Carbon dioxide enters leaves through tiny openings called stomata.'),
      QuizQuestion(question: 'Which gas is released during photosynthesis?', options: ['Oxygen', 'Carbon dioxide', 'Nitrogen', 'Methane'], correctIndex: 0, explanation: 'Oxygen is released as a product of photosynthesis.'),
      QuizQuestion(question: 'Which part of a plant mainly absorbs water from soil?', options: ['Flower', 'Fruit', 'Roots', 'Leaf blade'], correctIndex: 2, explanation: 'Roots absorb water from the soil and transport it to the rest of the plant.')
    ],
  ),
  'Soil and Soil Fertility': LearningLesson(
    title: 'Soil and Soil Fertility', subject: 'Agriculture', grade: 7, duration: '35 minutes',
    introduction: 'Soil is the upper layer of the earth in which many plants grow. It provides support, water, air and mineral nutrients to plant roots. Soil fertility is the ability of soil to supply nutrients in suitable amounts for healthy plant growth.',
    objectives: ['Describe the main components of soil.', 'Identify sandy, clayey and loamy soils.', 'Explain soil fertility.', 'Suggest practical ways to maintain soil fertility.'],
    keyTerms: ['Soil: the natural material covering much of the land surface in which plants grow.', 'Humus: dark organic material formed from decayed plant and animal remains.', 'Soil texture: the relative amounts of sand, silt and clay.', 'Soil fertility: the ability of soil to supply nutrients needed by plants.'],
    sections: [
      LessonSection(heading: 'Components of soil', body: 'Soil contains mineral particles, organic matter, water and air. Mineral particles come from weathered rocks. Organic matter includes decaying plant and animal remains. Water and air occupy spaces between soil particles. Living organisms such as earthworms and microorganisms also help keep soil active.'),
      LessonSection(heading: 'Types of soil by texture', body: 'Sandy soil has large particles, feels gritty and usually drains water quickly. Clayey soil has very fine particles, feels sticky when wet and holds much water. Loamy soil is a mixture of sand, silt, clay and organic matter; it often provides a good balance of drainage, water retention and aeration.', localExample: 'Farmers in The Gambia observe differences between light sandy soils and heavier soils in low-lying areas. The best crop and management method depend on the field conditions.'),
      LessonSection(heading: 'Soil fertility', body: 'Fertile soil supplies essential nutrients, holds enough water, allows air to reach roots and supports useful soil organisms. Fertility can decline when crops repeatedly remove nutrients, erosion carries away topsoil, or land is poorly managed.'),
      LessonSection(heading: 'Maintaining soil fertility', body: 'Farmers can add well-decomposed manure or compost, practise crop rotation (including suitable legumes), retain crop residues where appropriate, use fertilisers responsibly and control erosion. Organic materials improve soil structure and add nutrients as they decompose.')
    ],
    activity: 'Collect small samples of sandy, clayey and loamy soil with permission. Observe colour, feel and how quickly water drains through equal amounts. Record your observations in a table. Do not taste or inhale soil.',
    homework: ['Name four components of soil.', 'Compare sandy and clayey soil.', 'Define soil fertility.', 'State four ways farmers can maintain soil fertility.'],
    questions: [
      QuizQuestion(question: 'Which soil component forms from decayed plant and animal remains?', options: ['Humus', 'Gravel', 'Fresh rock', 'Plastic'], correctIndex: 0, explanation: 'Humus is the dark organic material formed as remains decompose.'),
      QuizQuestion(question: 'Which soil usually drains water most quickly?', options: ['Clayey soil', 'Sandy soil', 'Waterlogged soil', 'Compacted clay'], correctIndex: 1, explanation: 'Sandy soil has relatively large particles and larger spaces, so water drains quickly.'),
      QuizQuestion(question: 'Soil fertility refers to the ability of soil to:', options: ['Change into rock', 'Supply nutrients for plant growth', 'Stop all water movement', 'Prevent roots from growing'], correctIndex: 1, explanation: 'Fertile soil supplies nutrients and supports healthy plant growth.'),
      QuizQuestion(question: 'Which practice can help maintain soil fertility?', options: ['Burning all organic matter', 'Removing every crop residue', 'Adding compost', 'Allowing continuous erosion'], correctIndex: 2, explanation: 'Compost adds organic matter and nutrients and can improve soil structure.')
    ],
  ),
  'Farm Tools and Equipment': LearningLesson(
    title: 'Farm Tools and Equipment', subject: 'Agriculture', grade: 7, duration: '30 minutes',
    introduction: 'Farm tools and equipment help farmers carry out operations such as clearing, digging, planting, weeding, watering, harvesting and transporting produce. Correct selection, safe use and proper maintenance save time and reduce injuries.',
    objectives: ['Identify common hand tools used on farms.', 'Match tools to their operations.', 'Explain basic tool safety.', 'Describe how to clean and store farm tools.'],
    keyTerms: ['Farm tool: an implement used to carry out a farm operation.', 'Maintenance: care that keeps a tool in good working condition.', 'Personal protective equipment (PPE): clothing or equipment used to reduce risk of injury.'],
    sections: [
      LessonSection(heading: 'Common hand tools and their uses', body: 'A cutlass is used for cutting grasses and small branches. A hoe is used for weeding, making ridges and loosening soil. A shovel is useful for moving loose soil, sand or compost. A spade has a flatter blade and is used for digging and edging. A rake gathers leaves and levels soil. A watering can applies water gently to seedlings. A wheelbarrow transports soil, manure, tools or harvested produce.'),
      LessonSection(heading: 'Selecting the right tool', body: 'Choose a tool that suits the job, the soil and the person using it. The handle should be firmly attached and comfortable to hold. The blade or working part should be suitable and not dangerously damaged. Use a tool of an appropriate size and weight.'),
      LessonSection(heading: 'Safe use of tools', body: 'Wear suitable footwear and other PPE where necessary. Check tools before use. Keep a safe distance from other workers when swinging a cutlass or hoe. Carry sharp tools with the blade pointed down and away from people. Never leave tools lying in paths. Do not use a damaged handle or blade.'),
      LessonSection(heading: 'Cleaning and storage', body: 'Remove soil and plant material after use. Dry metal parts to reduce rust. Sharpen cutting edges carefully using the correct method and adult supervision where needed. Apply a light protective oil to suitable metal parts. Store tools in a dry, secure place with sharp edges protected.', localExample: 'At a school garden, return hoes, cutlasses and watering cans to the designated store after each practical lesson and record damaged or missing items.')
    ],
    activity: 'At a school garden or from labelled pictures, identify at least five tools. For each, record its name, main use and one safety precaution. Handle sharp tools only with teacher supervision.',
    homework: ['State the use of a cutlass, hoe, shovel and rake.', 'Give four safety rules for using farm tools.', 'Explain why tools should be cleaned and dried after use.', 'Draw and label a watering can and a wheelbarrow.'],
    questions: [
      QuizQuestion(question: 'Which tool is commonly used for weeding?', options: ['Hoe', 'Watering can', 'Wheelbarrow', 'Rake only'], correctIndex: 0, explanation: 'A hoe is commonly used to remove weeds and loosen soil.'),
      QuizQuestion(question: 'What should you do before using a farm tool?', options: ['Ignore its condition', 'Check it for damage', 'Leave it in a pathway', 'Share it while swinging'], correctIndex: 1, explanation: 'Inspecting tools helps identify loose handles, damaged blades and other hazards.'),
      QuizQuestion(question: 'Why should metal tools be dried after cleaning?', options: ['To make them heavier', 'To reduce rust', 'To soften the handle', 'To change their shape'], correctIndex: 1, explanation: 'Removing moisture helps prevent metal parts from rusting.'),
      QuizQuestion(question: 'Which equipment is designed to transport materials around a farm?', options: ['Wheelbarrow', 'Cutlass', 'Rake', 'Pruning knife'], correctIndex: 0, explanation: 'A wheelbarrow is used to move materials and produce from one place to another.')
    ],
  ),
  'Respiration in Living Things': LearningLesson(
    title: 'Respiration in Living Things', subject: 'Science', grade: 7, duration: '30 minutes',
    introduction: 'Living things need energy for movement, growth, repair and other life processes. Respiration is the chemical process in cells that releases energy from food. It is different from breathing, which is the movement of air into and out of the body.',
    objectives: ['Define cellular respiration.', 'Distinguish respiration from breathing.', 'State the word equation for aerobic respiration.', 'Explain why plants and animals respire.'],
    keyTerms: ['Respiration: the process in cells that releases energy from food.', 'Aerobic respiration: respiration that uses oxygen.', 'Glucose: a simple sugar used by cells as a source of energy.', 'Energy: the capacity to do work or bring about change.'],
    sections: [
      LessonSection(heading: 'Why respiration is important', body: 'Cells need energy for muscle movement, growth, repair, transport of substances and keeping the body functioning. Plants also respire: they need energy for growth, absorption and other cell activities. Respiration occurs day and night.'),
      LessonSection(heading: 'Aerobic respiration', body: 'Aerobic respiration uses oxygen to release energy from glucose. The word equation is: glucose + oxygen → carbon dioxide + water + energy. The process takes place in cells, mainly in structures called mitochondria.'),
      LessonSection(heading: 'Respiration and breathing are different', body: 'Breathing is the physical movement of air into and out of the lungs in humans. Respiration is a chemical process that happens inside cells. Breathing supplies oxygen and removes carbon dioxide, while cellular respiration releases usable energy from food.')
    ],
    activity: 'After sitting quietly, count your breaths for one minute. March gently on the spot for one minute (only if safe for you), then count again. Discuss why breathing rate may increase when muscles need more energy. This activity observes breathing, not respiration directly.',
    homework: ['Define respiration.', 'Write the word equation for aerobic respiration.', 'Give three activities that require energy from respiration.', 'State two differences between breathing and cellular respiration.'],
    questions: [
      QuizQuestion(question: 'Where does cellular respiration take place?', options: ['Only in the lungs', 'In living cells', 'Only in leaves', 'Only in the stomach'], correctIndex: 1, explanation: 'Respiration is a chemical process that takes place in living cells.'),
      QuizQuestion(question: 'Which gas is used in aerobic respiration?', options: ['Carbon dioxide', 'Oxygen', 'Nitrogen', 'Helium'], correctIndex: 1, explanation: 'Aerobic respiration uses oxygen to release energy from glucose.'),
      QuizQuestion(question: 'Breathing is best described as:', options: ['Making glucose', 'Movement of air into and out of lungs', 'Releasing energy in cells', 'Absorbing minerals'], correctIndex: 1, explanation: 'Breathing is the physical movement of air; respiration is a cellular chemical process.'),
      QuizQuestion(question: 'Which product is released in aerobic respiration?', options: ['Energy', 'Chlorophyll', 'Starch only', 'Sunlight'], correctIndex: 0, explanation: 'Aerobic respiration releases energy from glucose.')
    ],
  ),
  'Soil Erosion and Conservation': LearningLesson(
    title: 'Soil Erosion and Conservation', subject: 'Agriculture', grade: 7, duration: '35 minutes',
    introduction: 'Soil erosion is the removal and movement of topsoil by agents such as running water and wind. Topsoil is important because it contains much of the soil organic matter and nutrients needed by crops. Soil conservation means protecting soil from erosion and loss of fertility.',
    objectives: ['Define soil erosion and soil conservation.', 'Identify causes and effects of erosion.', 'Describe water and wind erosion.', 'Suggest practical soil conservation measures.'],
    keyTerms: ['Erosion: the wearing away and movement of soil or rock.', 'Topsoil: the upper soil layer, often rich in organic matter.', 'Runoff: water that flows over the land surface.', 'Contour farming: farming across a slope along lines of equal height.'],
    sections: [
      LessonSection(heading: 'Causes and types of erosion', body: 'Water erosion occurs when rain or flowing water detaches and carries soil particles. Wind erosion occurs when strong winds blow loose, dry soil away. Bare soil, steep slopes, heavy rainfall, overgrazing, removal of vegetation and poor cultivation practices increase erosion.'),
      LessonSection(heading: 'Effects of soil erosion', body: 'Erosion removes fertile topsoil, reduces crop yields, exposes plant roots and can form gullies. Soil washed into streams and lowlands may cause siltation and make water muddy. Farmers may lose valuable land and spend more effort restoring fields.', localExample: 'On exposed fields and paths, heavy rains can wash soil into drains and low-lying areas. Keeping soil covered before and during the rainy season helps reduce this risk.'),
      LessonSection(heading: 'Soil conservation methods', body: 'Maintain vegetation cover, plant cover crops, mulch exposed soil, practise crop rotation and avoid unnecessary burning. On slopes, contour cultivation and suitable terraces slow runoff. Planting grass strips or windbreaks can reduce the force of moving water or wind. Manage livestock to prevent overgrazing.'),
      LessonSection(heading: 'Choosing suitable methods', body: 'The best method depends on the slope, soil type, rainfall, wind and farming system. Combine methods where necessary. Keep drainage channels protected and seek local agricultural advice for serious gullies or unstable slopes.')
    ],
    activity: 'Make two small soil trays: leave one bare and cover the other with dry grass or leaves. Pour the same small amount of water gently over each tray and observe the runoff. Compare the amount of soil carried away. Conduct the activity outdoors with teacher supervision.',
    homework: ['Define soil erosion and soil conservation.', 'Name two agents of erosion.', 'State four effects of soil erosion.', 'Describe four methods farmers can use to conserve soil.'],
    questions: [
      QuizQuestion(question: 'Which layer of soil is commonly lost through erosion and is especially important for crops?', options: ['Bedrock', 'Topsoil', 'Solid granite', 'Deep mantle'], correctIndex: 1, explanation: 'Topsoil contains much of the organic matter and nutrients needed by crops.'),
      QuizQuestion(question: 'Which is an agent of wind erosion?', options: ['Moving air', 'Earthworms', 'Sunlight alone', 'Plant roots'], correctIndex: 0, explanation: 'Strong moving air can carry loose, dry soil particles away.'),
      QuizQuestion(question: 'Which practice helps protect bare soil?', options: ['Removing all vegetation', 'Mulching', 'Overgrazing', 'Burning crop residues everywhere'], correctIndex: 1, explanation: 'Mulch covers the soil, reducing the impact of raindrops and slowing runoff.'),
      QuizQuestion(question: 'Contour farming is carried out:', options: ['Straight down a slope', 'Across a slope along equal-height lines', 'Only on flat rooftops', 'In river channels'], correctIndex: 1, explanation: 'Contour farming follows lines of equal height and helps slow water flowing downhill.')
    ],
  ),
};

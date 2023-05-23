predictTraits <- function(dataset){
  dataset <- t(dataset)
  
  ageBocklandt <- calcBocklandt(dataset)
  ageGaragnani <- calcGaragnani(dataset)
  ageHannum <- calcHannum(dataset)
  ageHorvath <- calcHorvath1(dataset)
  ageLin <- calcLin(dataset)
  ageVidalBralo <- calcVidalBralo(dataset)
  ageWeidner <- calcWeidner(dataset)
  ageZhang <- calcZhang(dataset)
  ageZhang2019 <- calcZhang2019(dataset)
  
  ageEpiTOC <- calcEpiTOC(dataset)
  ageEpiTOC2 <- calcEpiTOC2(dataset)
  ageHypoClock <- calcHypoClock(dataset)
  ageMiAge <- calcMiAge(dataset)
  
  agePhenoAge <- calcPhenoAge(dataset)
  ageSkinHorvath <- calcHorvath2(dataset)
  
  alcoholMcCartney <- calcAlcoholMcCartney(dataset)
  BMIMcCartney <- calcBMIMcCartney(dataset)
  smokingMcCartney <- calcSmokingMcCartney(dataset)
  
  predictors <- as.data.frame(cbind(ageBocklandt, ageGaragnani, ageHannum, 
                                    ageHorvath, ageLin, ageVidalBralo, ageWeidner, 
                                    ageZhang, ageZhang2019, ageEpiTOC, ageEpiTOC2,
                                    ageHypoClock, ageMiAge, agePhenoAge, ageSkinHorvath,
                                    alcoholMcCartney, BMIMcCartney, smokingMcCartney))
  
  return(predictors)
}

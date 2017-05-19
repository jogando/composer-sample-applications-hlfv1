/**
 * Close the bidding for a vehicle listing and choose the
 * highest bid that is over the asking price
 * @param {org.idb.medrec.UpdateMedicalRecord} updateMedicalRecord - the closeBidding transaction
 * @transaction
 */
function updateMedicalRecord(updateMedicalRecord) {
    return getAssetRegistry('org.idb.medrec.MedicalRecord')
        .then(function(medicalRecordRegistry) {
            return medicalRecordRegistry.update(updateMedicalRecord.medicalRecord);
        });
}
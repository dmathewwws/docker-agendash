#!/bin/sh

set +e

if [[ ${MONGODB_URI} ]]; then
  URI=$MONGODB_URI
else
  URI="mongodb://localhost:27017/agenda"
fi

if [[ ${MONGODB_COLLECTION} ]]; then
  COLLECTION=$MONGODB_COLLECTION
else
  COLLECTION="agendaJobs"
fi

echo "agendash --db=$URI --collection=$COLLECTION"

agendash --db=$URI --collection=$COLLECTION

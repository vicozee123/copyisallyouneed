
main=${MTPATH}/wmt14_gl
python3 prepare.py --train_data_src ${main}/corpus.bpe32k.de \
--train_data_tgt ${main}/corpus.bpe32k.en \
--vocab_src ${main}/src.vocab \
--vocab_tgt ${main}/tgt.vocab \
--output_file ${main}/train.txt

paste -d '\t' ${main}/newstest2013.bpe.de ${main}/newstest2013.bpe.en > ${main}/dev.txt
paste -d '\t' ${main}/newstest2014.bpe.de ${main}/newstest2014.bpe.en > ${main}/test.txt

exit 0

for domain in it  koran  law  medical  subtitles; do
main=${MTPATH}/multi_domain
python3 prepare.py --train_data_src ${main}/$domain/train.src.bpe \
--train_data_tgt ${main}/$domain/train.tgt.bpe \
--vocab_src ${main}/$domain/src.vocab \
--vocab_tgt ${main}/$domain/tgt.vocab \
--output_file ${main}/$domain/train.txt
done

exit 0

for domain in it  koran  law  medical  subtitles; do
main=${MTPATH}/multi_domain/train
python3 prepare.py --train_data_src ${main}/$domain.train.src.bpe \
--train_data_tgt ${main}/$domain.train.tgt.bpe \
--vocab_src ${main}/src.vocab \
--vocab_tgt ${main}/tgt.vocab \
--output_file ${main}/$domain.train.txt
done

python3 prepare.py --train_data_src ${main}/train.src.bpe \
--train_data_tgt ${main}/train.tgt.bpe \
--vocab_src ${main}/src.vocab \
--vocab_tgt ${main}/tgt.vocab \
--output_file ${main}/train.txt

exit 0


main=${MTPATH}/gu
out=${MTPATH}


python3 prepare.py --train_data_src ${main}/esen/train/jrc.train.tgt.bpe \
--train_data_tgt ${main}/esen/train/jrc.train.src.bpe \
--vocab_src ${out}/enes/src.vocab \
--vocab_tgt ${out}/enes/tgt.vocab \
--output_file ${out}/enes/train.txt
paste -d '\t' ${main}/esen/dev/jrc.dev.tgt ${main}/esen/dev/jrc.dev.src > ${out}/enes/dev.txt
paste -d '\t' ${main}/esen/test/jrc.test.tgt ${main}/esen/test/jrc.test.src > ${out}/enes/test.txt

python3 prepare.py --train_data_src ${main}/deen/train/jrc.train.tgt.bpe \
--train_data_tgt ${main}/deen/train/jrc.train.src.bpe \
--vocab_src ${out}/ende/src.vocab \
--vocab_tgt ${out}/ende/tgt.vocab \
--output_file ${out}/ende/train.txt
paste -d '\t' ${main}/deen/dev/jrc.dev.tgt ${main}/deen/dev/jrc.dev.src > ${out}/ende/dev.txt
paste -d '\t' ${main}/deen/test/jrc.test.tgt ${main}/deen/test/jrc.test.src > ${out}/ende/test.txt

python3 prepare.py --train_data_src ${main}/esen/train/jrc.train.src.bpe \
--train_data_tgt ${main}/esen/train/jrc.train.tgt.bpe \
--vocab_src ${out}/esen/es.vocab \
--vocab_tgt ${out}/esen/en.vocab \
--output_file ${out}/esen/train.txt
paste -d '\t' ${main}/esen/dev/jrc.dev.src ${main}/esen/dev/jrc.dev.tgt > ${out}/esen/dev.txt
paste -d '\t' ${main}/esen/test/jrc.test.src ${main}/esen/test/jrc.test.tgt > ${out}/esen/test.txt

python3 prepare.py --train_data_src ${main}/fren/train/jrc.train.src.bpe \
--train_data_tgt ${main}/fren/train/jrc.train.tgt.bpe \
--vocab_src ${out}/fren/fr.vocab \
--vocab_tgt ${out}/fren/en.vocab \
--output_file ${out}/fren/train.txt
paste -d '\t' ${main}/fren/dev/jrc.dev.src ${main}/fren/dev/jrc.dev.tgt > ${out}/fren/dev.txt
paste -d '\t' ${main}/fren/test/jrc.test.src ${main}/fren/test/jrc.test.tgt > ${out}/fren/test.txt

python3 prepare.py --train_data_src ${main}/deen/train/jrc.train.src.bpe \
--train_data_tgt ${main}/deen/train/jrc.train.tgt.bpe \
--vocab_src ${out}/deen/de.vocab \
--vocab_tgt ${out}/deen/en.vocab \
--output_file ${out}/deen/train.txt
paste -d '\t' ${main}/deen/dev/jrc.dev.src ${main}/deen/dev/jrc.dev.tgt > ${out}/deen/dev.txt
paste -d '\t' ${main}/deen/test/jrc.test.src ${main}/deen/test/jrc.test.tgt > ${out}/deen/test.txt

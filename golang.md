# golang

### interview questions
* [Golang Interview Questions for Freshers](https://www.interviewbit.com/golang-interview-questions/)
* [Коллеги, вы меня огорчаете](https://habr.com/ru/company/oleg-bunin/blog/521582/)
* [Crack the top 50 Golang interview questions](https://www.educative.io/blog/50-golang-interview-questions)

### resources
* http: https://launchschool.com/books/http/
* redis: https://redis.io/
* mongodb: https://www.mongodb.com/
* postgresql: https://www.postgresqltutorial.com/, http://go-database-sql.org/index.html
* templates: https://pkg.go.dev/search?q=template
* regexp: https://github.com/google/re2/wiki/Syntax
* rpc, websocket, session
* git: https://cbea.ms/git-commit/

## all the links from additional materials in [coursera.rvasily1](https://www.coursera.org/learn/golang-webservices-1/home/welcome) and [coursera.rvasily2](https://www.coursera.org/learn/golang-webservices-2/home/welcome)
### WEEK 1
```
Материалы для дополнительного чтения на английском:
    https://golang.org/ref/spec - спецификация языка 
    https://golang.org/ref/mem - модель памяти го. на начальном этапе не надо, но знать полезно 
    https://golang.org/doc/code.html - про организацию кода. GOPATH и пакеты
    https://golang.org/cmd/go/
    https://blog.golang.org/strings
    https://blog.golang.org/slices
    https://blog.golang.org/go-slices-usage-and-internals
    https://github.com/golang/go/wiki - вики го на гитхабе. очень много полезной информации 
    https://blog.golang.org/go-maps-in-action
    https://blog.golang.org/organizing-go-code
    https://golang.org/doc/effective_go.html - основной сборник тайного знания, сюда вы будуте обращатсья в первое время часто 
    https://github.com/golang/go/wiki/CodeReviewComments - как ревьювить (и писать код). обязательно к прочтению 
    https://divan.github.io/posts/avoid_gotchas/ - материал аналогичный 50 оттенков го 
    https://research.swtch.com/interfaces
    https://research.swtch.com/godata
    http://jordanorelli.com/post/42369331748/function-types-in-go-golang
    https://www.devdungeon.com/content/working-files-go - работа с файлами
    http://www.golangprograms.com - много how-to касательно базовых вещей в go
    http://yourbasic.org/golang/ - ещё большой набор how-to где можно получить углублённую информацию по всем базовым вещам. очень полезны http://yourbasic.org/golang/blueprint/
    https://github.com/Workiva/go-datastructures
    https://github.com/enocom/gopher-reading-list - большая подборка статей по многим темам ( не только данной лекции )
    https://www.youtube.com/watch?v=MzTcsI6tn-0 - как организовать код
    https://medium.com/@benbjohnson/standard-package-layout-7cdbc8391fc1 - статья на предыдущую тему
Материалы для дополнительного чтения на русском:
    https://habrahabr.ru/company/mailru/blog/314804/ - 50 оттенков го. обязательно к прочтению. многое оттуда мы ещё не проходили, но на будущее - имейте ввиду 
    https://habrahabr.ru/post/306914/ - Разбираемся в Go: пакет io
    https://habrahabr.ru/post/272383/ - постулаты go. Маленькая статья об основными принципах языка
    https://habrahabr.ru/company/mailru/blog/301036/ - лучшие практики go
    https://habrahabr.ru/post/308198/ - организация кода в go
    https://habrahabr.ru/post/339192/ - Зачем в Go амперсанд и звёздочка (& и *)
    https://habrahabr.ru/post/325468/ - как не наступать на грабли в Go
    https://habrahabr.ru/post/276981/ - Краш-курс по интерфейсам в Go
    http://golang-book.ru
Литература по го на русском языке:
    Язык программирования Go, Алан А. А. Донован, Брайан У. Керниган
    Go на практике, Matt Butcher, Мэтт Фарина Мэтт
    Программирование на Go. Разработка приложений XXI века, Марк Саммерфильд
```

### WEEK 2
```
На английском:
    https://blog.golang.org/race-detector
    https://blog.golang.org/pipelines
    https://blog.golang.org/advanced-go-concurrency-patterns
    https://blog.golang.org/go-concurrency-patterns-timing-out-and
    https://talks.golang.org/2012/concurrency.slide#1
    https://www.goinggo.net/2017/10/the-behavior-of-channels.html
    http://marcio.io/2015/07/handling-1-million-requests-per-minute-with-golang/ - рассказ про оптимизацию воркер пула
    http://www.tapirgames.com/blog/golang-channel
    http://www.tapirgames.com/blog/golang-channel-closing
    https://github.com/golang/go/wiki/CommonMistakes
Видео:
    https://www.youtube.com/watch?v=5buaPyJ0XeQ - классное выступление Dave Cheney про функции первого класса и использование их с горутинами, очень рекомендую, оно небольшое 
    https://www.youtube.com/watch?v=f6kdp27TYZs - Google I/O 2012 - Go Concurrency Patterns - очень рекомендую 
    https://www.youtube.com/watch?v=rDRa23k70CU&list=PLDWZ5uzn69eyM81omhIZLzvRhTOXvpeX9&index=15 - ещё одно хорошее видео про паттерны конкуренции в го
    https://www.youtube.com/watch?v=KAWeC9evbGM - видео Андрея Смирнова с конференции Highload - в нём вы можете получить более детальную информацию по теме вводного видео (методы обработки запросов и плюсы неблокирующего подхода), о том, что там творится на системном уровне. На русском, не про go
На русском:
    https://habrahabr.ru/post/141853/ - как работают горутины 
    https://habrahabr.ru/post/308070/ - как работают каналы 
    https://habrahabr.ru/post/333654/ - как работает планировщик ( https://rakyll.org/scheduler/ )
    https://habrahabr.ru/post/271789/ - танцы с мютексами
Книги:
    Язык программирования Go, Алан А. А. Донован, Брайан У. Керниган - глава 8
    Concurrency in Go: Tools and Techniques for Developers, by Katherine Cox-Buday 
```

### WEEK 3
```
Рефлексия и кодогенерация:
    https://blog.golang.org/laws-of-reflection
    https://habrahabr.ru/post/269887/
    https://golang.org/src/go/ast/example_test.go
    https://github.com/golang/tools/blob/master/cmd/stringer/stringer.go
    https://golang.org/pkg/reflect/
    http://blog.burntsushi.net/type-parametric-functions-golang/
    https://habrahabr.ru/post/269887/
    https://medium.com/kokster/go-reflection-creating-objects-from-types-part-i-primitive-types-6119e3737f5d
    https://medium.com/kokster/go-reflection-creating-objects-from-types-part-ii-composite-types-69a0e8134f20
Производительность:
Материалы на русском:
    https://habrahabr.ru/company/badoo/blog/301990/
    https://habrahabr.ru/company/badoo/blog/324682/
    https://habrahabr.ru/company/badoo/blog/332636/
    https://habrahabr.ru/company/mailru/blog/331784/ - статья про то как Почта@Mail.ru держит 3 миллиона вебсокет-соединений
Материалы на английском:
    https://blog.golang.org/profiling-go-programs
    https://about.sourcegraph.com/go/an-introduction-to-go-tool-trace-rhys-hiltner/ - большая статья, посвященная go tool trace 
    https://www.goinggo.net/2017/05/language-mechanics-on-stacks-and-pointers.html
    https://www.rzaluska.com/blog/important-go-interfaces/
    https://docs.google.com/document/d/1CxgUBPlx9iJzkz9JWkb6tIpTe5q32QDmz8l0BouG0Cw/preview
    https://segment.com/blog/allocation-efficiency-in-high-performance-go-services/
    https://lwn.net/Articles/250967/ - не про го, но знать полезно 
    https://github.com/golang/go/wiki/Performance - много про то что можно вытащить из pprof-а
    https://golang.org/doc/gdb
    https://about.sourcegraph.com/go/advanced-testing-in-go/
    https://about.sourcegraph.com/go/generating-better-machine-code-with-ssa/
    https://about.sourcegraph.com/go/evolutionary-optimization-peter-bourgon/
    https://signalfx.com/blog/a-pattern-for-optimizing-go-2/
    http://go-talks.appspot.com/github.com/davecheney/presentations/performance-without-the-event-loop.slide#1
    https://dave.cheney.net/2013/06/30/how-to-write-benchmarks-in-go
    https://dave.cheney.net/2014/06/07/five-things-that-make-go-fast - вообще в блоге Дейва очень много полезной инфы по го 
    https://github.com/dgryski/go-perfbook/blob/master/performance.md
    https://www.youtube.com/watch?v=NS1hmEWv4Ac - Make your Go go faster! Optimising performance through reducing memory allocations + слайды https://fosdem.org/2018/schedule/event/faster/attachments/slides/2510/export/events/attachments/faster/slides/2510/BryanBorehamGoOptimisation.pdf
    https://www.youtube.com/watch?v=N3PWzBeLX2M - Profiling and Optimizing Go 
    https://www.youtube.com/watch?v=Lxt8Vqn4JiQ - Golang UK Conference 2017 | Filippo Valsorda - Fighting latency: the CPU profiler is not your ally
    https://www.youtube.com/watch?v=ydWFpcoYraU - Finding Memory Leaks in Go Programs
    http://www.integralist.co.uk/posts/profiling-go/
    https://bravenewgeek.com/so-you-wanna-go-fast/
    https://medium.com/@val_deleplace/go-code-refactoring-the-23x-performance-hunt-156746b522f7
Тесты:
    https://blog.golang.org/cover - расширенная информация о go test -cover
Полезные инструменты:
    https://mholt.github.io/json-to-go - позволяет по json сформировать структуру на go, в которую он может быть распакован
    https://github.com/mailru/easyjson - кодогенератор для json от mail.ru
```

### WEEK 4
```
Конечно же документация:
    https://golang.org/pkg/net/http/
Дополнительные материалы
    https://gowebexamples.github.io/ - примеры касательно разработки веба 
    https://golang.org/doc/articles/wiki/
    https://astaxie.gitbooks.io/build-web-application-with-golang/
    https://github.com/thewhitetulip/web-dev-golang-anti-textbook/
    https://codegangsta.gitbooks.io/building-web-apps-with-go/content/
    http://www.golangprograms.com/
    http://marcio.io/2015/07/cheap-mapreduce-in-go/
    https://www.rzaluska.com/blog/important-go-interfaces/
    https://blog.cloudflare.com/the-complete-guide-to-golang-net-http-timeouts/ - про таймауты
    http://polyglot.ninja/golang-making-http-requests/
    http://tumregels.github.io/Network-Programming-with-Go/
На русском:
    https://habrahabr.ru/post/330512/ - Многопользовательская игра на Go через telnet - чисто сеть  
```

### WEEK 5
```
Основная и самая важная ссылка, касательно компонентов:
https://github.com/avelino/awesome-go 
Шаблоны:
    https://github.com/SlinSo/goTemplateBenchmark
Роутеры:
    https://github.com/gorilla/mux - один из компонентов gorillatoolkit, из которых можно собрать себе полноценный фреймворк
    https://github.com/julienschmidt/httprouter
    https://github.com/valyala/fasthttp
    https://github.com/julienschmidt/go-http-routing-benchmark
Фреймворки:
    https://beego.me/
    https://github.com/gin-gonic/gin
    https://github.com/Massad/gin-boilerplate
    https://github.com/gramework/gramework - быстрый веб-ферймворк на основе fasthttp
Логирование:
    https://github.com/uber-go/zap
    https://github.com/sirupsen/logrus
    https://www.youtube.com/watch?v=c_MPDg2C9tg - видео по структурному логирования
    https://habrahabr.ru/company/badoo/blog/328722/
Веб-сокеты
    https://github.com/gorilla/websocket
    https://github.com/gobwas/ws - библиотека для низкоуровневой работы в веб-сокетами от Mail.ru, которая позволяет существенно сэкономить на памяти сервера
    https://github.com/olahol/melody
Управление зависимостями:
    https://github.com/golang/dep
    https://hackernoon.com/using-go-dep-as-a-project-maintainer-641d1f3006d7
    https://about.sourcegraph.com/go/the-new-era-of-go-package-management/
    https://medium.freecodecamp.org/an-intro-to-dep-how-to-manage-your-golang-project-dependencies-7b07d84e7ba5
    https://blog.gopheracademy.com/advent-2015/vendor-folder/
Безопасность:
    https://github.com/Checkmarx/Go-SCP
    https://github.com/golang-standards/project-layout
```

### WEEK 6
```
    http://www.vividcortex.com/hubfs/eBooks/The_Ultimate_Guide_To_Building_Database-Driven_Apps_with_Go.pdf - в удобной форме информация по основным аспектам работы с database/sql
    https://golang.org/pkg/database/sql/ - собственно сам интерфейс к базе
    https://github.com/golang/go/wiki/SQLDrivers - список поддерживаемых баз
    https://github.com/golang/go/wiki/SQLInterface
    https://github.com/DATA-DOG/go-sqlmock
    http://www.alexedwards.net/blog/configuring-sqldb
    http://go-database-sql.org/
    https://astaxie.gitbooks.io/build-web-application-with-golang/
    https://github.com/thewhitetulip/web-dev-golang-anti-textbook/
    https://codegangsta.gitbooks.io/building-web-apps-with-go/content/
    https://godoc.org/github.com/go-sql-driver/mysql
    https://godoc.org/github.com/lib/pq
    https://godoc.org/github.com/bradfitz/gomemcache/memcache
    https://godoc.org/github.com/garyburd/redigo/redis
    https://godoc.org/gopkg.in/mgo.v2
    http://goinbigdata.com/how-to-build-microservice-with-mongodb-in-golang/
    http://gorm.io/
    http://motion-express.com/blog/gorm:-a-simple-guide-on-crud
    https://godoc.org/github.com/jinzhu/gorm
    https://habrahabr.ru/company/mailru/blog/266811/ - архи-полезная статья про устройство базы внутри
    https://hackernoon.com/communicating-go-applications-through-redis-pub-sub-messaging-paradigm-df7317897b13
    https://medium.com/@shijuvar/introducing-nats-to-go-developers-3cfcb98c21d0
    https://medium.com/@shijuvar/building-distributed-systems-and-microservices-in-go-with-nats-streaming-d8b4baa633a2
```

### WEEK 7
```
    https://about.sourcegraph.com/go/grpc-in-production-alan-shreve/ + https://www.youtube.com/watch?v=7FZ6ZyzGex0
    https://grpc.io/ - общий сайт gRPC
    https://github.com/grpc/grpc-go - go-версия gRPC
    https://github.com/grpc-ecosystem - набор middleware для gRPC
    https://outcrawl.com/getting-started-microservices-go-grpc-kubernetes/
    https://improbable.io/games/blog/grpc-web-moving-past-restjson-towards-type-safe-web-apis
    https://blog.gopheracademy.com/advent-2017/go-grpc-beyond-basics/
    https://ops.tips/blog/sending-files-via-grpc/
    https://github.com/mattn/ft - file transfer via gRPC
    http://mhausenblas.info/fosdem2018-godevroom-networkingdeepdive/ - всецело полезный доклад про работу с сетью в go
    https://github.com/twitchtv/twirp - RPC-фреймворк от Twitch, достаточно молодой       
    https://blog.twitch.tv/twirp-a-sweet-new-rpc-framework-for-go-5f2febbf35f - статья про Twirp
    https://about.sourcegraph.com/go/fallacies-of-distributed-gomputing/ - мощный доклад по распределённым системам на го
    https://github.com/google/go-microservice-helpers
    https://github.com/vaporz/turbo
    https://github.com/go-kit/kit - мощный фреймворк для написания микросервисов
    https://habrahabr.ru/post/276539/ - "Это будущее". Обязательная для ознакомления статья если вы решили увлечься микросервисами по полной
    https://medium.com/apis-and-digital-transformation/openapi-and-grpc-side-by-side-b6afb08f75ed
    https://medium.com/pantomath/how-we-use-grpc-to-build-a-client-server-system-in-go-dd20045fa1c2
    https://habrahabr.ru/company/beget/blog/348008/
    https://www.ribice.ba/swagger-golang/ - Create Golang API documentation with SwaggerUI
    https://ewanvalentine.io/microservices-in-golang-part-1/ - большой туториал по микросервисам в го, охватывает множество сфер ( докер, авторизацию и прочее ) - на момент добавления в список вышла 7-я часть 
    https://github.com/MarquisIO/go-grpcmw
    https://github.com/enricofoltran/hello-auth-grpc
    https://blog.synq.fm/golang-microservice-starter-kit
    https://blog.gopheracademy.com/advent-2017/kubernetes-ready-service/
    https://www.youtube.com/watch?v=s5l9ZdgxzXA
    http://www.minaandrawos.com/2016/05/14/udp-vs-tcp-in-golang/
    http://rodaine.com/2017/05/x-files-time-rate-golang/
    https://blog.envoyproxy.io/introduction-to-modern-network-load-balancing-and-proxying-a57f6ff80236
    http://tumregels.github.io/Network-Programming-with-Go/ 
```

### WEEK 8
```
    https://www.limitlessfx.com/cross-compile-golang-app-for-windows-from-linux.html
    https://habrahabr.ru/post/249449/ - Кросс-компиляция в Go
    https://habrahabr.ru/post/337348/ - вызов rust из go
    https://habrahabr.ru/company/intel/blog/275709/ - С-вызовы в Go: принцип работы и производительность 
    https://stackshare.io/stream/stream-and-go-news-feeds-for-over-300-million-end-users
    https://medium.com/kokster/writing-a-jit-compiler-in-golang-964b61295f- Writing a JIT compiler in Golang
    https://github.com/spf13/viper- мощная система для работы с конфигом
    https://www.programming-books.io/essential/go/
```

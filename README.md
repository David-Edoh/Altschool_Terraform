# Terraform Multi-Region and Multi-Environment AWS Deployment

This Terraform project demonstrates how to deploy AWS resources, including EC2 instances and VPCs, to multiple regions (eu-west-1, eu-central-1) and environments (prod, dev).

![aWS drawio](https://github.com/David-Edoh/Altschool_Terraform/assets/45123163/ddd2bd2c-62f7-4272-b718-239b13786a1c)
[View diagram](https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Untitled%20Diagram.drawio#R7XxXm5tYtvav6cuehxwuRZaESAKBdNMPOYichPj1Z29Vucflcs%2F0nO%2FzjPsMZdkFm80Oa70rodf8gvPVIvd%2Bm52aKC5%2FwZBo%2BQUXfsEwlGJo8Au2PN9aWHgGG9I%2Bj947%2Fb3hnK%2FxeyPy3jrlUTx86Dg2TTnm7cfGsKnrOBw%2FtPl93zw%2Bdkua8uOsrZ%2FGnxrOoV9%2BbnXzaMzeW1GK%2FfsFJc7T7H1qBnvfcOV%2F6fy%2BkyHzo%2BbxVRMu%2FoLzfdOMb0fVwsclFN4XubzdJ%2F3B1d8X1sf1%2BGducMTVcHY7fd9Lv%2BYDk5I83f1KE2%2FDzH45ve94555BA182U%2FS%2B8PH5RRptk9fjS6IkBz5gQh75hQRXeHj2N4z8puHbc%2FpjA%2Fr5DI7xseHbc%2FpjA%2Frt8Og386PfLvCrhk9nH4ZHvpkf%2BWqB4INzzTSWeR3zv2MPAY1p70c50AnflE0P2uqmBtLjsrEqwRkKDh9ZPsbn1g%2BhVB%2FAbkBb0tTjO%2FpR7Mv5u%2BDhqAA9LTyulhQa2t%2F8x0D8Le2bqX1NuQf4%2F%2B7V38DhbyFU5m9%2BOcKBxr65x18W9wuGgz8SRAyX5GX5zaLnuB9zYAy7Mk%2Fh%2BGMDp%2FPfz8o4eY0IdpLXqfo6E3DkffXfmyLyhyyO3rdU%2BkFccn54hwuto6%2F6J68f0AXsavSBhPt3yb3wF%2FfiHL%2FBEHn1KUu%2FHfLgd1n1cTj1Qz7HVjy8iRS2fraXdxOCm4yXr5re7UeOmyoe%2Byfo8n6VIt%2FuePdl9LtlP75yDAjx3ph95RSoLz39d2%2BU%2Fj703w0WHLzb7PfttztQkn74ber3uD1m7uORWsuvn833YvCfzHa4x2OYvcvhrwDauQ2%2FB1WGZlGW%2BqFQ%2FX2KD1D9A6B8hNM%2FcLB%2FiCj2I6JQgv4EKZz%2BDqII5EchCkU%2FQeoTnr4LoQ8C%2B6INFdq40Qz5mL90HTTj2FT%2FVF1hDM38IwC%2FAyb8b3GIfQMHoEOJZEic%2BGNU%2FzBt4vhHdWIM%2BUmdNPU38rM%2BWfxHqRP%2FpE6Rhw2%2FwqSsCe9AzGDaOnr9%2B%2BZFwZD1MPplGW8ZwM%2BTAfz%2FjIX%2Fa8cM7O23FzjqMP4Nruht8s%2BuWmAoCmDvR7rq36f497jqb301RjCfwz%2F5HV%2BNsvQPMu4vrvkf%2Beovqs6rV6Xzzz3zH6RlUZz40yuD%2FAP1De2bBST5ApXBvSbcfWlFvrTAofzR%2FwXfvZ1iUlunwKzyC6dbD%2BQop80O%2FGhnJxOdFBwlJvhHQfjdCfwWGB6IiiPg4U7iThfxsjNFKL2ZBhWZlOCvQ9CFMUWOT2qSTa%2BykOAsk%2B753eMkCMbKsI9Q4Y2CYE1H4ueeAt136V6Aynh9GDj8389scTk5EmdeJMtxpezqSUt4lbn0Jlt3X86aQF6GUOEekWIhsZIRibK8Zsv2ZzHf5%2Fti%2FzzdD7xZHs5Odciv9eEZNkc%2BbY%2Fne3fMm%2F74HAaVf4zqGZnUnJjVJwNWultOtvg8Ffv1tJ4QTTBRzXYwrbji2hoSupCSun2n9KKh9XVgDOHBGjaAHwc2BlZtrCyQDMfBLZr3g2AimmiJFtjCBSz7BpYageVlYEklWEYLph7BdAuYAgXDkmAoKB0OdJdAlwNo1sChdQE%2F7qW8eRc0ugJh3MCJ75Zt4KJjCAQTgQuxV5KJh0LJcxnolF%2BrQ3HFtDsQWAluqG7Vrb5hUQOE14KbO79qex8bByDIEQw0BRU5BxjUEreAQZ9hfVhDXEOAgFEwARbVNzzCIwIImwSTUXHd0jE%2BMkDwLJgYyAAo%2Fh0NULM8B5bCp81RSAldBGoBSnSB4nygrBgoKAdKqYAiOiD8CQj8CYSMAcFSL1FyQHw8EJkMxHQEotGBOM5ABC7Ytg%2B2GoPt5WBLFdhGB5Y%2BgeU%2BwRIxsCzqtRAOTM2D6WQwxREMq4OBzuBmF9zgg04xaM7BYdWBn76jpgFAYgQimcDJGz4fACALENATXFoHWkcAWFAgLAx0w0c6JgBwSCA4CtxCT%2FTEABCxQIjg1tcAL6OQoAFwEPxgOOHBGADYNgCzBwAcANAmAKgFAGcNANkDEM4AeCsAGw4ARgO7ASMAGAkAOgqAiwogYgBY2AAKHlB%2FAFSeADUXQLU1UGcPVDgDta1AVThQDw2sEIwAVCAAsStA1OpLvAYQqQ3E6AHRBS9xJUBEBRBLDUTRv7Y%2Fgy2vYJs42Br9sm8wEtiAABatgIWqr8UZYEE2WIQHJg5ekyWvCYrXoPVroP795pl5M5IvMPkioi8fDn3GPgJdkYhbZ7s0vrr2v%2F8wu6HGQx6O%2BhwPlig5sdYPWFlOKbIzd5LkXrHnQ1PgbA%2BwiGuhEPfCcu7hSaemOA935%2BEh25arI1f5JFQWsj%2BeBNnC95TIydy6p%2B6azBU78h7xfLFb7tFTz3ZWGj71VrDS60O%2FKWbaPE43JSwaU7wqp6Iz%2F6%2BP1dyDGaO8vkrZCKX9yy7zWY%2Fsnynms2hsPhA%2F6h0gcTIPksmXzgfqspCIXI0yUIGvGQS6izUsDClSU%2BYHXr4BxG%2FJdg%2BR1ZXDjaoOtz0er9ileFBldbdt6nYFaQEm%2BeNazhdmmQpbGbyE9LJQj%2Bmcbuhj31zFjm4HJGTLBAwk1iy6WgsWIgXKsHBFZ8wQwa%2FGtEmD5VGcDJgHquZPC%2BJVZYgLi5GaiOP1AfbCmjcgXx3EBb%2FKvTyfyhXlWBmeDmR%2Bb1cnU8Fxr9%2FDSlinNWugcyivos4IuMA1KByXf%2BR4TAzRHDz35wdShrOlxhaC3gfBWijdC%2BFsmnbjCeTKkAVSLybqXSkZTlJH4xNbdydL10zpOYEF8ckKLhQEEkVke5VyhyLMvXpO5mvUXcM6Fs87Ub76t5GG3mrRm%2FOc9PkDJK3hwTDzchaeWriroqO74vLJorMjfVNVZQ%2FSWQXZX3ylK%2BgUoy11lnk9TRzcEesbGInKD9Og6QW7cg96FtSOEIUR9VhBgzo7upFP0elABTU0%2FSMK5HSgYMrE%2BcbEC205R0gZOYm53NyruIagF3Jyb7nM%2Brizm407IaojQWtP6BULcNvBGPdVANTFAbVz98IxuIkRp0lwPJ5q6Lp2H9cTuNLsxlMTMGqIP026djxEloxypaEemH24P6zFIqE7ibQpZTmKujKUhsMrN3fOoNjNne93Fb2%2F4TsJTSmIMIe%2FHy3HWE384Zb4zUHwaXfA4XirucRXOKX4MGEY2s%2BrkN176xhGjqlPRVd2zMN6sNFV7St%2FAaUgZ9f5MCCG4uqkxlo4YhMypY5MUYV5RlBHAiOqidRZ5Gk3ZHRSWr6sVZytu3BczfR6UqLKMJ0Iw25S0uPaTmrXuWzOFO%2F45lnzrHCa%2FQucp4qoymrl9YI84srtn1VMlUtQW3fqpJw9HTui%2FR7tKz5dIt5ezyz03fFxsE0iCqOEtCdEriW%2Bq6apDlm2f0WNlCEaVz8ywAa4Oi46l8Qa%2BTSonsd1bScI9bBI8ijxFkFBcbQ5L8yTsSfQpjFHU6MDql17owWXbrf8QlyjJTONvIuoVpJ6jcuUYFfIOE5wVNYrbdtLqNpUx1AhWK53kgNezeHUaryV3erCgStasfkZSWqfovsVefBtGZwfhlxU2Q5cZZ2b%2F7giz3aMbvvgcqebvJIAzDjcg8acnqPDwS4yniAU55bohwXa5gG%2FX46xWDRrtCDz6JZl0HK7MjryNL1oWuj0npqtUI9pGYVqc8c7cNdFH0GYdaQ%2BXekQ8asXjmDxke%2BWPNvTnQEF2MX4Dfc8GDEF%2BSgW1ZR0ovoMQyPYCV1zAIHofBf3ipXTCrqv%2BtK%2FNNCyY2k%2FmlXuoHQsZUZC6jxAJnZnWC8eQUIqCcjZlzyzXaO1WSU819Xz7QLOnwZyzi%2F9lSjuYM4jX7hZJk61hF8Y2m96nGh0rRsUPXO7E1%2B7fLjnWCQ9V%2Bh9eYumO68NVVGx0X2Xziv85oVDejaxcROGdXSINKq5ybjlKbZ5upHU5TYsCq16T63LQTBNHyhVCjQeBFI3JP4pVDzrFLULwiIhKo9aTpvxCXFED2zaXYmZx3mFZoala%2BRIJtPWcHV0HfvLrl9P8lKV6EOM%2Bt68UHS14jmiulKHoZepwA3aO2DdEcWOnGDmsYUHOvR1UkmP3DWIRPt%2BkNQaVhzUyGha3tDetZH1WG2uXj%2F0C4IdizHKQWhrn%2FtnTDUB2GlQPJYyfZCkJQQFDT1%2FRyindhXHZ0dAfOF6Htn6XcPNZfTaQ5E%2BqDZqWCOzbRUrgoavaiqiKTdoeoveC0nDj7sEOM9gl%2BjYsNQ7itnF1f4cSGGFGQkxnkpm5xVN7lQPwrVLKO4gwZUHx%2BwP0D0mfYOvCOavMHshp6uaisaMPBq41Qr2XkPES%2FfQN8cd78mhkzSerqwgIHEwjpqqeYOxaRIj1qyvMJxUOLsyDzdtzlEKowg33KUK7t4Oce%2Bxg76tiNnydDjAjM1O8kJLqV19HkDfcL5hO1AFXSPD0OkVFXHlLXBfZj1JGlmbMZMU5jq%2Bmgt6AZc8jHYbaLehcGcRCnlqMKDdSvoygro0OiE6MuHWALpy48i66ahNabkyZB2ecFGg8AkGlsw9lt3ZX9S0gLCWJqkWyJSUfFriVLJbDy57nVpuGdS46XnU95na7Ihq9E6swlhuJ9vtq01A9Ip51Iw9aU7B3vzTbCKIZ83WrXiwqCqsAE9SurDG4%2BxfKKyfZyQaWG806Jrlqx2LyMpeBVGbn9aZLC9XYyqkI8xctESJHM0zoBRT5YANDzWsVzOHgaQ%2FwGwD%2BoKA8neGh%2Fs8QVFHR2fPrRWGc0DLcQomWlULZDyPYbDlFWhAHDXgDYeIX3VYfNFRd9DFB3dzV9tzOmUO2YUdMjPRM%2BVWrhGRjq%2BEgNDiw93Ue1boxFJkSOmMCyxxaG4xeVtmXp%2FpSnYWImrEN3NH%2BRT8G4Ncb8rguYoFEHYxQ43PbIYoCgy0jFTD6tARXTtci%2Fy4qHZY6PI0yq4RkkAUmrFktkZOIOK%2BseJGRCbnqrCoe51nIOrUzDMasY4kNms00RLR4kbSMJjLKsHHDPh81uopn9FzdFxbPOe5jCBsCGBc0qERknGg6skcDPQhsa7x7IuedHkM0AZMMTg8WegRsbV6koGVy83Y4BZFkm8bZAuXScZI7%2BXeCvZTm%2Bxih6nvqL7jdi4fMTehvZwG6raeVSwq2SWuQ%2Fx2kRH9YudNRGIeroMVaEtjEkemNV4WJ1i0WfV%2BIIbYDYXgrjhSLkOf1cLbxUWAf%2B%2FXc8ucoAGcqdPtASsmzriRVVRRNhciTlxQqyiHRKInOG%2B7dVtLU46PB2k5QTxdTPPYssfpxmrdVOO3GbX9HSepbSfSOt1CWI3dQJ1xvy5NqjBVJtJk6iky9DRrB6ViSr5PXIueASAlm0evzcGLscaufA0d2MecmXp8mXMYs5IlJ%2BLgktJgC7usJdoLM3DqpTUoTetCeumvl1AfD10%2BDlbEsOehhX4wvcZDq4ZuDI6fkgXGkddAOdblSM8Fk90XQ8CBTJvBnmhW81yS0J9QkZHChEfOzlE2uO5xuoQGc8cVz2BBTuv2reSUUKvYfhh12q0vCIXePTuNavbq0uvdYYRjn5cuad%2BydEXH6ZWiG7XT5LvoaI47ri%2BRBlHpm7iTJ88uGlACSLV5gKDm%2FEt91wWIi8FiZla0b6Xh2g8NQcTJE3DXX4u0pOJjthbc9QwNBOZ72V1qHweeO5rByp9IYeXzvYSSrhkCGz2OAqsk3DO37jxF95J%2Bki7HSzDTPFsPu%2BNZPT9tCn9egsYZ96WGa6nl%2BBReXfXxlO2X5%2BWA2Dt0GsajhMwPiJddflAxLCbXJVYL38Pd8rhcpoNqCGG7m2BQl9p8vUjUWS31%2BVTZsImyutPdvcX0rJwlAa589kSGmj3oV0kCruLEwPDVTccbTvsika65W56wiKDnNnSLdiadG16dnYTynwl%2BLAxvcssGOIN1lk%2FZabH1Sj%2BiSDEio9rOPdWQyq2lLs%2ByQs5t2UjIVXwMJ428PlGTejLHCQxX71vkjuayPCk29DIc1cluvz%2FDoEPb3RQz2fNeU2PUroVhC10XcXuBMlFJYFVD7%2BqsmovOLlqzFRL7Iu1KWDrWszo2klyZzBmGnh7pKLKSQ5g0uTgL1Wzh8m05wJqtL0bc7p6zbgujrfQTfo5tNKDCHao4fuF2lxLWbdjDP4GVzPrlBSZ%2FUjhvOtmp17dtwCADdC6nK1IAP6uT5DFkI5jnoj00VD%2BNWZATJyCf9bUDtVS37OFKoDZEoO%2BPQDCU%2BwBPzmlAD9XMBD2%2BB%2BWiSsEohndOdn6LnuAzHa8d1Tn9Xjt0prK3kT3lSPsIGcHf7Of4y6QuFQFAPhKVg8WveoEZhuOeFKc9x8e%2BxBnozoPL7vnM%2B55Ka5U%2Fs7MsSI1WwzxyAoVQ1SFlRsFg5UmMQh8Iyuph6inolH0psCfMMkfFwClYuHpaIFUsR6%2B1QUrXc8gaUcGklBuxpzqt4gFFBjyGBj3r%2BIhMI0g9HSuTlaewe5xWKFyo06G65Ll0cvWdix1Y%2FfV86l7bfjxe7UXkQbnA97OcER6JpOQOvekFUR2xg5A%2FLsgNPtKKj844O1Izz6TggGwCP1KRxKGs6pmrohTPm55dJ4KczhEXVDBN2rWOqyj%2BlMrL0rTiYR6iW1wTBMXX1kAlSPx4FtFePNN3UWsckGYE3dSnDTHqlEsENTTpBJmwGJb6i1bZQ%2FooTCG6ygTMBRBKJZxpPrTtoCdl2jce8gajB0a6lBle4iYeBcOOb8cTfqRrvK72bKnMDBFw7i5C8rbqwvokJbZd9au7IDvtrl7FFqEXMXhSp%2BIGrt9BfEAzoGZO5eqmTDNYLRZ4w3dyphs9cD%2F90Y9SeWWCxy0kyD63eGjYFCPZLVKg2RKpWMz4OV%2BMAqWZYZTWhGskeB%2FcHM%2FTukur4o9u12Q5y6VHDdorktiTQnoWRa%2FHccA7XkJ83IxySYfW5PNKzSbMNQlLESd9Mp1pGkk8zNVx8nlxstFAjnqc2ne7gQ8Lyp1qOIeTFPFe4AU4tSxs4Fn1Imb64wEdO2dhmYVLUOd9QdAmDbwF6DEStRMb7tpx4kjo8xnDszu56CTQdySPiDtMhB97RZAnqU711yTer2fXaliTeT0eQEoi9EJbpt6fWTRGHoarivQTSB3H%2BSE5N%2BVowKejxJROuYRKNnvJQJHYdHeQvUKzOnd3f3DOniU4aivJp6moKMHd%2BRQsI2EdCoqlADlFY%2BKLnWffodgVfKTQ9GjY1AzBc1hSZN8kTn29HTk6Q1FNSixQIM0PGDGHQG2j7qlBa7VRYl9bdBQZHvsUBfhdTyNF87mCBUdPVaD6t%2BSJKcw6SUqmZJlyrC02vA%2F4kU%2Fm6qIoSBKXoYXb8PHq2Nxl3AWRcHce5%2FVJqe5eQUQ22rPVrWJ5bikvPKzEOUE1SypnC4jcs1BCB5jmaOXnMNcNFLWaJxOgOGXprF3gorlpwu3z2QhlEkEYL4Tfcpk9vRYdjewVe%2BchRJy0WXVOgpKaxel5W50mY5X90vSGNVP4PbAlhI17H055n1lQCU6sdu5GbolnljounU3DGGn0d%2BVE%2BhoNc6drj3UOTHJqktOti4wv9EGyHwWLUVEqCfKh8a7mXo6VIXGsJAnSJZLpRQI5HnwYMaFOdQjUzCXDZWpy9KAXsU9MY5%2F3FFtZjpNYsHQ6Z9TVt6KVUpvb7hZAfxb2lF7FmMan8Pl5Mp5RFNqUFR0FubSNoKq5k1b7fJycOUw8i%2FSM3nP4ZStMec0EaUyVyg%2B7Pi%2FISaR3L7ihTR0xc%2BOHiovZTTLOV%2B%2BCI515oHJUsEDGfz0eoMMpsAZLMjSqCGMS3XmPGBhmHp8qPcLKwMk4tm%2BUOHjaB%2F8mQAexBgyVtdSxt83Gm0X6rnhcJAfyVMw2jBA5cyPzyn7kVpPCJIToY6k%2B92lMmHHjishZu4fjjr1mCIystdnHQ93Opk%2FZboCT8qLJwNBRVrAvPlOaaIw3e2ZfXQ%2FTlKoURYTXHIIh4q5CfhricXniTQL2NiFyo0L7TOz2UsTGqsml1bP1PoH70O3KXnX6YNeGemvIyXv4LJ3LgVXlU9oTjomzBpXeGCu4HGrHnoUTJhE3u%2BkGQlVz5DgzWrkUL0O23VGtNWT1djJuP4Djdgx%2BwagH24bSiMzZIzjWzsVwr1CxtXChI%2FjIMo3Qoj%2B0%2Bh5j9riAPzm6C%2B5tpSrIYUj0umUfjEFoRzeoD4OCpQxNH%2B4wonkiD2LeHPlIkUlzpZSv6lspU%2FaO7ZOrYSgBY4evJ1R8B%2BMz3dzev2ip%2FCsEv61YNat7I0JbLFLNyszvYZY8U%2FvnisCnBfbMl0FahHvPHni%2FGBAbO9E1n%2BbJ%2Fm63cn89v54R4Ma9BiJLpvQ6Hy%2FwEbCEZykp34iudcLZjmOERU6YzsePQ90Eo9DTUZCOYlTgw4iHrD1RJ9bzxgZWFIiGO1iYJOQAAw3Z3k6w0F%2Bx1A1LFm0xoml6izXCcCL1pPGez5TXSO9OnGK1siiUMUjPhKVY75Qa5iULthI%2BtCSLFhV3Da661s4tdH6txxcBWSS%2BdiF5SldnVODtXuAOaJYOxMN042sjaCeEu1fU7mFH%2B%2BtBH05i7co8qAs4AOX0hKymfA4agdOQLL1Tj8c5ul5V%2FSRKdXXcrba2ux2m9CTiZ%2FmvNjZbsnQEv0wDP%2FtTkcQtpzeRxrWEpnMkousZiuhThiB6lSKIXKcIoXDnVS0f6kmMfe51o1hK9v08mRXP%2F1n6yD9gWv0hfYRBPjL9MPwLD%2Bwr%2FgiFfoc8iv4g9gj6J9gjX1gjHxikn6geXzGbPvLDhO9x%2Br4lOn2hheQVLLzKHMayagh96CiFF0Ptb8Oc%2FkjdoN%2FoBv%2Bebr5H7SF%2BlG6%2BEAk3Fua%2FTtRCv6FpYwz5HXX%2Bm3mYMN%2FeeJgbD3PjYf4%2Fmzf2iYf5HfP%2BNzMxcXpjYm5MzI2JuTExNybmxsT8zzMef9axNibmxsTcmJgbE3NjYm5MzI2JuTExNybmxsTcmJgbE3NjYm5MzI2JuTExNybmxsTcmJgbE3NjYm5MzI2JuTExNybmX2Psn4qJ%2Bca1%2BgsxMXHmv4aJ%2BU908%2FMxMcnP78OMp1%2BhCHu%2F%2FBXdiHkbMe9rYl4fpy8W12cmHoLsiN2PfXktStAit%2FuaiYf%2BSCYe9dFYqc%2BWSnzvbcgkQf4oW%2F3MaN9eh%2FxXeh0y%2BW1s%2Fs%2B%2FD5n8%2FALdjYn%2FJ9XJYB%2FV%2BRO8D5n8%2FMb0jYe%2FhfuNh%2F8vGzf9ja%2F%2BCd6HTP6J%2FzW1sfA3Fv7Gwt9Y%2BBsLf2Ph%2F5WY8xsLf2Phbyz8jYW%2FsfA3Fv7Gwt9Y%2BBsLf2Phbyz8jYW%2FsfA3Fv7Gwt9Y%2BBsLf2Phbyz8jYW%2FsfA3Fv7Gwt9Y%2BBsL%2F%2Bdkyv%2FXsPDJf8IN%2B%2BlY%2BOTnV7T%2BX2Xh%2FxPd%2FIQs%2FD%2Fxfs2NhfkHNG3yEwvzP%2F8%2BZPLzf3nZeJgbD3PjYf7r5o1%2B4mH%2B59%2BHTLIbE3NjYm5MzI2JuTExNybmf57x%2BLOOtTExNybmxsTcmJgbE3NjYm5MzI2JuTExNybmxsTcmJgbE3NjYm5MzI2JuTExNybmxsTcmJgbE3NjYm5MzI2JuTEx%2Fxpj%2F1xMTOYvxsT88mLR%2FwYm5j%2FWzc%2FHxPyi9I%2FvQ37Ew7i9DHlj5f33vgz597ca%2FxvehgxriqYZv7omQ9GfmiiGPf4H)

## Table of Contents

- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Modules](#modules)
- [Variables](#variables)

## Project Structure

The project is structured as follows:


![assignment](https://github.com/David-Edoh/Altschool_Terraform/assets/45123163/0f3ad1ae-f347-4157-b3db-916982b7e535)


- `main.tf`: Main Terraform configuration.
- `variables.tf`: Variables used across the project.
- `outputs.tf`: Output variables.
- `modules`: Directory containing modularized configurations.

## Prerequisites

Before using this project, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed.
- AWS credentials with appropriate permissions configured.

## Usage

1. Clone the repository and setup .tfvars files for the different environment:

    ```bash
    git clone https://github.com/David-Edoh/Altschool_Terraform.git
    cd Altschool_Terraform
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Adjust the variables in `dev.tfvars, prod.tfvars, and staging.tfvars` to match your environment.

4. Apply the Terraform configuration:

    ```bash
    terraform apply -var-file="prod.tfvars"
    ```
    Note: Adjust the -var-file arg between dev, staging or prod depending on which environment you want to deploy to.

## Modules

### Instance Module

The `instance` module deploys EC2 instances to the specified regions and environments.

#### Variables

- `region`: AWS region.
- `access_key`: AWS access key.
- `secret_key`: AWS secret key.
- `ami_id`: AMI ID for instances.
- `instance_type`: EC2 instance type.
- `availability_zones`: List of availability zones.
- `environment`: Environment name.
- `instance_count`: Number of instances to create.

### VPC Module

The `vpc` module creates a VPC in the specified region and environment.

#### Variables

- `region`: AWS region.
- `access_key`: AWS access key.
- `secret_key`: AWS secret key.
- `vpc_cidr`: CIDR block for the VPC.
- `environment`: Environment name.

## Variables

- `access_key`: AWS access key.
- `secret_key`: AWS secret key.
- `ami_id`: AMI ID for instances.
- `instance_type`: EC2 instance type.
- `environment`: Environment name.

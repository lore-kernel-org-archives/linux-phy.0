Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 428C3C19F28
	for <linux-phy@archiver.kernel.org>; Wed,  3 Aug 2022 15:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRntu8VJqNqdawUpD9W72h70DKkDGMjQaiVO5tivz6k=; b=JCeuK/cVn64HHl
	d2UVk8MDFDIFbLaPHcRVG6jtpZLaVGTYRAI/re0Mp79U9xBT9KK5D4PicjPVztC41ES3ISGX6jGow
	/MhCvf0UcFKjjCle6cTVq8f0VG5jLLRcqHs+ug6iyrenpYEKC/UUUx4UtfBgY2Yc6zBpeXPptpoRe
	/38u11PvQi8PBt0EwLOeik2tHMYFn7xkqkFi1s1w4eAIp8R/ReK6XOaJuVfp/fvFn/8T+GwdoxOjN
	NQeq3/5KIBnV5aBTuhLbVqhsrbBpPxPBMHMsWS7uZMN+lGJlMTokyIClt3fSkrgADrJn/fmy4lLPQ
	OAmATk3Z8lcebwdh8J+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJFrj-006xXm-DE; Wed, 03 Aug 2022 15:00:55 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIrBX-00E4J9-GX; Tue, 02 Aug 2022 12:39:45 +0000
Received: from p5098d998.dip0.t-ipconnect.de ([80.152.217.152] helo=hermes.fivetechno.de); authenticated
	by wp126.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1oIrBR-0003Qp-Dc; Tue, 02 Aug 2022 14:39:37 +0200
X-Virus-Scanned: by amavisd-new 2.12.2 using newest ClamAV at
	linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
	(authenticated bits=0)
	by hermes.fivetechno.de (8.15.2/8.16.1/SUSE Linux 0.8) with ESMTPSA id 272CdYrP002926
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Tue, 2 Aug 2022 14:39:35 +0200
Message-ID: <88f2de00-32e3-ed74-082f-c0972a81f0f8@fivetechno.de>
Date: Tue, 2 Aug 2022 14:39:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: [BUG BISECT] phy: rockchip-inno-usb2: Sync initial otg state
Content-Language: de-DE
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
        Samuel Holland <samuel@sholland.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220622003140.30365-1-pgwipeout@gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
In-Reply-To: <20220622003140.30365-1-pgwipeout@gmail.com>
X-bounce-key: webpack.hosteurope.de;m.reichl@fivetechno.de;1659443983;9ecc8262;
X-HE-SMSGID: 1oIrBR-0003Qp-Dc
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220802_053943_721752_5F520037 
X-CRM114-Status: GOOD (  14.22  )
X-Mailman-Approved-At: Wed, 03 Aug 2022 08:00:54 -0700
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGksCgp3aXRoIGxpbnV4LW5leHQtMjAyMjA3MjggcmszMzk5LXJvYy1wYyBkb2VzIG5vdCBib290
LgpCaXNlY3RpbmcgcG9pbnRlZCB0byB0aGlzIGNvbW1pdC4KQnkgcmV2ZXJ0aW5nIHRoaXMgY29t
bWl0IHRoZSBib2FyZCBib290cyBhZ2Fpbi4KClsgICAgMi4zOTg3MDBdIFVuYWJsZSB0byBoYW5k
bGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MgCjAw
MDAwMDAwMDAwMDAwMDgKWyAgICAyLjM5OTUxN10gTWVtIGFib3J0IGluZm86ClsgICAgMi4zOTk3
NzJdICAgRVNSID0gMHgwMDAwMDAwMDk2MDAwMDA0ClsgICAgMi40MDAxMTRdICAgRUMgPSAweDI1
OiBEQUJUIChjdXJyZW50IEVMKSwgSUwgPSAzMiBiaXRzClsgICAgMi40MDA1OTRdICAgU0VUID0g
MCwgRm5WID0gMApbICAgIDIuNDAwODczXSAgIEVBID0gMCwgUzFQVFcgPSAwClsgICAgMi40MDEx
NjFdICAgRlNDID0gMHgwNDogbGV2ZWwgMCB0cmFuc2xhdGlvbiBmYXVsdApbICAgIDIuNDAxNjAy
XSBEYXRhIGFib3J0IGluZm86ClsgICAgMi40MDE4NjRdICAgSVNWID0gMCwgSVNTID0gMHgwMDAw
MDAwNApbICAgIDIuNDAyMjEyXSAgIENNID0gMCwgV25SID0gMApbICAgIDIuNDAyNDg0XSB1c2Vy
IHBndGFibGU6IDRrIHBhZ2VzLCA0OC1iaXQgVkFzLCBwZ2RwPTAwMDAwMDAwMDEzNzYwMDAKWyAg
ICAyLjQwMzA3MV0gWzAwMDAwMDAwMDAwMDAwMDhdIHBnZD0wMDAwMDAwMDAwMDAwMDAwLCBwNGQ9
MDAwMDAwMDAwMDAwMDAwMApbICAgIDIuNDAzNjg3XSBJbnRlcm5hbCBlcnJvcjogT29wczogOTYw
MDAwMDQgWyMxXSBTTVAKWyAgICAyLjQwNDEzMF0gTW9kdWxlcyBsaW5rZWQgaW46IGlwX3RhYmxl
cyB4X3RhYmxlcyBpcHY2IHhoY2lfcGxhdF9oY2QgeGhjaV9oY2QgCmR3YzMgcm9ja2NoaXBkcm0g
ZHJtX2NtYV9oZWxwZXIgYW5hbG9naXhfZHAgZHdfaGRtaSByZWFsdGVrIGRybV9kaXNwbGF5X2hl
bHBlciAKZHdjM19vZl9zaW1wbGUgZHdfbWlwaV9kc2kgZWhjaV9wbGF0Zm9ybSBvaGNpX3BsYXRm
b3JtIG9oY2lfaGNkIGVoY2lfaGNkIApkcm1fa21zX2hlbHBlciBkd21hY19yayBzeXNjb3B5YXJl
YSBzeXNmaWxscmVjdCBzdG1tYWNfcGxhdGZvcm0gc3lzaW1nYmx0IApmYl9zeXNfZm9wcyB1c2Jj
b3JlIHN0bW1hYyBwY3NfeHBjcyBkcm0gcGh5bGluayBkcm1fcGFuZWxfb3JpZW50YXRpb25fcXVp
cmtzClsgICAgMi40MDcxNTVdIENQVTogNCBQSUQ6IDcxIENvbW06IGt3b3JrZXIvNDo2IE5vdCB0
YWludGVkIAo1LjE5LjAtcmM4LW5leHQtMjAyMjA3MjggIzQzNwpbICAgIDIuNDA3ODY4XSBIYXJk
d2FyZSBuYW1lOiBGaXJlZmx5IFJPQy1SSzMzOTktUEMgTWV6emFuaW5lIEJvYXJkIChEVCkKWyAg
ICAyLjQwODQ0OF0gV29ya3F1ZXVlOiBldmVudHMgcm9ja2NoaXBfdXNiMnBoeV9vdGdfc21fd29y
awpbICAgIDIuNDA4OTU4XSBwc3RhdGU6IDYwMDAwMDA1IChuWkN2IGRhaWYgLVBBTiAtVUFPIC1U
Q08gLURJVCAtU1NCUyBCVFlQRT0tLSkKWyAgICAyLjQxMTYzNF0gcGMgOiByb2NrY2hpcF91c2Iy
cGh5X290Z19zbV93b3JrKzB4NTAvMHgzMzAKWyAgICAyLjQxNDMzMl0gbHIgOiBwcm9jZXNzX29u
ZV93b3JrKzB4MWQ4LzB4MzgwClsgICAgMi40MTY5NDhdIHNwIDogZmZmZjgwMDAwOTM3M2Q2MApb
ICAgIDIuNDE5NDA2XSB4Mjk6IGZmZmY4MDAwMDkzNzNkNjAgeDI4OiAwMDAwMDAwMDAwMDAwMDAw
IHgyNzogMDAwMDAwMDAwMDAwMDAwMApbICAgIDIuNDIyMTk5XSB4MjY6IGZmZmYwMDAwZjc3OWZj
YjggeDI1OiBmZmZmMDAwMGY3N2EzYTA1IHgyNDogMDAwMDAwMDAwMDAwMDAwYwpbICAgIDIuNDI0
OTc4XSB4MjM6IDAwMDAwMDAwMDAwMDAwMDAgeDIyOiBmZmZmMDAwMDAxMGM4MjU4IHgyMTogZmZm
ZjgwMDAwODg4ZWMxMApbICAgIDIuNDI3NzY4XSB4MjA6IGZmZmYwMDAwMDEwYzgyZjAgeDE5OiAw
MDAwMDAwMDAwMDAwMDBjIHgxODogMDAwMDAwMDAwMDAwMDAwMQpbICAgIDIuNDMwNjA0XSB4MTc6
IDAwMDAwMDA0MDA0NGZmZmYgeDE2OiAwMDQwMDAzNGI1NTAzNTEwIHgxNTogMDAwMDAwMDAwMDAw
MDAwMApbICAgIDIuNDMzMzkwXSB4MTQ6IGZmZmYwMDAwMDA3MDgwMDAgeDEzOiBmZmZmODAwMGVl
Yzk2MDAwIHgxMjogMDAwMDAwMDAzNGQ0ZDkxZApbICAgIDIuNDM2MTg1XSB4MTE6IDAwMDAwMDAw
MDAwMDAwMDAgeDEwOiAwMDAwMDAwMDAwMDAwYTEwIHg5IDogZmZmZjAwMDAwMWFhN2E3NApbICAg
IDIuNDM4OTU4XSB4OCA6IGZlZmVmZWZlZmVmZWZlZmYgeDcgOiAwMDAwMDAwMDAwMDAwMDE4IHg2
IDogZmZmZjAwMDAwMWFhN2E3NApbICAgIDIuNDQxNjY4XSB4NSA6IDAwMDA3Mzc0NmU2NTc2NjUg
eDQgOiAwMDAwMDAwMDAwMDAwMDJmIHgzIDogZmZmZjAwMDAwMzU2YzgwOApbICAgIDIuNDQ0NDA3
XSB4MiA6IGZmZmY4MDAwMDkzNzNkYTQgeDEgOiAwMDAwMDAwMDAwMDBlMmFjIHgwIDogZmZmZjgw
MDAwODg4ZWIzNApbICAgIDIuNDQ3MTkwXSBDYWxsIHRyYWNlOgpbICAgIDIuNDQ5NTU3XSAgcm9j
a2NoaXBfdXNiMnBoeV9vdGdfc21fd29yaysweDUwLzB4MzMwClsgICAgMi40NTIxNjldICBwcm9j
ZXNzX29uZV93b3JrKzB4MWQ4LzB4MzgwClsgICAgMi40NTQ2ODRdICB3b3JrZXJfdGhyZWFkKzB4
MTcwLzB4NGUwClsgICAgMi40NTcwNTZdICBrdGhyZWFkKzB4ZDgvMHhkYwpbICAgIDIuNDU5MzU0
XSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKWyAgICAyLjQ2MTcyOF0gQ29kZTogOTEwMzcwMTUg
Mjk1YmUwMDEgZjk0MDNjNzcgYjk0MGU0MTMgKGY5NDAwNmUwKQpbICAgIDIuNDY0MzM4XSAtLS1b
IGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0KCkFtIDIyLjA2LjIyIHVtIDAyOjMxIHNj
aHJpZWIgUGV0ZXIgR2VpczoKPiBUaGUgaW5pdGlhbCBvdGcgc3RhdGUgZm9yIHRoZSBwaHkgZGVm
YXVsdHMgdG8gZGV2aWNlIG1vZGUuIFRoZSBhY3R1YWwKPiBzdGF0ZSBpc24ndCBkZXRlY3RlZCB1
bnRpbCBhbiBJRCBJUlEgZmlyZXMuIEZpeCB0aGlzIGJ5IHN5bmNpbmcgdGhlIElECj4gc3RhdGUg
ZHVyaW5nIGluaXRpYWxpemF0aW9uLgo+IAo+IEZpeGVzOiA1MWE5YjJjMDNkZDMgKCJwaHk6IHJv
Y2tjaGlwLWlubm8tdXNiMjogSGFuZGxlIElEIElSUSIpCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIg
R2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyB8IDYgKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC1pbm5vLXVzYjIuYwo+IGluZGV4IDY3MTE2NTlmNzI3Yy4uNmU0NDA2OTYxN2RmIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+ICsr
KyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+IEBAIC0x
MTYyLDYgKzExNjIsMTIgQEAgc3RhdGljIGludCByb2NrY2hpcF91c2IycGh5X290Z19wb3J0X2lu
aXQoc3RydWN0IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHksCj4gICAJCQkJCUVYVENPTl9VU0JfSE9T
VCwgJnJwb3J0LT5ldmVudF9uYik7Cj4gICAJCWlmIChyZXQpCj4gICAJCQlkZXZfZXJyKHJwaHkt
PmRldiwgInJlZ2lzdGVyIFVTQiBIT1NUIG5vdGlmaWVyIGZhaWxlZFxuIik7Cj4gKwo+ICsJCWlm
ICghb2ZfcHJvcGVydHlfcmVhZF9ib29sKHJwaHktPmRldi0+b2Zfbm9kZSwgImV4dGNvbiIpKSB7
Cj4gKwkJCS8qIGRvIGluaXRpYWwgc3luYyBvZiB1c2Igc3RhdGUgKi8KPiArCQkJcmV0ID0gcHJv
cGVydHlfZW5hYmxlZChycGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPnV0bWlfaWQpOwo+ICsJ
CQlleHRjb25fc2V0X3N0YXRlX3N5bmMocnBoeS0+ZWRldiwgRVhUQ09OX1VTQl9IT1NULCAhcmV0
KTsKPiArCQl9Cj4gICAJfQo+ICAgCj4gICBvdXQ6CgpHcnXDnywKLS0gCk1hcmt1cyBSZWljaGwK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

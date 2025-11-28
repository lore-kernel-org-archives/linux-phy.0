Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D016D116EA
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 09:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpLrUgtzGK6m3L5KDM86x4Ir3/n63mUnnWHXMzkPiGs=; b=RYO5/4ej9t5OP/
	pNGBLFWzCgEGRsPGkiBJZ733/ECIOR30W3xJyG8jjsPXjf2R24ToXztjfD0bE7xZ/DdGivji1rBD2
	T0RSWTkUgHU75BPh/0em25/n5KS535yCp1Of+S9JLxdfrOoNWJWJilWCuuBubz3zh28CMIU6HrUEh
	T24gaFyjJlSOcbH4ahPkBcHO6d/aTUJOWTuOXxf+UVRfc4gI6KWXJWbgTntH+AuC5CWJjFA0UEXPC
	q1uf8OGVYErf0DAnvNgt8guyhOKJ3uYo0iOhEUgd0JBNBt0aV9Z5yc/cZce7V6ICES0P26avHM/er
	6PVhMFR1SRgK1RdTENDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOv6f-00000000FV6-0RCx;
	Fri, 28 Nov 2025 09:49:37 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOv6b-00000000FUb-28Lz
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 09:49:35 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 98D334E41942;
	Fri, 28 Nov 2025 09:49:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6C16E60706;
	Fri, 28 Nov 2025 09:49:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 341BA103C8F6E;
	Fri, 28 Nov 2025 10:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764323358; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=poFRywdDw4b5kkwZmyK4oI1lM/Jt1iTCeXkK8T/qMZI=;
	b=JOi7Dg/LM5TzombJrQ065O6lY82NOE0PqDpI62p9G+hCU2Nny6Zibx6DElFKgfJlkaOgGs
	lkKgXIj8WeA098pZeP3jZ6qod1/LwYfFdaLkOzROuR5VSMPwvZrWDHcUb5WCNdX614W4cg
	/uNXuPuUS5aGYOTAjWLsNMLKmGNdc9a7L48csqvGS3C+bG7XtEHNsY6/zoiGhyaQAoIVvq
	3NUZYfA4cGXi8RJqMy2OWkRV4yeY/5wm8hPtelwVrh9Hy1rXMBolEEbSxA7lMZTOQ3B3l1
	ZBsyHAn8D6rfGXu6KZ2SpHYGc/ubtfv2kqLstQlKxC0cIbeeexd4fWcOYXslbQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Vladimir
 Kondratiev
 <vladimir.kondratiev@mobileye.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, =?utf-8?Q?Beno=C3=AEt?= Monin
 <benoit.monin@bootlin.com>, Maxime
 Chevallier <maxime.chevallier@bootlin.com>, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, =?utf-8?Q?Th=C3=A9o?= Lebrun
 <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v4 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
In-Reply-To: <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
Date: Fri, 28 Nov 2025 10:49:13 +0100
Message-ID: <87y0nq4hd2.fsf@BLaptop.bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_014933_706534_4AFB4725 
X-CRM114-Status: GOOD (  11.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGVsbG8gVGhvbWFzLAoKPiBBZGQgYm90aCBNQUNCL0dFTSBpbnN0YW5jZXMgZm91bmQgaW4gdGhl
IE1vYmlsZXllIEV5ZVE1IFNvQy4KPgo+IEFja2VkLWJ5OiBUaG9tYXMgQm9nZW5kb2VyZmVyIDx0
c2JvZ2VuZEBhbHBoYS5mcmFua2VuLmRlPgoKQ2FuIHlvdSBjb25maXJtIHRoYXQgeW91IHdpbGwg
aW5jbHVkZSB0aGlzIHBhdGNoIGFuZCB0aGUgZm9sbG93aW5nIG9uZQppbiB5b3VyIG1pcHMtbmV4
dCBicmFuY2g/CgpBcyB5b3UgZ2F2ZSB5b3VyIEFja2VkLWJ5IG9uIGl0LCBJIGJlbGlldmUgdGhp
cyB3aWxsIGJlIHRoZSBjYXNlLCBidXQgSQp3YW50IHRvIGJlIHN1cmUgdGhleSBhcmVuJ3QgZm9y
Z290dGVuLgoKVGhhbmtzIQoKR3JlZ29yeQoKPiBTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4g
PHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgo+IC0tLQo+ICBhcmNoL21pcHMvYm9vdC9kdHMvbW9i
aWxleWUvZXllcTUuZHRzaSB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRzaSBiL2FyY2gvbWlwcy9ib290L2R0cy9t
b2JpbGV5ZS9leWVxNS5kdHNpCj4gaW5kZXggMzZhNzNlOGE2M2ExLi5jZWM1YWQ4NzUyMjggMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9taXBzL2Jvb3QvZHRzL21vYmlsZXllL2V5ZXE1LmR0c2kKPiArKysg
Yi9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRzaQo+IEBAIC03Nyw2ICs3Nyw4
IEBAIGFsaWFzZXMgewo+ICAJCXNlcmlhbDAgPSAmdWFydDA7Cj4gIAkJc2VyaWFsMSA9ICZ1YXJ0
MTsKPiAgCQlzZXJpYWwyID0gJnVhcnQyOwo+ICsJCWV0aGVybmV0MCA9ICZtYWNiMDsKPiArCQll
dGhlcm5ldDEgPSAmbWFjYjE7Cj4gIAl9Owo+ICAKPiAgCWNwdV9pbnRjOiBpbnRlcnJ1cHQtY29u
dHJvbGxlciB7Cj4gQEAgLTIzMSw2ICsyMzMsNyBAQCBvbGI6IHN5c3RlbS1jb250cm9sbGVyQGUw
MDAwMCB7Cj4gIAkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiAgCQkJY2xvY2tzID0gPCZ4dGFsPjsK
PiAgCQkJY2xvY2stbmFtZXMgPSAicmVmIjsKPiArCQkJI3BoeS1jZWxscyA9IDwxPjsKPiAgCQl9
Owo+ICAKPiAgCQlnaWM6IGludGVycnVwdC1jb250cm9sbGVyQDE0MDAwMCB7Cj4gQEAgLTMwNSw2
ICszMDgsNDggQEAgZ3BpbzE6IGdwaW9AMTUwMDAwMCB7Cj4gIAkJCSNpbnRlcnJ1cHQtY2VsbHMg
PSA8Mj47Cj4gIAkJCXJlc2V0cyA9IDwmb2xiIDAgMjY+Owo+ICAJCX07Cj4gKwo+ICsJCWlvY3Ut
YnVzIHsKPiArCQkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKPiArCQkJI2FkZHJlc3MtY2Vs
bHMgPSA8Mj47Cj4gKwkJCSNzaXplLWNlbGxzID0gPDI+Owo+ICsJCQlyYW5nZXM7Cj4gKwkJCWRt
YS1jb2hlcmVudDsKPiArCQkJZG1hLXJhbmdlcyA9IDwweDEwIDB4MDAwMDAwMDAgMHgwIDB4MCAw
eDEwIDA+Owo+ICsKPiArCQkJbWFjYjA6IGV0aGVybmV0QDJhMDAwMDAgewo+ICsJCQkJY29tcGF0
aWJsZSA9ICJtb2JpbGV5ZSxleWVxNS1nZW0iOwo+ICsJCQkJcmVnID0gPDB4MCAweDAyYTAwMDAw
IDB4MCAweDQwMDA+Owo+ICsJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKPiArCQkJCS8q
IE9uZSBpbnRlcnJ1cHQgcGVyIHF1ZXVlICovCj4gKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TSEFS
RUQgMjMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyMyBJ
UlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCQkgICAgIDxHSUNfU0hBUkVEIDIzIElSUV9UWVBF
X0xFVkVMX0hJR0g+LAo+ICsJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMgSVJRX1RZUEVfTEVWRUxf
SElHSD47Cj4gKwkJCQljbG9jay1uYW1lcyA9ICJwY2xrIiwgImhjbGsiLCAidHN1X2NsayI7Cj4g
KwkJCQljbG9ja3MgPSA8JnBjbGs+LCA8JnBjbGs+LCA8JnRzdV9jbGs+Owo+ICsJCQkJbnZtZW0t
Y2VsbHMgPSA8JmV0aDBfbWFjPjsKPiArCQkJCW52bWVtLWNlbGwtbmFtZXMgPSAibWFjLWFkZHJl
c3MiOwo+ICsJCQkJcGh5cyA9IDwmb2xiIDA+Owo+ICsJCQl9Owo+ICsKPiArCQkJbWFjYjE6IGV0
aGVybmV0QDJiMDAwMDAgewo+ICsJCQkJY29tcGF0aWJsZSA9ICJtb2JpbGV5ZSxleWVxNS1nZW0i
Owo+ICsJCQkJcmVnID0gPDB4MCAweDAyYjAwMDAwIDB4MCAweDQwMDA+Owo+ICsJCQkJaW50ZXJy
dXB0LXBhcmVudCA9IDwmZ2ljPjsKPiArCQkJCS8qIE9uZSBpbnRlcnJ1cHQgcGVyIHF1ZXVlICov
Cj4gKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TSEFSRUQgMjQgSVJRX1RZUEVfTEVWRUxfSElHSD4s
Cj4gKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJ
CQkgICAgIDxHSUNfU0hBUkVEIDI0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCSAgICAg
PEdJQ19TSEFSRUQgMjQgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwkJCQljbG9jay1uYW1lcyA9
ICJwY2xrIiwgImhjbGsiLCAidHN1X2NsayI7Cj4gKwkJCQljbG9ja3MgPSA8JnBjbGs+LCA8JnBj
bGs+LCA8JnRzdV9jbGs+Owo+ICsJCQkJbnZtZW0tY2VsbHMgPSA8JmV0aDFfbWFjPjsKPiArCQkJ
CW52bWVtLWNlbGwtbmFtZXMgPSAibWFjLWFkZHJlc3MiOwo+ICsJCQkJcGh5cyA9IDwmb2xiIDE+
Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+ICAJfTsKPiAgfTsKPiAgCj4KPiAtLSAKPiAyLjUxLjIK
PgoKLS0gCkdyw6lnb3J5IENMRU1FTlQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5l
bCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

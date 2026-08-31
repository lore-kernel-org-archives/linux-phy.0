Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E27FC61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8P4+pjGBG7R3n2Cj+WMj+5ObRLHVQ6aqNRM4svTXLg=; b=rIL4gconXiIEU1
	VuBG9VtjnjDaRuj3cWTx0fwDfpTbzQtPm03pt4pUQoNMKoPPTra8whmfHCA++xkNpFxsRgyBPm2Nv
	FCo4+0KmYNAyMr+ld1KRvT8omKClWtwLcWka9HpDJqerscgm9t1oNHUivtWNNG2wp6V92Oqt9o3eC
	dmU4n252YSGhaKubjEjsksonS57BX3O0BGxwAclxcUkAsQc09SDkc8vbjrsZpH5ghCRmakRAM9Kc+
	U2zgNk2k69nrj9E9DE5NRbT2NYnNuqlvKk/U3wkZBfC6fhRel/pIUf2b2xQKO67Pu4peD8wqXf4Qf
	ru4WlYdoQ2URR/4lqsGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BUl-0000000AfJ0-3Zk9;
	Mon, 31 Aug 2026 23:32:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BUk-0000000AfIR-2lRZ
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:32:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DEEBD601DE;
	Mon, 31 Aug 2026 23:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06E641F000E9;
	Mon, 31 Aug 2026 23:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788219172;
	bh=lQyxYlmb3LjYZ3gRjJuagcil65+GbU2cuD9LmcjTRtw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P+hekDVxcLKFdPgHx4OKZrnIecF4XYOiwKr2OdzV93UqNpnub6cC68izBtmkXgc9X
	 6QqEWLdfu0HPpmT3n7wP3ztmcOAkIk5QVb/1P6DsDK148/SfILppapMVsYq0Yw9Q9Y
	 dMYzJsfEefBbtJypbJj1VjM7HldJ3r3iL4JPF1MVZLCX0vaISzCRXmM4y1tZxp5Y7A
	 K/ROu6YonQsYFljkMl/BFGuRYF/vRFC+tQAgTniLFYuGTlDFw8L57QFYSdkxb0KIjP
	 qJ6OABtsI6QSi0ICe9URZV0ScJK+YM3zgTZinGQTLT63/RdCKoOOd9AQUYfhpNe9Px
	 WhYtuZA6vXE8w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/6] dt-bindings: usb: ti,am33xx-usb: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, dmaengine@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260901-ti-am33-usb-v3-5-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
 <20260901-ti-am33-usb-v3-5-5e15c617d2e9@gmail.com>
Date: Mon, 31 Aug 2026 23:32:51 +0000
Message-Id: <20260831233252.06E641F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVW5kZWZpbmVkIGxhYmVs
cyBpbiB0aGUgWUFNTCBleGFtcGxlIGNhdXNlIGBkdGNgIGNvbXBpbGF0aW9uIHRvIGZhaWwgZHVy
aW5nIGBtYWtlIGR0X2JpbmRpbmdfY2hlY2tgLgotLQoKY29tbWl0IDhiMDJhZjJjNjMwZGIyMDRh
YWJiY2JjMTgyODQ4NGRiOTEyODMwYzAKQXV0aG9yOiBCaGFyZ2F2IEpvc2hpIDxqLmJoYXJnYXYu
dUBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogdXNiOiB0aSxhbTMzeHgtdXNiOiBDb252ZXJ0IHRv
IERUIHNjaGVtYQoKVGhpcyBjb21taXQgY29udmVydHMgdGhlIFRJIEFNMzN4eCBVU0IgV3JhcHBl
ciB0ZXh0IGJpbmRpbmcgdG8gRFQgc2NoZW1hLgpJdCBkcm9wcyB0aGUgVVNCIGNvbnRyb2wgbW9k
dWxlIGZyb20gY2hpbGQgbm9kZXMsIGFsbG93cyBzdGFuZGFyZCBwaHkgY2hpbGQKbm9kZSBuYW1l
cywgYW5kIG1hcmtzIHRoZSBsZWdhY3kgdGksaHdtb2RzIHByb3BlcnR5IGFzIGRlcHJlY2F0ZWQu
Cgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Rp
LGFtMzN4eC11c2IueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2Iv
dGksYW0zM3h4LXVzYi55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAw
MDAwMDAwLi4wYjM2YjlkZGZiNGE5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdGksYW0zM3h4LXVzYi55YW1sCgpbIC4uLiBdCgo+
ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgIHVzYkA0NzQwMDAwMCB7Cj4gKyAgICAgICAgY29t
cGF0aWJsZSA9ICJ0aSxhbTMzeHgtdXNiIjsKPiArICAgICAgICByZWcgPSA8MHg0NzQwMDAwMCAw
eDEwMDA+Owo+ICsgICAgICAgIHJhbmdlczsKPiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPiArICAgICAgICB0aSxod21vZHMgPSAi
dXNiX290Z19ocyI7Cj4gKwo+ICsgICAgICAgIHVzYi1waHlANDc0MDEzMDAgewo+ICsgICAgICAg
ICAgICBjb21wYXRpYmxlID0gInRpLGFtMzM1eC11c2ItcGh5IjsKPiArICAgICAgICAgICAgcmVn
ID0gPDB4NDc0MDEzMDAgMHgxMDA+Owo+ICsgICAgICAgICAgICByZWctbmFtZXMgPSAicGh5IjsK
PiArICAgICAgICAgICAgdGksY3RybF9tb2QgPSA8JmN0cmxfbW9kPjsKCltTZXZlcml0eTogTG93
XQpEb2VzIHRoaXMgcmVmZXJlbmNlIHRvIGN0cmxfbW9kIGNhdXNlIGEgYnVpbGQgZmFpbHVyZSBk
dXJpbmcgZHRjIGNvbXBpbGF0aW9uPwpUaGUgY29udHJvbCBtb2R1bGUgbm9kZSBhbmQgaXRzIGxh
YmVsIGFwcGVhciB0byBoYXZlIGJlZW4gcmVtb3ZlZCBmcm9tIHRoZQpleGFtcGxlIGR1cmluZyB0
aGUgdGV4dC10by1ZQU1MIGNvbnZlcnNpb24sIHdoaWNoIG1heSByZXN1bHQgaW4gYSBmYXRhbAoi
UmVmZXJlbmNlIHRvIG5vbi1leGlzdGVudCBub2RlIG9yIGxhYmVsIiBlcnJvciB3aGVuIHJ1bm5p
bmcgbWFrZQpkdF9iaW5kaW5nX2NoZWNrLgoKPiArICAgICAgICAgICAgI3BoeS1jZWxscyA9IDww
PjsKPiArICAgICAgICB9Owo+ICsKPiArICAgICAgICB1c2JANDc0MDEwMDAgewo+ICsgICAgICAg
ICAgICBjb21wYXRpYmxlID0gInRpLG11c2ItYW0zM3h4IjsKPiArICAgICAgICAgICAgcmVnID0g
PDB4NDc0MDE0MDAgMHg0MDA+LAo+ICsgICAgICAgICAgICAgICAgICA8MHg0NzQwMTAwMCAweDIw
MD47Cj4gKyAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJtYyIsICJjb250cm9sIjsKPiArICAgICAg
ICAgICAgaW50ZXJydXB0cyA9IDwxOD47Cj4gKyAgICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9
ICJtYyI7Cj4gKyAgICAgICAgICAgIGRyX21vZGUgPSAib3RnIjsKPiArICAgICAgICAgICAgbWVu
dG9yLG11bHRpcG9pbnQgPSA8MT47Cj4gKyAgICAgICAgICAgIG1lbnRvcixudW0tZXBzID0gPDE2
PjsKPiArICAgICAgICAgICAgbWVudG9yLHJhbS1iaXRzID0gPDEyPjsKPiArICAgICAgICAgICAg
bWVudG9yLHBvd2VyID0gPDUwMD47Cj4gKyAgICAgICAgICAgIHBoeXMgPSA8JnVzYjBfcGh5PjsK
CltTZXZlcml0eTogTG93XQpXaWxsIGR0YyBjb21waWxhdGlvbiBmYWlsIG9uIHRoaXMgcGhhbmRs
ZSByZWZlcmVuY2U/IFRoZSB1c2IwX3BoeSBsYWJlbAp3YXMgcmVtb3ZlZCBmcm9tIHRoZSB1c2It
cGh5QDQ3NDAxMzAwIG5vZGUgaW4gdGhlIGV4YW1wbGUgYWJvdmUsIG1lYW5pbmcKdGhpcyByZWZl
cmVuY2UgaXMgdW5kZWZpbmVkIGFuZCBtYXkgYnJlYWsgbWFrZSBkdF9iaW5kaW5nX2NoZWNrLgoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDkwMS10aS1hbTMzLXVzYi12My0wLTVlMTVjNjE3ZDJlOUBnbWFpbC5jb20/cGFydD01Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

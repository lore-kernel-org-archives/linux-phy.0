Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F47C61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 13:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRzTQJE/p/MY6W/n7/CXuomaumRoVHzZFbIoGGH3Znc=; b=seyLGQRFdnsloZ
	b8z5o64sHxYwkPbjGmH1K19hJq7hvOiOGqZ2MiaMtVUfv9M3yoUYlmljhtdZ3oa2ZBYx6buCtYOft
	1rlAhSTUzt2xzTVYwgdfXZCVzzF1zEOkT9W7vQ9RY54sQFM1gpC4DiRpsDUMDoKn7xxI6J0rr8Hlm
	O2F6WqoCElJ+zONZzf3tYQK5/pvQ0DoRAn2EC/cpRaSpKV4J+AV1xKtIikkYNgiLjCMjS8Okol4qd
	9uTeB4TeNIjz3O2hvi6GM4XJfvAwQTmnoM4aZsL7NPEI358w5dkRmIB+poL3JpLTCO4kaVNo+McPL
	Vve3sJVglCGqbcSCGv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wza4d-000000042t6-0CK6;
	Thu, 27 Aug 2026 13:23:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wza4b-000000042so-1QnI
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 13:23:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C4C0C600D3;
	Thu, 27 Aug 2026 13:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D5231F00A3A;
	Thu, 27 Aug 2026 13:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787836994;
	bh=S+vtg+DIQfssWs98xvhGpRu8Li1wu1OsFzS1bFiuqdc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hebwfOWXISMD9hNZMcwbuCt57m/aJZ+ybKmOyk7o9qMZa3QaeCBw4/pFwBs26B+Qi
	 tia0PhxQCCoWIdNxQkdhqwyVMZx/sjRJ8pMxNE6u3W63c7AjyuMaMlLWolR6KoScBM
	 wkwxEl6ZgGxLTPpDkBWpgWZ8yu6CcKyfhFlxyr0MzU7iiI4Kyh0YfeWH2kHKZekdNw
	 AUtR0DdvFsZYH8FkS0eG3kL8I+FOmlgRUz/l08pyYm0ZoulotVF2z+V2uZfPi5FwXH
	 2+5vcF/7tWKmb8YLY5KQ09RHaGx/kfWK3i7LvHsIXiJxHkc6wHNGb12QraGYem83bT
	 b6gJCbmABs6ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: airoha: Document support for
 AN7583 Gen2 PCIe PHY
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260827131551.26725-3-ansuelsmth@gmail.com>
References: <20260827131551.26725-1-ansuelsmth@gmail.com>
 <20260827131551.26725-3-ansuelsmth@gmail.com>
Date: Thu, 27 Aug 2026 13:23:13 +0000
Message-Id: <20260827132314.0D5231F00A3A@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGJpbmRpbmcgdGl0
bGUgaW5jb3JyZWN0bHkgcmVmZXJzIHRvICdBTjc1ODEnIGluc3RlYWQgb2YgJ0FONzU4MycuCi0g
W0xvd10gVGhlIHJlZ2lzdGVyIHNpemVzIGluIHRoZSBleGFtcGxlIGFyZSBvZmYtYnktb25lLCBp
bmNvcnJlY3RseSB1c2luZyB0aGUgbWF4aW11bSBvZmZzZXQgaW5zdGVhZCBvZiB0aGUgYnl0ZSBj
b3VudC4KLSBbTG93XSBUaGUgYmluZGluZyBmaWxlbmFtZSAnYWlyb2hhLGFuNzU4My1wY2llLWdl
bjItcGh5LnlhbWwnIGRvZXMgbm90IG1hdGNoIHRoZSBjb21wYXRpYmxlIHN0cmluZyAnYWlyb2hh
LGFuNzU4My1wY2llLXBoeScuCi0tCgpjb21taXQgYTMwZjllNTk3Y2QxYzEyMDU5YzFjM2NhM2Iw
NTUwZDVlNTgwMGY0ZApBdXRob3I6IENocmlzdGlhbiBNYXJhbmdpIDxhbnN1ZWxzbXRoQGdtYWls
LmNvbT4KU3ViamVjdDogZHQtYmluZGluZ3M6IHBoeTogYWlyb2hhOiBEb2N1bWVudCBzdXBwb3J0
IGZvciBBTjc1ODMgR2VuMiBQQ0llIFBIWQoKVGhpcyBjb21taXQgZG9jdW1lbnRzIHN1cHBvcnQg
Zm9yIHRoZSBBTjc1ODMgR2VuMiBQQ0llIFBIWSwgd2hpY2ggaXMgdXNlZAp0byBtYWtlIHRoZSBH
ZW4yIFBDSWUgcG9ydCB3b3JrLiBJdCBhZGRzIHRoZSByZXF1aXJlZCByZWdpc3RlcnMgdG8gY29u
ZmlndXJlCnRoZSBQQ0llIFBIWSBhbmQgcHJvdmlkZXMgYSB1c2FnZSBleGFtcGxlLgoKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9haXJvaGEsYW43
NTgzLXBjaWUtZ2VuMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvYWlyb2hhLGFuNzU4My1wY2llLWdlbjItcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmYzMWQ4Mzg4NzFmYzEKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9haXJvaGEsYW43
NTgzLXBjaWUtZ2VuMi1waHkueWFtbAo+IEBAIC0wLDAgKzEsNjMgQEAKPiArIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQo+ICslWUFNTCAxLjIK
PiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2Fpcm9oYSxh
bjc1ODMtcGNpZS1nZW4yLXBoeS55YW1sIwoKW1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGUgZmls
ZW5hbWUgKGFuZCBjb25zZXF1ZW50bHkgdGhlICRpZCBwYXRoKSBtYXRjaCB0aGUgZGVmaW5lZApj
b21wYXRpYmxlIHN0cmluZyBhaXJvaGEsYW43NTgzLXBjaWUtcGh5PyBUaGUgZXh0cmFuZW91cyAn
Z2VuMi0nIGluIHRoZQpmaWxlbmFtZSBjYXVzZXMgaXQgdG8gZGl2ZXJnZSBmcm9tIHRoZSBjb21w
YXRpYmxlIHN0cmluZywgd2hpY2ggdHlwaWNhbGx5CnRyaWdnZXJzIGEgc2NoZW1hIHZhbGlkYXRp
b24gd2FybmluZyB3aGVuIHJ1bm5pbmcgZHRfYmluZGluZ19jaGVjay4KCj4gKyRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6
IEFpcm9oYSBBTjc1ODEgU29DIFBDSWUgR2VuMiBQSFkKCltTZXZlcml0eTogTG93XQpEb2VzIHRo
aXMgdGl0bGUgaW5jb3JyZWN0bHkgcmVmZXIgdG8gQU43NTgxIGluc3RlYWQgb2YgdGhlIGludGVu
ZGVkIHRhcmdldApBTjc1ODM/CgpbIC4uLiBdCgo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAg
IHBoeUAxZmE1ZjAwMCB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJhaXJvaGEsYW43NTgzLXBj
aWUtcGh5IjsKPiArICAgICAgICByZWcgPSA8MHgxZmE1ZjAwMCAweGZmPiwKPiArICAgICAgICAg
ICAgICA8MHgxZmE1ZTAwMCAweDNmZj4sCj4gKyAgICAgICAgICAgICAgPDB4MWZhNWEwMDAgMHg4
ZmY+OwoKW1NldmVyaXR5OiBMb3ddCkFyZSB0aGVzZSByZWdpc3RlciBzaXplcyBpbiB0aGUgZXhh
bXBsZSBvZmYtYnktb25lPyBUaGUgc2l6ZXMgMHhmZiwgMHgzZmYsCmFuZCAweDhmZiAoMjU1LCAx
MDIzLCBhbmQgMjMwMyBieXRlcykgYXJlIG5vdCBtdWx0aXBsZXMgb2YgNCwgbWVhbmluZyB0aGUK
ZmluYWwgYnl0ZSBvZiB0aGUgbGFzdCAzMi1iaXQgcmVnaXN0ZXIgaXMgZXhjbHVkZWQgZnJvbSB0
aGUgbWVtb3J5IHJlZ2lvbi4KCkEgZGV2ZWxvcGVyIGNvcHlpbmcgdGhpcyBleGFtcGxlIHZlcmJh
dGltIG1pZ2h0IGNyZWF0ZSBhbiBpbnZhbGlkIGRldmljZQp0cmVlIHRoYXQgY291bGQgY2F1c2Ug
b3V0LW9mLWJvdW5kcyBhY2Nlc3NlcyB3aGVuIHRoZSBkcml2ZXIgcmVhZHMgdGhlIGZpbmFsCnJl
Z2lzdGVyLgoKPiArICAgICAgICByZWctbmFtZXMgPSAiYW5hIiwgInBtYSIsICJkaWciOwo+ICsK
PiArICAgICAgICBwaHlzID0gPCZzZXJkZXNfcGh5PjsKPiArCj4gKyAgICAgICAgI3BoeS1jZWxs
cyA9IDwwPjsKPiArICAgIH07CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI3MTMxNTUxLjI2NzI1LTEtYW5zdWVsc210aEBnbWFp
bC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK

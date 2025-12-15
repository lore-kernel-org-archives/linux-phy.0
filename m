Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C39D9D5B17D
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 15:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWepXcklA074Hu0n+2kkD8CGhcJuwQE4/cU1enxXBzw=; b=cfxeexe1SUYQFO
	dy/9q0DeZxG+MqHwqcMvHEePyFRHsurnLRJDRJrtrzxKpktNiZcXIMFnStXDe69dTbM/5jc/2yx5p
	AQOYXyv+73wgLuCZes/Ff7zJZwjm6UwbCno1Sex5kzdH+so8m54jfi+thsIZ0wBY0YwsPjJrwtjMs
	bmymWwt1Ogn+ZBw3HP1lkYDCziFKnCj3iKpxWhTdMN3Zaie1z8MqSNbwpRiY0mXhIlJ/hyd0FBMQn
	eKidsKCJhSQjP4OaGqHuGQo3phg7FT+llDVMy6s/hq8Iuzh0/YzGhl2bMiscXM86sn9hZntiZrFLW
	UArfKTSVohrcB9dk20rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVAEh-00000003sTc-3LL2;
	Mon, 15 Dec 2025 15:11:43 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVAEf-00000003sSb-2Tlt
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 15:11:42 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 7B8774E41C17;
	Mon, 15 Dec 2025 15:11:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 34A7960664;
	Mon, 15 Dec 2025 15:11:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BADAC119420AE;
	Mon, 15 Dec 2025 16:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765811493; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=UigH7Brdj6mKHtKnaVKW6yF38VBtFCwdx2VwsEz/1I8=;
	b=f79Rtfn/VOQoug0jhl4OF2P0snVwNSQJqiTXsTuWuzZnxqxK3Kb217phvhw5dcdhjThh6Y
	kkzqQRvbvyGUTnbb/4ujdkjQsMaJD58R4JKGxyVdUId0KwA66b0ZUBWPSQA7Ay2vXhwOxw
	hjV6gYMjcqYVUDQ6Cd09tCHkCqXxIzZ5gfnKPfdvAY7BX2DZhrnnooufvTB/nW6ZCzUSje
	MZyQHNZiQzTeEzhU5fkyBRvwEpL/a6l3n/5BSUQ/5cLEUgQC7y2Sew2IjDY6He/VifUeXQ
	U+xTbaa4CLSzhCDYt3P/cAINa0z8yRrLkTkbD1VqYT6QDxxbWLUHWDY9Q9VLIw==
Mime-Version: 1.0
Date: Mon, 15 Dec 2025 16:11:29 +0100
Message-Id: <DEYVXJI90AA7.KPDEQCNZOOXI@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v4 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
X-Mailer: aerc 0.20.1
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-2-955c625a81a7@bootlin.com>
 <DEUNYYW0Y23E.2SA0SOCS99NA0@bootlin.com>
 <DEYVVCWBOZSH.2ZY41YCHLS8FU@bootlin.com>
In-Reply-To: <DEYVVCWBOZSH.2ZY41YCHLS8FU@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_071141_765263_B5A02A92 
X-CRM114-Status: GOOD (  20.88  )
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

T24gTW9uIERlYyAxNSwgMjAyNSBhdCA0OjA4IFBNIENFVCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+
IEhlbGxvIEx1Y2EsCj4KPiBPbiBXZWQgRGVjIDEwLCAyMDI1IGF0IDU6MDYgUE0gQ0VULCBMdWNh
IENlcmVzb2xpIHdyb3RlOgo+PiBPbiBNb24gTm92IDI0LCAyMDI1IGF0IDM6NDEgUE0gQ0VULCBU
aMOpbyBMZWJydW4gd3JvdGU6Cj4+PiBFeWVRNSBlbWJlZHMgYSBzeXN0ZW0tY29udHJvbGxlciBj
YWxsZWQgT0xCLiBJdCBmZWF0dXJlcyBtYW55IHVucmVsYXRlZAo+Pj4gcmVnaXN0ZXJzLCBhbmQg
c29tZSBvZiB0aG9zZSBhcmUgcmVnaXN0ZXJzIHVzZWQgdG8gY29uZmlndXJlIHRoZQo+Pj4gaW50
ZWdyYXRpb24gb2YgdGhlIFJHTUlJL1NHTUlJIENhZGVuY2UgUEhZIHVzZWQgYnkgTUFDQi9HRU0g
aW5zdGFuY2VzLgo+Pj4KPj4+IFdyYXAgaW4gYSBuZWF0IGdlbmVyaWMgUEhZIHByb3ZpZGVyLCBl
eHBvc2luZyB0d28gUEhZcyB3aXRoIHN0YW5kYXJkCj4+PiBwaHlfaW5pdCgpIC8gcGh5X3NldF9t
b2RlKCkgLyBwaHlfcG93ZXJfb24oKSBvcGVyYXRpb25zLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Cj4+Cj4+IFsuLi5dCj4+Cj4+
PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9kcml2ZXJzL3BoeS9waHktZXllcTUtZXRoLmMKPj4+
IEBAIC0wLDAgKzEsMjU0IEBACj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb25seQo+Pj4gKwo+Pj4gKyNpbmNsdWRlIDxsaW51eC9hcnJheV9zaXplLmg+Cj4+PiArI2lu
Y2x1ZGUgPGxpbnV4L2F1eGlsaWFyeV9idXMuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvYml0Zmll
bGQuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvYml0cy5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9i
dWcuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvY2xlYW51cC5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51
eC9jb250YWluZXJfb2YuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4+PiArI2lu
Y2x1ZGUgPGxpbnV4L2Vyci5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9lcnJuby5oPgo+Pj4gKyNp
bmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4+PiArI2lu
Y2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9sb2NrZGVwLmg+Cj4+
PiArI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJsZS5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51
eC9tdXRleC5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51
eC9waHkuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+Pj4gKyNpbmNsdWRlIDxs
aW51eC9zbGFiLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+Cj4+IEFyZSBhbGwg
dGhlc2UgaW5jbHVkZSBmaWxlcyByZWFsbHkgbmVlZGVkPyBBdCBhIHF1aWNrIGdsYW5jZSBiaXRm
aWVsZC5oLAo+PiBjbGVhbnVwLmggYW5kIGxvY2tkZXAuaCBsb29rIHVudXNlZCBpbiB0aGlzIGZp
bGUuCj4KPiBZZXMgZ29vZCBjYXRjaCwgYWZ0ZXIgaGF2aW5nIGNoZWNrZWQgYWxsIHN5bWJvbHMg
dXNlZCwgdXBkYXRlcyBhcmU6Cj4gLSBBZGQgZGVsYXkuaCBmb3IgdWRlbGF5KCksIGdmcF90eXBl
cy5oIGZvciBHRlBfKiBhbGxvYyBmbGFncywKPiAgIG1vZHVsZS5oIGZvciBNT0RVTEVfKiBtYWNy
b3MuCj4gLSBEcm9wIGFycmF5X3NpemUuaCwgYnVnLmgsIGNsZWFudXAuaCwgY29udGFpbmVyX29m
LmgsIGxvY2tkZXAuaCwKPiAgIG11dGV4LmguCj4KPiBXZSBkbyBuZWVkIGJpdGZpZWxkLmggZm9y
IEZJRUxEX1BSRVAoKS4KPgo+Pgo+Pj4gKyNkZWZpbmUgRVE1X1BIWV9DT1VOVAkyCj4+Cj4+IFsu
Li5dCj4+Cj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIGVxNV9waHlfb3BzID0gewo+
Pj4gKwkuaW5pdAkJPSBlcTVfcGh5X2luaXQsCj4+PiArCS5leGl0CQk9IGVxNV9waHlfZXhpdCwK
Pj4+ICsJLnNldF9tb2RlCT0gZXE1X3BoeV9zZXRfbW9kZSwKPj4+ICsJLnBvd2VyX29uCT0gZXE1
X3BoeV9wb3dlcl9vbiwKPj4+ICsJLnBvd2VyX29mZgk9IGVxNV9waHlfcG93ZXJfb2ZmLAo+Pj4g
K307Cj4+PiArCj4+PiArc3RhdGljIHN0cnVjdCBwaHkgKmVxNV9waHlfeGxhdGUoc3RydWN0IGRl
dmljZSAqZGV2LAo+Pj4gKwkJCQkgY29uc3Qgc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqYXJncykK
Pj4+ICt7Cj4+PiArCXN0cnVjdCBlcTVfcGh5X3ByaXZhdGUgKnByaXYgPSBkZXZfZ2V0X2RydmRh
dGEoZGV2KTsKPj4+ICsKPj4+ICsJaWYgKGFyZ3MtPmFyZ3NfY291bnQgIT0gMSB8fCBhcmdzLT5h
cmdzWzBdID4gMSkKPj4KPj4gTWF5YmUsIGZvciBiZXR0ZXIgY2xhcml0eToKPj4KPj4gCWlmIChh
cmdzLT5hcmdzX2NvdW50ICE9IDEgfHwgYXJncy0+YXJnc1swXSA+PSBFUTVfUEhZX0NPVU5UKQo+
Cj4gRG9uZSwgaW5kZWVkIHRoZSBvbGQgbWFnaWMgdmFsdWUgd2FzIG5vdCBhIGdvb2QgaWRlYS4K
Pgo+Pgo+Pj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4+PiArCj4+PiArCXJldHVybiBw
cml2LT5waHlzW2FyZ3MtPmFyZ3NbMF1dLnBoeTsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIGlu
dCBlcTVfcGh5X3Byb2JlX3BoeShzdHJ1Y3QgZXE1X3BoeV9wcml2YXRlICpwcml2LCB1bnNpZ25l
ZCBpbnQgaW5kZXgsCj4+PiArCQkJICAgICB2b2lkIF9faW9tZW0gKmJhc2UsIHVuc2lnbmVkIGlu
dCBncCwKPj4+ICsJCQkgICAgIHVuc2lnbmVkIGludCBzZ21paSkKPj4+ICt7Cj4+PiArCXN0cnVj
dCBlcTVfcGh5X2luc3QgKmluc3QgPSAmcHJpdi0+cGh5c1tpbmRleF07Cj4+PiArCXN0cnVjdCBk
ZXZpY2UgKmRldiA9IHByaXYtPmRldjsKPj4+ICsJc3RydWN0IHBoeSAqcGh5Owo+Pj4gKwo+Pj4g
KwlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBkZXYtPm9mX25vZGUsICZlcTVfcGh5X29wcyk7
Cj4+PiArCWlmIChJU19FUlIocGh5KSkgewo+Pj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8g
Y3JlYXRlIFBIWSAldVxuIiwgaW5kZXgpOwo+Pj4gKwkJcmV0dXJuIFBUUl9FUlIocGh5KTsKPj4+
ICsJfQo+Pgo+PiBXaHkgbm90IGRldl9lcnJfcHJvYmUoKT8gSXQgd291bGQgbWFrZSBjb2RlIG1v
cmUgY29uY2lzZSB0b286Cj4+Cj4+IAlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBkZXYtPm9m
X25vZGUsICZlcTVfcGh5X29wcyk7Cj4+IAlpZiAoSVNfRVJSKHBoeSkpCj4+IAkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHBoeSksICJmYWlsZWQgdG8gY3JlYXRlIFBIWSAldVxu
IiwgaW5kZXgpOwo+Cj4gQmVjYXVzZSBJIGhhZCBmb3Jnb3R0ZW4uIDotKSBUaGFua3MhCj4KPj4K
Pj4+ICsKPj4+ICsJaW5zdC0+cHJpdiA9IHByaXY7Cj4+PiArCWluc3QtPnBoeSA9IHBoeTsKPj4+
ICsJaW5zdC0+Z3AgPSBiYXNlICsgZ3A7Cj4+PiArCWluc3QtPnNnbWlpID0gYmFzZSArIHNnbWlp
Owo+Pj4gKwlpbnN0LT5waHlfaW50ZXJmYWNlID0gUEhZX0lOVEVSRkFDRV9NT0RFX05BOwo+Pj4g
KwlwaHlfc2V0X2RydmRhdGEocGh5LCBpbnN0KTsKPj4+ICsKPj4+ICsJcmV0dXJuIDA7Cj4+PiAr
fQo+Pj4gKwo+Pj4gK3N0YXRpYyBpbnQgZXE1X3BoeV9wcm9iZShzdHJ1Y3QgYXV4aWxpYXJ5X2Rl
dmljZSAqYWRldiwKPj4+ICsJCQkgY29uc3Qgc3RydWN0IGF1eGlsaWFyeV9kZXZpY2VfaWQgKmlk
KQo+Pj4gK3sKPj4+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJmFkZXYtPmRldjsKPj4+ICsJc3Ry
dWN0IHBoeV9wcm92aWRlciAqcHJvdmlkZXI7Cj4+PiArCXN0cnVjdCBlcTVfcGh5X3ByaXZhdGUg
KnByaXY7Cj4+PiArCXZvaWQgX19pb21lbSAqYmFzZTsKPj4+ICsJaW50IHJldDsKPj4+ICsKPj4+
ICsJcHJpdiA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcHJpdiksIEdGUF9LRVJORUwpOwo+
Pj4gKwlpZiAoIXByaXYpCj4+PiArCQlyZXR1cm4gLUVOT01FTTsKPj4+ICsKPj4+ICsJcHJpdi0+
ZGV2ID0gZGV2Owo+Pj4gKwlkZXZfc2V0X2RydmRhdGEoZGV2LCBwcml2KTsKPj4+ICsKPj4+ICsJ
YmFzZSA9ICh2b2lkIF9faW9tZW0gKilkZXZfZ2V0X3BsYXRkYXRhKGRldik7Cj4+PiArCj4+PiAr
CXJldCA9IGVxNV9waHlfcHJvYmVfcGh5KHByaXYsIDAsIGJhc2UsIEVRNV9QSFkwX0dQLCBFUTVf
UEhZMF9TR01JSSk7Cj4+PiArCWlmIChyZXQpCj4+PiArCQlyZXR1cm4gcmV0Owo+Pj4gKwo+Pj4g
KwlyZXQgPSBlcTVfcGh5X3Byb2JlX3BoeShwcml2LCAxLCBiYXNlLCBFUTVfUEhZMV9HUCwgRVE1
X1BIWTFfU0dNSUkpOwo+Pj4gKwlpZiAocmV0KQo+Pj4gKwkJcmV0dXJuIHJldDsKPj4+ICsKPj4+
ICsJcHJvdmlkZXIgPSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIGVxNV9waHlf
eGxhdGUpOwo+Pj4gKwlpZiAoSVNfRVJSKHByb3ZpZGVyKSkgewo+Pj4gKwkJZGV2X2VycihkZXYs
ICJyZWdpc3RlcmluZyBwcm92aWRlciBmYWlsZWRcbiIpOwo+Pj4gKwkJcmV0dXJuIFBUUl9FUlIo
cHJvdmlkZXIpOwo+Pj4gKwl9Cj4+Cj4+IEFzIGFib3ZlLCB3aHkgbm90IGRldl9lcnJfcHJvYmUo
KT8KPgo+IEdvb2QgaWRlYSBvbmNlIGFnYWluLgo+Cj4+IE90aGVyIHRoYW4gdGhlIGFib3ZlIG1p
bm9yIGlzc3VlcywgTEdUTS4gVGhpcyBkcml2ZXIgbG9va3MgY2xlYW5seQo+PiBpbXBsZW1lbnRl
ZC4KPgo+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4gRG9lcyB0aGF0IGltcGx5IEkgY2FuIGFwcGVu
ZCB5b3VyIFJiIHRyYWlsZXI/CgpJZiB5b3UgYXBwbHkgYWxsIHRoZSBjaGFuZ2VzIEkgaGF2ZSBt
ZW50aW9uLCB5ZXMsIGJ1dCBpbiBkb3VidCB5b3UgY2FuCmF2b2lkIGl0IGFuZCBJJ2xsIHJldmll
dyB5b3VyIG5leHQgdmVyc2lvbi4gUmUtcmV2aWV3aW5nIGlzIG11Y2ggZmFzdGVyCnRoYW4gcmV2
aWV3aW5nIHRoZSBmaXJzdCB0aW1lIChsYXN0IGZhbW91cyB3b3JkcykuCgpMdWNhCgotLQpMdWNh
IENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcK
aHR0cHM6Ly9ib290bGluLmNvbQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ADB8F0181C
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 09:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2SNZEBBcSM5KkIxNrfB1NgSBKmTy5fdKvXlaa3w+AA=; b=E7A98rX3LbqYrT
	PvAJH72lDa29lxoA9uEv4aB/I17miw3lMN8JL/vm2xEfcWghuIKHAKI7PcEg+hFjvXRUw57h2t/x/
	AVWEdbrZ2kQk33gy0p3It4d1kXYHrzRVw35s9ZLECX0JdaulCz3ILY3zjq7jfavDUmN2XARdSh2C0
	wZJX0nYqzJDJAnNzaCaXA2e0MrqLiVJ5JE606+zDKiVuPBoevJCY2aTKJwCgieZ3GraG+zUclDjC3
	HDsyLORhHlnv6YGg5qJw5RB4GnI+JZTjrQp9ceuBB1q8+61JruWXbDpCrKtfTz5+OZ7gvZ+Z7ahrA
	esQrkaEZq84FBHaqnmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyRsM-00000003Nvj-1dRd;
	Fri, 06 Mar 2026 09:53:42 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyRsJ-00000003NvG-0ylG
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 09:53:41 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 0FF9B1A2D21;
	Fri,  6 Mar 2026 09:53:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CD9DC5FF92;
	Fri,  6 Mar 2026 09:53:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 76EE0103686D3;
	Fri,  6 Mar 2026 10:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772790814; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=5RJBgtzNyxvtnzocOQgo9J2Pq7huKj3drCoezVGyEt0=;
	b=I4rHZx4zGkNwJX3sRziLW8/w48B7XzfTTIdpDtB9Z/DVZ0Qkzw7VFGCNFFfMN5GMhvVQT/
	UAWgtlf9Lh77mCcTwttMWQXMmcbBVGjgYuJ/kwV0N9wIkzW+uGcRC5vl66xy16DxnxnROA
	6vpf5SV7c6/w2V7/RKwuE4J2Gv8FXh2EQK1+fhskQ2rqVyPo72Gh5FcTzY8uMDI0jDyNpD
	HAZyMCQQlpsliKjhdIBgaSWX2xeryvcWRoznyPLj1wnP3wL8Go53J3aZ/lNAESLP/tbgnm
	p0qVN/N1Y63MR1jbTPX9EOrYU2kDo9P0wqK1R9BDDBijEA1Ty3hbyCIuS+kkqA==
Mime-Version: 1.0
Date: Fri, 06 Mar 2026 10:53:30 +0100
Message-Id: <DGVLW7BWVMKI.2VNIVUKG4DAUA@bootlin.com>
Subject: Re: [PATCH v7 2/2] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Cc: "Vinod Koul" <vkoul@kernel.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-mips@vger.kernel.org>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>, "Gregory CLEMENT"
 <gregory.clement@bootlin.com>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>
To: "Vladimir Oltean" <olteanv@gmail.com>, =?utf-8?q?Th=C3=A9o_Lebrun?=
 <theo.lebrun@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260225-macb-phy-v7-0-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-0-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-2-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-2-e5211a61db56@bootlin.com>
 <20260227171446.mqygrv35s5jdae46@skbuf>
In-Reply-To: <20260227171446.mqygrv35s5jdae46@skbuf>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_015339_429259_045306A7 
X-CRM114-Status: GOOD (  11.96  )
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

SGVsbG8gVmxhZGltaXIsCgpPbiBGcmkgRmViIDI3LCAyMDI2IGF0IDY6MTQgUE0gQ0VULCBWbGFk
aW1pciBPbHRlYW4gd3JvdGU6Cj4gT24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgMDU6NTQ6NDFQTSAr
MDEwMCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+PiArc3RhdGljIGludCBlcTVfcGh5X3NldF9tb2Rl
KHN0cnVjdCBwaHkgKnBoeSwgZW51bSBwaHlfbW9kZSBtb2RlLCBpbnQgc3VibW9kZSkKPj4gK3sK
Pj4gKwlzdHJ1Y3QgZXE1X3BoeV9pbnN0ICppbnN0ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4+
ICsKPj4gKwlpZiAoZXE1X3BoeV92YWxpZGF0ZShwaHksIG1vZGUsIHN1Ym1vZGUsIE5VTEwpKQo+
PiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4KPiBQcm9wYWdhdGUgdGhlIHBoeV92YWxpZGF0ZSgp
IHJldHVybiBjb2RlLCBkb24ndCBnZW5lcmF0ZSB5b3VyIG93bi4KPiAtRUlOVkFMIHNob3VsZCBi
ZSBwcmVmZXJhYmxlIHRvIC1FT1BOT1RTVVBQLCBzbyB0aGF0IGNhbGxlcnMgY2FuCj4gZGlzdGlu
Z3Vpc2ggYmV0d2VlbiAicGh5X3NldF9tb2RlKCkgbm90IGltcGxlbWVudGVkIiBhbmQgInBoeV9z
ZXRfbW9kZSgpCj4gZmFpbGVkIi4KCkFDSy4gSSBoYWQgbWFkZSB0aGUgZGVjaXNpb24gdG8gZXhw
bGljaXRlbHkgb3ZlcnJpZGUgdGhlIHJldHVybiB2YWx1ZQpidXQgaW5kZWVkIEVPUE5PVFNVUFAg
aXNuJ3QgdGhlIGNsZXZlcmVzdCBvcHRpb24uIFdpbGwgZml4LgoKPiAoeWVhaCwgcGh5X3NldF9t
b2RlKCkgd2FzIG1hZGUgb3B0aW9uYWwgYSB3aGlsZSBhZ28sIElNTyBpbmNvcnJlY3RseSwKPiBi
dXQgdGhhdCdzIGFub3RoZXIgc3RvcnkpCj4KPj4gKwo+PiArCWlmIChzdWJtb2RlID09IGluc3Qt
PnBoeV9pbnRlcmZhY2UpCj4+ICsJCXJldHVybiAwOwo+Cj4gSSB0aGluayB0aGlzIHNpbXBsZSBj
b21wYXJpc29uIGZhaWxzIHRvIHNlcnZlIGl0cyBpbnRlbmRlZCBwdXJwb3NlCj4gKGF2b2lkIFBI
WSByZXNldCB3aGVuIG5vdCBjaGFuZ2luZyBtb2RlcykgZm9yIFJHTUlJIG1vZGVzLCBvZiB3aGlj
aAo+IHRoZXJlIGV4aXN0IDQgdmFyaWFudHMuCgpZZXMhCgo+IE1heWJlOgo+IAlpZiAoKHBoeV9p
bnRlcmZhY2VfbW9kZV9pc19yZ21paShzdWJtb2RlKSAmJgo+IAkgICAgIHBoeV9pbnRlcmZhY2Vf
bW9kZV9pc19yZ21paShpbnN0LT5waHlfaW50ZXJmYWNlKSkgfHwKPiAJICAgIHN1Ym1vZGUgPT0g
aW5zdC0+cGh5X2ludGVyZmFjZSkKPiAJCXJldHVybiAwOwo+Cj4gRG9lcyB0aGUgRXllUTUgcGxh
dGZvcm0gc3VwcG9ydCBpbnRlcm5hbCBSR01JSSBkZWxheXM/IElmIHllcywgd2hpY2gKPiBsYXll
ciBlbmFibGVzIHRoZW0/IFRoZSBHZW5lcmljIFBIWT8KCllvdSBhcmUgb24gcG9pbnQuIFdlIHNo
b3VsZG4ndCBjYXJlIGFib3V0IHRoZSBSR01JSSBkZWxheXMgaW5zaWRlIHRoZQpnZW5lcmljIFBI
WSBkcml2ZXIuIFdoYXQgd2UgZGVhbCB3aXRoIGhlcmUgaXMgYSB3cmFwcGVyIHRvIHRoZSBhY3R1
YWwKbmV0IFBIWSBiZWhpbmQgdGhlIHNjZW5lcy4gVGhlIG5ldCBQSFkgaXMgZGVhbGluZyB3aXRo
IGRlbGF5cywgd2UgY2FuCmlnbm9yZSB0aGVtIGluIHRoZSBnZW5lcmljIFBIWSBkcml2ZXIuCgpX
aWxsIGZpeCwgZWl0aGVyIHdpdGggeW91ciBzb2x1dGlvbiBvciB3aXRoIGEgY3VzdG9tIHR3byBz
dGF0ZSBlbnVtIHRoYXQKY2FuIGRvIFNHTUlJIG9yIFJHTUlJICh3aWxsIHJlcHJlc2VudCBhbGwg
UkdNSUkgZGVsYXkgdmFyaWFudHMpLiBJJ2xsCmV4cGVyaW1lbnQgd2l0aCBib3RoIGFuZCBzZW5k
IHdoYXQgbG9va3MgYmV0dGVyLgoKVGhhbmtzLAoKLS0KVGjDqW8gTGVicnVuLCBCb290bGluCkVt
YmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C165CD6E57
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 14:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efr8zScOLSB/e38LivBobD4dUhsLzowkqUCiSGbDJ4s=; b=bpKHEj9rhFewGa
	mlJiZDgMcKiomeaQu4riP5Tri1EwB6oLLihvmcUXoigPYt8wz0k0cL2cJ5jCOPBgX9SFu1Dj/C8PX
	+OQiKzEqqoZ/s5cbBEIUUIlW40WOwNRB1Gz0J61L6pKXUhHjEz8Ruf6V+0utDvfUobVHqwUDXrDXE
	0XYH5z87FicgbzxcGyxUNWpzSzAji00LSeGIYwPWeoRW4grLpff5TfPpvrRXwZp+y3q5vSpf0vzJR
	Gd57MgCXxr+mVzjSWEFD1GAJbgxlPNLplxK8Xy5htabAGhg2c5KV2ERCqx6FqGO2Y8nG219HAW4Yt
	qUlmUNh873RhboF7Jk0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQ31-0000000DB6P-0oYR;
	Tue, 02 Jun 2026 14:24:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQ2y-0000000DB5H-26Rc
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 14:24:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 45A074436A;
	Tue,  2 Jun 2026 14:24:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5A5F1F00898;
	Tue,  2 Jun 2026 14:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780410287;
	bh=SXAayy10Ie1KB/LuASBKA28+N8P9zo1ocn6gpxfPpUE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=biX/R5rFl5/wmE1kyL1NuvYPaV/q0qeq0omQ1osx5dTor8JQQXpvD0fdS4r90vfD2
	 h8CRRa2PfOKPt9+E18bzcbCmPyXfTdWPKhrM+/bVkJq6A3YdW1nNUSIw5HbboB14gM
	 fRhWlI4XE2VDYU7XKBwJa5TijX2zKSM/EV17N+8+2Cm6dvKoKw5uQYFa/Yohfa/eOg
	 qMfyiATPb7n/lbmcdh9gQmmAAX9ppQC8qVa7RiYAbhc3fUzKNSkdl9VS9wn8ZXEoe6
	 rnNYhddCMxtYO4YsLKnulSYUrcKI8ZmAnA3qHprmBrlwDzmcJ2ZgwnS8Nd0neltYaA
	 ipfuPLc4B+HKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: fsl-imx8mq-usb: fix typec switch leak on probe
 error path
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, Frank.Li@kernel.org, olteanv@gmail.com, imx@lists.linux.dev
In-Reply-To: <20260602-imx8mq-typec-v1-1-3debe9bc77d9@gmail.com>
References: <20260602-imx8mq-typec-v1-1-3debe9bc77d9@gmail.com>
Date: Tue, 02 Jun 2026 14:24:45 +0000
Message-Id: <20260602142445.C5A5F1F00898@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_072448_583078_0F0E0AD7 
X-CRM114-Status: GOOD (  14.87  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBQb3RlbnRpYWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGlmIHRoZSBUeXBlLUMg
c3dpdGNoJ3MgYC5zZXQoKWAgY2FsbGJhY2sgaXMgaW52b2tlZCBjb25jdXJyZW50bHkgZHVyaW5n
IHByb2JlLgotIFtIaWdoXSBQb3RlbnRpYWwgVXNlLUFmdGVyLUZyZWUgaWYgYSB0eXBlYyBwb3J0
IGRyaXZlciBob2xkcyBhIHJlZmVyZW5jZSB0byB0aGUgc3dpdGNoIGFuZCBjYWxscyBgLnNldCgp
YCBhZnRlciB0aGUgUEhZIGRyaXZlciB1bmJpbmRzLgotLQoKY29tbWl0IDU0NmIwN2M1NGUwMDc3
ZDMyNWNmM2ZkMjBiMWRkOTVkMWMxMjNhOWQKQXV0aG9yOiBGZWxpeCBHdSA8dXN0Yy5ndUBnbWFp
bC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBmaXggdHlwZWMgc3dpdGNoIGxlYWsgb24gcHJv
YmUgZXJyb3IgcGF0aAoKSWYgcHJvYmUgZmFpbHMgYWZ0ZXIgaW14OTVfdXNiX3BoeV9nZXRfdGNh
KCkgc3VjY2VlZHMsIHRoZSB0eXBlYwpzd2l0Y2ggbGVha3MgYmVjYXVzZSB0aGUgb25seSBjbGVh
bnVwIHBhdGggd2FzIGluIC5yZW1vdmUsIHdoaWNoCm5ldmVyIHJ1bnMgb24gcHJvYmUgZmFpbHVy
ZS4KClVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKSBzbyB0aGUgc3dpdGNoIGlzIGNsZWFu
ZWQgdXAgb24gYm90aApwcm9iZSBmYWlsdXJlIGFuZCBkcml2ZXIgcmVtb3ZhbC4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBiL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IGluZGV4IGIwNWQ4MGU4NDlh
MTQuLjhhZjVhNGY4NTY5ODcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3Bo
eS1mc2wtaW14OG1xLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
aW14OG1xLXVzYi5jCj4gQEAgLTE3Myw4ICsxNzMsMTAgQEAgc3RhdGljIHN0cnVjdCB0eXBlY19z
d2l0Y2hfZGV2ICp0Y2FfYmxrX2dldF90eXBlY19zd2l0Y2goc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZQo+ICAJcmV0dXJuIHN3Owo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCB0Y2FfYmxrX3B1dF90eXBl
Y19zd2l0Y2goc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3KQo+ICtzdGF0aWMgdm9pZCB0Y2Ff
YmxrX3B1dF90eXBlY19zd2l0Y2godm9pZCAqZGF0YSkKPiAgewo+ICsJc3RydWN0IHR5cGVjX3N3
aXRjaF9kZXYgKnN3ID0gZGF0YTsKPiArCj4gIAl0eXBlY19zd2l0Y2hfdW5yZWdpc3Rlcihzdyk7
Cj4gIH0KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0
IGNvdWxkIHRoaXMgY2xlYW51cCBzZXF1ZW5jZSBsZWFkIHRvIGEKdXNlLWFmdGVyLWZyZWUgZHVy
aW5nIHVuYmluZD8KCldoZW4gdGhlIFBIWSBkcml2ZXIgdW5iaW5kcyBvciBmYWlscyBwcm9iZSBs
YXRlLCB0aGUgZGV2cmVzIGZyYW1ld29yayB3aWxsCmF1dG9tYXRpY2FsbHkgZnJlZSB0aGUgaW14
X3BoeSBhbmQgdGNhIHN0cnVjdHVyZXMgc2luY2UgdGhleSBhcmUgYWxsb2NhdGVkCndpdGggZGV2
bV9remFsbG9jLiBXaGlsZSB0eXBlY19zd2l0Y2hfdW5yZWdpc3RlcigpIGRyb3BzIHRoZSBpbml0
aWFsCnJlZmVyZW5jZSB0byB0aGUgc3dpdGNoLCBpdCBkb2Vzbid0IGZvcmNlIGNvbnN1bWVycyB0
byBkcm9wIHRoZWlyIHJlZmVyZW5jZXMuCgpJZiBhIGNvbnN1bWVyIHR5cGVjIHBvcnQgZHJpdmVy
IHN0aWxsIGhvbGRzIGEgcmVmZXJlbmNlIHRvIHRoZSBzd2l0Y2ggYW5kCmNhbGxzIGl0cyAuc2V0
IGNhbGxiYWNrIGFmdGVyIHRoZSBQSFkgZHJpdmVyIHVuYmluZHM6Cgp0Y2FfYmxrX3R5cGVjX3N3
aXRjaF9zZXQoKQogICAgc3RydWN0IGlteDhtcV91c2JfcGh5ICppbXhfcGh5ID0gdHlwZWNfc3dp
dGNoX2dldF9kcnZkYXRhKHN3KTsKICAgIHN0cnVjdCB0Y2FfYmxrICp0Y2EgPSBpbXhfcGh5LT50
Y2E7Cgp3b24ndCB0aGlzIGNhbGxiYWNrIGFjY2VzcyB0aGUgZnJlZWQgaW14X3BoeSBhbmQgdGNh
IG1lbW9yeT8KClsgLi4uIF0KCj4gQEAgLTI2NiwxNyArMjY5LDExIEBAIHN0YXRpYyBzdHJ1Y3Qg
dGNhX2JsayAqaW14OTVfdXNiX3BoeV9nZXRfdGNhKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYsCj4gIAl0Y2EtPm9yaWVudGF0aW9uID0gVFlQRUNfT1JJRU5UQVRJT05fTk9STUFMOwo+ICAJ
dGNhLT5zdyA9IHRjYV9ibGtfZ2V0X3R5cGVjX3N3aXRjaChwZGV2LCBpbXhfcGh5KTsKCltTZXZl
cml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1
dCBkb2VzIHJlZ2lzdGVyaW5nIHRoZSBzd2l0Y2gKaGVyZSBleHBvc2UgaXQgdG8gY29uc3VtZXJz
IGJlZm9yZSBpbXhfcGh5LT50Y2EgaXMgYXNzaWduZWQ/CgpPbmNlIHJlZ2lzdGVyZWQsIHRoZSBz
d2l0Y2ggYmVjb21lcyBnbG9iYWxseSBkaXNjb3ZlcmFibGUgdmlhIGZ3bm9kZSBtYXRjaGluZy4K
SWYgYSBjb25zdW1lciBkaXNjb3ZlcnMgaXQgYW5kIGltbWVkaWF0ZWx5IGludm9rZXMgdGhlIC5z
ZXQgY2FsbGJhY2sKKHRjYV9ibGtfdHlwZWNfc3dpdGNoX3NldCksIHRoYXQgY2FsbGJhY2sgZXhw
ZWN0cyBpbXhfcGh5LT50Y2EgdG8gYmUKZnVsbHkgaW5pdGlhbGl6ZWQ6Cgp0Y2FfYmxrX3R5cGVj
X3N3aXRjaF9zZXQoKQogICAgc3RydWN0IHRjYV9ibGsgKnRjYSA9IGlteF9waHktPnRjYTsKICAg
IGludCByZXQ7CgogICAgaWYgKHRjYS0+b3JpZW50YXRpb24gPT0gb3JpZW50YXRpb24pCgpTaW5j
ZSB0aGUgYXNzaWdubWVudCBvZiBpbXhfcGh5LT50Y2EgaGFwcGVucyBsYXRlciBpbiB0aGUgcHJv
YmUgc2VxdWVuY2UKYWZ0ZXIgdGhpcyBmdW5jdGlvbiByZXR1cm5zLCB3b3VsZG4ndCB0aGlzIGNv
bmN1cnJlbnQgYWNjZXNzIGRlcmVmZXJlbmNlIGEKTlVMTCBwb2ludGVyPwoKPiAtCXJldHVybiB0
Y2E7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2b2lkIGlteDk1X3VzYl9waHlfcHV0X3RjYShzdHJ1Y3Qg
aW14OG1xX3VzYl9waHkgKmlteF9waHkpCj4gLXsKPiAtCXN0cnVjdCB0Y2FfYmxrICp0Y2EgPSBp
bXhfcGh5LT50Y2E7Cj4gLQo+IC0JaWYgKCF0Y2EpCj4gLQkJcmV0dXJuOwo+ICsJcmV0ID0gZGV2
bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCZwZGV2LT5kZXYsIHRjYV9ibGtfcHV0X3R5cGVjX3N3aXRj
aCwgdGNhLT5zdyk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gIAo+
IC0JdGNhX2Jsa19wdXRfdHlwZWNfc3dpdGNoKHRjYS0+c3cpOwo+ICsJcmV0dXJuIHRjYTsKPiAg
fQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDYwMi1pbXg4bXEtdHlwZWMtdjEtMS0zZGViZTliYzc3ZDlAZ21haWwuY29tP3BhcnQ9
MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==

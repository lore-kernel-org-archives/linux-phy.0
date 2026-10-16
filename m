Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B13CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUeARb/T031REMB9pNo7p9jdE0eAgU6h2cFkKSPenbY=; b=E6iqn3ydajTLmM
	8SceZqyWALb8pWm3P/HLDuVNW2Mal66WDMTVXfBE9T8IIvxh2Z1l0yGdziG1wdK9W/VpviXFrdD9K
	ULUE/v+ED8ie/dobGAtykueOuOK1L2OqpSxnoI0amd5Y1swUQCKaSmDNZnSCw60az49MI7aKA14wZ
	Lcwrsa4KnLrZ/roINiEVOB1APNP3kPAhdB58GQ6SHodCZxkdK8hWVraKUBlDVX3M+xFjrvAq692qO
	WOAFUZ9yUx9oRojTzgFxTtIvbIPypHdJcW4bnohUgG8a9MKONqZ0k9dMBHdYGzwmTvvpS3vynlRYo
	jLAmgemYukaNwYuQ1QMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhHr-00000002wny-41ja;
	Fri, 16 Oct 2026 12:43:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhHq-00000002wnc-17KZ
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:43:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA1B14344D;
	Fri, 16 Oct 2026 12:43:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 335471F000C4;
	Fri, 16 Oct 2026 12:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792154629;
	bh=f9OSO7ggmunqqtMo4iT/tzqZ98l95/47dBKLB9aZ8B4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CAmu+SHzxPHdD9MdFNj80zi8J792EPhEZ8Jy1dGcJp3Q+BKqkQTG2PWV5TMVnprGA
	 8EV91sv/P2Kqb47aZbtpepdCfq2ZYfHMVTKZRhYi8RBNnpO5jYF20orXyzA8gNarRb
	 kjMM+MKrvnh+hhbvk0J5nJvbrAdIV5sWfug2pVrTMhyzlWvaQYjliRVVUgaSLTNj2M
	 YRsIzN5OOuFHkvor4YZM3JDMeRm5xC1IEhn6f2Iy90ymVAvzeajN51lPoBEthGSByW
	 eq+OFnlFxyNw+BKKS5AvBJHNOr5/5Lj3jtEzSNU8bG/i4CMg+hPYkYmHv2vwhjhMXn
	 YomWoz4YSV2gg==
Message-ID: <sashiko-outbox-174329@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 08/23] scsi: ufs: mediatek: Add dual 0.9V supply
 support
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-mt8196-ufs-v14-8-e8d565e0cd45@collabora.com>
References: <20261016-mt8196-ufs-v14-0-e8d565e0cd45@collabora.com>
 <20261016-mt8196-ufs-v14-8-e8d565e0cd45@collabora.com>
Date: Fri, 16 Oct 2026 12:43:48 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gc2NzaTogdWZzOiBt
ZWRpYXRlazogYnlwYXNzIG9mIGFsbG93X3B3cl9vbiBsZWF2ZXMgcmVndWxhdG9yIGVuYWJsZWQg
b24gZXJyb3IKLS0KCmNvbW1pdCAxNjlmMTMwNjJkZWI3M2U3ZGIyMjI3NzUyYmE5ZWU2YWQwZWMz
MjU3CkF1dGhvcjogTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91aXNhbGV4aXMuZXlyYXVkQGNvbGxh
Ym9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBBZGQgZHVhbCAwLjlWIHN1cHBseSBzdXBw
b3J0CgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIGFuIGFkZGl0aW9uYWwgMC45ViBzdXBw
bHkgcGluIG9uIHRoZSBNVDgxOTYKU29DIGNvbXBhcmVkIHRvIHRoZSBNVDgxODMgU29DLiBJdCBp
bnRyb2R1Y2VzIG1hbmFnZW1lbnQgZm9yIGEgc2Vjb25kCm9wdGlvbmFsIDAuOVYgcmVndWxhdG9y
IG5hbWVkICJhdmRkMDktMSIuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1t
ZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+IGluZGV4IGJjYjdm
MzUwOTg0YzAuLmM4YzVmODU1MDdhZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91
ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKWyAu
Li4gXQo+IEBAIC01MTMsMjAgKzUxNCw0MyBAQCBzdGF0aWMgaW50IHVmc19tdGtfd2FpdF9saW5r
X3N0YXRlKHN0cnVjdCB1ZnNfaGJhICpoYmEsIHUzMiBzdGF0ZSwKPiAgc3RhdGljIGludCB1ZnNf
bXRrXzA5dl9vZmYoc3RydWN0IHVmc19tdGtfaG9zdCAqaG9zdCwgYm9vbCBhbGxvd19wd3Jfb24p
Cj4gIHsKPiAgCXN0cnVjdCBhcm1fc21jY2NfcmVzIHJlczsKPiAtCWludCByZXQ7Cj4gKwlpbnQg
cmV0LCByZXQyOwo+ICAKPiAtCWlmICghaG9zdC0+cmVnX2F2ZGQwOSkKPiArCWlmICghaG9zdC0+
cmVnX2F2ZGQwOSAmJiAhaG9zdC0+cmVnX2F2ZGQwOV8xKQo+ICAJCXJldHVybiAwOwo+ICAKPiAg
CXVmc19tdGtfdmEwOV9wd3JfY3RybChyZXMsIDApOwo+IC0JcmV0ID0gcmVndWxhdG9yX2Rpc2Fi
bGUoaG9zdC0+cmVnX2F2ZGQwOSk7Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2Vycihob3N0LT5o
YmEtPmRldiwgIkZhaWxlZCB0byBkaXNhYmxlIGF2ZGQwOS1zdXBwbHk6ICVwZVxuIiwKPiAtCQkJ
RVJSX1BUUihyZXQpKTsKPiAtCQlpZiAoYWxsb3dfcHdyX29uKQo+IC0JCQl1ZnNfbXRrX3ZhMDlf
cHdyX2N0cmwocmVzLCAxKTsKPiAgCj4gLQkJcmV0dXJuIHJldDsKPiArCWlmIChob3N0LT5yZWdf
YXZkZDA5KSB7Cj4gKwkJcmV0ID0gcmVndWxhdG9yX2Rpc2FibGUoaG9zdC0+cmVnX2F2ZGQwOSk7
Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkZXZfZXJyKGhvc3QtPmhiYS0+ZGV2LCAiRmFpbGVkIHRv
IGRpc2FibGUgYXZkZDA5LXN1cHBseTogJXBlXG4iLAo+ICsJCQkJRVJSX1BUUihyZXQpKTsKPiAr
CQkJaWYgKGFsbG93X3B3cl9vbikKPiArCQkJCXVmc19tdGtfdmEwOV9wd3JfY3RybChyZXMsIDEp
Owo+ICsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwl9Cj4gKwo+ICsJaWYgKGhvc3QtPnJl
Z19hdmRkMDlfMSkgewo+ICsJCXJldCA9IHJlZ3VsYXRvcl9kaXNhYmxlKGhvc3QtPnJlZ19hdmRk
MDlfMSk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkZXZfZXJyKGhvc3QtPmhiYS0+ZGV2LCAiRmFp
bGVkIHRvIGRpc2FibGUgYXZkZDA5LTEtc3VwcGx5OiAlcGVcbiIsCj4gKwkJCQlFUlJfUFRSKHJl
dCkpOwo+ICsKPiArCQkJaWYgKGhvc3QtPnJlZ19hdmRkMDkpIHsKPiArCQkJCXJldDIgPSByZWd1
bGF0b3JfZW5hYmxlKGhvc3QtPnJlZ19hdmRkMDkpOwoKW1NldmVyaXR5OiBNZWRpdW1dCldoZW4g
cmVndWxhdG9yX2Rpc2FibGUoKSBmYWlscyBmb3IgcmVnX2F2ZGQwOV8xLCBkb2VzIHRoaXMgdW5p
bnRlbnRpb25hbGx5CnJlLWVuYWJsZSB0aGUgYXZkZDA5IHJlZ3VsYXRvciBldmVuIGlmIGFsbG93
X3B3cl9vbiBpcyBmYWxzZT8KCkZvciBleGFtcGxlLCB1ZnNfbXRrX21waHlfcG93ZXJfb24oKSBj
YWxscyB1ZnNfbXRrXzA5dl9vZmYoaG9zdCwgZmFsc2UpIG9uCml0cyBlcnJvciBwYXRoIHRvIGZv
cmNlIHJlZ3VsYXRvcnMgb2ZmLgoKSWYgdGhlIGFsbG93X3B3cl9vbiBwYXJhbWV0ZXIgaXMgZmFs
c2UgdG8gcHJldmVudCByb2xsaW5nIGJhY2sgdG8gYSBwb3dlcmVkLW9uCnN0YXRlLCB1bmNvbmRp
dGlvbmFsbHkgY2FsbGluZyByZWd1bGF0b3JfZW5hYmxlKCkgaGVyZSBzZWVtcyB0byBkZWZlYXQg
dGhlCnB1cnBvc2Ugb2YgdGhlIGZsYWcuIFRoaXMgY291bGQgbGVhdmUgdGhlIHJlZ3VsYXRvciBh
Y3RpdmVseSBwb3dlcmVkIG9uIGFmdGVyCmEgZm9yY2VkIHNodXRkb3duLgoKU2hvdWxkIHRoaXMg
cmVndWxhdG9yX2VuYWJsZSgpIGJlIGNvbmRpdGlvbmVkIG9uIGFsbG93X3B3cl9vbiBhcyB3ZWxs
PwoKPiArCQkJCWlmIChyZXQyKQo+ICsJCQkJCWRldl9lcnIoaG9zdC0+aGJhLT5kZXYsCj4gKwkJ
CQkJCSJGYWlsZWQgdG8gcmUtZW5hYmxlIGF2ZGQwOS1zdXBwbHk6ICVwZVxuIiwKPiArCQkJCQkJ
RVJSX1BUUihyZXQyKSk7Cj4gKwkJCX0KPiArCQkJaWYgKGFsbG93X3B3cl9vbikKPiArCQkJCXVm
c19tdGtfdmEwOV9wd3JfY3RybChyZXMsIDEpOwo+ICsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9
Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIDA7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDE2LW10ODE5Ni11ZnMtdjE0LTAtZThkNTY1
ZTBjZDQ1QGNvbGxhYm9yYS5jb20/cGFydD04CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

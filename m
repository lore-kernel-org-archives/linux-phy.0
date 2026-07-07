Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29C80C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KClqgy6BiS1juX5WfDF/AFBSQO5Y+fdYE8SJlAPysNo=; b=VMA2pCgRl71oXd
	vvPd/oPBF6UBNpL7FFR5+T1TsI6MW7d2sWArAtztj1nBnSZpmMH5+Vqs5i9e818RoYVryCBNNPEwq
	U10TGVXj9ITEyqnhPh3VnLt/lHkuKPspq8t5gVY5ezCKfBjrCHciCbI0KujEmOxMvm5/ozENE8/ty
	px+4OpbyxL4UcW0BNDCTm4mBDhLBYaadCfTzYdJ3+mLgQ76h9MZBTgF1Qao2TPRwtCax/6NGp8Wa8
	cN2WOqCXiVgjsjWdclzbiPaENrgiRt+QeWzsZaGjNJycm4R+0lQcgO8KtNmcQXBr8qlDTalsjF/7v
	2WAawBvNBtBjbD6GMDfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3qu-0000000EqGM-3evB;
	Tue, 07 Jul 2026 11:20:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3qt-0000000EqGD-2kTg
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:20:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A421A6001D;
	Tue,  7 Jul 2026 11:20:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DED81F000E9;
	Tue,  7 Jul 2026 11:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423234;
	bh=rY/Kg5kcYqoigcimetZ7/xnfd05K4l6T/KzDOUB9SgM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lf3jj4oBinqXKfv83hKlNngffRRv8cY2XIbvwJjaKZoRhOQrHhNCLLjrBymo403O/
	 xSUAO0yMHS3yyKqCYKt6+jYTfJbUQPQNtgMwL+D0gtSRx5/a4c/juh3Dx1epRi+5zP
	 u3hxtfb2swGsgpWKTrOH7Oi28YK0ZBxEjYfWJAbyMtRSuwDIImf59WTOwJLloLskp5
	 iY2DZIHHbul2hoAZ9UhNaKuXCgDiTn3p4PUbre9lD1GXTM66sHQE3nwdACqgDFPl6L
	 ooz1MCfu24U8qolvG2Zh23ijbnlBVP1hdb3OKSBz5eSI/6jidDhKSEKWBOSCUvpzqb
	 o1uFOj1Y29dTw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 10/12] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260707101821.173319-11-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-11-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 11:20:33 +0000
Message-Id: <20260707112034.0DED81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwcm9iZSBmdW5j
dGlvbiBpbmNvcnJlY3RseSBwYXNzZXMgYGRldi0+cGFyZW50YCB0byBgc3BtaV9nZXRfcGFyZW50
X3NwbWlfZGV2aWNlKClgLCBjYXVzaW5nIGFuIHVuY29uZGl0aW9uYWwgcHJvYmUgZmFpbHVyZS4K
LS0KCi0tLSBQYXRjaCBbMTBdOiBbUEFUQ0ggdjExIDEwLzEyXSBtaXNjOiBxY29tLWNvaW5jZWxs
OiBNaWdyYXRlIHRvIGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIC0tLQpjb21t
aXQgZWFiOTM2Nzc2ZTM0Nzc2YjhlOGM3Yzk3ZDBlZmZiZDg2OWEzOGRiMApBdXRob3I6IEFuZ2Vs
b0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9y
YS5jb20+CgptaXNjOiBxY29tLWNvaW5jZWxsOiBNaWdyYXRlIHRvIGRldm1fc3BtaV9zdWJkZXZp
Y2VfYWxsb2NfYW5kX2FkZCgpCgpUaGlzIGNvbW1pdCBtaWdyYXRlcyB0aGUgY29pbmNlbGwgY2hh
cmdlciBkcml2ZXIgdG8gdXNlIGEgbmV3IFNQTUkKc3ViLWRldmljZSBpbnN0ZWFkIG9mIHVzaW5n
IHRoZSBwYXJlbnQgUE1JQyBhcyBhIHN5c2Nvbi4gSXQgaW5pdGlhbGl6ZXMKYSBzZXBhcmF0ZSBy
ZWdtYXAgd2l0aCB0aGUgc3ViLWRldmljZSdzIHNwZWNpZmljIGJhc2UgYWRkcmVzcyByZXRyaWV2
ZWQKZnJvbSB0aGUgZGV2aWNldHJlZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9xY29t
LWNvaW5jZWxsLmMgYi9kcml2ZXJzL21pc2MvcWNvbS1jb2luY2VsbC5jCj4gLS0tIGEvZHJpdmVy
cy9taXNjL3Fjb20tY29pbmNlbGwuYwo+ICsrKyBiL2RyaXZlcnMvbWlzYy9xY29tLWNvaW5jZWxs
LmMKClsgLi4uIF0KCj4gQEAgLTkyLDE2ICsxMDEsMjUgQEAgc3RhdGljIGludCBxY29tX2NvaW5j
ZWxsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJY2hnci5kZXYg
PSAmcGRldi0+ZGV2Owo+ICAKPiAtCWNoZ3IucmVnbWFwID0gZGV2X2dldF9yZWdtYXAocGRldi0+
ZGV2LnBhcmVudCwgTlVMTCk7Cj4gLQlpZiAoIWNoZ3IucmVnbWFwKSB7Cj4gLQkJZGV2X2Vycihj
aGdyLmRldiwgIlVuYWJsZSB0byBnZXQgcmVnbWFwXG4iKTsKPiAtCQlyZXR1cm4gLUVJTlZBTDsK
PiAtCX0KPiAtCj4gLQlyYyA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5vZGUsICJyZWciLCAmY2hn
ci5iYXNlX2FkZHIpOwo+ICsJcmMgPSBkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicmVn
IiwgJnFjb21fY29pbmNlbGxfcmVnbWFwX2NvbmZpZy5yZWdfYmFzZSk7Cj4gIAlpZiAocmMpCj4g
IAkJcmV0dXJuIHJjOwo+ICAKPiArCXNwYXJlbnQgPSBzcG1pX2dldF9wYXJlbnRfc3BtaV9kZXZp
Y2UoZGV2LT5wYXJlbnQpOwogICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNhdXNlIGFuIHVu
Y29uZGl0aW9uYWwgcHJvYmUgZmFpbHVyZT8KCklmIGRldiBpcyB0aGUgcGxhdGZvcm0gZGV2aWNl
LCBkZXYtPnBhcmVudCBpcyB0aGUgU1BNSSBkZXZpY2UgKHRoZSBQTUlDKS4KVGhlIHNwbWlfZ2V0
X3BhcmVudF9zcG1pX2RldmljZSgpIGhlbHBlciBhbHJlYWR5IGluc3BlY3RzIHRoZSBwYXJlbnQg
b2YgdGhlCmRldmljZSBwYXNzZWQgdG8gaXQuIEJ5IHBhc3NpbmcgZGV2LT5wYXJlbnQgaGVyZSwg
aXQgZXZhbHVhdGVzCmRldi0+cGFyZW50LT5wYXJlbnQgKHRoZSBTUE1JIGJ1cyBjb250cm9sbGVy
KS4KClNpbmNlIHRoZSBidXMgY29udHJvbGxlcidzIGRldmljZSB0eXBlIGlzICZzcG1pX2N0cmxf
dHlwZSByYXRoZXIgdGhhbgomc3BtaV9kZXZfdHlwZSwgdGhlIGhlbHBlcidzIGludGVybmFsIHR5
cGUgY2hlY2sgd2lsbCBmYWlsIGFuZCByZXR1cm4gTlVMTCwKY2F1c2luZyBxY29tX2NvaW5jZWxs
X3Byb2JlKCkgdG8gYWx3YXlzIHJldHVybiAtRU5PREVWLgoKU2hvdWxkIHRoaXMgcGFzcyBkZXYg
aW5zdGVhZCBvZiBkZXYtPnBhcmVudD8KCj4gKwlpZiAoIXNwYXJlbnQpCj4gKwkJcmV0dXJuIC1F
Tk9ERVY7Cj4gKwo+ICsJc3ViX3NkZXYgPSBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9h
ZGQoZGV2LCBzcGFyZW50KTsKPiArCWlmIChJU19FUlIoc3ViX3NkZXYpKQo+ICsJCXJldHVybiBQ
VFJfRVJSKHN1Yl9zZGV2KTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcxMDE4MjEuMTczMzE5LTEtYW5nZWxvZ2lvYWNjaGlu
by5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79EA2C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fR0gmtoAgzX5dTowC9HFntWPh9TDs1LMnGty+p4AR78=; b=eTEa5QQL5IG4F3
	KtU9146Xo1tyqgjYfDJt2uivUloeB4H1iiPiwbSHTkdpwuMoObPuaElLGbuOevU4eWiz23FhEZ4l6
	YL2eqE3xFbiHAPCLP9Cs/LXd2aIKnNuly6Yg+klN3hfUlCzsO0iGFIKp/oqUh37C2jrG8nZCim3vS
	9wFlUz78Nscw30wPloo8x5JKUEa6n5GNS78w21qU3pcC9HeyQ0Ke2YcLMUkI1astNskTXuwj7P/qK
	vSyuP6+aNXdXcfGbZXAW3e1nlj5uF9d0Sa8oZcXeM0Gd1djWAjBq7vUYipySQy1uDRmrL0sBCY0fS
	FdXelAOR+cYMx5e5uD6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gkw-0000000BcKL-0yED;
	Wed, 09 Sep 2026 11:46:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gku-0000000BcJj-2ql7
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:46:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 228AA60120;
	Wed,  9 Sep 2026 11:46:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80A501F00A3D;
	Wed,  9 Sep 2026 11:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788954379;
	bh=J8Eauxlz00gR8sCQvMHK4xgiIChjH4ihagdEFDO01Ok=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ELUYbumm+J70katjYSaYM2ChdrCbOZCpQwfgh5bij/6yEtD9gP+cBRpcC6W8pef14
	 dCGQmB0fTa+2a7rYiSfyk7vEX9pT0EMRHH/lhy3Uod8sAuJm47uIxgTUEqLu0hGa8T
	 /+voK8bl/YRGi4XVFS3ujUzgzcF5105TH8AtSuIVOFYMWAAMJ6sBfB6QRxZCI3a4Qp
	 Q97w5Ph3IwxIo77KPv7BXSSc2F6tS40yIS1EyGlmXcU68iHPausLbd4ER4UhldwDU5
	 H9igxBwPj2uUg3JkLK+cG8mw3A4it4WsfYtmWIDOFmVvFI1/URirvSglBpa9+L15Ao
	 pTaiU3vL24I3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/4] phy: ti-pipe3: Fix ignored clock enable return
 value  in init
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260909113433.1287454-2-zenghongling@kylinos.cn>
References: <20260909113433.1287454-1-zenghongling@kylinos.cn>
 <20260909113433.1287454-2-zenghongling@kylinos.cn>
Date: Wed, 09 Sep 2026 11:46:19 +0000
Message-Id: <20260909114619.80A501F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBDbG9jayBlbmFibGUgY291bnQgbGVhayBvbiByYWNlIGNvbmRpdGlvbiBlcnJvciBw
YXRoIGR1cmluZyBTQVRBIGxvY2sgY2hlY2sgaW4gdGlfcGlwZTNfaW5pdCgpCi0tCgpjb21taXQg
Njc2N2QwMzI0NTU1NWM2ZWI2N2U5NjEzZTQ3ZDI4N2QzOTk4OGIxOApBdXRob3I6IEhvbmdsaW5n
IFplbmcgPHplbmdob25nbGluZ0BreWxpbm9zLmNuPgoKcGh5OiB0aS1waXBlMzogRml4IGlnbm9y
ZWQgY2xvY2sgZW5hYmxlIHJldHVybiB2YWx1ZSBpbiBpbml0Cgp0aV9waXBlM19pbml0KCkgaWdu
b3JlcyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRpX3BpcGUzX2VuYWJsZV9jbG9ja3MoKSwKd2hpY2gg
Y2FuIGxlYWQgdG8gdW5jbG9ja2VkIGhhcmR3YXJlIGFjY2VzcyBhbmQgdW5iYWxhbmNlZCBjbG9j
ayBkaXNhYmxlcy4KRml4IHRoaXMgYnkgY2hlY2tpbmcgdGhlIHJldHVybiB2YWx1ZSBhbmQgcmV0
dXJuaW5nIGVhcmx5IGlmIGl0IGZhaWxzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkv
cGh5LXRpLXBpcGUzLmMgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IGluZGV4IGI1
NTQzYjVjNjc0YzguLjBlM2JjOTIxODczMzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkv
cGh5LXRpLXBpcGUzLmMKPiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBA
IC00OTgsOSArNDk4LDEyIEBAIHN0YXRpYyBpbnQgdGlfcGlwZTNfaW5pdChzdHJ1Y3QgcGh5ICp4
KQo+ICB7Cj4gIAlzdHJ1Y3QgdGlfcGlwZTMgKnBoeSA9IHBoeV9nZXRfZHJ2ZGF0YSh4KTsKPiAg
CXUzMiB2YWw7Cj4gLQlpbnQgcmV0ID0gMDsKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gdGlf
cGlwZTNfZW5hYmxlX2Nsb2NrcyhwaHkpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+
ICAKPiAtCXRpX3BpcGUzX2VuYWJsZV9jbG9ja3MocGh5KTsKPiAgCS8qCj4gIAkgKiBTZXQgcGNp
ZV9wY3MgcmVnaXN0ZXIgdG8gMHg5NiBmb3IgcHJvcGVyIGZ1bmN0aW9uaW5nIG9mIHBoeQoKW1Nl
dmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZnVydGhlciBk
b3duIGluIHRoaXMgZnVuY3Rpb24sIGRvZXMgdGhpcwpsZWFrIHRoZSBjbG9jayBlbmFibGUgY291
bnQgb24gYSByYWNlIGNvbmRpdGlvbiBlcnJvciBwYXRoPwoKSWYgdGlfcGlwZTNfZHBsbF93YWl0
X2xvY2soKSBmYWlscyBkdWUgdG8gYSB0aW1lb3V0IChyZXR1cm5pbmcgLUVCVVNZKSwgYnV0CnRo
ZSBEUExMIGxvY2tzIGltbWVkaWF0ZWx5IGFmdGVyLCAodmFsICYgUExMX0xPQ0spIHdpbGwgZXZh
bHVhdGUgdG8gdHJ1ZS4KCkZvciBTQVRBIG1vZGUsIGl0IHRoZW4gcmV0dXJucyB0aGUgc3RhbGUg
LUVCVVNZIGVycm9yIHdpdGhvdXQgZGlzYWJsaW5nIHRoZQpjbG9ja3M6Cgpkcml2ZXJzL3BoeS90
aS9waHktdGktcGlwZTMuYzp0aV9waXBlM19pbml0KCkgewogICAgLi4uCglpZiAodmFsICYgUExM
X0lETEUpIHsKCQl2YWwgJj0gflBMTF9JRExFOwoJCXRpX3BpcGUzX3dyaXRlbChwaHktPnBsbF9j
dHJsX2Jhc2UsIFBMTF9DT05GSUdVUkFUSU9OMiwgdmFsKTsKCQlyZXQgPSB0aV9waXBlM19kcGxs
X3dhaXRfbG9jayhwaHkpOwoJfQoKCS8qIFNBVEEgaGFzIGlzc3VlcyBpZiByZS1wcm9ncmFtbWVk
IHdoZW4gbG9ja2VkICovCgl2YWwgPSB0aV9waXBlM19yZWFkbChwaHktPnBsbF9jdHJsX2Jhc2Us
IFBMTF9TVEFUVVMpOwoJaWYgKCh2YWwgJiBQTExfTE9DSykgJiYgcGh5LT5tb2RlID09IFBJUEUz
X01PREVfU0FUQSkKCQlyZXR1cm4gcmV0OwogICAgLi4uCn0KCldoaWxlIHRoaXMgcmVxdWlyZXMg
c3BlY2lmaWMgaGFyZHdhcmUgdGltaW5ncyBvciBkZWxheXMgKGxpa2UgaGlnaCBsb2FkIG9yCnBy
ZWVtcHRpb24pIGFsbG93aW5nIHRoZSB0aW1lb3V0IHRvIGV4cGlyZSBqdXN0IGJlZm9yZSB0aGUg
bG9jayBzdWNjZWVkcywgaXQKcmVtYWlucyBhIHN0cnVjdHVyYWwgbGVhayBvbiB0aGlzIGZhaWx1
cmUgcGF0aC4KClNob3VsZCB0aGlzIGZhaWx1cmUgcGF0aCBhbHNvIGNhbGwgdGlfcGlwZTNfZGlz
YWJsZV9jbG9ja3MoKSBiZWZvcmUgcmV0dXJuaW5nCmFuIGVycm9yLCBzaW1pbGFyIHRvIHRoZSBv
dGhlciBlcnJvciBwYXRocyBpbiB0aGlzIGZ1bmN0aW9uPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkwOTExMzQzMy4xMjg3NDU0
LTEtemVuZ2hvbmdsaW5nQGt5bGlub3MuY24/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

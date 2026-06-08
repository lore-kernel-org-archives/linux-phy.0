Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A80ECD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Td5aUDTlGVoeg+bJ2bZmlnOrbJeOckLZSRMTL1O8Kqo=; b=LIM6HlrXDCfNuM
	C+Xf2cPMb5hRa20kvegHQxGWvpnDAoIQjbzD6ZVhHrNvn7NSmza7rM1yvTSP1CGwUyU9rHk04e4Tl
	YXXuSvgVrZ1cK3YWLaomxFqTrpmRjqqhSeXsCXH0gesSZVS5AqhC0T02VmdFOY0uSjBlnjo8IA/Im
	8qN9sh7JlOe9vaTec/Pm7G+VmTyotLOnbnlpa9+7Xor/XKwq/Xf8Oieovvsd7Y/KX0nLLTb4OAgoW
	y+PbQfRdHvmxuWxEr6dLJLSetSaXakRk8HV/n28fqSfFQFBNwnnMTWK70s73ABoVuDmkbF/QZHTL2
	jG10BZjhAwiX5W9gFReQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXS2-00000003Lnz-3BQt;
	Mon, 08 Jun 2026 10:43:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXS0-00000003Lng-33kc
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:43:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D19ED6001D;
	Mon,  8 Jun 2026 10:43:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B15D1F00893;
	Mon,  8 Jun 2026 10:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780915403;
	bh=RCMfCz0/NBhOaGAQwSidJdxz+UL5OC/88NJ1Zbfz3WE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O/ftnEVdqvrcpXsbdT5pfh7J4FeIQuDf3scePatElCQJVcUpJv3Nn2X7/giy2BVj7
	 UifcWEYVTYNytFwf64tbt/oXzLjv2lfVS2jAoEVHBVj5MDsx+9C3H5Jnl/5EqTUebF
	 yWUDQClZv7LWk7qSAvlGdmxLn/SC0kALL/ALr6Fs+Gwzn432U0MC2eOVkIu26Xp2Ql
	 18+bPw9jKuKsvhnceUQ+DfBe6LJN0rSOnjRGK+Ar+eYUR/iGaHfgF7czVk7f5JtxOH
	 cEFn4v1ZpLVk96rNn76v1H9rgNUoJWpJSY3Xj1t16gNG/fB3zfwIW6Mi+kykQzlaXq
	 7ml4FdnDj+llQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 04/10] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260608100949.36309-5-angelogioacchino.delregno@collabora.com>
References: <20260608100949.36309-5-angelogioacchino.delregno@collabora.com>
Date: Mon, 08 Jun 2026 10:43:22 +0000
Message-Id: <20260608104323.3B15D1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZGV2X3NldF9uYW1lKCkg
dXNlcyB0aGUgJyVkJyBmb3JtYXQgc3BlY2lmaWVyIGZvciBhIHZhcmlhYmxlIG9mIHR5cGUgJ3Vu
c2lnbmVkIGludCcsIHdoaWNoIHdpbGwgY2F1c2UgYSAtV2Zvcm1hdCBjb21waWxlciB3YXJuaW5n
LgotLQoKY29tbWl0IDM1YWM2OTE0MGI5YjJkOGEzYjBlMmFhMDFmZTVmNWFjM2ZmZTRkMDIKQXV0
aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdu
b0Bjb2xsYWJvcmEuY29tPgoKc3BtaTogSW1wbGVtZW50IHNwbWlfc3ViZGV2aWNlX2FsbG9jX2Fu
ZF9hZGQoKSBhbmQgZGV2bSB2YXJpYW50CgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGZ1bmN0aW9u
cyBmb3IgbWFuYWdpbmcgc3ViLWRldmljZXMgb2YgYW4gU1BNSQpkZXZpY2UsIGluY2x1ZGluZyBz
cG1pX3N1YmRldmljZV9hbGxvY19hbmRfYWRkKCkgYW5kIGl0cyBkZXZtCnZhcmlhbnQuIFRoZXNl
IGFsbG93IGNvbXBsZXggUE1JQ3Mgd2l0aCBtdWx0aXBsZSBzdWItZGV2aWNlcyB0byBiZQpwcm9w
ZXJseSBtb2RlbGVkIGFuZCBtYW5hZ2VkIHZpYSB0aGUgU1BNSSBidXMuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3NwbWkvc3BtaS5jIGIvZHJpdmVycy9zcG1pL3NwbWkuYwo+IGluZGV4IDkxYTQw
ZWE4MDMxYWQuLjc5NDVjYWNmNmQ2NTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zcG1pL3NwbWku
Ywo+ICsrKyBiL2RyaXZlcnMvc3BtaS9zcG1pLmMKClsgLi4uIF0KCj4gQEAgLTQyOCw2ICs0NTQs
NTggQEAgc3RydWN0IHNwbWlfZGV2aWNlICpzcG1pX2RldmljZV9hbGxvYyhzdHJ1Y3Qgc3BtaV9j
b250cm9sbGVyICpjdHJsKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKHNwbWlfZGV2aWNlX2Fs
bG9jKTsKPiAgCj4gKy8qKgo+ICsgKiBzcG1pX3N1YmRldmljZV9hbGxvY19hbmRfYWRkKCk6IEFs
bG9jYXRlIGFuZCBhZGQgYSBuZXcgU1BNSSBzdWItZGV2aWNlCj4gKyAqIEBzcGFyZW50OglTUE1J
IHBhcmVudCBkZXZpY2Ugd2l0aCBwcmV2aW91c2x5IHJlZ2lzdGVyZWQgU1BNSSBjb250cm9sbGVy
Cj4gKyAqCj4gKyAqIFJldHVybnM6Cj4gKyAqIFBvaW50ZXIgdG8gbmV3bHkgYWxsb2NhdGVkIFNQ
TUkgc3ViLWRldmljZSBmb3Igc3VjY2VzcyBvciBlcnJvciBwb2ludGVyLgo+ICsgKi8KPiArc3Ry
dWN0IHNwbWlfc3ViZGV2aWNlICpzcG1pX3N1YmRldmljZV9hbGxvY19hbmRfYWRkKHN0cnVjdCBz
cG1pX2RldmljZSAqc3BhcmVudCkKPiArewo+ICsJc3RydWN0IHNwbWlfc3ViZGV2aWNlICpzdWJf
c2RldjsKPiArCXN0cnVjdCBzcG1pX2RldmljZSAqc2RldjsKPiArCWludCByZXQ7Cj4gKwo+ICsJ
c3ViX3NkZXYgPSBremFsbG9jKHNpemVvZigqc3ViX3NkZXYpLCBHRlBfS0VSTkVMKTsKPiArCWlm
ICghc3ViX3NkZXYpCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gKwo+ICsJc2RldiA9
ICZzdWJfc2Rldi0+c2RldjsKPiArCXNkZXYtPmN0cmwgPSBzcGFyZW50LT5jdHJsOwo+ICsJc2Rl
di0+dXNpZCA9IHNwYXJlbnQtPnVzaWQ7Cj4gKwo+ICsJcmV0ID0gaWRhX2FsbG9jKCZzcG1pX3N1
YmRldmljZV9pZGEsIEdGUF9LRVJORUwpOwo+ICsJaWYgKHJldCA8IDApIHsKPiArCQlrZnJlZShz
dWJfc2Rldik7Cj4gKwkJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiArCX0KPiArCXN1Yl9zZGV2LT5k
ZXZpZCA9IHJldDsKPiArCj4gKwlkZXZpY2VfaW5pdGlhbGl6ZSgmc2Rldi0+ZGV2KTsKPiArCXNk
ZXYtPmRldi5wYXJlbnQgPSAmc3BhcmVudC0+ZGV2Owo+ICsJc2Rldi0+ZGV2LmJ1cyA9ICZzcG1p
X2J1c190eXBlOwo+ICsJc2Rldi0+ZGV2LnR5cGUgPSAmc3BtaV9zdWJkZXZfdHlwZTsKPiArCj4g
KwlyZXQgPSBkZXZfc2V0X25hbWUoJnNkZXYtPmRldiwgIiV1LSUwMnguJWQuYXV0byIsCj4gKwkJ
CSAgIHNkZXYtPmN0cmwtPm5yLCBzZGV2LT51c2lkLCBzdWJfc2Rldi0+ZGV2aWQpOwoKW1NldmVy
aXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBzaG91bGQgdGhpcyB1c2UgJXUgaW5zdGVh
ZCBvZiAlZCBmb3IgdGhlIGZvcm1hdApzcGVjaWZpZXI/IFRoZSBkZXZpZCBmaWVsZCBpbiBzdHJ1
Y3Qgc3BtaV9zdWJkZXZpY2UgaXMgZGVmaW5lZCBhcyBhbgp1bnNpZ25lZCBpbnQsIHdoaWNoIGNh
biBjYXVzZSBhIC1XZm9ybWF0IGNvbXBpbGVyIHdhcm5pbmcgaGVyZS4KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MDgxMDA5NDku
MzYzMDktMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD00Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

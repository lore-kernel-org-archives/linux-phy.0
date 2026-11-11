Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722D606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZWmxPlrQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YUJUB+kD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Gwpms+cblQXnSi2EPGS9+fg200NVVoKUgw+TSixbEjg=; b=ZWmxPlrQn1Ev2x8TpFN5li7PQr
	yC5ppzrYfq/VTuM6jnMPnAebJhb439h7WEhaQUT5UMe8z7Tg9jZSI/k8oTWddESWRoTdOex5n1a2B
	1wyt0l27nbDNbafmKfYHKsTI5nKNDlyM2dLNSXNlwWViWngPmBsf6cR/CFXsiOV0Cok/nfs9EsTmu
	SpQJewDtsefVRO02UYd5t07I56qyk3L0VRWBnJRctqghfWMr51OYz1w3yTl/0zl9Z5bfRMg7ucsac
	my7MMSU3GDAOrUiMKxWQqdtJ8ZMbnbgqmswrCmiljTz7eD64EruQKiV143OSDaafqiYUi9a37fI81
	8dgXkBfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQz4Q-00000005YhI-3WcG;
	Wed, 11 Nov 2026 03:32:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQz4P-00000005Yga-2eR1
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 03:32:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 92E4E60A50;
	Wed, 11 Nov 2026 03:32:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09D301F0089F;
	Wed, 11 Nov 2026 03:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794367940;
	bh=kVQ0S9sewCWa+sGpBoWkkV6ehTKLX6653biV/RtAErE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YUJUB+kD2WP4Msh8g5LjNmQeJX6ovtiCj46YPqwgOElY1AiWCyOJI3LxWwKQP5Fcj
	 b1R7mGmheT9rqOzWM+udA9ybFLUHwdgf6WgDak7rwcg1X488ZmgigiaMgiAOQWpLpP
	 cWaar1cqN2JP+zivzo2JMfDfYpvlzYYrhreVwHsvqyfj9EDI5phB83WWkwwIvgtX6y
	 plxAMwIZQfF77lCN2YLHyoMMdrJXzGniXyPF5lk1Ly+ssQR6IvNI36uvfTvbMzO1H/
	 VkI0JiYRPhwMxdKY942dn+/njCO617mbwLm8tpt+z7I8Do1xQwPPwcqTV2FS9CWOYK
	 DKqkw8hmshsTQ==
Message-ID: <sashiko-outbox-208200@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] phy: exynos5-usbdrd: power the Exynos2200 phy
 down when its init fails
To: Soheyb <soheyb_boulaa@proton.me>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261111032309.3365794-2-soheyb_boulaa@proton.me>
References: <20261111032309.3365794-1-soheyb_boulaa@proton.me>
 <20261111032309.3365794-2-soheyb_boulaa@proton.me>
Date: Wed, 11 Nov 2026 03:32:19 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogZXh5bm9zNS11c2Jk
cmQ6IHNpbmdsZS13b3JkIG5hbWUgaW4gU2lnbmVkLW9mZi1ieSBhbmQKICBBdXRob3IgdHJhaWxl
cnMKLS0KCmNvbW1pdCBlYTM2MDcxODY0MmExMGZjNTIzMzk2YzM3Y2IwNTRmZDZkNjY2OGZiCkF1
dGhvcjogU29oZXliIDxzb2hleWJfYm91bGFhQHByb3Rvbi5tZT4KCj4gcGh5OiBleHlub3M1LXVz
YmRyZDogcG93ZXIgdGhlIEV4eW5vczIyMDAgcGh5IGRvd24gd2hlbiBpdHMgaW5pdCBmYWlscwo+
Cj4gZXh5bm9zMjIwMF91c2JkcmRfcGh5X2luaXQoKSBlbmFibGVzIHRoZSByZWd1bGF0b3JzIG9m
IHRoZSBVVE1JIHBoeSBhbmQKPiB0YWtlcyB0aGUgcGh5IG91dCBvZiBpc29sYXRpb24gaW4gdGhl
IFBNVSBiZWZvcmUgaXQgZW5hYmxlcyB0aGUgY2xvY2tzLgo+IFdoZW4gY2xrX2J1bGtfcHJlcGFy
ZV9lbmFibGUoKSBmYWlscywgaXQgcmV0dXJucyB3aXRob3V0IHVuZG9pbmcKPiBlaXRoZXIuIFRo
ZSBwaHkgY29yZSBkb2VzIG5vdCBjb3VudCBhIGZhaWxlZCBpbml0LCBzbyBubyBleGl0IHVuZG9l
cwo+IHRoZW0gbGF0ZXI6IHRoZSBwaHkgc3RheXMgb3V0IG9mIGlzb2xhdGlvbiwgYW5kIGl0cyBz
dXBwbGllcyBzdGF5Cj4gZW5hYmxlZCwgdW50aWwgYW4gaW5pdCBhbmQgYW4gZXhpdCBzdWNjZWVk
Lgo+Cj4gSXNvbGF0ZSB0aGUgcGh5IGFnYWluIGFuZCBkaXNhYmxlIHRoZSBVVE1JIHJlZ3VsYXRv
cnMgd2hlbiB0aGUgY2xvY2tzCj4gb3IgdGhlIHBoeS1zcGVjaWZpYyBpbml0IGZhaWwuIFRoZSBw
aHktc3BlY2lmaWMgaW5pdCBkb2VzIG5vdCBmYWlsIHlldDsKPiB0aGUgbmV4dCBwYXRjaCBtYWtl
cyB0aGUgVVRNSSBpbml0IHJldHVybiB0aGUgcmVzdWx0IG9mIHRoZSBpbml0IG9mIHRoZQo+IGhp
Z2gtc3BlZWQgcGh5Lgo+Cj4gRml4ZXM6IGNjNTJhNjk3Zjg3ZSAoInBoeTogZXh5bm9zNS11c2Jk
cmQ6IHN1cHBvcnQgRXh5bm9zIFVTQkRSRCAzLjIgNG5tIGNvbnRyb2xsZXIiKQo+IENjOiBzdGFi
bGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogU29oZXliIDxzb2hleWJfYm91bGFh
QHByb3Rvbi5tZT4KCltTZXZlcml0eTogSGlnaF0KQ291bGQgdGhlIEF1dGhvciBoZWFkZXIgYW5k
IFNpZ25lZC1vZmYtYnkgdGFnIHVzZSBhIGZ1bGwgcmVhbCBuYW1lIChmb3IKZXhhbXBsZSwgU29o
ZXliIEJvdWxhYSkgaW5zdGVhZCBvZiBhIHNpbmdsZS13b3JkIG5hbWUsIGFzIHJlcXVpcmVkIGJ5
CkRvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0IGZvciB0aGUgRGV2
ZWxvcGVyJ3MKQ2VydGlmaWNhdGUgb2YgT3JpZ2luPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExMTAzMjMwOS4zMzY1Nzk0LTEt
c29oZXliX2JvdWxhYUBwcm90b24ubWU/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

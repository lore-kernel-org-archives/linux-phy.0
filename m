Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B0B606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 03:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yc6KtsyN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oOFGR35F
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Oe2SzvVymLUokU3IHnVArH9qUa6wyKfmaeJBBkhM3kk=; b=yc6KtsyNDCsDBCsRyxLQvzI3Bc
	AXRYYN9NNJKdE1GMv7ej7iZmHeXSAflaSJQmKiBuUaV1PQSppCk+4nBGvPsZ90al5DaP+knkQWrqV
	TJHEqWxTQPIcwe0Ce/z2H40YrhOAK7wso4rXL4TWTtpfl2muJ9GKBsYuBzz3R0AGur7snA/hvTRBp
	1RsXFo1TX39KmbmOma2eKSb9eBFGmMpcQ2SNKj0wpm/gF6CwgKJFbJvHxVDtxHw02y6d7WIFI2qqH
	IPRWKAoNNSq1A2uuXeY/1nN2OWL8fyclQmFU9Yh+/oeb+Z7Vnu7W2I1xq+gyqObfdXmFIRmnKqTQ9
	6Q1G5mNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQzAv-00000005Z7n-2cng;
	Wed, 11 Nov 2026 03:39:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQzAu-00000005Z7d-3sMd
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 03:39:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0BB1C63ABF;
	Wed, 11 Nov 2026 03:39:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78AEC1F0089F;
	Wed, 11 Nov 2026 03:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794368342;
	bh=ixowOZIAw2+CRH5vUtU7RmkeNB/MGOQav5Av4HLUn8c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oOFGR35FGNd1gngot6N8/7/fHZ/am0V81uXyBjKCagPUb2r+CCfpk36ygPlrWZ9ZX
	 JDxQX/6mtbEd73F0y7KaEKCxLxRHUpcSRiMbIgMhynKSxWUx4m5vnnol1stbmDajWa
	 g6q8qOqmABTTA98zutbjHsd8lLMBUUqRG5HwXYzIupV16Vgu5L5SNkMlsW7KKhtU8H
	 YoFJ2JW84HTrZexCPLNTLpL36HrwMi0qeZbTGKy9uAckbpW9U++Rq8xBcsuSk46CrR
	 +WKvWuYuDSpDrwBSTRqkKmPlfTMNPLxgv4rqTrWvATIe8fRiAtw7/zuioaBLEiOcS/
	 NNHQd60wK+HVA==
Message-ID: <sashiko-outbox-208212@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] phy: exynos5-usbdrd: fix HS phy init count
 imbalance on Exynos2200
To: Soheyb <soheyb_boulaa@proton.me>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261111032309.3365794-4-soheyb_boulaa@proton.me>
References: <20261111032309.3365794-1-soheyb_boulaa@proton.me>
 <20261111032309.3365794-4-soheyb_boulaa@proton.me>
Date: Wed, 11 Nov 2026 03:39:02 +0000
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
cmQ6IHNpbmdsZS13b3JkIG5hbWUgaW4gQXV0aG9yIGFuZAogIFNpZ25lZC1vZmYtYnkKLS0KCmNv
bW1pdCA4ZTQ0OGE0YTZmNTZlNGU4M2Q5MGE1MjdhODgwMzI3NTVhNDIwNjcxCkF1dGhvcjogU29o
ZXliIDxzb2hleWJfYm91bGFhQHByb3Rvbi5tZT4KCj4gcGh5OiBleHlub3M1LXVzYmRyZDogZml4
IEhTIHBoeSBpbml0IGNvdW50IGltYmFsYW5jZSBvbiBFeHlub3MyMjAwCj4KPiBleHlub3MyMjAw
X3VzYmRyZF91dG1pX2luaXQoKSBjYWxscyBwaHlfaW5pdCgpIG9uIHRoZSBoaWdoLXNwZWVkIHBo
eSwKPiBidXQgZXh5bm9zMjIwMF91c2JkcmRfcGh5X2V4aXQoKSBuZXZlciBjYWxscyBwaHlfZXhp
dCgpIG9uIGl0LiBUaGUgaW5pdAo+IGNvdW50IG9mIHRoZSBoaWdoLXNwZWVkIHBoeSB0aGVyZWZv
cmUgbmV2ZXIgZHJvcHMgYmFjayB0byB6ZXJvOiBhZnRlcgo+IHRoZSBmaXJzdCBpbml0LCBldmVy
eSBsYXRlciBwaHlfaW5pdCgpIG9mIGl0IHJldHVybnMgZWFybHksIGFuZCBpdHMKPiBjbG9ja3Mg
YW5kIHN1cHBsaWVzIHN0YXkgZW5hYmxlZCBhY3Jvc3MgYW4gZXhpdCBvZiB0aGUgVVRNSSBwaHku
Cj4KPiBXaGVuIHRoZSBoaWdoLXNwZWVkIHBoeSBsb3NlcyBwb3dlciB3aGlsZSB0aGUgY29udHJv
bGxlciBpcyBzdXNwZW5kZWQsCj4gaXQgaXMgdGh1cyBub3Qgc2V0IHVwIGFnYWluIG9uIHJlc3Vt
ZSwgYW5kIHRoZSBEV0MzIGNvcmUgc29mdCByZXNldAo+IHRpbWVzIG91dDoKPgo+ICAgZHdjMyAx
MTIxMDAwMC51c2I6IERXQzMgY29udHJvbGxlciBzb2Z0IHJlc2V0IGZhaWxlZAo+Cj4gRXhpdCB0
aGUgaGlnaC1zcGVlZCBwaHkgd2hlbiB0aGUgVVRNSSBwaHkgZXhpdHMsIGxhc3QsIG9uY2UgdGhl
IHJlc3Qgb2YKPiB0aGUgZXhpdCBoYXMgc3VjY2VlZGVkOiB0aGUgcGh5IGNvcmUgY291bnRzIGEg
ZmFpbGVkIGV4aXQgYXMgbm8gZXhpdCwKPiBzbyB0aGUgaGlnaC1zcGVlZCBwaHkgaGFzIHRvIHN0
YXkgaW5pdGlhbGl6ZWQgYWxvbmcgd2l0aCB0aGUgVVRNSSBwaHkuCj4KPiBGaXhlczogY2M1MmE2
OTdmODdlICgicGh5OiBleHlub3M1LXVzYmRyZDogc3VwcG9ydCBFeHlub3MgVVNCRFJEIDMuMiA0
bm0gY29udHJvbGxlciIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2Zm
LWJ5OiBTb2hleWIgPHNvaGV5Yl9ib3VsYWFAcHJvdG9uLm1lPgoKW1NldmVyaXR5OiBIaWdoXQpE
b2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCByZXF1aXJlcyBhIGZ1
bGwgcmVhbCBuYW1lCmluIHRoZSBBdXRob3IgaGVhZGVyIGFuZCBTaWduZWQtb2ZmLWJ5IHRhZyBy
YXRoZXIgdGhhbiBhIHNpbmdsZS13b3JkCm5hbWUuIENvdWxkIHRoaXMgdXNlIHlvdXIgZnVsbCBu
YW1lIChmb3IgZXhhbXBsZSwgU29oZXliIEJvdWxhYSk/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTExMDMyMzA5LjMzNjU3OTQt
MS1zb2hleWJfYm91bGFhQHByb3Rvbi5tZT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

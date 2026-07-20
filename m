Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB20C4452B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 13:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0nnX/+vJcr/OXT+W9ueXEQH1kW36mi22/2e7kwKp1E=; b=J0Y1+ic9PYBezW
	uRKFKs0SAgMNDlhhOcm0JH2alRehwRQKMO5GvAR0IBBXvQGtpYFwRSsDcX9xVmtFL5PXZ2HIVIfAc
	OkTAJVwUGOgc158Xhboql2gu+rmBHIYjFnxb8yrfi7+AWidBeD3l48wOVi4qHeCX7l6Dj5R7YH6Q+
	kvEI+nVRh5hwF2ZwP4aYN/gC7HuPJiCapNUzltC9a5ipp42LBrRvRTH2Ftj9qF8NSGECmssw4n2Ys
	f3RAlfgGGA7HgKRIuxQR8upcgWEhBSeQbe941eQ15CxeFyLcWI06uTGONsasFjPEItjenYe7I4xd6
	icnZwiGauuzA8ecPVqRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloOR-00000006sSm-1lzh;
	Mon, 20 Jul 2026 13:50:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloOQ-00000006sSd-2rNd
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 13:50:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 19AF543EF9;
	Mon, 20 Jul 2026 13:50:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AC231F00A3D;
	Mon, 20 Jul 2026 13:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784555450;
	bh=3LZZtVBf3O7ViI6J6aSZ990U+CiLLnApCg/TB1MuF84=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XfzrXA0Uh4pBIVD24bVbLQhHPudmydfr+aNCVbVxo6LV6s9+oU1jslQSru0a225Ld
	 r3xgVUh3d1yl/f7GUBAueX5te/1lgDMeQ6u9nyW71noHEpnwwje8BY6p56rLKgmRZi
	 YKe6HIuADwGjOXv/IabCbPTsXIAtUxceiylHPSNuaELYEZIh+gnSm2yYkOI/MlkUiG
	 rULIsIXJoM8M/SN79elEqI25mTDMSivWbDQxcfOFjc9AOQMqBj4C3e92Jj2m9K/jiO
	 ThQbhaUUlFuY+F/Pf8ggBAS1xu8DjuO68yCVcKBZY+tt0xYyADta7kVGaWviOn/tE7
	 TtcW34mnhohHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 2/8] soc: fsl: guts: add a global structure
 to hold state
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260720133642.136324-3-vladimir.oltean@nxp.com>
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-3-vladimir.oltean@nxp.com>
Date: Mon, 20 Jul 2026 13:50:49 +0000
Message-Id: <20260720135049.8AC231F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERlcmVmZXJlbmNpbmcg
YSBOVUxMIHBvaW50ZXIgZHVyaW5nIGVycm9yIGNsZWFudXAgaWYgdGhlIGluaXRpYWwgYWxsb2Nh
dGlvbiBvZiBgc29jX2Rldl9hdHRyYCBmYWlscy4KLS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCB2
MyBwaHktbmV4dCAyLzhdIHNvYzogZnNsOiBndXRzOiBhZGQgYSBnbG9iYWwgc3RydWN0dXJlIHRv
IGhvbGQgc3RhdGUgLS0tCmNvbW1pdCBkY2UyMWZjOTE5MmJjZjJlYzdjNWMyZTk2MzllNDNiN2E2
YzUzYzU3CkF1dGhvcjogSW9hbmEgQ2lvcm5laSA8aW9hbmEuY2lvcm5laUBueHAuY29tPgoKc29j
OiBmc2w6IGd1dHM6IGFkZCBhIGdsb2JhbCBzdHJ1Y3R1cmUgdG8gaG9sZCBzdGF0ZQoKVGhpcyBj
b21taXQgaW50cm9kdWNlcyB0aGUgZnNsX3NvY19ndXRzIGdsb2JhbCBzdHJ1Y3R1cmUgdG8gaG9s
ZCB0aGUgRENGRyBDQ1NSCm1hcHBpbmcgYW5kIGVuZGlhbm5lc3Mgc3RhdGUuIEl0IG1hcHMgdGhl
IG1lbW9yeSBvbmNlIGF0IGluaXRpYWxpemF0aW9uIHNvIGl0CmNhbiBiZSByZXVzZWQgZHVyaW5n
IHJ1bnRpbWUgb3BlcmF0aW9ucyBpbnN0ZWFkIG9mIHJlcGVhdGVkbHkgbWFwcGluZyBhbmQKdW5t
YXBwaW5nIHRoZSBzcGFjZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2ZzbC9ndXRzLmMg
Yi9kcml2ZXJzL3NvYy9mc2wvZ3V0cy5jCj4gaW5kZXggZjg3ZWU0N2MxNTAzNS4uYTJiNGM0Nzdi
MDY0YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9mc2wvZ3V0cy5jCj4gKysrIGIvZHJpdmVy
cy9zb2MvZnNsL2d1dHMuYwpbIC4uLiBdCj4gQEAgLTE5OSwyNCArMjAyLDIzIEBAIHN0YXRpYyBp
bnQgX19pbml0IGZzbF9ndXRzX2luaXQodm9pZCkKWyAuLi4gXQo+ICAJLyogUmVnaXN0ZXIgc29j
IGRldmljZSAqLwo+ICAJc29jX2Rldl9hdHRyID0ga3phbGxvY19vYmooKnNvY19kZXZfYXR0cik7
Cj4gIAlpZiAoIXNvY19kZXZfYXR0cikKPiAtCQlyZXR1cm4gLUVOT01FTTsKPiArCQlnb3RvIGVy
cl9ub21lbTsKCltTZXZlcml0eTogSGlnaF0KV2lsbCBqdW1waW5nIHRvIGVycl9ub21lbSBjYXVz
ZSBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZT8KCklmIHRoZSBhbGxvY2F0aW9uIG9mIHNvY19k
ZXZfYXR0ciBmYWlscywgdGhlIGNvZGUgbm93IGp1bXBzIHRvIHRoZSBlcnJvcgpoYW5kbGluZyBw
YXRoIHdoaWNoIGRlcmVmZXJlbmNlcyBzb2NfZGV2X2F0dHIgdG8gZnJlZSBpdHMgbWVtYmVyczoK
Cj4gQEAgLTI2OSw2ICsyNzEsOCBAQCBzdGF0aWMgaW50IF9faW5pdCBmc2xfZ3V0c19pbml0KHZv
aWQpCj4gIAlrZnJlZShzb2NfZGV2X2F0dHItPnJldmlzaW9uKTsKPiAgCWtmcmVlKHNvY19kZXZf
YXR0ci0+c2VyaWFsX251bWJlcik7CgpTaW5jZSBzb2NfZGV2X2F0dHIgaXMgTlVMTCB3aGVuIHRo
aXMgYWxsb2NhdGlvbiBmYWlscywgd29uJ3QgZXZhbHVhdGluZwpzb2NfZGV2X2F0dHItPnJldmlz
aW9uIGFuZCBvdGhlciBtZW1iZXJzIHJlc3VsdCBpbiBhIGtlcm5lbCBwYW5pYz8KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjAx
MzM2NDIuMTM2MzI0LTEtdmxhZGltaXIub2x0ZWFuQG54cC5jb20/cGFydD0yCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

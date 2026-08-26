Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75ED1C61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 12:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRyqSH4K8XfOjCFkrEq7YHR5AV0ZfqC9VwMCNpnRsnQ=; b=l29iKFwnt48hcQ
	GG+a1X59KTd04HUNEpVYC+AVtqZW4l2oa3qsxTbZwRsvjwsAmdkVzdL6Ke4X9NgeP6QiDhGmS/YHu
	Q14IyYeAgeWCm7VIa9OfOaL3pflKbjKrBaFGNRT6kzNYh4PR34wIu5xd9E6XU2FqeWoHOXQccgn33
	G6AR7ixgC6RSXsR6VvEa9YnLCPho4Uz/8CrC5UuTndibNsE+aSffH1J/3mEcS+wCVYexB8jAjPd5Z
	lmDIct0pvIpCzP32y0XRMshnaZukRObNKFPmKCK4gXLqOWNYFpKbGEFmxStb6niCQCSrxokUalMkb
	fRw/JEfIgrIuxVIOn8gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzD4k-00000002TBO-0IYw;
	Wed, 26 Aug 2026 12:49:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzD4i-00000002TBD-0ahi
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 12:49:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2286A600C4;
	Wed, 26 Aug 2026 12:49:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D9041F00A3A;
	Wed, 26 Aug 2026 12:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787748590;
	bh=MJABSHQXgtG8wL6xDsCQLCdU8nGFmXe71QzCWKIPexk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hRV4ZLoHnj1vHXJ6vBpa+B/MwV/kleczJ2IjS2SXz1t4HAJQA9Wie/KVCiO//IMIP
	 yQetZBmTD7ZHDA+GsdI4yNwcRqG6RTMV1Zod0F2DmYTwUalU/TKkyceCS/3dE6UBnP
	 EkG99EdQmFPkx+X2lbm0lxDgN1FOzylmnwStZXzKLV9MHCLRcQy/pZzkbOzfNEOC5M
	 pEp5A2NoAfs85dPnyqE3GwWHkw0RxGEoo0sH7tmxY9FWD8i4N8ALAy5sM5aTxtJlYW
	 jEKixSXdGnkv5Y5MH+vQdcos2lNirWFjWR59j6hbCxUqZM5jv8LN/up2YuezQ0nO0k
	 i/+kpCspaJ7/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: mediatek: xsphy: add optional repeater support
 for USB2 ports
To: "Julien Massot" <julien.massot@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260826-mtk-usb2-repeater-usb2-v1-2-e8e48e2fd6d8@collabora.com>
References: <20260826-mtk-usb2-repeater-usb2-v1-0-e8e48e2fd6d8@collabora.com>
 <20260826-mtk-usb2-repeater-usb2-v1-2-e8e48e2fd6d8@collabora.com>
Date: Wed, 26 Aug 2026 12:49:49 +0000
Message-Id: <20260826124950.5D9041F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBQSFkg
b3BlcmF0aW9uIGRlbGVnYXRpb24gZm9yIGAucG93ZXJfb25gIGFuZCBgLnBvd2VyX29mZmAuCi0t
Cgpjb21taXQgOGRiZWVhOTAxZGJkYjFmOWIzM2IyMWJkNGE1ZjE2YjlhZDdhNWE3OApBdXRob3I6
IEp1bGllbiBNYXNzb3QgPGp1bGllbi5tYXNzb3RAY29sbGFib3JhLmNvbT4KCiAgICBwaHk6IG1l
ZGlhdGVrOiB4c3BoeTogYWRkIG9wdGlvbmFsIHJlcGVhdGVyIHN1cHBvcnQgZm9yIFVTQjIgcG9y
dHMKICAgIAogICAgVVNCMiBQSFkgcG9ydCBzdWItbm9kZXMgbWF5IGNhcnJ5IGFuIG9wdGlvbmFs
IHBoeXMgcHJvcGVydHkgcmVmZXJlbmNpbmcKICAgIGFuIGV4dGVybmFsIGVVU0IyIHJlcGVhdGVy
LgogICAgCiAgICBGZXRjaCB0aGUgcmVwZWF0ZXIgZHVyaW5nIHByb2JlIHVzaW5nIGRldm1fb2Zf
cGh5X29wdGlvbmFsX2dldCgpLAogICAgaW5pdGlhbGl6ZSBhbmQgZXhpdCBpdCBhbG9uZ3NpZGUg
dGhlIFVTQjIgUEhZLCBhbmQgcHJvcGFnYXRlIFVTQiBtb2RlCiAgICBjaGFuZ2VzIHRvIGl0LgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay14c3BoeS5jIGIvZHJp
dmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay14c3BoeS5jCj4gaW5kZXggY2MxZDY2OTU0MjEyYS4u
N2JjM2Q2Nzk0ZDdiOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LXhzcGh5LmMKPiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXhzcGh5LmMKClsg
Li4uIF0KCj4gQEAgLTQzOCw3ICs0NDQsMTEgQEAgc3RhdGljIGludCBtdGtfcGh5X2V4aXQoc3Ry
dWN0IHBoeSAqcGh5KQo+ICB7Cj4gIAlzdHJ1Y3QgeHNwaHlfaW5zdGFuY2UgKmluc3QgPSBwaHlf
Z2V0X2RydmRhdGEocGh5KTsKPiAgCj4gKwlpZiAoaW5zdC0+dHlwZSA9PSBQSFlfVFlQRV9VU0Iy
KQo+ICsJCXBoeV9leGl0KGluc3QtPnJlcGVhdGVyKTsKPiArCj4gIAljbGtfZGlzYWJsZV91bnBy
ZXBhcmUoaW5zdC0+cmVmX2Nsayk7Cj4gKwo+ICAJcmV0dXJuIDA7Cj4gIH0KCltTZXZlcml0eTog
TWVkaXVtXQpJZiBhbiBleHRlcm5hbCByZXBlYXRlciBQSFkgcmVsaWVzIG9uIHRoZSBQSFkgZnJh
bWV3b3JrJ3MgcGh5X3Bvd2VyX29uKCkKKGUuZy4sIHRvIGVuYWJsZSBjb3JlLW1hbmFnZWQgcmVn
dWxhdG9ycywgcmVzdW1lIHJ1bnRpbWUgUE0sIG9yIGludm9rZSBpdHMKb3duIC5wb3dlcl9vbiBj
YWxsYmFjayksIHdpbGwgaXQgc2lsZW50bHkgcmVtYWluIHVucG93ZXJlZCBhbmQgaW5hY3RpdmUK
YmVjYXVzZSBtdGtfcGh5X3Bvd2VyX29uKCkgZG9lcyBub3QgY2FsbCBwaHlfcG93ZXJfb24oaW5z
dC0+cmVwZWF0ZXIpPwoKRm9yIGV4YW1wbGUsIG10a19waHlfcG93ZXJfb24oKSBjdXJyZW50bHkg
b25seSBwb3dlcnMgdGhlIGludGVybmFsIGluc3RhbmNlOgoKc3RhdGljIGludCBtdGtfcGh5X3Bv
d2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKewoJLi4uCglpZiAoaW5zdC0+dHlwZSA9PSBQSFlfVFlQ
RV9VU0IyKSB7CgkJdTJfcGh5X2luc3RhbmNlX3Bvd2VyX29uKHhzcGh5LCBpbnN0KTsKCQl1Ml9w
aHlfc2xld19yYXRlX2NhbGlicmF0ZSh4c3BoeSwgaW5zdCk7Cgl9CgkuLi4KfQoKU2ltaWxhcmx5
LCBjb3VsZCB0aGUgbWlzc2luZyBjYWxsIHRvIHBoeV9wb3dlcl9vZmYoaW5zdC0+cmVwZWF0ZXIp
IGluCm10a19waHlfcG93ZXJfb2ZmKCkgY2F1c2UgaW1iYWxhbmNlZCBwb3dlciB0cmFja2luZyBv
ciByZXNvdXJjZSBsZWFrcyBpbgp0aGUgcmVwZWF0ZXIgUEhZPwoKc3RhdGljIGludCBtdGtfcGh5
X3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCnsKCS4uLgoJaWYgKGluc3QtPnR5cGUgPT0gUEhZ
X1RZUEVfVVNCMikKCQl1Ml9waHlfaW5zdGFuY2VfcG93ZXJfb2ZmKHhzcGh5LCBpbnN0KTsKCS4u
Lgp9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwODI2LW10ay11c2IyLXJlcGVhdGVyLXVzYjItdjEtMC1lOGU0OGUyZmQ2ZDhAY29s
bGFib3JhLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=

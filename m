Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837FEC43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6KH0ZNz6yPEYWKucPH06YbONUXhsVj0ILSCqxA8MnU=; b=IGVvtXB57IkIJB
	HqVeyGZFg6wJDdnqvM8kU3ZGII3mQKMtYEZyxhfCaxgQOYSyvg56m6y0l9gdj7ZvIBYlMcomJKzZB
	BkU8Ame2G+mLk9BAv6r4n4MujwizmtpoNTFbiwIYO5rKJObW5IK+xm5+G8KxPgHe4OygaKDtRiaJg
	pKtSLJrU9s3bGFP/r3E4PPXE/CxK+7BU79yw3AGFgWlqf39jRtNU3AoCqOrxMb3k6wg71rCu64L7W
	/3krFfrdDWkPAyVugSHyHCCRrsy6BiQeWrhIGb+R4T0akyXpW9E34VxzHK8XJzRdmYeMBIuULAUaU
	TBM+lKQJKRHIjVkup4vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6la-0000000FB6n-0UqM;
	Tue, 07 Jul 2026 14:27:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6lY-0000000FB6J-2anY
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:27:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AEFF26138A;
	Tue,  7 Jul 2026 14:27:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D03021F00AC4;
	Tue,  7 Jul 2026 14:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434434;
	bh=9ejetAl8MzDSoFJYgSbHLvtbPxpoS6PlRJW41QuvIVs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BosXBH9rxDr4wDdzAsIV/yyFwkLkT8dXAnXvl3sUysQ1HPPsxjVNQOsIuvaunYhQF
	 j5FYwA/BVxVTU9wn3cmScF4NKsbDF/VG09DmkdhmnikWggql1pv8XBSXhLxzewdkYD
	 OQ5MMrq1t9zeATktAKdhwFdB/6nPRfJHOYYqE+SEqS9mVJ0cVPgQdZEPECZFG6toSS
	 MYWaNf6n1SeAUYfSSKfEIGKAB+qVFR9SDmvaCws1KpNBtBzwQIlTcMD1L+ewrHw79F
	 nIxjSQsLRfv1l1OqA6yBL0OHiDNVLIvb3g/HErKa6p8ZkmCz/SpfSx41db8XSvolgV
	 RtZfq7lTtOyGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/12] phy: phy-mtk-dp: Rename regs to regmap in
 struct mtk_dp_phy
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20260707141931.191172-3-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-3-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 14:27:13 +0000
Message-Id: <20260707142713.D03021F00AC4@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIE5VTEwgY2hlY2sgZm9yIGBkZXYtPnBsYXRmb3JtX2RhdGFgIGJlZm9y
ZSBkZXJlZmVyZW5jaW5nIGl0IGluIGBtdGtfZHBfcGh5X3Byb2JlYC4KLS0KCi0tLSBQYXRjaCBb
Ml06IFtQQVRDSCB2MiAwMi8xMl0gcGh5OiBwaHktbXRrLWRwOiBSZW5hbWUgcmVncyB0byByZWdt
YXAgaW4gc3RydWN0IG10a19kcF9waHkgLS0tCmNvbW1pdCBiNDFkNDA3MmE5NzgwZmY0ZjU2Y2Y4
YjE3MDg1MDg4YjFmMjc3N2FlCkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnBoeTogcGh5LW10ay1kcDog
UmVuYW1lIHJlZ3MgdG8gcmVnbWFwIGluIHN0cnVjdCBtdGtfZHBfcGh5CgpUaGlzIGNvbW1pdCBy
ZW5hbWVzIHRoZSByZWdzIG1lbWJlciBvZiBzdHJ1Y3QgbXRrX2RwX3BoeSB0byByZWdtYXAgdG8K
aW1wcm92ZSByZWFkYWJpbGl0eSBhbmQgYWxpZ24gd2l0aCBjb21tb24ga2VybmVsIGRyaXZlciBu
YW1pbmcgY29udmVudGlvbnMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiBpbmRleCBk
NzAyNGExNDQzMzU4Li5iZjdiM2E5NWU3MmQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L21l
ZGlhdGVrL3BoeS1tdGstZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGst
ZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTc2LDcgKzE3Niw3IEBAIHN0YXRpYyBpbnQgbXRrX2RwX3Bo
eV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQoKW1NldmVyaXR5OiBIaWdoXQpU
aGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyBtdGtfZHBfcGh5X3Byb2JlKCkg
bGFjayBhIE5VTEwgY2hlY2sgCmZvciBkZXYtPnBsYXRmb3JtX2RhdGEgYmVmb3JlIGRlcmVmZXJl
bmNpbmcgaXQ/CgpJZiB0aGUgcGxhdGZvcm0gZGV2aWNlIGlzIHByb2JlZCB3aXRob3V0IHBsYXRm
b3JtX2RhdGEgKGZvciBleGFtcGxlLCBpZiAKbWFudWFsbHkgYm91bmQgdmlhIHRoZSBzeXNmcyBi
aW5kIGludGVyZmFjZSB0byBhIGdlbmVyaWMgcGxhdGZvcm0gZGV2aWNlIApsYWNraW5nIHRoaXMg
ZGF0YSksIGRldi0+cGxhdGZvcm1fZGF0YSB3aWxsIGJlIE5VTEwuCgpMb29raW5nIGF0IHRoZSBj
b2RlIGluIG10a19kcF9waHlfcHJvYmUoKToKCiAgICByZWdzID0gKihzdHJ1Y3QgcmVnbWFwICoq
KWRldi0+cGxhdGZvcm1fZGF0YTsKICAgIGlmICghcmVncykKICAgICAgICByZXR1cm4gZGV2X2Vy
cl9wcm9iZShkZXYsIC1FSU5WQUwsIC4uLgoKRGVyZWZlcmVuY2luZyBkZXYtPnBsYXRmb3JtX2Rh
dGEgdG8gYXNzaWduIHJlZ3MgYmVmb3JlIGNoZWNraW5nIGlmIApwbGF0Zm9ybV9kYXRhIGl0c2Vs
ZiBpcyB2YWxpZCB3aWxsIGNhdXNlIGEga2VybmVsIG9vcHMuCgo+ICAJaWYgKCFkcF9waHkpCj4g
IAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+IC0JZHBfcGh5LT5yZWdzID0gcmVnczsKPiArCWRwX3Bo
eS0+cmVnbWFwID0gcmVnczsKPiAgCXBoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEwsICZt
dGtfZHBfcGh5X2Rldl9vcHMpOwo+ICAJaWYgKElTX0VSUihwaHkpKQo+ICAJCXJldHVybiBkZXZf
ZXJyX3Byb2JlKGRldiwgUFRSX0VSUihwaHkpLAoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzE0MTkzMS4xOTExNzItMS1hbmdl
bG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA60C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ang8pAs4KHB2FVNIt0yawNt/2gAcy+pq+Ze/8KFsyFU=; b=kGYgSYLuxmAtUx
	H6dGExlO9KARGDr2pSV07VdWd/vloDpc0oXg7YUyuc0EncrJH/ifsdLEy9+2gz5/i9oVOPx2glPWE
	nHoLOxZEgJi4WaCbZq8yAn5Ud7cZ6yeFsbblUqaggNm3+7Kb6j/JlA36MvJpbULK4N+t7SML2LO2H
	hNfKIcQk+ryXNIWwSjV5ZqhnVlc1W5Yt8FaZcw5y5gd8qriSVkz8uiLQYoz/MjMVyAXp3x9bNyZn/
	SSABqBbGAuCDWpYkQXTXMi2AupVRGhfR88n836FlWq9CDaHjYrbrC1IKGw6Ep5tRiD3IQnmlW+y6B
	uAIhFm9vQyrRMkqjRZuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7A8e-0000000BAp7-43In;
	Thu, 17 Sep 2026 11:18:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7A8d-0000000BAoQ-0qhv
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:18:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A84C540546;
	Thu, 17 Sep 2026 11:18:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08AC41F00893;
	Thu, 17 Sep 2026 11:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789643926;
	bh=vbjDlrlxul0EwqBY2orq98dvVFNkLNMQVl0zB8HHMHY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ExPVB7HjFTpKvM5AaSEjAGftUmtpGbmISMJRca5r9QX1yslMfJ3N9E5y9MU/b7Mt1
	 84hNBSirDHXmCSjD1uhDbkMFmck4sJ707/Fi/hCHjhmB4IDmh+jVPwgDgKXa82q/Uj
	 OnI3ERrD/0lyhpjgN3tZCpqz8biwTbkb80PxCMZx0VJngYYH9EEL1r1jvC32wMnn1R
	 44PxBwSWinM+XaKyoXrpmLyBDimrFRYE0FRnuq9sK0Bw+3OWoQznXHjXe7YxUuOBhn
	 F4TJNDOEDUNOkX2knRTv81c9W26fMegvr6M4/weSg8/P7QWa7vRBnHmWxmIGFZgu2r
	 W2VN/FkdYRqAQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 3/5] phy: core: Add devm_phy_get_by_of_node()
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, media-ci@linuxtv.org, linux-clk@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
Date: Thu, 17 Sep 2026 11:18:45 +0000
Message-Id: <20260917111846.08AC41F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBpbmNvbnNpc3Rl
bnQgbG9nIHNldmVyaXR5IGZvciBkZXZpY2UgbGluayBmYWlsdXJlCi0tCgpjb21taXQgZGJhY2I5
NjMxZWM3ZDcxYjI5MGJmMmM0YzNiYjU3ZWQ0MzNlMTdmMwpBdXRob3I6IEJyeWFuIE8nRG9ub2do
dWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKcGh5OiBjb3JlOiBBZGQgZGV2bV9waHlf
Z2V0X2J5X29mX25vZGUoKQoKVGhpcyBjb21taXQgYWRkcyBhIGRldm0gdmFyaWFudCBvZiBwaHlf
Z2V0X2J5X29mX25vZGUoKSB0byBhbGxvdyBmb3IKYXV0b21hdGljIHJlc291cmNlIHJlbGVhc2Ug
b24gdGhlIGRyaXZlcidzIGV4aXQgcGF0aC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gaW5kZXggNDkwYTdjZGU2ZDQwYS4u
MTBlOTMyMzU2NjgwMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysr
IGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IEBAIC04MzMsNyArODMzLDcgQEAgc3RydWN0IHBo
eSAqcGh5X2dldChzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKnN0cmluZykKPiAgCj4g
IAlsaW5rID0gZGV2aWNlX2xpbmtfYWRkKGRldiwgJnBoeS0+ZGV2LCBETF9GTEFHX1NUQVRFTEVT
Uyk7Cj4gIAlpZiAoIWxpbmspCj4gLQkJZGV2X2RiZyhkZXYsICJmYWlsZWQgdG8gY3JlYXRlIGRl
dmljZSBsaW5rIHRvICVzXG4iLAo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGNyZWF0ZSBk
ZXZpY2UgbGluayB0byAlc1xuIiwKCltTZXZlcml0eTogTG93XQpJcyB0aGlzIGNoYW5nZSBpbiBs
b2dnaW5nIHNldmVyaXR5IGZyb20gZGV2X2RiZyB0byBkZXZfZXJyIGludGVudGlvbmFsPwpJZiBz
bywgc2hvdWxkIGl0IGJlIGRvY3VtZW50ZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlPwoKPiAgCQkJ
ZGV2X25hbWUocGh5LT5kZXYucGFyZW50KSk7Cj4gIAo+ICBvdXRfdW5sb2NrOgoKWyAuLi4gXQoK
PiBAQCAtMTA1MCw2ICsxMDUwLDQwIEBAIHN0cnVjdCBwaHkgKnBoeV9nZXRfYnlfb2Zfbm9kZShz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKHBoeV9nZXRf
Ynlfb2Zfbm9kZSk7Cj4gIAo+ICsvKioKPiArICogZGV2bV9waHlfZ2V0X2J5X29mX25vZGUoKSAt
IGRldm0gbWFuYWdlZCBsb29rdXAgYW5kIG9idGFpbiBwaHkgcmVmZXJlbmNlIGJ5IGRldmljZSBu
b2RlCj4gKyAqIEBkZXY6IGRldmljZSByZXF1ZXN0aW5nIHRoZSBQSFkKPiArICogQG5wOiBkZXZp
Y2Vfbm9kZSBvZiB0aGUgUEhZIHByb3ZpZGVyCj4gKyAqCj4gKyAqIFJldHVybnMgcGh5IGFzc29j
aWF0ZWQgd2l0aCB0aGUgZGV2aWNlX25vZGUgb3IgRVJSX1BUUi4gZGV2cmVzIG1hbmFnZXMKPiAr
ICogcmVsZWFzaW5nIHJlc291cmNlcy4KPiArICovCj4gK3N0cnVjdCBwaHkgKmRldm1fcGh5X2dl
dF9ieV9vZl9ub2RlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9ub2RlICpucCkK
PiArewo+ICsJc3RydWN0IHBoeSAqKnB0ciwgKnBoeTsKPiArCXN0cnVjdCBkZXZpY2VfbGluayAq
bGluazsKPiArCj4gKwlwdHIgPSBkZXZyZXNfYWxsb2MoZGV2bV9waHlfcmVsZWFzZSwgc2l6ZW9m
KCpwdHIpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghcHRyKQo+ICsJCXJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOwo+ICsKPiArCXBoeSA9IHBoeV9nZXRfYnlfb2Zfbm9kZShucCk7Cj4gKwlpZiAoSVNf
RVJSKHBoeSkpIHsKPiArCQlkZXZyZXNfZnJlZShwdHIpOwo+ICsJCXJldHVybiBwaHk7Cj4gKwl9
Cj4gKwo+ICsJKnB0ciA9IHBoeTsKPiArCWRldnJlc19hZGQoZGV2LCBwdHIpOwo+ICsJbGluayA9
IGRldmljZV9saW5rX2FkZChkZXYsICZwaHktPmRldiwgRExfRkxBR19TVEFURUxFU1MpOwo+ICsJ
aWYgKCFsaW5rKQo+ICsJCWRldl9kYmcoZGV2LCAiZmFpbGVkIHRvIGNyZWF0ZSBkZXZpY2UgbGlu
ayB0byAlc1xuIiwKCltTZXZlcml0eTogTG93XQpTaW5jZSBwaHlfZ2V0KCkgd2FzIHVwZGF0ZWQg
dG8gdXNlIGRldl9lcnIoKSBmb3IgZGV2aWNlX2xpbmtfYWRkKCkgZmFpbHVyZXMKYWJvdmUsIHNo
b3VsZCBkZXZtX3BoeV9nZXRfYnlfb2Zfbm9kZSgpIGFsc28gdXNlIGRldl9lcnIoKSBoZXJlIGZv
cgpjb25zaXN0ZW5jeT8KCj4gKwkJCWRldl9uYW1lKHBoeS0+ZGV2LnBhcmVudCkpOwo+ICsKPiAr
CXJldHVybiBwaHk7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9waHlfZ2V0X2J5X29m
X25vZGUpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDkxNy1iNC1saW51eC1uZXh0LTI1LTAzLTEzLWR0c2kteDFlODAxMDAtY2Ft
c3MtdjE4LTAtZjg1YzkxMDMxNzdlQGxpbmFyby5vcmc/cGFydD0zCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

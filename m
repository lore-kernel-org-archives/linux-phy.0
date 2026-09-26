Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29059C98328
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 08:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQ8kfOUoSUl7jEpFfLoxSEEeMsj0iBxSzqx1gagrFqA=; b=lbEGvqJMNB+b0c
	Nu22UqQlz97qrZx3Wive5PUKjt5+NMb44/oR1U/jDofNo2EVMKtEDfo2Ilssp9ViPgubPHzOWhG87
	NCq44xNYmpO6VvtMyOW/GuEGRyH+Maan53MinahRhSJacFpGC/i9aKdkMcspSNHtd1b6EhGXQoaqN
	TnYxkU3PF5PZcb6kV6urxKi/YWU46m1F9MC4vIXrQAI0RJEPO5kpVye7lzyY20gQtfaVIQrjAj7eZ
	AymhnPM+iv8OSDj1l6xKkd3Xz4iwo6vtXsqz5o/mgI2vX6cKhN3JyCn95AZNVQF7ND4PYmtpfxO3m
	WPvYgRlJNcMtEK+XBtgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANzc-0000000FAj2-3bwG;
	Sat, 26 Sep 2026 08:42:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANzb-0000000FAiS-0DnT;
	Sat, 26 Sep 2026 08:42:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 35185601E4;
	Sat, 26 Sep 2026 08:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8CA51F000FF;
	Sat, 26 Sep 2026 08:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790412165;
	bh=V2AoDkHxt5/ck9ZyVPAFqWeUoxXW3bq3RmcY+WbOVMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UDSbjbiFlxck3G3UTrDTNp+LBwXGOGJgGWH/TI22gK2RQ9e4khhack8IOymoenAoG
	 //PI20I/PaLEdbgOnUOMEmOg4ZBRQXulshPCcN4rIsaMgPlZruNC3ZtqiJ0cQ4Dgk2
	 503Rhmjw0Hz6JxAwkOrp//mDsVBsPubn/zs6FVZ0qLpEXfmW0EL95EsYXIIQBO3/gH
	 1ee29WJ/vm8pLLWdJbEkXyP3BFkCuqQF5yeUmPSKJvddvSuN6s6ps7CoOyCMWPsrwI
	 Yg7clPL5wuGZhUuWBYQKhSbD6mMov1pBWwQndkC7LcYwy1j2gCs3fJGV3o0eNZ1GQE
	 9ivwAli37OWvA==
Date: Sat, 26 Sep 2026 10:42:32 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 6/6] phy: rockchip: usbdp: Add USB-C state without DP
 enabled
Message-ID: <rdx2u4cnxgbdkumgh4oaux7wvmb545ygcnuidpp6yvfntjtwgb@i7w72g4ebc62>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-6-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-6-9ad90a456953@collabora.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NTNQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIGRyaXZlciBjdXJyZW50bHkgb25seSBkaWZmZXJzIGJldHdlZW4gNCBs
YW5lcyBEUCBtb2RlIG9yIGNvbWJpbmVkIERQCj4gKyBVU0IzIG1vZGUuIFRoaXMgbWFrZXMgc2Vu
c2UgZnJvbSBhIGxhbmUgcm91dGluZyBwb2ludCBvZiB2aWV3LCBhcyB0aGUKPiBoYXJkd2FyZSBv
bmx5IGhhcyAyIGxhbmVzIG9mIFVTQjMuCj4gCj4gQnV0IGFkZGluZyBhIHNlcGFyYXRlIHN0YXRl
IGZvciBVU0Itb25seSBoZWxwcyB3aXRoIHBvd2VyIG1hbmFnZW1lbnQsCj4gc2luY2Ugd2UgYWx3
YXlzIHBvd2VyIHVwIGFsbCBQSFkgcGFydHMgYWNjb3JkaW5nIHRvIHRoZSBjdXJyZW50IGhhcmR3
YXJlCj4gc2V0dXAgdG8gYXZvaWQgZGF0YSBzdHJlYW0gaW50ZXJydXB0aW9ucy4gRXZlbiBpZiBz
b21lIGxhbmVzIGFyZSBtdXhlZAo+IHRvIHRoZSBEUCBjb250cm9sbGVyIHRoZXJlIGlzIG5vIG5l
ZWQgdG8ga2VlcCB0aGUgRFAgc2lkZSBlbmFibGVkIGlmCj4gc29tZXRoaW5nIHdpdGhvdXQgRFAg
QWx0TW9kZSBpcyBwbHVnZ2VkIGludG8gVVNCLUMuCj4gCj4gVGhpcyBwb3RlbnRpYWxseSB0cmln
Z2VycyBzb21lIG1vcmUgVVNCIHJlY29ubmVjdGlvbnMgZHVyaW5nIHRoZSBQRAo+IEFsdE1vZGUg
bmVnb3RpYXRpb24gd2hlbiBzd2l0Y2hpbmcgZnJvbSBVU0Itb25seSB0byBjb21iaW5lZCBVU0Ir
RFAKPiBtb2RlLiBUaGlzIHNob3VsZCBiZSBmaW5lLCBhcyB0aGUgY2FibGUgaXMgZnJlc2hseSBw
bHVnZ2VkIGF0IHRoaXMKPiBwb2ludC4KPiAKPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJv
eWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

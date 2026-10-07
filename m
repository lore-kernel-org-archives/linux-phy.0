Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97E6CA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 15:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTvDQIbsJx+kPDlma0n5M6N9jJ48bXLm95LLZAxUilY=; b=3nBsvY+2k5l1wz
	WG3Dq6Vae+wNV0fMUD/mwcLmooVRbe/VwZvzoLyNS5JvAGYCCJpCkY4+ZjHxe0B8yUw1qSOaXm2H6
	E+iVXIwm6V0hDe5YaMXns6PYsCPrPpm5aOugtUK/6cTQMSNyLx80RbYndFmhg4kHJvJXoL5dJAm32
	VfsZdBHmr91e9kg2R7Zg/xMtbIanRb7k2TbsyUV0/KPvjPG3LHL+igt0nzsn6mRRZWk7ouPMhoxKM
	yiSG2YyOxK034j0GgyaEKZhI5+FetGEveGTza9SfCxUnEcFMmQ1T3mmj534tvLx6g5otF9Zc7a9KC
	5PGp7Zg+X+CwlW5SLLLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETRk-00000002hUA-26oY;
	Wed, 07 Oct 2026 15:20:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETRj-00000002hU3-0g4b
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 15:20:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 43BB060A75;
	Wed,  7 Oct 2026 15:20:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C9C81F000FF;
	Wed,  7 Oct 2026 15:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791386442;
	bh=EKLsaXjZGAko+XBU27hTkiUmiXtO6L+HGPZBw1tVHs0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U9uM6QWNt7ug2orR2RhsvNQTv4ZJcyj2zECiI4NXTdpEEvHsRRH0QcWP5R/SgTphU
	 vG2IiCPkWV5o/p0RsakQ5hUaam1HZ73lAUpXfBxS/st4hjBH+a8+TSeiN3wyoazGk4
	 Seu6OfqpiZ5FBSmZ627NbIM564vEfV7qToc7dRer5kFfUzsUPU1rbHQiQ4iT4bDMS7
	 P4o+GqB2HkPvjmTSS4RCeEmBWxCrKJ8DPoju1CjUgU9TOP6unE/DJJCtiXS8f9bhNM
	 5iq3o5fum71kCVFX1SN3zggSygLBbJJmLuLC/5TnqBmhEGReVCiBPVbnDvVCx66hsa
	 hg5hED12gcJ7w==
Date: Wed, 7 Oct 2026 17:20:34 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: tegra: Add support for Tegra238 XUSB pad
 controller
Message-ID: <y7p44oeut66usohn3hdfsx2fndlxhup6osok6uo27c5xreyjvv@uyk37kiedv3u>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
 <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
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

T24gV2VkLCBPY3QgMDcsIDIwMjYgYXQgMDM6NDQ6NDNQTSArMDEwMCwgSm9uIEh1bnRlciB3cm90
ZToKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFRlZ3JhMjM4IFhVU0IgcGFkIGNvbnRyb2xsZXIgYnkg
cG9wdWxhdGluZyB0aGUKPiBUZWdyYTIzOCBzcGVjaWZpYyBTb0MgZGF0YSBmb3IgdGhlIGNvbnRy
b2xsZXIuIFRoZSBUZWdyYTIzOCBoYXMgdGhyZWUKPiBVU0IyIGFuZCBVU0IzIHBvcnRzLCB1c2Vz
IHRoZSBzYW1lIHBvcnQgb3BzIGFzIFRlZ3JhMTg2IGFuZCBoYXMgdGhlCj4gc2FtZSBzdXBwbGll
cyBhcyBUZWdyYTE5NC4gRHVlIHRvIHRoZSBkZXBlbmRlbmNpZXMgdGhlIFRlZ3JhMjM4IGRldmlj
ZQo+IGhhcyBvbiB0aGUgVGVncmExODYgcG9ydCBvcHMgYW5kIFRlZ3JhMTk0IHN1cHBsaWVzLCBk
cm9wIHRoZSBjb21waWxlCj4gdGltZSBndWFyZHMgYXJvdW5kIHRoZXNlIHN0cnVjdHVyZXMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlICAgICAgICB8ICAxICsKPiAgZHJpdmVycy9w
aHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0KPiAgZHJpdmVycy9waHkvdGVncmEveHVzYi5jICAgICAgICAgIHwgIDYgKysrKysrCj4gIGRy
aXZlcnMvcGh5L3RlZ3JhL3h1c2IuaCAgICAgICAgICB8ICAzICsrKwo+ICA0IGZpbGVzIGNoYW5n
ZWQsIDMzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlIGIvZHJpdmVycy9waHkvdGVncmEvTWFrZWZpbGUKPiBp
bmRleCBmNWVkOTU4MmQ4MGIuLjAxOGE0Y2FiMmI0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS90ZWdyYS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxlCj4gQEAg
LTgsNiArOCw3IEBAIHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFfMjEwX1NPQykg
Kz0geHVzYi10ZWdyYTIxMC5vCj4gIHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFf
MTg2X1NPQykgKz0geHVzYi10ZWdyYTE4Ni5vCj4gIHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FS
Q0hfVEVHUkFfMTk0X1NPQykgKz0geHVzYi10ZWdyYTE4Ni5vCj4gIHBoeS10ZWdyYS14dXNiLSQo
Q09ORklHX0FSQ0hfVEVHUkFfMjM0X1NPQykgKz0geHVzYi10ZWdyYTE4Ni5vCj4gK3BoeS10ZWdy
YS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFfMjM4X1NPQykgKz0geHVzYi10ZWdyYTE4Ni5vCj4g
IHBoeS10ZWdyYS14dXNiLSQoQ09ORklHX0FSQ0hfVEVHUkFfMjY0X1NPQykgKz0geHVzYi10ZWdy
YTE4Ni5vCgpUaGlzIGlzIGp1c3QgYSBtZXNzLiBBcyBhIGZvbGxvd3VwIHBhdGNoLCBjb3VsZCB5
b3UgcGxlYXNlIHBsZWFzZSBzd2l0Y2ggdG8KZ2VuZXJpYyBBUkNIX1RFR1JBIEtjb25maWcgb3B0
aW9uIGFzIGRvbmUgaW4gdGhpcyBjb21taXQsIDZiNWUyZjcwYTk1YwooIlBDSTogZHdjOiB0ZWdy
YTE5NDogQnJvYWRlbiBhcmNoaXRlY3R1cmUgZGVwZW5kZW5jeSIpPwoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

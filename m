Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65DD3C982C3
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1WkV2ZQKyqJbV8MDDjDEh4uNvGTPUW/NuuPFSYDPF8=; b=RU0hb1NwUCVzP+
	44Ti1j1NMlXK22XSRHoOagiNskjV6rEaobXPRo9VQdZUB6ojWgWy6nDRKDL3YnJsK7Kj+kwRMimGW
	gUmg8NhNZDCOhrvht7SrE5PFdocyWYKfNnzDcl3MbbBl46pdI7ps+8xUW53xX5EjInEmj/VVA9KrR
	dGFu5KmjhXpM59Sj0Vt2k9rj+IMOR01gEBLwc8TUPl/An0RFh7hyVFRj8i3YWsH3/pgPVoKDlv+eD
	h00S29xZvJ2B7VZg3QSZjbgTM/1L7gVxLSGNP0M1VBNx8TqvjOsPgtEpAbgOc+vHRb+TCndTMxTu1
	u40p/Ahr77VXJj/tmfwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VBj-00000007FPu-0MlJ;
	Tue, 15 Sep 2026 15:35:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VBg-00000007FOU-2RyH
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:35:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 483534004E;
	Tue, 15 Sep 2026 15:35:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6731D1F00893;
	Tue, 15 Sep 2026 15:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486512;
	bh=lAvJ2bguiRgbSmP/34mDql50B0mFX68Xkv2x+ti9yCs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=opBaQ7ajJydF8UmgbmB0mFFGvbO31di4dzsCPEVOmv6ds1Zm8REAoJZxp8DVuP1Jx
	 l6m/krTWRfzCjgPGRrSAI6vZy2ybTHUqPtbdA3S3oYisfmGI2u0lG9maCvSKPkfxZs
	 uEKXYMCXj/gDMTzZfjhil+F5kGuQ1aU+L4cE6VsYCcWVtNZYEJdh6eiFLtr7+6roX3
	 24Y8X7w6EjevblqhbrqiBahNtW/ucCvQU/XPuiSuaKEKSaBGyyfCY6gVaW9WnTnSxV
	 jDdn0pOURuptp5Rd8AlWgo4slMcYQ1kCNn2Y1aJGDVqnEp23gjsmBAkfIRVXYn7g34
	 xSPsGyRZnAfBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 06/20] dt-bindings: soc: starfive: Add
 starfive,jh7110-vout-subsystem
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: vkoul@kernel.org, dri-devel@lists.freedesktop.org, lee@kernel.org, linux-clk@vger.kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, mfd@lists.linux.dev
In-Reply-To: <20260915-jh7110-clean-send-v4-6-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153224eucas1p1c19b20f6af600b1c3228a9a8f4bb4490@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-6-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:35:11 +0000
Message-Id: <20260915153511.6731D1F00893@smtp.kernel.org>
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

PiBUaGUgSkg3MTEwIGdyb3VwcyBpdHMgZGlzcGxheSBoYXJkd2FyZSBpbnRvIGEgdmlkZW8gb3V0
cHV0IHN1YnN5c3RlbSwKPiBkb21fdm91dF90b3AsIGNvdmVyaW5nIHRoZSBEQzgyMDAsIHRoZSBI
RE1JIHRyYW5zbWl0dGVyLCB0aGUgdmlkZW8KPiBvdXRwdXQgY2xvY2sgZ2VuZXJhdG9yIGFuZCB0
aGUgdmlkZW8gb3V0cHV0IHN5c3RlbSBjb250cm9sbGVyLgo+IAo+IFRoZXkgc2hhcmUgb25lIE5v
QyBwb3J0IHdob3NlIGNsb2NrIGFuZCByZXNldCBnYXRlIGFjY2VzcyB0byBldmVyeQo+IHJlZ2lz
dGVyIGluIHRoZSByZWdpb24sIGFuZCB0aGUgcmVnaW9uIHNpdHMgaW4gdGhlIFBEX1ZPVVQgcG93
ZXIKPiBkb21haW4uIERlc2NyaWJlIHRoZSBzdWJzeXN0ZW0gYXMgYSBidXMgbm9kZSBzbyB0aG9z
ZSByZXNvdXJjZXMgYXJlCj4gb3duZWQgYnkgdGhlIGJsb2NrIHRoYXQgc2hhcmVzIHRoZW0sIHJh
dGhlciB0aGFuIGJ5IHdoaWNoZXZlciBjb25zdW1lcgo+IGhhcHBlbnMgdG8gcHJvYmUgZmlyc3Qu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1z
dW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlz
c3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWpoNzExMC1jbGVhbi1zZW5kLXY0LTAtZjBl
NGZkNmYyY2M4QHNhbXN1bmcuY29tP3BhcnQ9NgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

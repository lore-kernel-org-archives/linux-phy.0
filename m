Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B596C61DD6
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqZLbbj0VYLRhjWRPtzzXixBio7euAHKE9P5HyB8go8=; b=TE1n3f1Fph/Zx9
	38mzZlyY6NRd/L07zJkUVgbsf0EY/lIAlfJz72laJSLgFjRnQ43tczczclNX4LAroCjomYKQyrvtD
	mtA9BZujbTuu87f1ULyN7e97WMvtHZCBl3gXed1ja8xR2o6vf/C3x3z7AP/w4+ArRCbG2ZqOv04eL
	kEr4qo04hdCzh8xO4mge9zSD2DT4uE9lb3JySsp5tOqZH/Di3UiogCm2ZE6mBXpqrlV6b1cfxu087
	LRTo0Njn45RPq2soKUuQbc5L4r0RTvzygThVRSSyaFlZa5ci5PVX0rlyO/NsoUAAQrFW4xFWZIGoX
	zoraWNOrifOTtzjVg3hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U5e-00000002F5e-3UXu;
	Fri, 04 Sep 2026 13:36:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U5c-00000002F5S-3EOO
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:36:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 37080600C8;
	Fri,  4 Sep 2026 13:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 482171F00A3D;
	Fri,  4 Sep 2026 13:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788528979;
	bh=9OynDTj7/r9SMGiQ1vFJnjLdakrtzGm9dYHSB/gUz/I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bV9Z964kz/ZYdIPGrLirIaErZAviT2/XjlM7ccRaR/LBMfq3IVTZXvbfBx9xUYTlR
	 MVCx135V/DYMwYHR1J4GXIsNe0/H+jcgcuGCUN7z0FxIiWcuqW/NYA/lX6kr8+Y+V0
	 oIrDtcvK/tC7LYYMECHg/rTl7cUODWd4bh/vBijnqnkh7+ndPBllks5BdYZCjq/KhE
	 0RmIMlzZd8ldfi6W+VToEqJwPZLuzPNbm1E34fjojdOdoBOSL0rMiH4JQLW7pnP7xu
	 SEF/Cc/b583v/8jw8FUyai7KNnsDzCXzvVVo2W+iyoS6Adrr3BqGsEh+CQOo/t/bin
	 UDZek+Pvs8V8g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 05/19] dt-bindings: soc: starfive: Add
 starfive,jh7110-vout-subsystem
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, dri-devel@lists.freedesktop.org, lee@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260904-jh7110-clean-send-v3-5-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132718eucas1p1b25abe6cd0562e47dfeb75f8877e47b0@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-5-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:36:18 +0000
Message-Id: <20260904133619.482171F00A3D@smtp.kernel.org>
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
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA0LWpoNzExMC1jbGVhbi1zZW5kLXYzLTAtNDg0
ZjlhZTcyNzE1QHNhbXN1bmcuY29tP3BhcnQ9NQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

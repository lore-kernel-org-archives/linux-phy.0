Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA4A7C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uHp/p5AwlbsnzLg+oN8d7lWcuFMkF8JdmpuhACp01I=; b=RuwJqxPozHKZQ5
	wkxcYJ0IxuqaL2WdKuZtEVxuE4gRcp9+bDahlXPQkeaN+lDgo0uvG05ViAsfjVpWGq3flGaucRS7Q
	PeyQZt2Frpq0aorDG80H1+E6EMaymAzvzxjVXPY6Xsd5OfF6GgdZFwR3iD0qnYXEHOyAYI4Evjyhz
	J9tFjlrkNuVn/PWH3ql59oUqXWUJe0E0S/jOed0FRUXGitBkLYURCUQsL8DuqFsPv7gXjXptlDlKa
	CblNnRfIcoi9EXsPyaTKK6bGtXqdqXeo2Wu1/0c0uD0PortbEX8/wyY2s3ORWAU8TpDTPFGM8dqet
	lTg58+/Na5WZXWUckzIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VCQ-00000007Fh7-1rhW;
	Tue, 15 Sep 2026 15:35:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VCO-00000007Fgl-04Mw
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:35:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C309143CA7;
	Tue, 15 Sep 2026 15:35:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 101771F00893;
	Tue, 15 Sep 2026 15:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486555;
	bh=fca0YU5wZJuYa6HE60kkyvWGAmizplbtlVsuBRCSgX8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VsVllUNZS+5kLKM+n1mG2KHU6cnK3h2KUvVNUhsfFd2Ko7dgoep9CXHnfa0zB91Te
	 hkrtuX2ENZH2Fhac0m/fU3Ma2a3mxwCpwkk2Dq3PaVItQUgKA4lQLU/miwuCtyYBv2
	 +g3Gb1jbHNbRTfCo4wHRUDBOf+DdlERpfdSlFlyA4XkqBq3O6VbzF4fwwPCV37TRc1
	 podRWDCorpjkP/OqqpPFtmrD5nt4pxqAdQNo2KaPp5jGjMOWJs1N2ICgJRCwz3zlpF
	 /O39RtoJwkGRx051E++XcfqVwUU0KGnQp7M+Nui1LPKLKjv0oMP3KBJzJVY/byeYFV
	 +ie1Mw+r3Atog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 02/20] dt-bindings: display: bridge: Add
 starfive,jh7110-inno-hdmi-controller
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, lee@kernel.org, olteanv@gmail.com
In-Reply-To: <20260915-jh7110-clean-send-v4-2-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153216eucas1p2388b49e6b4c064ea49639d21f987e05e@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-2-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:35:54 +0000
Message-Id: <20260915153555.101771F00893@smtp.kernel.org>
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

PiBBZGQgdGhlIGR0LWJpbmRpbmcgZm9yIHRoZSBTdGFyRml2ZSBKSDcxMTAgSW5ub3NpbGljb24g
SERNSSBjb250cm9sbGVyCj4gKERSTSBicmlkZ2UpLgo+IAo+IFRoaXMgZGV2aWNlIGlzIHRoZSBz
ZWNvbmQgY2hpbGQgb2YgdGhlIHN0YXJmaXZlLGpoNzExMC1oZG1pLXN1YnN5c3RlbSBub2RlLgo+
IEl0IGNvbnN1bWVzIGl0cyByZWdpc3RlciBhY2Nlc3MsIGF1ZGlvIG1hc3RlciBhbmQgYXVkaW8g
Yml0IGNsb2Nrcwo+IChwY2xrLCBtY2xrLCBiY2xrKSBmcm9tIHZvdXRjcmcsIGFuZCBib3RoIHRo
ZSBwaXhlbCBjbG9jayAocGl4ZWwpIGFuZAo+IHRoZSBQSFkgZnJvbSBpdHMgaGRtaV9waHkgc2li
bGluZy4KPiAKPiBSZXZpZXdlZC1ieTogSm9zaHVhIFBlaXNhY2ggPGpwZWlzYWNoQHVidW50dS5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1z
dW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlz
c3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWpoNzExMC1jbGVhbi1zZW5kLXY0LTAtZjBl
NGZkNmYyY2M4QHNhbXN1bmcuY29tP3BhcnQ9MgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

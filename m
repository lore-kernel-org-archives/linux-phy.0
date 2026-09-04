Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0746C79F88
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Xzkn97rlk2SEMtwBzaStIzxHO1T3nlJ9VRiTuCIN5I=; b=jdyaQuCzjqF2kf
	5KWb490QxhBCtJmInrYWYOYplZMjQpjxwYBPZR8ZTgNTccAF/zUjXgFU6wYvRASePHb33KZqawNUe
	kgf2hrEYiXDVY06UfZuJJyzxrOLGU1j2jlF9GdiRfULuaWAwHgxWr5LdHcYRGTamdXZITaOnExJZp
	Z+vfMlRHp0AOMSfIxUgIbISXFpkZwZqPXB9KnrjvbT8rMNFFmWD/LNXVXVMC0VB9svooBaVqxE+79
	n3/Z4mkN2SbpIgCCAYc3JlaCV+7Qzv3xH7B3kGGXhYBw2j9lODKiJ03eLF3IJFntEorpSZYccjaso
	c2A2rp2ygjOjMf1vf9nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U0K-00000002Dz3-2bUl;
	Fri, 04 Sep 2026 13:30:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U0I-00000002DwT-0PT0
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:30:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7AD5940851;
	Fri,  4 Sep 2026 13:30:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6D7F1F00A3D;
	Fri,  4 Sep 2026 13:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788528649;
	bh=IQ26GNFlKcl9SbfyYjBUWsK0WzvCiHztfchbZ3Xz8N8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Imto6OsLTI+gjfxw4DNmfbbwAhoooMnzWjRjQNIxXYSjS6WXX5xg4QSxinYrAu61z
	 w8ErfeOCFFrKmk9zBSHKNYgKU7uV9RONFSZPuQysWk8P64GR4vTKafSE28kRG5P6QW
	 7yHAJ6ZIiF/1PrcOSEIhtnk9k70Fyc6F1UgliOhsOccuLUKCLNgAz6LqAqkMOPXKID
	 EnHqj6KCfz3UOfMvZMLr3Xf9qDndKamYZeZsxcBn4Umxp6rr3XMItXfYpnDvP9PyF4
	 hxo4o+mt/lWx2WScxJhaLTcHr+X6LHKxVLwYkgUcC5IOCGQbuk2FiyV4Wp8WSOLxO7
	 106FtoP/fbgKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 04/19] dt-bindings: soc: starfive: Add
 starfive,jh7110-vout-syscon
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, devicetree@vger.kernel.org, olteanv@gmail.com, lee@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260904-jh7110-clean-send-v3-4-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132716eucas1p2d093509db255e62e6bd546e734f04e63@eucas1p2.samsung.com>
 <20260904-jh7110-clean-send-v3-4-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:30:48 +0000
Message-Id: <20260904133048.B6D7F1F00A3D@smtp.kernel.org>
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

PiBUaGUgdmlkZW8gb3V0cHV0IHN1YnN5c3RlbSBoYXMgaXRzIG93biBzeXN0ZW0gY29udHJvbGxl
ciwgZG9jdW1lbnRlZCBhcwo+IGRvbV92b3V0X3N5c2Nvbi4gQW1vbmcgb3RoZXIgdGhpbmdzIGl0
IGhvbGRzIHRoZSBtdXggdGhhdCBzZWxlY3RzIHdoaWNoCj4gREM4MjAwIG91dHB1dCBkcml2ZXMg
dGhlIEhETUkgdHJhbnNtaXR0ZXIsIHNvIHRoZSBIRE1JIGNvbnRyb2xsZXIgbmVlZHMKPiB0byBy
ZWFjaCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenlu
c2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91
bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDQtamg3MTEwLWNsZWFuLXNlbmQt
djMtMC00ODRmOWFlNzI3MTVAc2Ftc3VuZy5jb20/cGFydD00CgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

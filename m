Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2358BC9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biM+5mK16UFqTfQPx758L1xTKX84gda/IiyhVbzibDs=; b=f5KsSp5pYR+3zh
	XzZME6DpX81M7rMMEwIjGGikBdAwt3ztx2LIZaNvZ3v5RvkmVgZTHUX+LAhRcAuYBe70w+cBlqxMG
	6aW86lkD8u1bYh+bcGnvAOz3VUFfO6fzSIV9EgR8sFLgkEmKYkE+Jie9Q55Kg8TYEo8DAI8ylamdl
	EzqoHiExq316SdLuPiLNg0OrrvRX1aWy6pffheVIEE1gZTsJkCJDSsLtpCxlXX+l5oRaGBtzSpKzP
	opsODDwTFYYuNGuf7qgTmTItu1vM5Oaafbw43J84+HghLKrj43EoFv5+l46d0c7b1Ew/woEfwCqNm
	HzYo97ZdPNhUrVvuwxXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Roy-00000009DVS-3C81;
	Wed, 23 Sep 2026 18:35:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rox-00000009DVD-3jzR
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:35:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8C05B40C03;
	Wed, 23 Sep 2026 18:35:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFA491F000FF;
	Wed, 23 Sep 2026 18:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188555;
	bh=Mh6RhIH+/CK7p2Vv8GgPxL3pyssay7ai/roKbn2WE5w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UKhU/qOAUjiQmaIw2IRRAp9ZCMIdr6bopgt7AC0R+cdvXeG1Iti6oVPikQ3zVZD3j
	 GwV84Mq1YItHIXoSjdr0QRblXlpebKnecBit5ELnOxHazV8qhDBi0Bu6j69hr8Bpt8
	 tI45UjjTU7AUs0YZJlamiujGaFQDLBvaHjUVGyvYL5fYrKQqqHEs8T8fBy0dZFkvmK
	 wiFizVlkZq4MK8ann8IqqPzMirIRIvnzW/153utYuixo+uwMuhJ4gICMKDXs1p3wbj
	 rlFGDUiTrYVfDQfBD+W6uJuf4sJBNZaHWXm0nHX30qDiEBstouxyDOCIgBBIGK0UK0
	 xUUXKbTJJ3ZNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 04/12] mfd: zx297520v3: Add a clock and reset MFD
 driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, lee@kernel.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260923-zx29clk-v12-4-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-4-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:35:54 +0000
Message-Id: <20260923183554.CFA491F000FF@smtp.kernel.org>
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

PiBUaGlzIGRyaXZlciByZWdpc3RlcnMgY2hpbGQgZGV2aWNlcyBmb3IgdGhlIHp4Mjk3NTIwdjMg
Y2xvY2sgYW5kIHJlc2V0Cj4gY29udHJvbGxlcnMuIFRoZSBjbGstengyOTc1MjB2MyBhbmQgcmVz
ZXQtenRlLXp4Mjk3NTIwdjMgc3VibWl0dGVkIGluCj4gdGhlIG5leHQgcGF0Y2hlcyB3aWxsIGRy
aXZlIHRoZSByZXNwZWN0aXZlIGZ1bmN0aW9uYWxpdGllcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBT
dGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMg
cmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEK
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA5MjMtengyOWNsay12MTItMC05YzI0Mzc5NmI2ZDJAZ21haWwuY29tP3BhcnQ9NAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

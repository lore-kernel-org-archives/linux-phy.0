Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A1EECAAD3
	for <linux-phy@archiver.kernel.org>; Sun,  4 Sep 2022 17:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ba6wen8Ps+RwwWhArLKuAYGt1LTg5qZBBN5AsVg1CPs=; b=GWEzbYynOjk23A
	fBds+DeZbKaAbLi+L/1fGPes+6HE/L8KLVuukrg15yibJNnBci3k6xc2JWd2k75KrdLu2VDNfQsNL
	o+T1/bF0hk+0KqEC8DVT7ZHamwSGzP2Vhcc3kB6ymSrB9sTy8Y1HwUR0wLrHljWKExX08KqXx7sAd
	Opu3C1Pz6moRbeeI+Cqerg8uiTtRmxQHPtUujs1vm/guVGERpkAJROHbZFZM9Z8fbxC/Ph6EPGmGR
	j6ZejRa5FMQdT1i8CLQpqpbzh9pQarn6HGj1lGP3/0KbvNPDVqR721X1Iu2aCqc4oq1vjYhVmZBpx
	jyc0vDnRmY2cabZG8Fkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKR-008TyN-Vv; Sun, 04 Sep 2022 17:22:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKE-008To0-F6; Sun, 04 Sep 2022 17:22:28 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUtKC-0000tW-KT; Sun, 04 Sep 2022 19:22:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Liang Chen <cl@rock-chips.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: (subset) [PATCH 0/3] Add support for the RK356x variant of the Inno CSI DPHY
Date: Sun,  4 Sep 2022 19:22:19 +0200
Message-Id: <166231195329.2423948.9487093007732976186.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220720091527.1270365-1-michael.riesch@wolfvision.net>
References: <20220720091527.1270365-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_102226_522836_01E16111 
X-CRM114-Status: GOOD (  11.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 20 Jul 2022 11:15:24 +0200, Michael Riesch wrote:
> This series adds support for the variant of the Innosilicon MIPI CSI DPHY that
> can be found in Rockchip RK356x SoCs.
> 
> Please note that only the basic operating mode is supported, in which all four
> CSI lanes are controlled by the Rockchip ISP. Split lane operation (e.g., two
> lanes to ISP and two lanes to VICAP) is not supported.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: add csi dphy node to rk356x
      commit: b6c228401b2565b7bd59ad7418074145cdaa316a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

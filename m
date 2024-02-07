Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B793C4828D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 14:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64qxSZvf7xOeMVplSqcb08gptL9AcxUKgcJlDpY1jlU=; b=xUmYTo5WREs8Gc
	6Ps7g+s4SxU0LgQzQMlKasMgS2XGwYa0jmG7ycpTUA+V56TkCDKRl8TxQK+AbJkixmT4hKleFRsHJ
	s/PDiuwIXHuG8gd053571oCDTfYeA/P5q+t0Nt4MfaROgdf8zn93uDzpHCcTUCMpl7eAei1k1gdBZ
	RlR2/VDU4SlLJ8gp/4//iOd1D5dblDWxtdVkbX7rBa5yqjki4TSeTdSgUzMvmlkTTdkebByG+VODI
	3lGyla79dlNvTjS5jMHU8c2LsHhCVC7G1Z/9UCaG3Q3+p72a41AT4xgGSLiyY3z8p6IBDTCpmfUsC
	eUf9cW4gPfW/t4khPGgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUX-0000000Aqpd-0IVH;
	Wed, 07 Feb 2024 14:01:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUT-0000000AqoJ-3Wj3
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 14:01:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F19E06184A;
	Wed,  7 Feb 2024 14:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 791CBC43390;
	Wed,  7 Feb 2024 14:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314488;
	bh=TYC7LtO/XIK1krUNB6/WrT2Hlv8JIjGH22j96FIBAHg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=vPiMSH/+kG/4evxruFjzpabbUkRNc2FGNcTScr0OPo7yOgTZoq6vmPg4VqHjnNOdS
	 2L1m5oKc/afW66wqRsLAdtiWepK5ttZN6AHzm8l2MXoW+c/26hzNInWsl63cd23vQh
	 oC1gqtOmoFdoaxhaS21pu0M2YGUY6NlorN0XqDTtt5RtrHpsLYvB9XYhUDPjRLnkwD
	 DyHZvOaD51YqSVI3NDNki0/Y+JlU7apa/pb0eF9Pz+TvUkMdu6cL+f5wsMF3JeFTwR
	 nU1Mi7R72xRpLHoZv3wLvOJFX04w3wWSN6qyAi12w9W7YPj1Q88F5WrglWc0cAfJ8E
	 I4Ra43zEbPhNw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Swapnil Jakhade <sjakhade@cadence.com>
Cc: mparab@cadence.com, rogerq@kernel.org, s-vadapalli@ti.com
In-Reply-To: <20240104133013.2911035-1-sjakhade@cadence.com>
References: <20240104133013.2911035-1-sjakhade@cadence.com>
Subject: Re: [PATCH v4 0/5] PHY: Add support for dual refclk configurations
 in Cadence Torrent PHY driver
Message-Id: <170731448623.147119.2432224542045768043.b4-ty@kernel.org>
Date: Wed, 07 Feb 2024 15:01:26 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060129_964759_0DECF8F6 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
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


On Thu, 04 Jan 2024 14:30:08 +0100, Swapnil Jakhade wrote:
> This patch series extends Torrent PHY driver functionality to support
> dual input reference clocks.
> 
> It also adds support for following multilink configurations:
> - PCIe(100MHz) + USXGMII(156.25MHz)
> - USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: cadence-torrent: Add optional input reference clock for PLL1
      commit: 8499d84894faa8e83f2aa2b064ad9c81296db162
[2/5] phy: cadence-torrent: Add PCIe(100MHz) + USXGMII(156.25MHz) multilink configuration
      commit: 8163ae426c8a4a0cbffd7fd81711892679d5a416
[3/5] phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz) multilink configuration
      commit: 8c827d87ed3f77d1fcb0b43f1ff25550f187fb5c
[4/5] dt-bindings: phy: cadence-torrent: Add a separate compatible for TI J7200
      commit: 97f5aea36c593bd9ab4b735c8a3632fe5782ed88
[5/5] phy: cadence-torrent: Add USXGMII(156.25MHz) + SGMII/QSGMII(100MHz) multilink config for TI J7200
      commit: 39fbf1074264d33d66effdce5e5a887a28de13ec

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

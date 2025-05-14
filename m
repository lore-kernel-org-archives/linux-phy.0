Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8838AC3ABDF
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysfdhnjJVdS+O8u9X6iKc6S7C+hwTZ4z5okeq10BZIA=; b=inTjy52J2ZNyxO
	RfDU69EDISbN0buuAiP0iMZNT1DHLVzU+s9P2hUuVSfp7zTFl8AkdlTNJr+/OEslt7Ul62bqbzPIO
	td2FEqxUW2XdiMTeTXBcdmq7K9dyeLa8bvIMCL5FWfzRHXYg8SdBKbC3Woamx6D/Q4X081FgTIlLF
	OMjEenHVdmg2Cnm5gCqtxc7+TCGYmrN6cq4ROmpgIGoHZACN92bMmotR8IXQbHoeuoEqCUDQoYf+i
	GDc3N7yEEwVNmGVcj2sAllBiU9tmiMULopPlK1GN3Q1ydknk2c/fSWUKYLifX16G792qmE4qaJESm
	9xKeeCDa6D8+7cH4VMuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYQ-0000000FI4O-0U0L;
	Wed, 14 May 2025 13:53:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAKz-0000000Etzf-09MC;
	Wed, 14 May 2025 11:31:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 60DC161155;
	Wed, 14 May 2025 11:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C81CC4CEE9;
	Wed, 14 May 2025 11:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222308;
	bh=6Y5lH/WN0GXq+set7ttl4tqIU0/kQ62gjvDykjHOqzE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sLcy25pS7iL/rQ9QW6thOkXNhocSovucg+Eoa69c+SKgcsR7i/6khpAhCx3CmHHET
	 RMgf6+yVpOtHzY/LIXjq0JVkQ80rVW4vdF7bXKvulUh1sPz6I+H7lCHfA6gnP5v6j0
	 bMJTk79HQaa3x2/L8jBZX63VPTvbnh2z67tP+9XPuaTZ/x/m2yrwoUBneGuxNAELxH
	 cOCabt81A3kS13yfg72CA28bKh1nng0dGBdQtXSy+945S5rXZqNEnuzEzDIK+1MZ/Q
	 dMvbH49Kp36wfIQ4anz0Xpbx3zjTdif8qQrMs6V1TH4aa/jZXUP4aB5Bupkllp44eS
	 OYSott8KMl/0A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, heiko@sntech.de, cristian.ciocaltea@collabora.com, 
 andy.yan@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250427095124.3354439-1-algea.cao@rock-chips.com>
References: <20250427095124.3354439-1-algea.cao@rock-chips.com>
Subject: Re: [PATCH v2] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output
 50.25MHz error
Message-Id: <174722230604.74407.7449753819890518835.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:31:46 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Sun, 27 Apr 2025 17:51:24 +0800, Algea Cao wrote:
> When using HDMI PLL frequency division coefficient at 50.25MHz
> that is calculated by rk_hdptx_phy_clk_pll_calc(), it fails to
> get PHY LANE lock. Although the calculated values are within the
> allowable range of PHY PLL configuration.
> 
> In order to fix the PHY LANE lock error and provide the expected
> 50.25MHz output, manually compute the required PHY PLL frequency
> division coefficient and add it to ropll_tmds_cfg configuration
> table.
> 
> [...]

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output 50.25MHz error
      commit: f9475055b11c0c70979bd1667a76b2ebae638eb7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

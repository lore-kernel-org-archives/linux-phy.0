Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2F5FC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 09:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyoidtW0lRBDqVvc6qLc6neyejRiMIl4Qys3vWI9p4Q=; b=T46bEifu74nauS
	/4H4DgExCXgwoogV0PvFx1PP6gA5S5OPHId2Q4CyzKrOgSGpIEPh7P9tFqjhNK7fvI4xCT7EhG9H3
	VMynGY8M0iH7eik9iGjnV6uTgyvf3yLSXBWAei2/XP3I5e4Pev7Ahwimjm3WhAa+qa2ys7c5wh/hJ
	BrqTPGY0xGSTr8Byk5seUIw3Se//zxI1LJg6Ny5PErPoLJS950PpDG1DU71UYr6VM51Id7pR2aFUU
	KiDoLT99H0Ta7Mgi8G6mrZAynZ7kF/0+rza5UvS+M1BGghk2V+ldUPwX2BUGTtB7+ZjfSu3GlQR+B
	UsIvhaiCaxkRYCYKVvOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh6Ne-008FSx-4Q; Wed, 20 Apr 2022 09:12:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh6MU-008Ewr-2u; Wed, 20 Apr 2022 09:11:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3C65C615D1;
 Wed, 20 Apr 2022 09:10:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C3DAC385A8;
 Wed, 20 Apr 2022 09:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650445856;
 bh=vNmwPpTDyLDXQ55olkDm+ZCj59k9TpDmHMa62vxoowk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZHfJeU0n79x4oll/Q7f/9VpvYChLshtc9wn0U28VqBpa0tptSYx2N38tNDICIL5Dt
 sERo+URpYLsAqjLCb6rr1IpkfrQb5psB1yGo9kpyfhujS4HQQxdLYiILC2wBiEqCxL
 oYD+u5E65uNpwqXsx4a60SXlTR/+Wkq09zVNTwRMp9yA6jhnzYYXwlZSjdHKtdJ6xe
 UoRmO9i9Dx4L9VoBJpz/UIp2VeitcqzZgalYNJmvU9zdmXw5mEzMqtbMCPv3tj3dAi
 x45ovcVr8JnNsawhraeGrm90N7PhmmFlDzcC8LQR+EDoWA1HaHssu5g2uyF8pNroQW
 DWyU44VRN/4MQ==
Date: Wed, 20 Apr 2022 14:40:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 2/8] phy: allwinner: phy-sun6i-mipi-dphy: Support
 D-PHY Rx mode for MIPI CSI-2
Message-ID: <Yl/OHEKqLR0gwHzW@matsya>
References: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
 <20220415152138.635525-3-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220415152138.635525-3-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_021058_225047_C4F6C117 
X-CRM114-Status: GOOD (  12.60  )
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

On 15-04-22, 17:21, Paul Kocialkowski wrote:
> The Allwinner A31 D-PHY supports both Rx and Tx modes. While the latter
> is already supported and used for MIPI DSI this adds support for the
> former, to be used with MIPI CSI-2.
> 
> This implementation is inspired by Allwinner's V3s Linux SDK
> implementation, which was used as a documentation base.
> 
> It uses the direction dt property to distinguish between tx and rx
> directions.

Applied to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

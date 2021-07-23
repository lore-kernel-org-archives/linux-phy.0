Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A1DBC4338F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 12:59:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0860A60EE6
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 12:59:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0860A60EE6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWRsNigKupxu6dvCMuFhg7n8BvJN/mlJqwRFd2qqSbc=; b=L8XhbMkGpfjDbR
	RIURVPmVgIhTnXA1CUmvXdjqU3RUht7aJTUzt/w8ueZisiuGg1vmWZvJIdB74v6LC5BUeLELlBm1w
	k9XHlnzGXv61e516RPpQHNGMCqyR7Yx/t1oBdpWm6TDxyehD5lgri3/wNnqMGbbrRg4+mVKZt/sXt
	lCfGWnNv9VsmA9jt8/WBGpOBLghZZPmbxBNUQTdzAkcmGq9EhFCPDN9UyeiMoPJkEIN2KGZ8dvw1e
	S++J4Z/+8+iVIevY5YJ8C33JAjTC2uPTlqXuU+K3nfEmvEpqX4XoM/GHtAfsLVaGRW17EkA+U2v6H
	B+k0N5Onz8TVCDjyVrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6ulY-004kVp-Hc; Fri, 23 Jul 2021 12:59:00 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6ulE-004kPS-J1; Fri, 23 Jul 2021 12:58:42 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 884156000E;
 Fri, 23 Jul 2021 12:58:37 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: kostap@marvell.com, miquel.raynal@bootlin.com, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, vladimir.vid@sartura.hr,
 luka.kovacic@sartura.hr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: mw@semihalf.com, jaz@semihalf.com, nadavh@marvell.com,
 stefanc@marvell.com, bpeled@marvell.com, Konstantin Porotchkin
 <kostap@marvell.com>
Subject: Re: [PATCH v7 0/5] DTS updates for Marvell Armada CN913x platforms
In-Reply-To: <20210708124612.30742-1-kostap@marvell.com>
References: <20210708124612.30742-1-kostap@marvell.com>
Date: Fri, 23 Jul 2021 14:58:37 +0200
Message-ID: <87fsw5191e.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_055840_955275_C9971421 
X-CRM114-Status: GOOD (  17.34  )
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

Hi Kosta,

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> This patch series contains the following changes/fixes:
> 1. Add support for Armada CN913x Development Board topology "B"
> 2. Add support for Armada CN913x Reference Design boards (CRB)
> 3. Fixes the NAND paritioninig scheme in DTS eliminating gap between
>    consecutive partitions
> 4. Fix 10Gb ports PHY mode names
>
> v2:
> - extract common nodes from DB boards to separate DTSI files
> - disable eth2 on CRB boards until the required phy mode support is added
> - mention the switch part ID in CRB board description
>
> v3:
> - do not rename setup A DTS files for DB variants
> - fix a couple of wrong include names
>
> v4:
> - Rebase on top of Linus master branch (v5.11-rc7)
> - Remove HS400 timing from CRB AP SDHCI (not supported by connected eMMC)
> - Add cd-gpio entry to CP0 SDHCI for SD card support
> - Add a comment to CN9130-CRB patch about the required defconfig
>   changes for supporting the onboard i2c expander
> - Add Stefan's patch to enable 10G port on CN9130-DB platforms
>
> v5:
> - Extend enablement of 10G port to CN9131-DB platform
>
> v6:
> - Rebased on top of 5.13-rc, merging UTMI settings
>   (requested by Gregory Clement)
>
> v7:
> - Remove documentation patch fixing CP11X references in PHY binding document
> - Change Armada's family 10Gb port phy mode names from 10gbase-kr to 10gbase-r
>
> Konstantin Porotchkin (4):
>   arch/arm64/boot/dts/marvell: fix NAND partitioning scheme
>   arm64: dts: cn913x: add device trees for topology B boards
>   arm64: dts: add support for Marvell cn9130-crb platform
>   arch/arm64: dts: change 10gbase-kr to 10gbase-r in Armada
>
> Stefan Chulski (1):
>   dts: marvell: Enable 10G interfaces on 9130-DB and 9131-DB boards
>

Series applied on mvebu/dt64

Thanks,

Gregory


>  arch/arm64/boot/dts/marvell/Makefile          |   5 +
>  .../arm64/boot/dts/marvell/armada-7040-db.dts |   2 +-
>  .../arm64/boot/dts/marvell/armada-8040-db.dts |   4 +-
>  arch/arm64/boot/dts/marvell/cn9130-crb-A.dts  |  38 ++
>  arch/arm64/boot/dts/marvell/cn9130-crb-B.dts  |  46 ++
>  arch/arm64/boot/dts/marvell/cn9130-crb.dtsi   | 222 ++++++++++
>  arch/arm64/boot/dts/marvell/cn9130-db-B.dts   |  22 +
>  arch/arm64/boot/dts/marvell/cn9130-db.dts     | 403 +----------------
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi    | 410 ++++++++++++++++++
>  arch/arm64/boot/dts/marvell/cn9131-db-B.dts   |  22 +
>  arch/arm64/boot/dts/marvell/cn9131-db.dts     | 197 +--------
>  arch/arm64/boot/dts/marvell/cn9131-db.dtsi    | 206 +++++++++
>  arch/arm64/boot/dts/marvell/cn9132-db-B.dts   |  22 +
>  arch/arm64/boot/dts/marvell/cn9132-db.dts     | 218 +---------
>  arch/arm64/boot/dts/marvell/cn9132-db.dtsi    | 227 ++++++++++
>  15 files changed, 1241 insertions(+), 803 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-crb-A.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-crb-B.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-B.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db-B.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db-B.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db.dtsi
>
> -- 
> 2.17.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

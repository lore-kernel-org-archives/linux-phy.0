Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0D01C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqNWH8hxOgwpYggrryCczbGhodewkPeWpyacmK9ApUY=; b=picINW6wWfNstq
	hEsEBPCRdWF3UajbWn0oy3SWoS0uYPdRCWRDRMI3TtCM5oW7mJj+KbcF9lkdp/DmSm6WBgVr/MLh9
	13TP/5WY3Wz1UJ1Qv1HBEqQsNCjv2McpLgDXjgt0e0bKWLG/V0hdz3p8Axe/uS9lemDdCEMB8nYxo
	xptsIfX7Td6rhDxB2KzHCk9nh0un1bajgsxKzXZvrLWkLZlnTj9hVOp+q+HjhJSKigbIx9CKqjDsY
	SicwSOHqtlvP5zFnj3ZjioVqZ/mp33O5iFw2VpAWr28fNadjLJ97vmgAA6+nGJf+NhhQ3m9lehOSM
	8XRxg2c16LJNpq+UfasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZQu-000MTR-3X; Wed, 13 Apr 2022 09:37:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZQg-000MLs-GY; Wed, 13 Apr 2022 09:36:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C8CD8B82152;
 Wed, 13 Apr 2022 09:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9E52C385A3;
 Wed, 13 Apr 2022 09:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649842607;
 bh=ztmUj0miSZt/QYRlPYAWn4jbHD+9n7eoHp+CPON8Hm4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aSQjngG4u24G5MS93daRoZFEPXpjjZzaIHF6n/UPWFprURcQZHXVOZBBzBMiJbc1f
 QxsAWCFoy37e9TroGYXzvYHnrDZQJcFxKRLdmPTyzMdJxhX1asn+0X2nb3rj33o441
 LU/jvBw43Gy0ZN6x0A8yZdjxWfw6VAYLUqmVpueNy8Oe3EvkNJKv1fiYO+SBAe/hTi
 GhrYVCz9B71gvr/Q3Y5Kh7TnPV0GGfVDEwB9uKSDty5KiTJKq6Emttu1ca0pufwfBU
 f1QMzSW8NEHyFj/iAIZ6M952uOA/xmSwywq+HTCjgDhdNoonNtGeAUTcgd16rubcbh
 a00BUcOCofJpg==
Date: Wed, 13 Apr 2022 15:06:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-phy@lists.infradead.org, Fabio Estevam <festevam@denx.de>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Message-ID: <YlaZqvKAQeGCNOQ9@matsya>
References: <20220312013812.169671-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220312013812.169671-1-marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_023650_728632_4E93CA78 
X-CRM114-Status: GOOD (  10.79  )
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

On 12-03-22, 02:38, Marek Vasut wrote:
> The 'fsl,refclk-pad-mode' DT property used to select clock source for
> PCIe PHY can have either of three values, IMX8_PCIE_REFCLK_PAD_INPUT,
> IMX8_PCIE_REFCLK_PAD_OUTPUT, IMX8_PCIE_REFCLK_PAD_UNUSED. The first
> two options are handled correctly by the driver, the last one is not,
> this patch implements support for the last option.
> 
> The IMX8_PCIE_REFCLK_PAD_INPUT means PCIE_RESREF is PHY clock input,
> the IMX8_PCIE_REFCLK_PAD_OUTPUT means PHY clock are sourced from SoC
> internal PLL and output to PCIE_RESREF external IO pin. The last
> IMX8_PCIE_REFCLK_PAD_UNUSED is a combination of previous two, PHY
> clock are sourced from SoC internal PLL and not output anywhere.

This does not apply on phy-next, please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

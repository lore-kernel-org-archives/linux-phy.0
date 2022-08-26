Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B7EECAAA3
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 06:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWlUnYkEaZ7PGH7WH+N8wOILkchzhGR0lY3OcarAjQI=; b=DMmg3vTaxP4rnR
	MBlDDaMblpnM1G7h6J+b8C4fHQgnpNPMIUitf9IjAbr1pl26wD3131g2zsfUjlhHMc07uXh/Jy7i/
	+bV5n6MPLDfqincvqRjhy6BAWCx9A7dFtVlVcqbvKA/44PMCV+ycIJTbLSy9Q7Or6agHMYp+9RXTK
	TKdfHp6P5ym6WuuGMGoSk4LI3w50GupPWki+pSlmhPMRZo5M+RmCogcFs6WB1TpJeXvmf69Iti2Xk
	5UtmVl4s7X6NieZbB339qcwEsTk8t21c0i3hZ7o7KJAXcN1QkGdeYkRGcA5klMDKsLyEffPoVhmnu
	cM56DfOXxxI1wIvQ5nUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSjq-00Ec0q-2x; Fri, 26 Aug 2022 06:22:42 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSje-00Ebx4-H5; Fri, 26 Aug 2022 06:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661494950; x=1693030950;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=rBBrCz8xicVM3MADWVv4mCLziAZaOXVUZJrEM2LrFxU=;
  b=CK6dv/n5USqr7nroISveGYk2sP5MRPh8RgXDIZwPHQq8tnq8gzm49lr/
   SFwKMk7qgwUwH5iB/cc2wo678PC2tewQkY2sgkjt/2FRAAVU8+oXxxlL8
   yaJD+DJqYIozUGZVejPV/JfN5YshXaVhWxVmqcR3C7eZlYHCuPSLSSNwL
   9/Ncfi4ookG0kBmq5vOHsjD6tAFr/ncId5OwZLzCANuU2KajSld0zZl6S
   oU8oxKL5F3gb4fvN8UKSa8uJyceyDMctBt20SuSDy1pUb58yUQmmpfku4
   xZvA6h7jIJaeZjQYDioFjEQlnf3ZPDpPlSSxjy3cnKqw74WHKN8i36Lz5
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25817750"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Aug 2022 08:22:28 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Aug 2022 08:22:28 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Fri, 26 Aug 2022 08:22:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661494948; x=1693030948;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=rBBrCz8xicVM3MADWVv4mCLziAZaOXVUZJrEM2LrFxU=;
  b=I4mhAXZo/hlLyy8nA6ygIFW2lVoTfaf0Ek8oRCN5sZGonHScggVH8X2Z
   7pQUFU3SVa2kXgpgMruqVXEbtdP3l6+AFmdrC9ZmJ4UCY5kNE1Q0iVc6A
   DK8YVDirOkm2c7afsayhS32dx1aFr6h6JqGRimd0FC1mMMnQkDM6pj1Rs
   oeWDtgYQtV+A2BYH1QtpXwNTZjYIN/o5ctgbO9eIv+xOIhJd8yHadygSq
   25Yi5n42BakjrYhF4/OU7PSEc9AcixdDvEXHES/3Hq4nbW2dddyRel34Z
   n6eAk/1O7TuE/+BzVXQa/Ss1RyvuO1Mw1AiHThvFN9xlEHBCDRx48Epji
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25817749"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Aug 2022 08:22:28 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CDCBD280056;
	Fri, 26 Aug 2022 08:22:27 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, shawnguo@kernel.org, vkoul@kernel.org, marex@denx.de, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v3 0/6] Add the iMX8MP PCIe support
Date: Fri, 26 Aug 2022 08:22:25 +0200
Message-ID: <4384717.iIbC2pHGDl@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
References: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_232230_981987_6F1FABB9 
X-CRM114-Status: GOOD (  18.90  )
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

Am Donnerstag, 18. August 2022, 09:02:27 CEST schrieb Richard Zhu:
> Based on the 6.0-rc1 of the pci/next branch.
> This series adds the i.MX8MP PCIe support and had been tested on i.MX8MP
> EVK board when one PCIe NVME device is used.
> 
> - i.MX8MP PCIe has reversed initial PERST bit value refer to
> i.MX8MQ/i.MX8MM. Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.
> 
> Main changes v2-->v3:
> - Fix the schema checking error in the PHY dt-binding patch.
> - Inspired by Lucas, the PLL configurations might not required when
>   external OSC is used as PCIe referrence clock. It's true. Remove all
>   the HSIO PLL bit manipulations, and PCIe works fine on i.MX8MP EVK board
>   with one NVME device is used.
> - Drop the #4 patch of v2, since it had been applied by Rob.
> 
> Main changes v1-->v2:
> - It's my fault forget including Vinod, re-send v2 after include Vinod
>   and linux-phy@lists.infradead.org.
> - List the basements of this patch-set. The branch, codes changes and so on.
> - Clean up some useless register and bit definitions in #3 patch.
> 
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 +++++++--
> arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  53
> +++++++++++++++++++++++++++++ arch/arm64/boot/dts/freescale/imx8mp.dtsi    
>                |  46 ++++++++++++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  17
> +++++++++- drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   |
> 150
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++------------------
> ------- drivers/reset/reset-imx7.c                                   |   1 +
> 6 files changed, 232 insertions(+), 51 deletions(-)
> 
>  [PATCH v3 1/6] reset: imx7: Add the iMX8MP PCIe PHY PERST support
>  [PATCH v3 2/6] dt-binding: phy: Add iMX8MP PCIe PHY binding
>  [PATCH v3 3/6] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
>  [PATCH v3 4/6] arm64: dts: imx8mp: add the iMX8MP PCIe support
>  [PATCH v3 5/6] arm64: dts: imx8mp-evk: Add PCIe support
>  [PATCH v3 6/6] PCI: imx6: Add the iMX8MP PCIe support

On TQMa8MPxl + MBa8MPxL:
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

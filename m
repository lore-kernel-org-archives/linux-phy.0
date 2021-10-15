Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77651C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 18:32:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BC4E61040
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 18:32:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3BC4E61040
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0ds9gdOomWUOPWhaBV8XM1zgrMEIAz6BAXbTjrGJgc=; b=Lip3dXw939l6Xs
	2W5+iJUorEMCEvcPBtmbnnFzxvEnfemPSL6PmgHbaaAtWmDDldPnkVokoA8WKHWm91lQhveE1znRl
	0qjQ7ewUjmqRuXw1d0m/+PIICWE9jAhdgI4utWpt1ArmIGSJXLG3U790wcge/OLOY7/OQJsGQkq9+
	8jmwFCr3+I5UzQGK7NXlynHsXIDwd8nPf0pvaZJr1Zr4oMm+gcZSzWBVcr2NTWhzUudtDMAEUoL2n
	xl0eXPipso0UKNa8nXjP7rlzyuR56pWD5afXQd8X/9PkrAMjKWRG3DcQdt0C7Xwl2np30qzHsMxiU
	3Ytu3rN4lDXlN35jbWDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbS0b-008Shc-Ok; Fri, 15 Oct 2021 18:32:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbS0Z-008Sgu-7t
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 18:32:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mbS0T-0002bh-5X; Fri, 15 Oct 2021 20:32:37 +0200
Message-ID: <ca1e71abe4c87ae2be6e3a3fa92ac79a6da4b6c4.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/9] arm64: dts: imx8mm-evk: add the pcie phy support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, tharvey@gateworks.com,
 kishon@ti.com,  vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 15 Oct 2021 20:32:35 +0200
In-Reply-To: <1634028078-2387-5-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-5-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_113243_308848_6B99CD87 
X-CRM114-Status: GOOD (  13.87  )
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

Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> Add the PCIe PHY support on iMX8MM EVK boards.
> And set the default reference clock mode.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index e033d0257b5a..2d0684ac82f6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "imx8mm.dtsi"
>  
> @@ -289,6 +290,12 @@ pca6416: gpio@20 {
>  	};
>  };
>  
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	clocks = <&clk IMX8MM_CLK_DUMMY>;

Please add a fixed clock DT node for the external clock generator and
use this one instead of the dummy clock here.

Regards,
Lucas

> +	status = "okay";
> +};
> +
>  &sai3 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_sai3>;



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

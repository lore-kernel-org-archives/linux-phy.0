Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 304EEC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:32:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCD33610A2
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:32:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BCD33610A2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qp0QkgowmRItEN/an1CePdHMzbpoAGLj3w7TT3SbR78=; b=at2tdXnBQ6XocA
	d7ZtOF+bmpo7UvT6kcG8uu4CZLAzSRduGZ4Sd8oyk+7oV5ByCDzqNc7pi4M/yBlyFQCdIUaO7cyBy
	kksV9wof89bmKrFydIWUVaPg0nV09+49dTZ/Zqg4aniajQC1mfnBzTUfL6YfhvKsx3PmnwNsGLCCc
	ebYW642cimjFUA1cn+U9vDzYmJU242anqr/K/3beZEa4ige4pjyenyv/xpDmfUNeLnBOtn0yvVQSE
	LVs2LQTMbeHB11HnK1OxyTHM4BtMwK81EdlHhYbI0lJ58L3CfcdTyRZMT69ZSH+T8gV57FOl56AbK
	w//JXi163tt57JZdLKVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUm4B-0023Dd-0u; Mon, 27 Sep 2021 08:32:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUm47-0023BL-4x
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 08:32:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mUm40-00050w-Hi; Mon, 27 Sep 2021 10:32:40 +0200
Message-ID: <f421d1c8079d6c6694972af04ec95318d3399152.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: add imx8 pcie phy driver support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, kishon@ti.com, vkoul@kernel.org, 
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Mon, 27 Sep 2021 10:32:39 +0200
In-Reply-To: <1632641983-1455-3-git-send-email-hongxing.zhu@nxp.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-3-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_013247_239531_679C46D6 
X-CRM114-Status: GOOD (  21.53  )
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

Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> new file mode 100644
> index 000000000000..fd08897fef82
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8 SoC series PCIe PHY Device Tree Bindings
> +
> +maintainers:
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - fsl,imx8mm-pcie-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PHY module clock
> +
> +  clock-names:
> +    items:
> +      - const: phy

The clock name should describe what it is used for in the hardware
block described by the DT node. So I would think this should be called
"ref" or something like this, as I believe this clock is really only
used as the reference clock and can be disabled when the refclock is
supplied via the pad, right?
 
> +
> +  fsl,refclk-pad-mode:
> +    description: |
> +      Specifies the mode of the refclk pad used. It can be NO_USED(PHY
> +      refclock is derived from SoC internal source), INPUT(PHY refclock
> +      is provided externally via the refclk pad) or OUTPUT(PHY refclock
> +      is derived from SoC internal source and provided on the refclk pad).
> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
> +      to be used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2 ]
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - fsl,refclk-pad-mode
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +
> +    pcie_phy: pcie-phy@32f00000 {
> +            compatible = "fsl,imx8mm-pcie-phy";
> +            reg = <0x32f00000 0x10000>;
> +            clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +            clock-names = "phy";
> +            assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +            assigned-clock-rates = <100000000>;
> +            assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
> +            fsl,refclk-pad-mode = <1>;

Include the new header added in patch 1 and use the enum.

> +            #phy-cells = <0>;
> +    };
> +...



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

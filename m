Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C39C0C54EE9
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 08:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVEFKw7zFmFEJjbJlG0EY8PTa6cYNDgIFd4XARtKMtk=; b=ikxLSo0wmN+cUk
	DLjqgNtNMnV7VnJoc0pYqwveis18frGM1HI6OqMEg8NaCatsPDu7si0vjAPpc/oR96O5zMlpt1s9k
	3U1bi7ZCJiCbLg7tUj1/Y7B7MQ2UlG2HhVNIoF54B/2jpeRq4bkpUkRVKLalJW/2+XWK1W760thBM
	cdduwcn2FH9CjSCtac7fUfy0bA26F8jjiMjPLA9gB4s71XlG+oaqjyKeBoGzfYF7CzqbhPqhyT42b
	fttyeyh5oJj2Wi62z4MNX0t0xMJuWzwRjbxPb6pdeI5Rze/4mVsA5+Zb4YBpybsQgxYCwg7giF0i/
	TOhxNvHou4qtyINUpMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU27W-001v0B-2I; Fri, 02 Sep 2022 08:33:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU26f-001tyT-Be
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 08:32:54 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oU26J-0001LT-Jw; Fri, 02 Sep 2022 10:32:31 +0200
Message-ID: <ef4b87af234375994b8efd34c6ac0e64a4a0400d.camel@pengutronix.de>
Subject: Re: [PATCH v6 1/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 02 Sep 2022 10:32:28 +0200
In-Reply-To: <1662004960-14071-2-git-send-email-hongxing.zhu@nxp.com>
References: <1662004960-14071-1-git-send-email-hongxing.zhu@nxp.com>
	 <1662004960-14071-2-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_013253_429064_2BA9E856 
X-CRM114-Status: GOOD (  15.43  )
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

Am Donnerstag, dem 01.09.2022 um 12:02 +0800 schrieb Richard Zhu:
> Add i.MX8MP PCIe PHY binding.
> On iMX8MM, the initialized default value of PERST bit(BIT3) of
> SRC_PCIEPHY_RCR is 1b'1.
> But i.MX8MP has one inversed default value 1b'0 of PERST bit.
> 
> And the PERST bit should be kept 1b'1 after power and clocks are stable.
> So add one more PERST explicitly for i.MX8MP PCIe PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml          | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> index b6421eedece3..692783c7fd69 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - fsl,imx8mm-pcie-phy
> +      - fsl,imx8mp-pcie-phy
>  
>    reg:
>      maxItems: 1
> @@ -28,11 +29,16 @@ properties:
>        - const: ref
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    reset-names:
> -    items:
> -      - const: pciephy
> +    oneOf:
> +      - items:          # for iMX8MM
> +          - const: pciephy
> +      - items:          # for IMX8MP
> +          - const: pciephy
> +          - const: perst
>  
>    fsl,refclk-pad-mode:
>      description: |
> @@ -60,6 +66,10 @@ properties:
>      description: A boolean property indicating the CLKREQ# signal is
>        not supported in the board design (optional)
>  
> +  power-domains:
> +    description: PCIe PHY  power domain (optional).
> +    maxItems: 1
> +
>  required:
>    - "#phy-cells"
>    - compatible



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=nYWN=QC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C84C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Nov 2021 22:56:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B9C363220
	for <linux-phy@archiver.kernel.org>; Mon, 15 Nov 2021 22:56:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5B9C363220
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/oGPIXKszLnMDNPbcLB6+l+VBcPtQrNOnl9ZlwW6Ro=; b=ObWdD0iHZCqtPY
	BMefkFiiq5Z/lFDlg4BaUz6hQX0rqMh6LwJO47sLn429yoEomW89X2huCH4vsfraTtjy9ZNM8dinb
	Q98+6A6/NYNqinR5/yQfYTUWJ8tWKqlwf2RbGZb8OfDG5e/NnQgFrJr06Az6+BxOAjMRdHTJvbQw5
	LzZ+3vPcYWVXLk+zBOwqctbHLJ4OXsrZ2yVLg60VVU4g9aQZDT6FKZEA5p1hf8FBy2L7CRDdbeJTM
	d57uVylaftH+E96oBggqrbELmUKoL00GKu6t8qiW37JcyvaRym8kl9MzuTMaVhv6GI+lCRxFhqeUV
	O49p6afDAUZ/mEg0dH9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmktw-00HEJ3-SW; Mon, 15 Nov 2021 22:56:36 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmktt-00HEHb-Co
 for linux-phy@lists.infradead.org; Mon, 15 Nov 2021 22:56:35 +0000
Received: by mail-pl1-x630.google.com with SMTP id y7so15835138plp.0
 for <linux-phy@lists.infradead.org>; Mon, 15 Nov 2021 14:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lcf3se7dyjsLzXA0To/0PfvJUa1TCjgRaGYziSCdAjQ=;
 b=b5jiTdFgq7uQFKutKbb4oOxkjB1hX3rS6pAVG5AsD1RF22dLMdJfU5YxK7/uwByX3O
 krX9FoJpM0IR6Rln6IBwaHX2lX9ovSZqYMXlGhYcTWon4/v2olTBjZ6ewjkpCyQe7EWz
 y/SsMfVsSemDG4X0hgkfA8KWXopizQmmiPDRGe1N3VrghHkDa42W0raayKdutqklgB2P
 ZnkRYAE+qtCc3Z/vobiUMbsIvi/9l63G7r4JFoOvuU0Wv8rYOEB+UDnjDhEXYoe659Su
 hjLoTepa6g2jDQhL/BwaCptocqNCFI91owYCDwjNFqdRKT7nF2RRw+puCZEZybvCXpNx
 ymbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lcf3se7dyjsLzXA0To/0PfvJUa1TCjgRaGYziSCdAjQ=;
 b=pFQUuJ2rzzAEIuxK1lOqdQTR00J3GLv097TUvAgyQ0Xa8OE4mfYhchWLkHny7yccsO
 Wj+BQdLAFy7smv2AXhZrl21+oSRSO7aekcTXNeqPb/V7DtZx33bmu82m++R+mbQ2osIB
 XbhdA0EuqvhaQmoV42k8ftg7ghSVKZCZVdK5m4icqnc9PfOVf2dyDgWPuQuvgwpaOyu+
 6uRzr89tPdZ2rlR/wvJrYZG5JGX9hRMgwBKJaNsdQD4Z57AKgyG2ItF003yhzTFZm1Xy
 4cgWI08cKIxMi7JWDBjOe3cA41vXFx/wlR9R3vP+WRLB1oAubN2lh3Ez3XtOack0SS0y
 1ZgA==
X-Gm-Message-State: AOAM533QnU8HbCGK5SmRq5lQ1bxgVoKTSoXEBAgWLH/2q6zSa9b2Ibdd
 pdvtnOHQR+qQdwnijF1vWhuvrjGpY8vjEXrhq/Mx5Q==
X-Google-Smtp-Source: ABdhPJxqdIqPtf9DYqUiWP7+UcNNXzPI5APnlVpOeVYFLWVT5MJPlOrodfCH2bTWwX01v8EIVQTHEhgkn7MIvJVCwCE=
X-Received: by 2002:a17:90b:1b06:: with SMTP id
 nu6mr2717814pjb.155.1637016990367; 
 Mon, 15 Nov 2021 14:56:30 -0800 (PST)
MIME-Version: 1.0
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 15 Nov 2021 14:56:19 -0800
Message-ID: <CAJ+vNU3r0aC8GrTQ2z5BqsCFCAXP+BWt2ntqsNy8DBd--nxdvQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/8] Add the imx8m pcie phy driver and imx8mm pcie
 support
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, vkoul@kernel.org,
 Rob Herring <robh@kernel.org>, 
 galak@kernel.crashing.org, Shawn Guo <shawnguo@kernel.org>, 
 linux-phy@lists.infradead.org, 
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_145633_519356_721A8570 
X-CRM114-Status: GOOD (  25.79  )
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

On Mon, Nov 1, 2021 at 7:58 PM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> Refer to the discussion [1] when try to enable i.MX8MM PCIe support,
> one standalone PCIe PHY driver should be seperated from i.MX PCIe
> driver when enable i.MX8MM PCIe support.
>
> This patch-set adds the standalone PCIe PHY driver suport[1-5], and i.MX8MM
> PCIe support[6-8] to have whole view to review this patch-set.
>
> The PCIe works on i.MX8MM EVK board based the the blkctrl power driver
> [2] and this patch-set. And tested by Tim and Marcel on the different
> reference clock modes boards.
>
> [1] https://patchwork.ozlabs.org/project/linux-pci/patch/20210510141509.929120-3-l.stach@pengutronix.de/
> [2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210910202640.980366-1-l.stach@pengutronix.de/
>
> Main changes v4 --> v5:
> - Set the AUX_EN always 1b'1, thus it can fix the regression introduced in v4
>   series on Marcel's board.
> - Use the lower-case letter in the devicetreee refer to Marcel's comments.
> - Since the default value of the deemphasis parameters are zero, only set
>   the deemphasis registers when the input paramters are none zero.
>
> Main changes v3 --> v4:
> - Update the yaml to fix syntax error, add maxitems and drop description of phy
> - Correct the clock name in PHY DT node.
> - Squash the EVK board relalted dts changes into one patch, and drop the
>   useless dummy clock and gpio suffix in DT nodes.
> - Add board specific de-emphasis parameters as DT properties. Thus each board
>   can specify its actual de-emphasis values.
> - Update the commit log of PHY driver.
> - Remove the useless codes from PCIe driver, since they are moved to PHY driver
> - After the discussion and verification of the CLKREQ# configurations with Tim,
>   agree to add an optional boolean property "fsl,clkreq-unsupported", indicates
>   the CLKREQ# signal is hooked or not in HW designs.
> - Add "Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>" tag, since
>   Marcel help to test the v3 patch-set.
>
> Main changes v2 --> v3:
> - Regarding Lucas' comments.
>  - to have a whole view to review the patches, send out the i.MX8MM PCIe support too.
>  - move the PHY related bits manipulations of the GPR/SRC to standalone PHY driver.
>  - split the dts changes to SOC and board DT, and use the enum instead of raw value.
>  - update the license of the dt-binding header file.
>
> Changes v1 --> v2:
> - Update the license of the dt-binding header file to make the license
>   compatible with dts files.
> - Fix the dt_binding_check errors.
>
> Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |   6 +++
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  95 ++++++++++++++++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi                |  55 +++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mm.dtsi                    |  46 +++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  73 ++++++++++++++++++++++---
> drivers/phy/freescale/Kconfig                                |   9 ++++
> drivers/phy/freescale/Makefile                               |   1 +
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 237 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> include/dt-bindings/phy/phy-imx8-pcie.h                      |  14 +++++
> 9 files changed, 528 insertions(+), 8 deletions(-)
>
> [PATCH v5 1/8] dt-bindings: phy: phy-imx8-pcie: Add binding for the
> [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
> [PATCH v5 3/8] dt-bindings: imx6q-pcie: Add PHY phandles and name
> [PATCH v5 4/8] arm64: dts: imx8mm: Add the pcie phy support
> [PATCH v5 5/8] phy: freescale: pcie: Initialize the imx8 pcie
> [PATCH v5 6/8] arm64: dts: imx8mm: Add the pcie support
> [PATCH v5 7/8] arm64: dts: imx8mm-evk: Add the pcie support on imx8mm
> [PATCH v5 8/8] PCI: imx: Add the imx8mm pcie support

Richard,

Are you posting a v6 of this series or have we already missed the
window for 5.16?

Best regards,

Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

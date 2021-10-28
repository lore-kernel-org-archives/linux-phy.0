Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16DD1C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:17:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B9A6960E8B
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:17:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B9A6960E8B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/btXbRnM20CopEekKmqhLZOjdXZ6dSzZHeUMdpCJiVY=; b=irVqKa7L5SjiWM
	xpSPQCZ9XYypnkhrR7xp6vmaxghVjAmnSafLWXTHxfDFA6SevDRLn38Gqkscvmc2NHDT1rAJy3PWk
	eMEoX92W7cBip8h5qocHc6WeIDdIgFrV4A4Jccyt5qrafjgaqF/WpRc+luDuA+/VDAEOpTcDuqIFA
	sfCoLins/hxxshSICDSa8garWPvogKrsY5RpKRX5etXDGjb1ZunGQU6I14akwRc0qp9PEofAoy49t
	KPpFbzLQ196AV3G0Z9uU4IxdZHZR8EZRzM+Q/b8QtCwW456CCqlrED0xzExD06l0MkEYZiAOb5RbU
	h5+xLJ/IruDQayklwzrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg9xz-008pbY-8l; Thu, 28 Oct 2021 18:17:31 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg9xv-008paO-Eo
 for linux-phy@lists.infradead.org; Thu, 28 Oct 2021 18:17:29 +0000
Received: by mail-pf1-x431.google.com with SMTP id l203so6783102pfd.2
 for <linux-phy@lists.infradead.org>; Thu, 28 Oct 2021 11:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y52ZRB3IDHBVDpr1Rvp1n50ku5ULulUN9ndY3ROh08M=;
 b=LausdrzIB92YfAhjMC2gEOkt8PB1jfiwxKz4iNKXJncNxr+1ppga8XLrjNJCCXMICc
 7+/zREZ6mp84b+kmnHzDa93pYmr3NNau9ZDirRthuxEd5XHxGXWlz9cRldSF4YEUpdxw
 z455EcbOlJzlia16aFWzneyTV/e08EiMtEG7ARyHaI/+uB1Ew1RD0XYveYWwNT8IrA5p
 GswxaQShFDBDWEKsICjizBuKi2mUwiS1UcNHeQlG6mM2Hbz1+iIwKgOJFVRhl3HHb3gV
 8f8dGXJY2wD9Lv/E8V90uCngD2pzi4CUp1/O0o/0MBflVjGLWqb7QxMemwcb2f0MKRl2
 OZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y52ZRB3IDHBVDpr1Rvp1n50ku5ULulUN9ndY3ROh08M=;
 b=p2/6ldr9tZRV/1fGUpcgq/Ru0X9C9xngOlB9Yd5sPYY8Y6zBielCOZ7GH/nMnc7wQj
 gVvHcMIoTECE8WODrIutryVULiI7tsWiJq2vES1+q/UfUSJFW1v5mFZP3YBx0785/j/b
 +sp8vYebxZbgAsRSi1mnFsAXuFpFoMwSTsN4Mp656+1Mw071nMK8MMSnNTqjQQFp7r9C
 qBcDrncGge6KghKieDEGOyM5BqJQjrMkGOjEQXJMpUoX6RTTK+1SJmSfZJsExDC0kbNY
 E4vg7qt8vsqolKOI9VOgwnCMLqD+xrg7Oo0W4CNKJWIrwmeQ5YF1GDZRDG58iPXNL6rd
 I3nw==
X-Gm-Message-State: AOAM532Dl6YbC/UVhYIq4eT5EJHIKlKwe9/wgMcXCFkwUS28X5HEDoWY
 EMRtQ4pPirUxQakAyaHd+9feYm8o+LtOpAQTc1BzQQ==
X-Google-Smtp-Source: ABdhPJzkfzCDcLEPGg3GSvgYlufl7PpvlwzDAMa63BZSm4XkZ3Xu0SukFC+4+ENlNKO998PsNydhzBhDFm0VEA6ANEE=
X-Received: by 2002:a63:788e:: with SMTP id t136mr4406516pgc.432.1635445045501; 
 Thu, 28 Oct 2021 11:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 28 Oct 2021 11:17:14 -0700
Message-ID: <CAJ+vNU3mmv=-19U39dKovAV1zWVPHWZxweDAvhEkW_wSQH1ikA@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] add the imx8m pcie phy driver and imx8mm pcie
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
X-CRM114-CacheID: sfid-20211028_111727_601228_9F282434 
X-CRM114-Status: GOOD (  24.15  )
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

On Thu, Oct 28, 2021 at 12:52 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> Refer to the discussion [1] when try to enable i.MX8MM PCIe support,
> one standalone PCIe PHY driver should be seperated from i.MX PCIe
> driver when enable i.MX8MM PCIe support.
>
> This patch-set adds the standalone PCIe PHY driver suport[1-5], and i.MX8MM
> PCIe support[6-8] to have whole view to review this patch-set.
>
> The PCIe works on i.MX8MM EVK board based the the blkctrl power driver
> [2] and this patch-set.
>
> [1] https://patchwork.ozlabs.org/project/linux-pci/patch/20210510141509.929120-3-l.stach@pengutronix.de/
> [2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210910202640.980366-1-l.stach@pengutronix.de/
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
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  95 +++++++++++++++++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi                |  55 +++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mm.dtsi                    |  46 +++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  73 ++++++++++++++++++++++---
> drivers/phy/freescale/Kconfig                                |   9 ++++
> drivers/phy/freescale/Makefile                               |   1 +
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 234 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> include/dt-bindings/phy/phy-imx8-pcie.h                      |  14 +++++
> 9 files changed, 525 insertions(+), 8 deletions(-)
>
> [PATCH v4 1/8] dt-bindings: phy: phy-imx8-pcie: Add binding for the
> [PATCH v4 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
> [PATCH v4 3/8] dt-bindings: imx6q-pcie: Add PHY phandles and name
> [PATCH v4 4/8] arm64: dts: imx8mm: Add the pcie phy support
> [PATCH v4 5/8] phy: freescale: pcie: Initialize the imx8 pcie
> [PATCH v4 6/8] arm64: dts: imx8mm: Add the pcie support
> [PATCH v4 7/8] arm64: dts: imx8mm-evk: Add the pcie support on imx8mm
> [PATCH v4 8/8] PCI: imx: Add the imx8mm pcie support

Richard,

For your v4 series:

Reviewed-By: Tim Harvey <tharvey@gateworks.com>
Tested-By: Tim Harvey <tharvey@gateworks.com>

I tested this on imx8mm-venice* boards with no CLKREQ# support as well
as an imx8mm-evk board.

Thanks again for your effort on this series!

Best regards,

Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

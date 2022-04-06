Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74933C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 16:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dp+OEFKLYIjQxvZogxxpCfqhwGMZ5KBJyWAHCb3kaBc=; b=1zv+4ubiSVsfpN
	H/3rjUX5BsdAKr981O5XGvft6J7ARdEeIy1034SDF3QQlebd9HminIwlsZhXT3lWRfmSsbZxwfQY8
	Yr4RkP5dfEl+BxZRw9/XQKo6SMfThZyy6KuByF339THWuT9XTyEj+hq9knEyKvoKMMQOdYkIk5hFu
	NxGJp5cYrA1N+fPPNwyV/NNF5I4mzYKGGOHHYYG3eT6qWdnQWeARoPYcZ7E700L/jG+ZRSHFBsR7/
	onCEe0/iapfkavCPM4W1C4ATnh1DySzaXSMmxRjqEEzo+LB/QoDcHxgtbedYWtxpcz1tEAVQpC4SF
	KQ4YI+pqaS0fWKkEnFIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc8G6-0077Fs-J6; Wed, 06 Apr 2022 16:11:50 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc8F9-0076ll-7D
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 16:10:53 +0000
Received: by mail-pj1-x102c.google.com with SMTP id
 l4-20020a17090a49c400b001c6840df4a3so3238351pjm.0
 for <linux-phy@lists.infradead.org>; Wed, 06 Apr 2022 09:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=95RDoGyZtbEcoHnBFQepKxpMoAUWFwyWGwDHuUzcbMY=;
 b=zTEdfItkEUK2LGYDh68HRGrbmaItaQKULw+9lTwbEZaNWQ05CQRkXWASt2A7Qmhj8K
 YGMn50PZLtb7ypgA3b1nPiDm0qf0Mv3ndZBmL7rAsU/WuANTcI6C8A08/xkYCuGhWLKS
 PItQG6iDdRcofzI+yRZ3GcCEqpnnkET4k4bzz5g+2T2owMotAIBXShuBP2qJnHIyhZWp
 JCjqJ0UKzYCWKcRzlgzg3hI2Hp+zS69zcd8L4LMVuD4I9iJvsWoN1cLmAFk4OA5SGfrd
 SRU58ASegW/3oxsQ7FfT09ANtu+UI8wvdVAghhGIgJdowFKp0DMI+a9BBAlS1Qy3vrlF
 7gIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=95RDoGyZtbEcoHnBFQepKxpMoAUWFwyWGwDHuUzcbMY=;
 b=sLWHzyuugMygcbVwCmjyFP2bpKBgzenYLNxt3lEDYIufXd0ELJuZjo6bI5kxCj3uql
 zjRyvMokZY4S4cngETuz0RW+iC7221WrptkdreFeHSCPgSk8hCFkf/+W7ntj9trXi88f
 JSlU7TOgW/W7qSBu9Bf/neGIwvaLx77ncH3kooTOhAQYIHSaIcw1Ss/IkeeA/Bv2NZAD
 8UFKEz6OlzzPQWEqxbtYqMcpOORbPjUi1jah1pdh9Wj898V9AwBNQKfqkaCB5l4XfDv3
 xTh7hMYFw0r8qmHlnpSRrpB9yqO2m2EyOuzG+KkPGqy9QdadO+mZsOK+IrWeHlHF5PNN
 3OlQ==
X-Gm-Message-State: AOAM530YZC710K3rAua27T6hFQAZymaZ8p02OaZparap4uhe+0aegbyz
 75OjoajsFj21rHaxs0tvt96RUdA3WXLGmMwQfoEbBA==
X-Google-Smtp-Source: ABdhPJzlZiYbA1h7PZOpTXhFDSXJLbry3YFGlV7/j3Lx1oTWVTvgRcbYK3zPbBRS+2NsM3aFsrF3c9D6iK8fVBDPttI=
X-Received: by 2002:a17:903:206:b0:153:ebab:a52f with SMTP id
 r6-20020a170903020600b00153ebaba52fmr9290143plh.118.1649261449125; Wed, 06
 Apr 2022 09:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
In-Reply-To: <20220406160123.1272911-1-l.stach@pengutronix.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 6 Apr 2022 09:10:38 -0700
Message-ID: <CAJ+vNU3pxSiAX5_fmLy9ztUZ4-dvm5GHdUnucWZwWcQ539dT4w@mail.gmail.com>
Subject: Re: [PATCH v0 00/10] i.MX8MP HDMI support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 NXP Linux Team <linux-imx@nxp.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Robert Foss <robert.foss@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, 
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_091051_296917_32AEB797 
X-CRM114-Status: GOOD (  22.56  )
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

On Wed, Apr 6, 2022 at 9:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi all,
>
> this adds support for the HDMI output pipeline on the i.MX8MP.
> It currently depends on the i.MX8MP HDMI power domain series [1]
> and support for the new LCDIF [2] in the i.MX8MP. I guess the
> implementation presented here also still has some warts that
> require fixing and the individual patches most likely need to go
> through different maintainer trees, so I don't expect this series
> to be applied right away.
>
> However this complete series should allow people to test it more
> easily and provide feedback on the implementation with the full
> picture available.
>
> Compared to downstream this implementation actually allows to
> power down the separate HDMI PHY power domain when the display
> is inactive or no HDMI cable is connected.
>
> Regards,
> Lucas
>
> [1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
> [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
>
> Lucas Stach (10):
>   drm/bridge: dw-hdmi: add low-active PHY reset
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
>   drm/imx: add bridge wrapper driver for i.MX8MP DWC HDMI
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
>   drm/imx: add driver for HDMI TX Parallel Video Interface
>   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
>   phy: freescale: add Samsung HDMI PHY
>   arm64: dts: imx8mp: add HDMI irqsteer
>   arm64: dts: imx8mp: add HDMI display pipeline
>   arm64: dts: imx8mp-evk: enable HDMI
>
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   83 ++
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   72 ++
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   93 ++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |    7 +
>  drivers/gpu/drm/imx/Kconfig                   |    1 +
>  drivers/gpu/drm/imx/Makefile                  |    2 +
>  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
>  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
>  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  209 +++
>  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  128 ++
>  drivers/phy/freescale/Kconfig                 |    7 +
>  drivers/phy/freescale/Makefile                |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1145 +++++++++++++++++
>  include/drm/bridge/dw_hdmi.h                  |    1 +
>  16 files changed, 1852 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
>  create mode 100644 drivers/gpu/drm/imx/bridge/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/bridge/Makefile
>  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c
>  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi.c
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
>
> --
> 2.30.2
>

Lucas,

Thanks for consolidating this - It's been difficult to try to merge
these for testing.

I still have not been able to apply these to origin/master or
imx/master - what are you basing off of here?

Best Regards,

Tim
I

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

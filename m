Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6843C54E58
	for <linux-phy@archiver.kernel.org>; Mon, 25 Mar 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYo+NcFhU7YR1MdzLMO0idjHByNXzPZtqZgpwzth2Ss=; b=c/781IcRCblxG/
	91nUfN63OVwm5gvrfdTkqrSVPqZ8/wdVlauMED9fRrEOF7w67MI6PQUf3A5LfbkWALR2SvtWnrRjw
	cGD1xJTf0t+ub90e55sprFLl4/sCFbcMM8JanC7FLtPtksSKcF28fkuCJwoCdsejozlpbFGpkF0q9
	SN+jmdt6ruB2DJelcA07XAfdWqeYX6mPPy0yHLFR9KpnO6Zpjl3LPOITiNC4+qLu87cwDGI9tSizS
	l6dJ19ye5ePuuC6NvURUqU+DCN6jyGpR8AB6vHiN0oVe80gQWKv20180eRLEwR1Gov47hYYGOpiFt
	MiCWjH9Bg9fCQxbmpcrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rosBw-000000025Pg-1H1d;
	Mon, 25 Mar 2024 21:49:22 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rosBj-000000025K6-3pVE;
	Mon, 25 Mar 2024 21:49:11 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-56899d9bf52so6139460a12.2;
        Mon, 25 Mar 2024 14:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711403340; x=1712008140; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qUM4vmKmjA1gYO0tbm7KTA4LmIiK39ngypqIHIOvMUY=;
        b=H789VgWDhXatn4sih71aH+B3CzFmFxxh1m9OCe1kAC2LIShiRuvchY92UHeOpCO4Hc
         lE+fxHpy+3W52OgsYLuHnC1veRuDw0e13BRe1ueXpExfMrC3vAk0yyHpKQwmIDhbSTei
         jkVx5Mf6I4QVYI/zHtuBgomqcDaDx87YIov9+P5AD6DR3+waYNr1Pi+aqf/D0Np17iuH
         yPPvv/NMvP3xFvqG1XUUU7exhvMGGY9EpZ/VUYhbTGyodQNN/0Bsn8I+CATyYfyNnfMt
         3COrHZwh54P1LUIcqib1X+YR1LEcgTL89qUz5HgEBAFNeN+rw1QT/DVNWADWFGOSRhe7
         /CvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711403340; x=1712008140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qUM4vmKmjA1gYO0tbm7KTA4LmIiK39ngypqIHIOvMUY=;
        b=S93gfQ5qtPOWponB1BApn3c0J5Yo8/umu6axJ6eNm7jx5X2rvidU6RRYstpbr0QT/h
         LWobYEQMoqIDOSBbggZ181XEiPgibtvok18WEhWRhRZgQeeDuqySruKASl3BYHhVBiLY
         T6S9VuhTnUlQPCyBc5K7kUofddPNoTJY/+mn/p7Z3A0/2xqlrKiRuRolllbRTDKiEVbV
         MhpTNE4Yem4l12aI9QSxekVx0Ruk3KNoeBAIVvE/ceRKdYZzffXIygmMZD0m5Jz+mBak
         q7IWFE5Q58RcyULwIz4pRbveLXyKjOuDVHbpfxfs3IcLuAsgM7lfmbxh631cXCtK1ySC
         7kgw==
X-Forwarded-Encrypted: i=1; AJvYcCXTBkXSU/iufH7pEuUBPM2gLAfZMvh2djsgaGLWH21gvtslc39RYuVX/qq3pXsdTJUmGLMHXEeNxNzuwnpb8xLLAtzaAc+AJltsPDtCDw==
X-Gm-Message-State: AOJu0YzIBUX8qRh1o8l2oyGzl9OSey8sNOiwiMLens/KgvsCO5UUxlGj
	OoL5p7/91lrd9z4A8N3mWSbls4vzy1VlC0QDxUbwZXv5cHxDjo56
X-Google-Smtp-Source: AGHT+IGqzF3fHuQAIWMVhReRKPOloiG3GIJOv/fRY7SrojJhBUXyuiPBtXLwZklMVo7FZ83sKnItLQ==
X-Received: by 2002:a50:d685:0:b0:56b:83ff:e044 with SMTP id r5-20020a50d685000000b0056b83ffe044mr5778673edi.1.1711403340182;
        Mon, 25 Mar 2024 14:49:00 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-188-217-49-82.cust.vodafonedsl.it. [188.217.49.82])
        by smtp.gmail.com with ESMTPSA id c13-20020a056402100d00b00568abb329a3sm3403484edu.88.2024.03.25.14.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 14:48:59 -0700 (PDT)
Date: Mon, 25 Mar 2024 22:48:56 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
Message-ID: <ZgHxSHDAt7ytqDC1@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_144908_184518_724EE39D 
X-CRM114-Status: GOOD (  23.90  )
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

Hi Adam, Lucas,
Thanks for this series.

This series make HDMI work on evk.
All is working properly on my side.

Tested on: Linux imx8mp-lpddr4-evk 6.9.0-rc1.
Hope this help.

Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>

Thanks & Regards,
Tommaso

On Sat, Feb 03, 2024 at 10:52:40AM -0600, Adam Ford wrote:
> The i.MX8M Plus has an HDMI controller, but it depends on two
> other systems, the Parallel Video Interface (PVI) and the
> HDMI PHY from Samsung. The LCDIF controller generates the display
> and routes it to the PVI which converts passes the parallel video
> to the HDMI bridge.  The HDMI system has a corresponding power
> domain controller whose driver was partially written, but the
> device tree for it was never applied, so some changes to the
> power domain should be harmless because they've not really been
> used yet.
> 
> This series is adapted from multiple series from Lucas Stach with
> edits and suggestions from feedback from various series, but it
> since it's difficult to use and test them independently,
> I merged them into on unified series.  The version history is a
> bit ambiguous since different components were submitted at different
> times and had different amount of retries.  In an effort to merge them
> I used the highest version attempt.
> 
> Adam Ford (3):
>   dt-bindings: soc: imx: add missing clock and power-domains to
>     imx8mp-hdmi-blk-ctrl
>   pmdomain: imx8mp-blk-ctrl: imx8mp_blk: Add fdcc clock to hdmimix
>     domain
>   arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
> 
> Lucas Stach (9):
>   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
>   phy: freescale: add Samsung HDMI PHY
>   arm64: dts: imx8mp: add HDMI power-domains
>   arm64: dts: imx8mp: add HDMI irqsteer
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
>   drm/bridge: imx: add driver for HDMI TX Parallel Video Interface
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
>   drm/bridge: imx: add bridge wrapper driver for i.MX8MP DWC HDMI
>   arm64: dts: imx8mp: add HDMI display pipeline
> 
>  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    |  102 ++
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   84 ++
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
>  .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     |   22 +-
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  145 +++
>  arch/arm64/configs/defconfig                  |    1 +
>  drivers/gpu/drm/bridge/imx/Kconfig            |   18 +
>  drivers/gpu/drm/bridge/imx/Makefile           |    2 +
>  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c  |  207 ++++
>  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c   |  154 +++
>  drivers/phy/freescale/Kconfig                 |    6 +
>  drivers/phy/freescale/Makefile                |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1075 +++++++++++++++++
>  drivers/pmdomain/imx/imx8mp-blk-ctrl.c        |   10 +-
>  14 files changed, 1876 insertions(+), 13 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
>  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
>  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> 
> -- 
> 2.43.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

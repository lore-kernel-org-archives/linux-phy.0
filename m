Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E30DC54E58
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 07:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5t8r4zJ5xq+BgBRvgDmZIFcOo+v9DtJuoVy6Lp2VZFo=; b=igUKm5JMFU4gu1
	FvfWeP1N9YiieoQTy28ha8FzPYSDMnk9sbDzONOQySVPRYuc8HOTctFrvUotGSnuku49hPS6kY07U
	oAb5hYr0b3jqkCJgINbTAZcyvL6H/zZd9SrH2zOmlX8FZm2inOjpL4GsGN+nRgAO23EpyB3ELv9+U
	bu/zBN+SshUXCMzhNUSBR9r6EdMWsx/+g4gBNSGsCuCQPciU//PVZ7xr21edWPU3BA6Y07vKxEgcs
	1dlUVG/wZfrsA6Qk9irHWkn9fLkaRGUfc78GnPc3fpTj87g2XbfsN2rMxxDW1G0L4UpWeYtgH1hkj
	AglU7N6WuPPtjSaoeZxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp1Vm-00000003UNT-37dN;
	Tue, 26 Mar 2024 07:46:22 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp1Vd-00000003UL7-2Rd0;
	Tue, 26 Mar 2024 07:46:16 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5688eaf1165so7111364a12.1;
        Tue, 26 Mar 2024 00:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711439171; x=1712043971; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Cs2IwigS62lW2NUemYpoxv0KHk0e1rYE/O58ogrWzrM=;
        b=eI7K6buNdLU2LRwoILb9xgJ2Pw3NepBZ6DebX5PuJEb1/WIWLFzgNcjyVNSYOFwrHh
         o+iJ+i7Ulg7e70oFD1lCmKcvHcBpFQ6ePdCMTKd5wtV1RPeqPDMkDb2OaTeu5PACXDCh
         OJkDwzE7jM7cbInITClkOZYqk/0SO5qNqrbmzqgt/HbYSS516crzmO7f6xPf1WsnspI0
         JMXyes756dFPPOEwaOTQiRJpT67x7+XQr57Yr5Qk44+TAZL//6sRveYqP0DvtUS42xab
         +GAQERdOSH1iQzz2kcxdewKV3+MTNFEuhXZ+CS743lTSHJYkx4nWZmYTWcd56YHAPNpO
         z6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711439171; x=1712043971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cs2IwigS62lW2NUemYpoxv0KHk0e1rYE/O58ogrWzrM=;
        b=OdKIRFuP8FDwoM3OCRYBh9IyEC/TxlAF6c5JZDeE/2xjOR029oWOEy+jgrwQKlYvKY
         YG+bo6oigYZ1GS21CAr1u4+NTNWqpr7zPgCw1pyMxxO1hUn1uhqpd/GCN7Oyac0RVvUj
         GydARsAQ5AoEi6WdkUhRY5IOH8R44aBJyH2P1glPLwSz7BKeRlb3i52KKS8IZUPbuSkj
         pHuE2PT8GXfO7Z/fvcSNy9xQBgp4aPNq61eGQJQ9NXNvURUmTGvc/rQAH3jb6AUvphbv
         e7JapcYS5mvUrwVkSwyC2btIQcoodXUol9Lj9+JvsNbyP28NptzXZskLmLGtb/RAbWgC
         97ew==
X-Forwarded-Encrypted: i=1; AJvYcCXi0fc/E9QP3lfeHysO1Vegvy7wWMVeuvBNP2i29RZvXt2GflUwtAZFDxeMx2faXoekxR8/dsIVp+LlJgTRlO4X4dXioUEIT5DU/9SzilHQgUkrjKdEvdN4BHKdx4M0LdNP72GkYarBFObGNlPqhkl+s3df
X-Gm-Message-State: AOJu0YzEPtPhw487xUjp9W+zYkXjqD1tOPIsGI4yQ0Uq5yYVkp+py79V
	qT6hL36RjP05wFEKRH3toCGrqWnNweAqm+CCBxAGLpvKamkAdQKR
X-Google-Smtp-Source: AGHT+IGrIlCSSn2r2+Hg+P0/A4xj4OXP7apyF3284aGBI7zxVjMxD5nzUTRKGklIY7bvBEYmSkW8Iw==
X-Received: by 2002:a50:8ac9:0:b0:568:a420:7d80 with SMTP id k9-20020a508ac9000000b00568a4207d80mr6923066edk.27.1711439171189;
        Tue, 26 Mar 2024 00:46:11 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-188-217-49-82.cust.vodafonedsl.it. [188.217.49.82])
        by smtp.gmail.com with ESMTPSA id dh16-20020a0564021d3000b0056c1c4b870asm1167067edb.16.2024.03.26.00.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 00:46:10 -0700 (PDT)
Date: Tue, 26 Mar 2024 08:46:07 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
	marex@denx.de, alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
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
Message-ID: <ZgJ9P3Wx2A2n9Gt+@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20240203165307.7806-1-aford173@gmail.com>
 <ZgHxSHDAt7ytqDC1@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
 <20240325220338.GE23988@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325220338.GE23988@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_004613_670617_E689CEE2 
X-CRM114-Status: GOOD (  37.15  )
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

Hi Laurent,

On Tue, Mar 26, 2024 at 12:03:38AM +0200, Laurent Pinchart wrote:
> Hi Tommaso,
> 
> On Mon, Mar 25, 2024 at 10:48:56PM +0100, Tommaso Merciai wrote:
> > Hi Adam, Lucas,
> > Thanks for this series.
> > 
> > This series make HDMI work on evk.
> > All is working properly on my side.
> > 
> > Tested on: Linux imx8mp-lpddr4-evk 6.9.0-rc1.
> > Hope this help.
> > 
> > Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>
> 
> The DRM side has been merged already. The only missing patches are for
> the PHY, and the latest version can be found in
> https://lore.kernel.org/linux-phy/20240227220444.77566-1-aford173@gmail.com/.
> You can test that series and send a Tested-by tag. I'm crossing my
> fingers and hoping it will be merged in v6.10.
(same here :) )

Thanks for sharing! :)

To be honest I test all this series rebasing my alvium next branch on top of media_stage/master (6.9.0-rc1)
All is working properly on my side.
I found v8 into the commit msg here: https://patches.linaro.org/project/linux-pm/patch/20240203165307.7806-9-aford173@gmail.com/
then I'm thinking this is the latest.

I'm going to switch to your suggestion that looks more recent :)

Thanks again,
Tommaso

> 
> > On Sat, Feb 03, 2024 at 10:52:40AM -0600, Adam Ford wrote:
> > > The i.MX8M Plus has an HDMI controller, but it depends on two
> > > other systems, the Parallel Video Interface (PVI) and the
> > > HDMI PHY from Samsung. The LCDIF controller generates the display
> > > and routes it to the PVI which converts passes the parallel video
> > > to the HDMI bridge.  The HDMI system has a corresponding power
> > > domain controller whose driver was partially written, but the
> > > device tree for it was never applied, so some changes to the
> > > power domain should be harmless because they've not really been
> > > used yet.
> > > 
> > > This series is adapted from multiple series from Lucas Stach with
> > > edits and suggestions from feedback from various series, but it
> > > since it's difficult to use and test them independently,
> > > I merged them into on unified series.  The version history is a
> > > bit ambiguous since different components were submitted at different
> > > times and had different amount of retries.  In an effort to merge them
> > > I used the highest version attempt.
> > > 
> > > Adam Ford (3):
> > >   dt-bindings: soc: imx: add missing clock and power-domains to
> > >     imx8mp-hdmi-blk-ctrl
> > >   pmdomain: imx8mp-blk-ctrl: imx8mp_blk: Add fdcc clock to hdmimix
> > >     domain
> > >   arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
> > > 
> > > Lucas Stach (9):
> > >   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
> > >   phy: freescale: add Samsung HDMI PHY
> > >   arm64: dts: imx8mp: add HDMI power-domains
> > >   arm64: dts: imx8mp: add HDMI irqsteer
> > >   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
> > >   drm/bridge: imx: add driver for HDMI TX Parallel Video Interface
> > >   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
> > >   drm/bridge: imx: add bridge wrapper driver for i.MX8MP DWC HDMI
> > >   arm64: dts: imx8mp: add HDMI display pipeline
> > > 
> > >  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    |  102 ++
> > >  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   84 ++
> > >  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
> > >  .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     |   22 +-
> > >  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  145 +++
> > >  arch/arm64/configs/defconfig                  |    1 +
> > >  drivers/gpu/drm/bridge/imx/Kconfig            |   18 +
> > >  drivers/gpu/drm/bridge/imx/Makefile           |    2 +
> > >  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c  |  207 ++++
> > >  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c   |  154 +++
> > >  drivers/phy/freescale/Kconfig                 |    6 +
> > >  drivers/phy/freescale/Makefile                |    1 +
> > >  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1075 +++++++++++++++++
> > >  drivers/pmdomain/imx/imx8mp-blk-ctrl.c        |   10 +-
> > >  14 files changed, 1876 insertions(+), 13 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> > >  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
> > >  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> > >  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

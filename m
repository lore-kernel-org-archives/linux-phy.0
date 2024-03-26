Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE08C54E58
	for <linux-phy@archiver.kernel.org>; Tue, 26 Mar 2024 09:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TXDCa3bUhnkVOUMZ8utqOXXP3xlHXaahj+jXi/r/E0=; b=cIMied3OPztMbq
	1492f++wrgwUubraaaav0/WGXIwLxW8aU96K4kbfdWZ2ZnoF26L+Wt0UCbNr3eLYo5YNx47+riR0Q
	n1lcNBx0a/5+XXcy21z+bvwiEnMWzZyVfGb3OqFGh8AERsXp2pDkkdGWxJBFdJUiYr6eAy0iHzZYM
	N8LYjIOhhRks3++c7Z28I/5u+r6W9I7CmjrLzLtaJTQExGfwR2SqJSgb4iqQ2KtOLnAWnfTMgB0ky
	ypQntrDrD7TgNeUQan2khK+0FmMmroqz5++PdhTigmuaJefusGlwH4DXKcboYu55RJVNcLO/BSoHb
	MOD1REzFYn+/2mW1zf5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2sk-00000003lAw-0IWD;
	Tue, 26 Mar 2024 09:14:10 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2sg-00000003l9V-1cMw;
	Tue, 26 Mar 2024 09:14:07 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a4a34516955so259826166b.0;
        Tue, 26 Mar 2024 02:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711444443; x=1712049243; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dkZOXYkAE9iOGn5hAd1Ui45j7SFP54iM6pKPed3Bge4=;
        b=S50RI2ChnkVPkyWNmN74rPg/HIHCL/55fgC2fPebARnveW/AJ+SYG0Q3ymP8AWA3tr
         ZYedXpJSi5wH2FE7x6L34RLRDdEkGVREbxKRbVlt95dSe3h/3q3GMnxFMMLceo3uP6Vp
         j2JSJaJ3T35eH83wC5ntVLcZdWRDR2guoB97gpjtlft5lPebQUTU24M7E/6EHgRx4cQn
         8gIsrz6sjX/6qseyfB0CnGhdNn3Hs38z7Oz1TYgXablBnOZce17RLIEYY0FLthZBD4j9
         Zx2Ro1PaIRpBNXj7qfpm/Ngle3apaeAmVmp00HeXQE1PIY4eVlicby85idT6mU8JskZv
         m41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711444443; x=1712049243;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkZOXYkAE9iOGn5hAd1Ui45j7SFP54iM6pKPed3Bge4=;
        b=Er8h2h84WOVCZT3vUv8yukbKJGNDdid/9EySuAOtt6rdoBWfem2BSZtETBT19c6Y5v
         5v07clsQCYZ0891CM0CctSSi98Hin2CUbM595bKV76u7lB/dcRR3na/AQ+yfafaTelnf
         IpXEayBKHDRp+smNWQLPbT7Hw/kt44PVMumqU+jjZUYpUsLjiOXJFW+1sUc5EIigJuP/
         OeL16BBSW8X1P//zkgdSF9kinuFKiTDcWpsf8KevkVzaCDvbMzjS/rN4UE/4V5vgzgIk
         1ZDvisoSqi1fUiuD3fBi1frs+bJgadZBK/uyO+/yZz1/wH/V/kGzhpVXYbP7X0MgdpdW
         Peng==
X-Forwarded-Encrypted: i=1; AJvYcCU1TX00eGY+PKslCAlxcnA1olg7cwvE2VRjuPc4T0Csxn/U4TKo4OZG+3C54wd1XNHDCQ/dV0dzwnvO+sdmt5KpKNFX1Fog98/74TLkyQ==
X-Gm-Message-State: AOJu0YwwTSpqVV4VwJfSc2ZrGv/H2K2D3e9AFa0SuVqaPmW/bI/fCT4m
	xmsSO5REvkfvCmEefLhiCl0S5L5UMtj2yOgzDTWdvaHuwJUWOln+
X-Google-Smtp-Source: AGHT+IGr2s/mEz4UE0baOahUGNeF8qNja14tSi6th+awBG0zaVYu2NirebKexudRl4KswKxgvAQtwQ==
X-Received: by 2002:a17:906:3b02:b0:a47:38ba:d24a with SMTP id g2-20020a1709063b0200b00a4738bad24amr6299188ejf.18.1711444442910;
        Tue, 26 Mar 2024 02:14:02 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-188-217-49-82.cust.vodafonedsl.it. [188.217.49.82])
        by smtp.gmail.com with ESMTPSA id hy8-20020a1709068a6800b00a46c0191306sm3988446ejc.213.2024.03.26.02.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 02:14:02 -0700 (PDT)
Date: Tue, 26 Mar 2024 10:13:59 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	aford@beaconembedded.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Lucas Stach <l.stach@pengutronix.de>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 0/6] soc: imx8mp: Finish support for HDMI
Message-ID: <ZgKR18zbZKV9p8tP@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20240227220444.77566-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227220444.77566-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_021406_462603_227B608B 
X-CRM114-Status: GOOD (  29.25  )
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

Hi Adam,

Thanks for your work.
For all the series:

Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>

Regards,
Tommaso

On Tue, Feb 27, 2024 at 04:04:34PM -0600, Adam Ford wrote:
> The i.MX8M Plus has an HDMI controller, which depends on several
> other systems.  The Parallel Video Interface (PVI) and the
> HDMI-TX are already in the Linux-Next staging area 20240209, but
> the HDMI PHY driver and several device trees updates are still needed.
> 
> This series is adapted from multiple series from Lucas Stach with
> edits and suggestions from feedback from various attempts, but it
> since it's difficult to use and test them independently,
> I merged them into on unified series.  The version history is a
> bit ambiguous since different components were submitted at different
> times and had different amount of attempts.
> 
> The previous attempt I did used the wrong starting point for the PHY,
> so this update includes a newer starting point with tags from that version
> and fixes from various people's feedback.  I hope I caught them all, but
> I apologize if I missed something. Any tags from the previous attempt I
> made were intentionally dropped, because of the significant change,
> but I kept tags from the newer version I grabbed from patchwork.
> 
> Because several items from the last attempt were merged, this
> series is only focussed on adding the HDMI PHY driver, and enabling
> the power domain, irqsteer interrupt controller, and HDMI pipeline
> in the device tree. The version numbers are a bit strange since
> these all got pulled from various attempts with different versions,
> but I wanted to push them together as a series to complete the pending
> work.
> 
> This series restarted at V4 based on the version of the PHY driver and
> the other drivers and power-domain changes have been applied already.
> 
> V7:  Patch 5/7 marks the PVI driver disabled by default to prevent
>      EPROBE_DEFER errors.
> 
>      No other changes to other patches in the series
> 
> V6:  Make the PHY driver depend on COMMON_CLK to fix build errors
>      Make LCDIF3 disabled by default since it depends on hardware.
> 
> V5 primarily updates feedback from the PHY driver itself, but a small
>    adjustment was made to the register size in the device tree.
> Adam Ford (1):
>   arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
> 
> 
> Adam Ford (1):
>   arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
> 
> Lucas Stach (5):
>   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
>   phy: freescale: add Samsung HDMI PHY
>   arm64: dts: imx8mp: add HDMI power-domains
>   arm64: dts: imx8mp: add HDMI irqsteer
>   arm64: dts: imx8mp: add HDMI display pipeline
> 
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |  62 ++
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 147 ++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/phy/freescale/Kconfig                 |   6 +
>  drivers/phy/freescale/Makefile                |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 720 ++++++++++++++++++
>  6 files changed, 937 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
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

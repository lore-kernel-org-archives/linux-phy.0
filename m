Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1E40C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 17:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tk+e7es1DSFgyqebXO2W+stSZuqWlBfKZIwl11jVkqk=; b=VyKQ2POmZaD5Iv
	7tIUnZtY7TRP6b+uKjTybCOKZDsyCKqDsx26K9g7AqQYKSyv2qIQPU4Hh06hCKiyM+RGkegIZ6e2u
	2GHqB81OMj75SSTlDIdSG1kb09d2tr+J19zOEZsqlMiDOC2ZkcCx16QDxCN6rsi13lhTfmgJsLbvj
	yhjnyHwHs1D2JHdPw+rgma9qqQicso4Nixjwc9zEt5njXBQU4H6epGUMCHBTuYaQ7NOQNs6gyE3Pq
	q27YMzjJGR1KmotQs/lJ5ULrORECnjrtyL2PGVg3DRwAt2Ni02BHfxctqdR+0ZR2vkJwe4JPGZo+7
	l0J82MoQ8gERpPF2ITJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peJ7d-009xlg-0r;
	Mon, 20 Mar 2023 17:16:37 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peJ7Z-009xkU-0W;
	Mon, 20 Mar 2023 17:16:34 +0000
Received: by mail-wm1-x32e.google.com with SMTP id i5-20020a05600c354500b003edd24054e0so2884813wmq.4;
        Mon, 20 Mar 2023 10:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679332590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ciOmJ8lUq444j7rDWT4tZ7vaysYFPy1lLMlFYtJcqeU=;
        b=Wj6DFJV5bgY1B1s0AC8CpnmL/Chzw5urw8WvMx8m3wgXUNUCzrja4X7RXKenSvKv0l
         X+aefOjRXrGEr3x1UgOwkxIk/jaFbKyB0tjBLKAKFH9quNoyaqx5nOSwucH53fG980nZ
         bOrN9LhymAA8lkjNhL6oUw1MY4RGGsGWXnoxxEnL9I3/+cNxWY5xXmP1cTcqibiBnr3M
         FSq7PuyL5/AZE7YoQpN88PtqvcWAvHkQgTaUzQr9lZ+S7iKn0BaamJsa2/wtG6d5YUzE
         6KvNWK6znDl6KOOZwUBZeLijhZjIAwZ9cObTlvixPt+gT59JKNWw6tKP5k97Sjs241rH
         gcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679332590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ciOmJ8lUq444j7rDWT4tZ7vaysYFPy1lLMlFYtJcqeU=;
        b=0BC5MYYZeWwH6W9g0vEATZCjViwgpChz56EGb+XLPE8lRThBsgxe1S1Pfqce3SQye/
         ztl1ANl+jWX2i5e1IcFeJfeGswQM0xhwpMD9BElYhopOgrvETdK+v0DMOjkvQAxg54vw
         YubmSu0pC5ohlAy1EKI5DJW1+2WF1tJuXs3SuV+Lao0R/5fl/53jAsZdyfd9ujIuHkRi
         KXn3Ob05fR2Zt948utAOhIJUAg5z/v8bzCOnnnFGqPsISAPfZjSqUlaSF0WyUM+rqq48
         YbnORrwrivLtlbXp7GnWrKlkre6WzP7CBC4AmpdjhtnoJSMBYAuzCpcV8NOQdKSQsLw5
         jL2w==
X-Gm-Message-State: AO0yUKXUm7iahuyGiFwrMH+1dDE6/1FPsXGOUvLNkBJ31YRxpeUIHlaV
	XWpu/XM6B1QxxacaJx5+DtY=
X-Google-Smtp-Source: AK7set/Lwe4k4z2yQrfaST/GdpK1kDGFBWheWR7e4nD+NYss/JKF5uDs5aFhla2w0vdhMTw/+3SuTw==
X-Received: by 2002:a1c:7311:0:b0:3ea:d611:f8 with SMTP id d17-20020a1c7311000000b003ead61100f8mr222568wmb.38.1679332590270;
        Mon, 20 Mar 2023 10:16:30 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-188-217-57-73.cust.vodafonedsl.it. [188.217.57.73])
        by smtp.gmail.com with ESMTPSA id r10-20020adfce8a000000b002cefcac0c62sm9452559wrn.9.2023.03.20.10.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 10:16:29 -0700 (PDT)
Date: Mon, 20 Mar 2023 18:16:27 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Sandor Yu <Sandor.yu@nxp.com>, Robert Foss <robert.foss@linaro.org>,
	patchwork-lst@pengutronix.de,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-phy@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v0.5 0/9] i.MX8MP HDMI support
Message-ID: <ZBiU6wvZR+vfLEYO@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506181034.2001548-1-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_101633_201797_9BFEA728 
X-CRM114-Status: GOOD (  19.44  )
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

Hello Lucas,

On Fri, May 06, 2022 at 08:10:25PM +0200, Lucas Stach wrote:
> Hi all,
> 
> second round of the i.MX8MP HDMI work. Still not split up into proper
> parts for merging through the various trees this needs to go into, but
> should make it easy for people to test.
> 
> I've worked in the feedback I got from the last round, including fixing
> the system hang that could happen when the drivers were built as modules.
> 
> Series is based on linux-next/master, as there are some prerequisite
> patches in both the drm and imx tree already. The last patch from [1]
> and the patches from [2] need to be applied. Please note that this series
> expects the sync polarity from the LCDIF to be set according to the
> comments I made in [2]. Please test and provide feedback.
> 
> Regards,
> Lucas

I tested your series on Linux 6.2.0-rc8
Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>

Thanks for your work!

Regards,
Tommaso

> 
> [1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
> [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
> 
> Lucas Stach (9):
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
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   73 ++
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   94 ++
>  drivers/gpu/drm/imx/Kconfig                   |    1 +
>  drivers/gpu/drm/imx/Makefile                  |    2 +
>  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
>  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
>  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  201 +++
>  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  141 +++
>  drivers/phy/freescale/Kconfig                 |    6 +
>  drivers/phy/freescale/Makefile                |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1078 +++++++++++++++++
>  14 files changed, 1783 insertions(+)
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
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

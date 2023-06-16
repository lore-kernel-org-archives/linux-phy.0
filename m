Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF43DEB64DB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jun 2023 09:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9QML9PBvObFzkLYw8+7YEMpY7aqM1ncAQrxEoSuZsg=; b=hCKG78PruKr6jJ
	xlkW6jrkgsrxPMQ3MS2tzL0EPVYuzNMu6APWE+oBN09kskfZwGLW1o1TEJ+cR2v8YeaA7M/jNYljU
	Xj8qOsrGdZTLPHDc2WkHW8BpVe0nabsT8Cw8RiQ04uWpPbjZDFjqxwI1kuoZKdNyJ3mj8l+jrcuNy
	2cvI5vn3P8GW87xpkZw/XHV+M42A++tDKWfSKNmt/7+glXlVmjO55hmrFck47TUz+nC+bkNeW08Fc
	jRPcTQg4/uFlERWHuWW3cESC2wjHga7cThBwYD6iIuNqYvXHkZcLsHnFbb5C7NIO3v30eYKQrzJjl
	i/nKKRWaCXN5QDJD0BGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5tY-00HTtU-20;
	Fri, 16 Jun 2023 09:37:28 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5tV-00HTs7-0p;
	Fri, 16 Jun 2023 09:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686908245; x=1718444245;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SyS7X+zCaZvSEhEwk9BWC/gopZ0qkwxTKeMY9FGhWt4=;
  b=ZTqmMxhDTDjtisdboY2XMYKmMX02dXIyIevRlxcEmlK7faP8AU9WtNvy
   /DqGw5qzeNUJ3Iqa10Mr62QdifBfX6o9+FZ3EbadFvSi0IIaRQdjJN+tZ
   QHuxMJvaOjFBALfRbeCEY4G5D9E3pcThREijDDs2p0pPh+7J7g1CZCOoK
   Wks4ibqpg2qheRd3MkKL2CX5Umv+X9Tc5j8TVw36Ma+jpCX6OU8dJCEmE
   InivA2+yTwrYuXmyenV0HGs0OVbojc/xVsMrTCEAfkdPUxDkfbAb7EvTi
   f7+ZnWJJqjEkKO02JjXY15uzHPWLmR6ZJIfy+zWmcDs68+OXX6LZLxBVZ
   w==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31462715"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 11:37:23 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C211D280082;
	Fri, 16 Jun 2023 11:37:22 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: oliver.brown@nxp.com, Sandor.yu@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v6 0/8] Initial support for Cadence MHDP8501(HDMI/DP) for i.MX8MQ
Date: Fri, 16 Jun 2023 11:37:24 +0200
Message-ID: <4674185.5fSG56mABF@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <cover.1686729444.git.Sandor.yu@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_023725_602571_AB0AA165 
X-CRM114-Status: GOOD (  24.17  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Sandor,

thanks for sending a new version of this driver.

Am Donnerstag, 15. Juni 2023, 03:38:10 CEST schrieb Sandor Yu:
> The patch set initial support for Cadence MHDP8501(HDMI/DP) DRM bridge
> drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for Freescale i.MX8MQ.
> =

> The patch set compose of DRM bridge drivers and PHY drivers.

Using quick and dirty DT changes I was able to enable HDMI on imx8mq =

(TQMa8MQ).

Best regards,
Alexander

> Both of them need the followed two patches to pass build.
>   drm: bridge: Cadence: convert mailbox functions to macro functions
>   phy: Add HDMI configuration options
> =

> DRM bridges driver patches:
>   dt-bindings: display: bridge: Add Cadence MHDP8501 HDMI and DP
>   drm: bridge: Cadence: Add MHDP8501 DP driver
>   drm: bridge: Cadence: Add MHDP8501 HDMI driver
> =

> PHY driver patches:
>   dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
>   phy: freescale: Add DisplayPort PHY driver for i.MX8MQ
>   phy: freescale: Add HDMI PHY driver for i.MX8MQ
> =

> v5->v6:
> HDMI/DP bridge driver
> - 8501 is the part number of Cadence MHDP on i.MX8MQ.
>   Use MHDP8501 to name hdmi/dp drivers and files.
> - Add compatible "fsl,imx8mq-mhdp8501-dp" for i.MX8MQ DP driver
> - Add compatible "fsl,imx8mq-mhdp8501-hdmi" for i.MX8MQ HDMI driver
> - Combine HDMI and DP dt-bindings into one file cdns,mhdp8501.yaml
> - Fix HDMI scrambling is not enable issue when driver working in 4Kp60
>   mode.
> - Add HDMI/DP PHY API mailbox protect.
> =

> HDMI/DP PHY driver:
> - Rename DP and HDMI PHY files and move to folder phy/freescale/
> - Remove properties num_lanes and link_rate from DP PHY driver.
> - Combine HDMI and DP dt-bindings into one file fsl,imx8mq-dp-hdmi-phy.ya=
ml
> - Update compatible string to "fsl,imx8mq-dp-phy".
> - Update compatible string to "fsl,imx8mq-hdmi-phy".
> =

> v4->v5:
> - Drop "clk" suffix in clock name.
> - Add output port property in the example of hdmi/dp.
> =

> v3->v4:
> dt-bindings:
> - Correct dt-bindings coding style and address review comments.
> - Add apb_clk description.
> - Add output port for HDMI/DP connector
> PHY:
> - Alphabetically sorted in Kconfig and Makefile for DP and HDMI PHY
> - Remove unused registers define from HDMI and DP PHY drivers.
> - More description in phy_hdmi.h.
> - Add apb_clk to HDMI and DP phy driver.
> HDMI/DP:
> - Use get_unaligned_le32() to replace hardcode type conversion
>   in HDMI AVI infoframe data fill function.
> - Add mailbox mutex lock in HDMI/DP driver for phy functions
>   to reslove race conditions between HDMI/DP and PHY drivers.
> - Add apb_clk to both HDMI and DP driver.
> - Rename some function names and add prefix with "cdns_hdmi/cdns_dp".
> - Remove bpc 12 and 16 optional that not supported.
> =

> v2->v3:
> Address comments for dt-bindings files.
> - Correct dts-bindings file names
>   Rename phy-cadence-hdptx-dp.yaml to cdns,mhdp-imx8mq-dp.yaml
>   Rename phy-cadence-hdptx-hdmi.yaml to cdns,mhdp-imx8mq-hdmi.yaml
> - Drop redundant words and descriptions.
> - Correct hdmi/dp node name.
> =

> v2 is a completely different version compared to v1.
> Previous v1 can be available here [1].
> =

> v1->v2:
> - Reuse Cadence mailbox access functions from mhdp8546 instead of
>   rockchip DP.
> - Mailbox access functions be convert to marco functions
>   that will be referenced by HDP-TX PHY(HDMI/DP) driver too.
> - Plain bridge instead of component driver.
> - Standalone Cadence HDP-TX PHY(HDMI/DP) driver.
> - Audio driver are removed from the patch set, it will be add in another
>   patch set later.
> =

> [1]
> https://patchwork.kernel.org/project/linux-rockchip/cover/cover.159098288=
1.
> git.Sandor.yu@nxp.com/
> =

> Sandor Yu (8):
>   drm: bridge: Cadence: convert mailbox functions to macro functions
>   dt-bindings: display: bridge: Add Cadence MHDP8501 HDMI and DP
>   drm: bridge: Cadence: Add MHDP8501 DP driver
>   phy: Add HDMI configuration options
>   drm: bridge: Cadence: Add MHDP8501 HDMI driver
>   dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
>   phy: freescale: Add DisplayPort PHY driver for i.MX8MQ
>   phy: freescale: Add HDMI PHY driver for i.MX8MQ
> =

>  .../display/bridge/cdns,mhdp8501.yaml         |  105 ++
>  .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  |   53 +
>  drivers/gpu/drm/bridge/cadence/Kconfig        |   25 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |    3 +
>  .../gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c | 1078 +++++++++++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   | 1024 ++++++++++++++++
>  .../gpu/drm/bridge/cadence/cdns-mhdp8501.h    |  399 ++++++
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   |  195 +--
>  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |    1 -
>  drivers/phy/freescale/Kconfig                 |   18 +
>  drivers/phy/freescale/Makefile                |    2 +
>  drivers/phy/freescale/phy-fsl-imx8mq-dp.c     |  697 +++++++++++
>  drivers/phy/freescale/phy-fsl-imx8mq-hdmi.c   |  889 ++++++++++++++
>  include/drm/bridge/cdns-mhdp-mailbox.h        |  240 ++++
>  include/linux/phy/phy-hdmi.h                  |   38 +
>  include/linux/phy/phy.h                       |    7 +-
>  16 files changed, 4578 insertions(+), 196 deletions(-)
>  create mode 100644
> Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml create
> mode 100644
> Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml create
> mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c create mode
> 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c create mode
> 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501.h create mode 100644
> drivers/phy/freescale/phy-fsl-imx8mq-dp.c
>  create mode 100644 drivers/phy/freescale/phy-fsl-imx8mq-hdmi.c
>  create mode 100644 include/drm/bridge/cdns-mhdp-mailbox.h
>  create mode 100644 include/linux/phy/phy-hdmi.h


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

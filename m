Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D0B6C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3rw8uImPVOft9f7SpDpSMHyFf/XZGKw7JPHMomPxDo=; b=ZNsETykAm3WbQh
	Ohe+THTgTXBsR56zYkw8Mwo5N2cB7b1DPLiDE1hiXhuPvdxJ0mcFYyPGgQY6ZPDnNZCwV1vxOuC3X
	3z3pR4hcxhgg4ZKn/2vvYXTemRQQPCRRtupdCo8wA1tcrICFOIbtFze6wgv6284sw3/SRuTzVkxbC
	CjEZGQbfNqOJ/TjsIBbfmGksY1u9svLItlOdG/GBVkaLarAw6mNVcogc87fma0gw9941lwmqmLT8+
	49cewjsW1FB08Wj6wCDj56xwPjkFF6seGlE064IKs31KXxbYtuQZskBwZMMCZm6ZyzayvC0MuNahr
	dTFw4lt6nM6+l3N9dQKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2IG-00BKmL-GV; Mon, 21 Nov 2022 08:36:44 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2Hw-00BKAk-JJ; Mon, 21 Nov 2022 08:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1669019784; x=1700555784;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Cojv73ncYBlTMqJr0ZxMpVAT6qQR4qxJuKojHO4kyGg=;
  b=g0QLbx4S1r3F3aVLa2GScHfikrvPVSJi+FhToINZ32eoq2Vu3p8Zn+US
   QHio+C8v0prP4CDMvo8/4lPNIKtu9jFe6H6zbUPlvmOVQzEr+NPI/czMt
   45+Nt/uyRkVmn5pW/0Gbk7xbC+ELJEa9Nu0cIOU2BSVqObqUsnMAm9q9u
   j/45ilfOSP7Yk71OxLC4n8vWaXuYrbtqXnVZ1tFooZXV4xqvGGZclV6Wu
   XGWDbQ+MG1PLJOGfQ0f3PVJPb37BKI4fPTFALRvrw5tkuFf0JUS3sAsrY
   zE8m81ecXWFoUJq+DzIw8CY9OfRTkT1hxsPl8KmZrKFFk7EVhB+pKMP/E
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,180,1665439200"; 
   d="scan'208";a="27473758"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 21 Nov 2022 09:36:19 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 21 Nov 2022 09:36:19 +0100
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Mon, 21 Nov 2022 09:36:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1669019779; x=1700555779;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=Cojv73ncYBlTMqJr0ZxMpVAT6qQR4qxJuKojHO4kyGg=;
  b=JAK/K/vsqDV3DaE+TvrLpDD4sYQ1RNgeYU/pWK1K0/MKvMtjHobrVnWv
   YhCuwwD4Rer2Rm9nLlRsN/dMVUFo3t+pbNJ8ic4JSfSnIcT4OQo0wWo7Y
   d9nPsp5fJa8jzrB/w7Y76IUeZ/3uyzQDdQbhaJ11QgWGSyEzwjASaAO3C
   15Jq0/oJsD/C8YgTk72V9chmfe/He8kZA2QY+netMkQQw6ENDXapWXZ2g
   tRs1r87jbQb51Is3+bfRC+Mok3pQzOmtRLaeDepQlGwFnAYHI5xn2P4v8
   x//277kZ6aotT6G9tlt9PcuYMuTgqPOICaATUV/jqgEDR/IL7vLDj1IVf
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,180,1665439200"; 
   d="scan'208";a="27473757"
Subject: Re: [PATCH v4 00/10] Initial support for Cadence MHDP(HDMI/DP) for i.MX8MQ
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Nov 2022 09:36:18 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 93D74280056;
	Mon, 21 Nov 2022 09:36:17 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, kishon@ti.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kernel@pengutronix.de, linux-imx@nxp.com, Sandor.yu@nxp.com, oliver.brown@nxp.com
Date: Mon, 21 Nov 2022 09:36:16 +0100
Message-ID: <4760535.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <cover.1669013346.git.Sandor.yu@nxp.com>
References: <cover.1669013346.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_003625_101222_C8D2610C 
X-CRM114-Status: GOOD (  23.62  )
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

Hello Sandor,

thanks for the updated series.

Am Montag, 21. November 2022, 08:23:50 CET schrieb Sandor Yu:
> The patch set initial support for Cadence MHDP(HDMI/DP) DRM bridge
> drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for iMX8MQ.
> 
> The patch set compose of DRM bridge drivers and PHY drivers.
> Both of them need the followed two patches to pass build.
>   drm: bridge: cadence: convert mailbox functions to macro functions
>   phy: Add HDMI configuration options
> 
> DRM bridges driver patches:
>   dts-bingings: display: bridge: Add MHDP HDMI bindings for i.MX8MQ
>   drm: bridge: cadence: Add MHDP DP driver for i.MX8MQ
>   dts-bindings: display: bridge: Add MHDP DP bindings for i.MX8MQ
>   drm: bridge: cadence: Add MHDP HDMI driver for i.MX8MQ
> 
> PHY driver patches:
>   dts-bindings: phy: Add Cadence HDP-TX DP PHY bindings
>   phy: cadence: Add driver for HDP-TX DisplyPort PHY
>   dts-bindings: phy: Add Cadence HDP-TX HDMI PHY bindings
>   phy: cadence: Add driver for HDP-TX HDMI PHY
> 
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

With the apb_clk enabled now, I can use both HDMI and PHY driver as modules 
now. Thanks!

Best regards,
Alexander

> v2->v3:
> Address comments for dt-bindings files.
> - Correct dts-bindings file names
>   Rename phy-cadence-hdptx-dp.yaml to cdns,mhdp-imx8mq-dp.yaml
>   Rename phy-cadence-hdptx-hdmi.yaml to cdns,mhdp-imx8mq-hdmi.yaml
> - Drop redundant words and descriptions.
> - Correct hdmi/dp node name.
> 
> v2 is a completely different version compared to v1.
> Previous v1 can be available here [1].
> 
> v1->v2:
> - Reuse Cadence mailbox access functions from mhdp8546 instead of
>   rockchip DP.
> - Mailbox access functions be convert to marco functions
>   that will be referenced by HDP-TX PHY(HDMI/DP) driver too.
> - Plain bridge instead of component driver.
> - Standalone Cadence HDP-TX PHY(HDMI/DP) driver.
> - Audio driver are removed from the patch set, it will be add in another
>   patch set later.
> 
> [1]
> https://patchwork.kernel.org/project/linux-rockchip/cover/cover.1590982881.
> git.Sandor.yu@nxp.com/
> 
> Sandor Yu (10):
>   drm: bridge: cadence: convert mailbox functions to macro functions
>   dt-bindings: display: bridge: Add MHDP DP for i.MX8MQ
>   drm: bridge: cadence: Add MHDP DP driver for i.MX8MQ
>   phy: Add HDMI configuration options
>   dt-bindings: display: bridge: Add MHDP HDMI for i.MX8MQ
>   drm: bridge: cadence: Add MHDP HDMI driver for i.MX8MQ
>   dt-bindings: phy: Add Cadence HDP-TX DP PHY
>   phy: cadence: Add driver for HDP-TX DisplyPort PHY
>   dt-bindings: phy: Add Cadence HDP-TX HDMI PHY
>   phy: cadence: Add driver for HDP-TX HDMI PHY
> 
>  .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   |   93 ++
>  .../display/bridge/cdns,mhdp-imx8mq-hdmi.yaml |   93 ++
>  .../bindings/phy/cdns,hdptx-dp-phy.yaml       |   68 ++
>  .../bindings/phy/cdns,hdptx-hdmi-phy.yaml     |   52 +
>  drivers/gpu/drm/bridge/cadence/Kconfig        |   25 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |    3 +
>  drivers/gpu/drm/bridge/cadence/cdns-dp-core.c | 1071 +++++++++++++++++
>  .../gpu/drm/bridge/cadence/cdns-hdmi-core.c   | 1018 ++++++++++++++++
>  .../gpu/drm/bridge/cadence/cdns-mhdp-common.h |  400 ++++++
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   |  197 +--
>  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |    1 -
>  drivers/phy/cadence/Kconfig                   |   16 +
>  drivers/phy/cadence/Makefile                  |    2 +
>  drivers/phy/cadence/phy-cadence-hdptx-dp.c    |  737 ++++++++++++
>  drivers/phy/cadence/phy-cadence-hdptx-hdmi.c  |  891 ++++++++++++++
>  include/drm/bridge/cdns-mhdp-mailbox.h        |  240 ++++
>  include/linux/phy/phy-hdmi.h                  |   38 +
>  include/linux/phy/phy.h                       |    7 +-
>  18 files changed, 4755 insertions(+), 197 deletions(-)
>  create mode 100644
> Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> create mode 100644
> Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> create mode 100644
> Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml create mode
> 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
> create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-hdmi-core.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-common.h
>  create mode 100644 drivers/phy/cadence/phy-cadence-hdptx-dp.c
>  create mode 100644 drivers/phy/cadence/phy-cadence-hdptx-hdmi.c
>  create mode 100644 include/drm/bridge/cdns-mhdp-mailbox.h
>  create mode 100644 include/linux/phy/phy-hdmi.h





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

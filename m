Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E0DEB64D7
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jun 2023 09:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zk3v576HMKpYBRHGFXNidi1YjnyRXx36S0taBkcuBMM=; b=MNMwWxbpWHbM2o
	mencH+Mczza4KgqlXrAvXsVrIzAXgRx/mZtJMjGOoV2FlPc+wkMjKdULjS4z/0F32m9HrKsL8t+wK
	BzsKyFPKThLJ3wayK2/WS/UUD+UUYROumcYWpPbJEg3t2b9R9dlHgxgNPZhKrz9Tar8/HQuO43wv+
	ir43RgM3Sl4iumrIufzwutf8G9iDBrPpY3MkG096uoGpMGRQJnw7Yytu8GwjQV69/oa5KXHuBFSBY
	BQD8sU/lwCKBLdvpzwMbqx0jCwdV1i5NfsMT1cknyeuZcBuHArvSIWidVOTGpjNAEk0yJQt3aePxc
	jRglWHxXFAl/5laItmMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5mX-00HSdn-0u;
	Fri, 16 Jun 2023 09:30:13 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA5mS-00HScK-2N;
	Fri, 16 Jun 2023 09:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686907808; x=1718443808;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=32N1yGo7ctZs2eC7CuXCSbbaVed5l58bkGfloxPTIp4=;
  b=HrGOTszlZc+JRyGHHb5wIq7t9B9afV1smpqi8CTr8D3to68UgVEH85sn
   nLgzwJPBSSPnz0BRWNxU6NrqBwHMt2BoLrh87gJUhu7f0rSxCQA1FH7e/
   vdP0Ik5WHNcrva6xjBKFD0FZ2asTGODhG8dWADa6En1o5F8d+1+Nj5/ME
   9ZyvLqbHOHxXviJ9K9dpwFck3YJk1XpdlXv9yvqh0c7cg/aCFryZ2hlZ8
   WBTFM25YJLnasMFmbOiSmVChy/zaVI7OSPdhf3Glxn3AG5OZpQVulacT0
   66Lt7vyeZ8wb9zmIBb61WhJRGG9aSmZVnnPBIVxy/gN4GGFnHIt2yvKGD
   A==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31462582"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 11:29:55 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 63301280082;
	Fri, 16 Jun 2023 11:29:55 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: oliver.brown@nxp.com, Sandor.yu@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de, Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v6 5/8] drm: bridge: Cadence: Add MHDP8501 HDMI driver
Date: Fri, 16 Jun 2023 11:29:57 +0200
Message-ID: <11795277.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <ee0982418cc2e996b1f7889375b1a5138fb38a11.1686729444.git.Sandor.yu@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com> <ee0982418cc2e996b1f7889375b1a5138fb38a11.1686729444.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_023009_076671_1925A0AD 
X-CRM114-Status: GOOD (  21.03  )
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

thanks for sending a new version.

Am Donnerstag, 15. Juni 2023, 03:38:15 CEST schrieb Sandor Yu:
> Add a new DRM HDMI bridge driver for Cadence MHDP8501
> that used in Freescale i.MX8MQ SoC.
> MHDP8501 could support HDMI or DisplayPort standards according
> embedded Firmware running in the uCPU.
> =

> For iMX8MQ SoC, the HDMI FW was loaded and activated by SOC ROM code.
> Bootload binary included HDMI FW was required for the driver.
> =

> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  drivers/gpu/drm/bridge/cadence/Kconfig        |   12 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |    1 +
>  .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   | 1024 +++++++++++++++++
>  3 files changed, 1037 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> =

> diff --git a/drivers/gpu/drm/bridge/cadence/Kconfig
> b/drivers/gpu/drm/bridge/cadence/Kconfig index 5b7ec4e49aa1..bee05e834055
> 100644
> --- a/drivers/gpu/drm/bridge/cadence/Kconfig
> +++ b/drivers/gpu/drm/bridge/cadence/Kconfig
> @@ -59,3 +59,15 @@ config DRM_CDNS_MHDP8501_DP
>  	  Support Cadence MHDP8501 DisplayPort driver.
>  	  Cadence MHDP8501 Controller support one or more protocols,
>  	  DisplayPort firmware is required for this driver.
> +
> +config DRM_CDNS_MHDP8501_HDMI
> +	tristate "Cadence MHDP8501 HDMI DRM driver"
> +	select DRM_KMS_HELPER
> +	select DRM_PANEL_BRIDGE
> +	select DRM_DISPLAY_HELPER
> +	select DRM_CDNS_AUDIO
> +	depends on OF
> +	help
> +	  Support Cadence MHDP8501 HDMI driver.
> +	  Cadence MHDP8501 Controller support one or more protocols,
> +	  HDMI firmware is required for this driver.
> diff --git a/drivers/gpu/drm/bridge/cadence/Makefile
> b/drivers/gpu/drm/bridge/cadence/Makefile index 5842e4540c62..8a129c14ac14
> 100644
> --- a/drivers/gpu/drm/bridge/cadence/Makefile
> +++ b/drivers/gpu/drm/bridge/cadence/Makefile
> @@ -7,3 +7,4 @@ cdns-mhdp8546-y :=3D cdns-mhdp8546-core.o cdns-mhdp8546-h=
dcp.o
> cdns-mhdp8546-$(CONFIG_DRM_CDNS_MHDP8546_J721E) +=3D cdns-mhdp8546-j721e.o
> =

>  obj-$(CONFIG_DRM_CDNS_MHDP8501_DP) +=3D cdns-mhdp8501-dp.o
> +obj-$(CONFIG_DRM_CDNS_MHDP8501_HDMI) +=3D cdns-mhdp8501-hdmi.o
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c new file mode 100644
> index 000000000000..43673f1b50f6
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
[...]
> +static int cdns_hdmi_bridge_attach(struct drm_bridge *bridge,
> +				 enum drm_bridge_attach_flags flags)
> +{
> +	struct cdns_mhdp_device *mhdp =3D bridge->driver_private;
> +	struct drm_mode_config *config =3D &bridge->dev->mode_config;
> +	struct drm_encoder *encoder =3D bridge->encoder;
> +	struct drm_connector *connector =3D &mhdp->connector;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
> +		connector->interlace_allowed =3D 0;
> +		connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> +
> +		drm_connector_helper_add(connector, =

&cdns_hdmi_connector_helper_funcs);
> +
> +		drm_connector_init(bridge->dev, connector, =

&cdns_hdmi_connector_funcs,
> +				   DRM_MODE_CONNECTOR_HDMIA);
> +
> +		drm_object_attach_property(&connector->base,
> +					   config-
>hdr_output_metadata_property, 0);
> +
> +		if (!drm_mode_create_hdmi_colorspace_property(connector))

This is missing a 2nd parameter.

> +			drm_object_attach_property(&connector->base,
> +						connector-
>colorspace_property, 0);
> +
> +		drm_connector_attach_encoder(connector, encoder);
> +	}
> +
> +	return 0;
> +}
[...]

Best regards,
Alexander
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

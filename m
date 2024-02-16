Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CD4C48BEC
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 07:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hmY1dIfiECYeM7Zju0fhxLIVEKISY6H7WKm8c6/Lrs=; b=K8a2W2GSHXQGrU
	B8oNGRw8znrVJHFzK9pjmG09+V8qXPyNVM8eDTwEoAfVYBZAerFPcIb2EQbyi3rP7QFZgopoJxW24
	N+f5yzZu3Bfwex44QjgHRx7r3bsVs+GCcxvYjniileTbzRnE3kEm+H3hSNFf4HGmymF8etXulj9uS
	6cP4E9TgWfQxgZKghSxg71ZLYDRSJK75qUmmE3zFC6NUPEOTOKxB38A7LbqqqQJjky6uCAlkNoY29
	m6utPf49fEfAN12Y1BK+RyOAs+fdPa7N1RAQkNHNJuKKratNb2v9n0HcbSbhBFtOTg72mDUnjFc7s
	Kbv5x9sQ8kDq4HG4YyFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rasK7-00000001KKq-1EfT;
	Fri, 16 Feb 2024 07:07:51 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rasJs-00000001K9n-1Zfd;
	Fri, 16 Feb 2024 07:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708067256; x=1739603256;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WBfhOO5MG89bHmVdv1ErRWoZYXedtmnnpZfysTdIvno=;
  b=VvHJmeGsXYYFy3HMrq/2lvTwpEMWI1CJLyQMDgYnzufCCpkjAGJQVwTX
   EKgLIgyJNtkEzl47stNQQnqWnl740gyL2AyilfS4UzBt4/bpY5NrqNChS
   s8HGofUQZ6vu4H83gm2xZE9es+X+GkI4ODlzmWdKdTzRCSN5c6u7Kyk/I
   blCxKco2bB4NZSs+joZlt5HFzJ4mTS4KVwoVVOVdeO13sQKmYmW5rBc/H
   7HfoRzZhSZQ+3AoP1PL9pP+o0xJjkepsVjlM5g+ho4+q+kNEvMixWOsB7
   ECpE4hjEnjZOyG7RUacFEdVaSZSgew5Jl8Zwn9SMK2Nwoebymu/wY9YbR
   Q==;
X-IronPort-AV: E=Sophos;i="6.06,163,1705359600"; 
   d="scan'208";a="35436739"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Feb 2024 08:07:29 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 56DA7280075;
	Fri, 16 Feb 2024 08:07:29 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, Sandor.yu@nxp.com, oliver.brown@nxp.com, sam@ravnborg.org
Subject: Re: [PATCH v13 4/7] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Date: Fri, 16 Feb 2024 08:07:31 +0100
Message-ID: <3549548.iIbC2pHGDl@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <5bd01470cf971e2385ecd169c3d5ac659a020973.1707040881.git.Sandor.yu@nxp.com>
References: <cover.1707040881.git.Sandor.yu@nxp.com> <5bd01470cf971e2385ecd169c3d5ac659a020973.1707040881.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_230736_824657_FEA5A1BE 
X-CRM114-Status: GOOD (  20.54  )
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

thanks for the update.

Am Sonntag, 4. Februar 2024, 11:21:49 CET schrieb Sandor Yu:
> Add a new DRM DisplayPort and HDMI bridge driver for Candence MHDP8501
> used in i.MX8MQ SOC. MHDP8501 could support HDMI or DisplayPort
> standards according embedded Firmware running in the uCPU.
> =

> For iMX8MQ SOC, the DisplayPort/HDMI FW was loaded and activated by
> SOC's ROM code. Bootload binary included respective specific firmware
> is required.
> =

> Driver will check display connector type and
> then load the corresponding driver.
> =

> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> v12->v13:
> - Explicitly include linux/platform_device.h for cdns-mhdp8501-core.c
> - Fix build warning
> - Order bit bpc and color_space in descending shit.
> =

> v11->v12:
> - Replace DRM_INFO with dev_info or dev_warn.
> - Replace DRM_ERROR with dev_err.
> - Return ret when cdns_mhdp_dpcd_read failed in function
> cdns_dp_aux_transferi(). - Remove unused parmeter in function
> cdns_dp_get_msa_misc
>   and use two separate variables for color space and bpc.
> - Add year 2024 to copyright.
> =

>  drivers/gpu/drm/bridge/cadence/Kconfig        |  16 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |   2 +
>  .../drm/bridge/cadence/cdns-mhdp8501-core.c   | 316 ++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-core.h   | 365 +++++++++
>  .../gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c | 699 ++++++++++++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   | 679 +++++++++++++++++
>  6 files changed, 2077 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> =

> [snip]
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
> b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c new file mode 100644
> index 0000000000000..0117cddb85694
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
> @@ -0,0 +1,699 @@
> [snip]
> +
> +const struct drm_bridge_funcs cdns_dp_bridge_funcs =3D {
> +	.attach =3D cdns_dp_bridge_attach,
> +	.detect =3D cdns_dp_bridge_detect,
> +	.get_edid =3D cdns_dp_bridge_get_edid,

Please note that with commits d807ad80d811b ("drm/bridge: add ->edid_read h=
ook =

and drm_bridge_edid_read()") and 27b8f91c08d99 ("drm/bridge: remove ->get_e=
did =

callback") the API has slightly changed meanwhile.

> +	.mode_valid =3D cdns_dp_bridge_mode_valid,
> +	.atomic_enable =3D cdns_dp_bridge_atomic_enable,
> +	.atomic_disable =3D cdns_dp_bridge_atomic_disable,
> +	.atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state =3D drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset =3D drm_atomic_helper_bridge_reset,
> +};
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c new file mode 100644
> index 0000000000000..e6ed13b9f9ca3
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> @@ -0,0 +1,679 @@
> [snip]
> +
> +const struct drm_bridge_funcs cdns_hdmi_bridge_funcs =3D {
> +	.attach =3D cdns_hdmi_bridge_attach,
> +	.detect =3D cdns_hdmi_bridge_detect,
> +	.get_edid =3D cdns_hdmi_bridge_get_edid,

Please note that with commits d807ad80d811b ("drm/bridge: add ->edid_read h=
ook =

and drm_bridge_edid_read()") and 27b8f91c08d99 ("drm/bridge: remove ->get_e=
did =

callback") the API has slightly changed meanwhile.

> +	.mode_valid =3D cdns_hdmi_bridge_mode_valid,
> +	.mode_fixup =3D cdns_hdmi_bridge_mode_fixup,
> +	.atomic_enable =3D cdns_hdmi_bridge_atomic_enable,
> +	.atomic_disable =3D cdns_hdmi_bridge_atomic_disable,
> +	.atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state =3D drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset =3D drm_atomic_helper_bridge_reset,
> +};

Please rebase your patch series, thanks.

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

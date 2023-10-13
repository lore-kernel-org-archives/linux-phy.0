Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 294AACDB483
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 07:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5iyUW4NVPyMGTKIkXB2W4kozjKy0Xy4ebvWs4RVcg4=; b=QDVKj5Aee6+mWz
	8FKGPdDIWPEXf6HtgGJQ3pKBxk0l5KqjehV5UkAn0SjqveRI/CaZGWK4C0RpZKdNPm1PC/K+0Boa6
	xZz3+IFcWhSy4IsUcHKPSeWE6gMYSFws0q+PxL6lAdkpLox+REWVxUO8Kt/ufdbLAF1mtdaEgv762
	Y53O4hB6hVOj5XGjwPuDUUk1mRb4RcOzfikeBZhE/jqdwXwZHW+SZ3/19vkKQqARBuu0m+MXj8VDJ
	8X/ydGrE9hVXS53p+ICcMuha8NiNr/jC2T/DPiSkaxjcnMuzxEad/PSqEIISTOC9qzxvcWpFxlpzQ
	c1pqVoAjhpYWe1Wl2f6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrCas-002iFC-2V;
	Fri, 13 Oct 2023 07:28:22 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrCao-002iD6-0V;
	Fri, 13 Oct 2023 07:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697182098; x=1728718098;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=+TKsRjxrX6tB1ZMIkNFNS1tku+Zy3RG3lIVtHGUk82U=;
  b=LBwSwBwOCuQ+cKWnbPaBkDs4xhoosskgArfKF4XilwiJLHB1m1dB+3wb
   FiO7G/dc8jfNQp1awOK7VaCAyCvMIkp6EdIWOD4ieMNWNa9QrsZtO9jnH
   PEpoI3j6xuO+mc8+dip9m8gKr6nNcpZjyK8sEqMZZfqhrBkjLe9jvH4Tm
   MzI+X3f07yHSPd8RmV7TE2ZzyD5qyAyZxO6uM27hFVsunJnM3chsySq+C
   XHqQOXIH6sI8azMO0fvPhj40s0saPyPTW1exZHCrOxc/nndFGRAvbmR+C
   8CtU+tFRqUNEWL+dNOLMQvTTfZsI+8nO0U+6AlC9RTkR5qkHN4+LLzwSO
   A==;
X-IronPort-AV: E=Sophos;i="6.03,221,1694728800"; 
   d="scan'208";a="33446454"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Oct 2023 09:28:10 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 2A520280082;
	Fri, 13 Oct 2023 09:28:10 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Sandor Yu <Sandor.yu@nxp.com>, Sandor.yu@nxp.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, sam@ravnborg.org
Subject: Re: [PATCH v10 4/7] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Date: Fri, 13 Oct 2023 09:28:10 +0200
Message-ID: <5605026.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <037c61d582df78a3309a5672ac66b9e74b396ddd.1697162990.git.Sandor.yu@nxp.com>
References: <cover.1697162990.git.Sandor.yu@nxp.com> <037c61d582df78a3309a5672ac66b9e74b396ddd.1697162990.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_002818_519134_D1C527E4 
X-CRM114-Status: GOOD (  25.46  )
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

thanks for the updated series.

Am Freitag, 13. Oktober 2023, 05:24:23 CEST schrieb Sandor Yu:
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
> v9->v10:
>  - struct cdns_mhdp_device is renamed to cdns_mhdp8501_device.
>  - update for mhdp helper driver is introduced.
> Remove head file cdns-mhdp-mailbox.h and add cdns-mhdp-helper.h
> Add struct cdns_mhdp_base base to struct cdns_mhdp8501_device.
> Init struct cdns_mhdp_base base when driver probe.
> =

>  drivers/gpu/drm/bridge/cadence/Kconfig        |  16 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |   2 +
>  .../drm/bridge/cadence/cdns-mhdp8501-core.c   | 316 ++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-core.h   | 365 +++++++++
>  .../gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c | 708 ++++++++++++++++++
>  .../drm/bridge/cadence/cdns-mhdp8501-hdmi.c   | 673 +++++++++++++++++
>  6 files changed, 2080 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.h
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> =

> [...]
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c new file mode 100644
> index 0000000000000..73d1c35a74599
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-hdmi.c
> @@ -0,0 +1,673 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Cadence MHDP8501 HDMI bridge driver
> + *
> + * Copyright (C) 2019-2023 NXP Semiconductor, Inc.
> + *
> + */
> +#include <drm/display/drm_hdmi_helper.h>
> +#include <drm/display/drm_scdc_helper.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
> +#include <linux/phy/phy.h>
> +#include <linux/phy/phy-hdmi.h>
> +
> +#include "cdns-mhdp8501-core.h"
> +
> +/**
> + * cdns_hdmi_infoframe_set() - fill the HDMI AVI infoframe
> + * @mhdp: phandle to mhdp device.
> + * @entry_id: The packet memory address in which the data is written.
> + * @packet_len: 32, only 32 bytes now.
> + * @packet: point to InfoFrame Packet.
> + *          packet[0] =3D 0
> + *          packet[1-3] =3D HB[0-2]  InfoFrame Packet Header
> + *          packet[4-31 =3D PB[0-27] InfoFrame Packet Contents
> + * @packet_type: Packet Type of InfoFrame in HDMI Specification.
> + *
> + */
> +static void cdns_hdmi_infoframe_set(struct cdns_mhdp8501_device *mhdp,
> +				    u8 entry_id, u8 packet_len,
> +				    u8 *packet, u8 packet_type)
> +{
> +	u32 packet32, len32;
> +	u32 val, i;
> +
> +	/* only support 32 bytes now */
> +	if (packet_len !=3D 32)
> +		return;
> +
> +	/* invalidate entry */
> +	val =3D F_ACTIVE_IDLE_TYPE(1) | F_PKT_ALLOC_ADDRESS(entry_id);
> +	writel(val, mhdp->regs + SOURCE_PIF_PKT_ALLOC_REG);
> +	writel(F_PKT_ALLOC_WR_EN(1), mhdp->regs + =

SOURCE_PIF_PKT_ALLOC_WR_EN);
> +
> +	/* flush fifo 1 */
> +	writel(F_FIFO1_FLUSH(1), mhdp->regs + SOURCE_PIF_FIFO1_FLUSH);
> +
> +	/* write packet into memory */
> +	len32 =3D packet_len / 4;
> +	for (i =3D 0; i < len32; i++) {
> +		packet32 =3D get_unaligned_le32(packet + 4 * i);
> +		writel(F_DATA_WR(packet32), mhdp->regs + =

SOURCE_PIF_DATA_WR);
> +	}
> +
> +	/* write entry id */
> +	writel(F_WR_ADDR(entry_id), mhdp->regs + SOURCE_PIF_WR_ADDR);
> +
> +	/* write request */
> +	writel(F_HOST_WR(1), mhdp->regs + SOURCE_PIF_WR_REQ);
> +
> +	/* update entry */
> +	val =3D F_ACTIVE_IDLE_TYPE(1) | F_TYPE_VALID(1) |
> +		F_PACKET_TYPE(packet_type) | =

F_PKT_ALLOC_ADDRESS(entry_id);
> +	writel(val, mhdp->regs + SOURCE_PIF_PKT_ALLOC_REG);
> +
> +	writel(F_PKT_ALLOC_WR_EN(1), mhdp->regs + =

SOURCE_PIF_PKT_ALLOC_WR_EN);
> +}
> +
> +static int cdns_hdmi_get_edid_block(void *data, u8 *edid,
> +				    u32 block, size_t length)
> +{
> +	struct cdns_mhdp8501_device *mhdp =3D data;
> +	u8 msg[2], reg[5], i;
> +	int ret;
> +
> +	mutex_lock(&mhdp->mbox_mutex);
> +
> +	for (i =3D 0; i < 4; i++) {
> +		msg[0] =3D block / 2;
> +		msg[1] =3D block % 2;
> +
> +		ret =3D cdns_mhdp_mailbox_send(&mhdp->base, =

MB_MODULE_ID_HDMI_TX,
> HDMI_TX_EDID, +					     sizeof(msg), =

msg);
> +		if (ret)
> +			continue;
> +
> +		ret =3D cdns_mhdp_mailbox_recv_header(&mhdp->base, =

MB_MODULE_ID_HDMI_TX,
> +						    HDMI_TX_EDID, =

sizeof(reg) + length);
> +		if (ret)
> +			continue;
> +
> +		ret =3D cdns_mhdp_mailbox_recv_data(&mhdp->base, reg, =

sizeof(reg));
> +		if (ret)
> +			continue;
> +
> +		ret =3D cdns_mhdp_mailbox_recv_data(&mhdp->base, edid, =

length);
> +		if (ret)
> +			continue;
> +
> +		if ((reg[3] << 8 | reg[4]) =3D=3D length)
> +			break;
> +	}
> +
> +	mutex_unlock(&mhdp->mbox_mutex);
> +
> +	if (ret)
> +		DRM_ERROR("get block[%d] edid failed: %d\n", block, ret);
> +	return ret;
> +}
> +
> +static int cdns_hdmi_scdc_write(struct cdns_mhdp8501_device *mhdp, u8 ad=
dr,
> u8 value) +{
> +	u8 msg[5], reg[5];
> +	int ret;
> +
> +	msg[0] =3D 0x54;
> +	msg[1] =3D addr;
> +	msg[2] =3D 0;
> +	msg[3] =3D 1;
> +	msg[4] =3D value;
> +
> +	mutex_lock(&mhdp->mbox_mutex);

I don't like that locking. Sometimes the mutex is locked by HDMI driver, =

sometimes within the helper.
What is this mutex actually protecting? Concurrent access to the mailbox or=
 a =

programming sequence which must not be interrupted aka critical section? Wh=
en =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 104C4C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 10:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FPgEFMwZzKi4v+ndXQLIYFwKYJORN5R1oHZhj8iJqg=; b=uZgkE2yUPApNuf
	em3PgoKK3+Xbk0NONegytA2oPoDyzQ9tvCauciuvacPk1xDYDwpZ8DaOwRVTUfBRv+dvWVa90cc8q
	PwomaDg1orwdFJQP8+2pjA5gySBkxoMYtpFzBcSAKFJk0fKM+Vz6Zu2fG4zTRZpSYB8U5qxz/mO2b
	tD+SWbCoDApClIUWayVOzPSwX6+CtpfO7HCX8W2/lxhNfQkl3kfQ9NJQIyR+KIhcN/1DgFW5Iw51c
	p7akM6Jw+VlJV+irWQnUFvcHC7tVYxVeTKrEqIFk9ha9J9pgCS1wwR8r5PqGWLYBZdKo6TZXqovug
	8d5omsBwlswAG/0J5iWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncPiO-00BMVC-3m; Thu, 07 Apr 2022 10:50:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncPVh-00BHKv-Ig
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 10:37:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ncPVR-0006uR-6o; Thu, 07 Apr 2022 12:36:49 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ncPVQ-001apD-H0; Thu, 07 Apr 2022 12:36:47 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ncPVO-0005T6-6E; Thu, 07 Apr 2022 12:36:46 +0200
Message-ID: <4b2f47a4870fbec9da5d7a6ad1b8a9bb9ff68e83.camel@pengutronix.de>
Subject: Re: [PATCH v0 05/10] drm/imx: add driver for HDMI TX Parallel Video
 Interface
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, NXP Linux Team
 <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Robert Foss <robert.foss@linaro.org>, Neil
 Armstrong <narmstrong@baylibre.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>,  dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org,  patchwork-lst@pengutronix.de
Date: Thu, 07 Apr 2022 12:36:46 +0200
In-Reply-To: <20220406160123.1272911-6-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-6-l.stach@pengutronix.de>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_033705_641181_F46969CC 
X-CRM114-Status: GOOD (  12.14  )
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

On Mi, 2022-04-06 at 18:01 +0200, Lucas Stach wrote:
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
[...]
> +static void imx_hdmi_pvi_bridge_enable(struct drm_bridge *bridge,
> +				       struct drm_bridge_state *bridge_state)
> +{
> +	struct drm_atomic_state *state = bridge_state->base.state;
> +	struct imx_hdmi_pvi *pvi = to_imx_hdmi_pvi(bridge);
> +	struct drm_connector_state *conn_state;
> +	const struct drm_display_mode *mode;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector *connector;
> +	u32 bus_flags, val;
> +
> +	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
> +	if (WARN_ON(!connector))
> +		return;
> +
> +	conn_state = drm_atomic_get_new_connector_state(state, connector);
> +	if (WARN_ON(!conn_state))
> +		return;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (WARN_ON(!crtc_state))
> +		return;

Can those happen at all, and if so, should they be caught at
atomic_check time?

> +
> +	if (WARN_ON(pm_runtime_resume_and_get(pvi->dev)))
> +		return;

Should be pm_runtime_get_sync(), since the error is ignored.

Otherwise the pm_runtime_put() in imx_hdmi_pvi_bridge_disable() will
double-decrement the usage counter in case this failed.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

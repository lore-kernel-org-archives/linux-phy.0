Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A140CEB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 16:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OY/N9kAbu3PZZ6JMBH5pUZT3MlP+8PMtFgphEuI2A8c=; b=YUsFSo7ZYslGc8
	qOG79qG6jp74TZYxogA19wmkzTl+s8bmI09SioBSNf+1cDiK0DX7udyIbRJrdMyFm6YLJELoq8amt
	Qg+iBQ9J9fHJnwB5lZuZBkPFR2FhmAfxbc9etWjnByJP8gsz103KSP7suoLyaYco4+DDCV7dR/rD2
	GPZhuVl2qo6sF/ZP8VC4bUqSN6EHbV0/t4mRf06g/3RxzZYPDHZjh9lCjUKbDsHnmuJGWRiFP2RLg
	qb1hIfr7ZzE1qUHoY2o0yfMn5NxOgMk86ArlNC2j9ZAZFmFP2Lf3qdchhuhcdTgygj/njvoPHNQQ2
	4bFAWhN4IERZKzUj7ArQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9puU-00FRhk-14;
	Thu, 15 Jun 2023 16:33:22 +0000
Received: from mailrelay3-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:402::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9puQ-00FRfB-2F
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 16:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=kRWfxKU6iLOyQwwGx2ME57rRsTmS+Y/mv8gYh4DhOyg=;
	b=okJlCJ3JHQ3+H0XLiMBf0glJchvuuMsEcUCgzmvJnyKMoDMx5KHnSTtuAyw0+6C02Fj+PIczYsQAb
	 1sJXFppRbmiGQviCKIb6gD9tGzLEdywy9YByMgoeRCa84fyqZkmGszeCCOuLk+544Y+QNzLZKDM87E
	 R+MDZJ4STSxW54XyqvVk2jeDkTM+7hDVzHkzZIH7HZecVf7PLr7GF7PWoIRiAkQPtxs1vJ7iZjPeUI
	 8aMMfkVKa1VnG0CWOwYTNA76VeemsnDscjlKWyMSZ0Wyx32wByG6pAy08mMt1KyZN9XMciIJhmstwO
	 20X+A/bkr4Y7SdFgKgk+vxuxgnP+UnQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=kRWfxKU6iLOyQwwGx2ME57rRsTmS+Y/mv8gYh4DhOyg=;
	b=XINu3AbpGKXRusYWTJ6IxnhI3JYWGjV1+42EsWbHmdUP4+C57+XyPjz9QZOcgglPnTa8mYWRY3EwX
	 WRTXCTvAw==
X-HalOne-ID: 4f77e8bb-0b9a-11ee-8d88-b90637070a9d
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay3 (Halon) with ESMTPSA
	id 4f77e8bb-0b9a-11ee-8d88-b90637070a9d;
	Thu, 15 Jun 2023 16:33:10 +0000 (UTC)
Date: Thu, 15 Jun 2023 18:33:08 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org,
	robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
	daniel@ffwll.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, oliver.brown@nxp.com,
	linux-imx@nxp.com, kernel@pengutronix.de
Subject: Re: [PATCH v6 3/8] drm: bridge: Cadence: Add MHDP8501 DP driver
Message-ID: <20230615163308.GA1588386@ravnborg.org>
References: <cover.1686729444.git.Sandor.yu@nxp.com>
 <67f54be91e91f6291c4ad3f5155598d699b8bc09.1686729444.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67f54be91e91f6291c4ad3f5155598d699b8bc09.1686729444.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_093319_662892_523FC62B 
X-CRM114-Status: GOOD (  15.23  )
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

Hi Sandor,

On Thu, Jun 15, 2023 at 09:38:13AM +0800, Sandor Yu wrote:
> Add a new DRM DisplayPort bridge driver for Candence MHDP8501
> used in i.MX8MQ SOC. MHDP8501 could support HDMI or DisplayPort
> standards according embedded Firmware running in the uCPU.
> 
> For iMX8MQ SOC, the DisplayPort FW was loaded and activated by SOC
> ROM code. Bootload binary included HDMI FW was required for the driver.

The bridge driver supports creating a connector, but is this really
necessary?

This part:
> +static const struct drm_connector_funcs cdns_dp_connector_funcs = {
> +	.fill_modes = drm_helper_probe_single_connector_modes,
> +	.destroy = drm_connector_cleanup,
> +	.reset = drm_atomic_helper_connector_reset,
> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +};
> +
> +static const struct drm_connector_helper_funcs cdns_dp_connector_helper_funcs = {
> +	.get_modes = cdns_dp_connector_get_modes,
> +};
> +
> +static int cdns_dp_bridge_attach(struct drm_bridge *bridge,
> +				 enum drm_bridge_attach_flags flags)
> +{
> +	struct cdns_mhdp_device *mhdp = bridge->driver_private;
> +	struct drm_encoder *encoder = bridge->encoder;
> +	struct drm_connector *connector = &mhdp->connector;
> +	int ret;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
> +		connector->interlace_allowed = 0;
> +
> +		connector->polled = DRM_CONNECTOR_POLL_HPD;
> +
> +		drm_connector_helper_add(connector, &cdns_dp_connector_helper_funcs);
> +
> +		drm_connector_init(bridge->dev, connector, &cdns_dp_connector_funcs,
> +				   DRM_MODE_CONNECTOR_DisplayPort);
> +
> +		drm_connector_attach_encoder(connector, encoder);
> +	}

Unless you have a display driver that do not create their own connector
then drop the above and error out if DRM_BRIDGE_ATTACH_NO_CONNECTOR is
not set.
It is encouraged that display drivers create their own connector.

This was the only detail I looked for in the driver, I hope some else
volunteer to review it.

	Sam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

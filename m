Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B6BECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 12:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ES5Tn1/4OeXeSPLAc5HnI9iAAL152TfKl+Nlx5CgFSo=; b=itjFRo4PDA6Eoh
	35qHSwyWRQBXpFAsYW9GLFMrS9VHE3asRYPVxP5BcLN6Ja9himBRsfGXh2dwLmzshHfaXW/oYmKIz
	f42cNfU3gOY7mWxvkPndn3Dmqjeo/ORRZ+Pqvu1iu/9OzWgr/hO7CvEINY/T9AY4NsQDTrTz/wE+s
	6oKjvatF4yBk0Pfhxp6yOhKA3AoiZcDwNgeWuu3LziEzw3prblI3dynCwrXO5U3P7+0B15Cbp1EFd
	Bcevh4xLifZSWf3I+TBFncDV68l2sj9bjChoxvxBN8fY/yN8X7V3r3EuhlBItbyYDXj09OP5xOxM+
	gN1SugW19hEeYI3dPRAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obi77-004ImM-HJ; Fri, 23 Sep 2022 12:49:05 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obi74-004Ijp-Or
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 12:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663937342; x=1695473342;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pvzCMoIi3TgxvSEcGftMGOHmGc70uludjLAuawOIvMQ=;
  b=DOCd7GzCChfpwVrO2u3qgkbmNU0RkDY5XS84QocjBaeS4Sw+x3QC+nSq
   jfgeddRgVAeHpQLJ7W2iVZ8w1PhLVF5yjVkRNZwljU4E5T9qZBj0FRzdn
   dHvw2R/2pSiYj2o5cH6SHu5ycsRFWZBLeavBgJCM6QrNga521ihTqEyb+
   PTwq/PWXX5gpERXOYBwmNDKUvfXRkdO+NnoaxIAERA05N3SwGiMydqv2k
   7wdR+pXRJNtLd565EGiWGsktcFBntFaBjtgDIKrLER68sXt1VewKJuOtL
   cnONFXwJbuqZUKlYsix6ZoW4bp4v+WflbcuTQcAJopPfeuH8sCPiMS1Jy
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="302030809"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; 
   d="scan'208";a="302030809"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2022 05:49:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; 
   d="scan'208";a="724115965"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2022 05:48:56 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 856FB20124;
	Fri, 23 Sep 2022 15:48:54 +0300 (EEST)
Date: Fri, 23 Sep 2022 12:48:54 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	laurent.pinchart@ideasonboard.com, jacopo@jmondi.org,
	hverkuil@xs4all.nl, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <Yy2rNit+rRGkcFdL@paasikivi.fi.intel.com>
References: <20220922134843.3108267-1-m.felsch@pengutronix.de>
 <20220922134843.3108267-5-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922134843.3108267-5-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_054902_909510_7E20D691 
X-CRM114-Status: GOOD (  13.31  )
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

Hi Marco,

Thanks for the update. A few small things below.

On Thu, Sep 22, 2022 at 03:48:43PM +0200, Marco Felsch wrote:
...
> +static int tc358746_apply_misc_config(struct tc358746 *tc358746)
> +{
> +	const struct v4l2_mbus_framefmt *mbusfmt;
> +	struct v4l2_subdev *sd = &tc358746->sd;
> +	struct v4l2_subdev_state *sink_state;
> +	const struct tc358746_format *fmt;
> +	struct device *dev = sd->dev;
> +	u32 val;
> +	int err;
> +
> +	sink_state = v4l2_subdev_lock_and_get_active_state(sd);
> +	mbusfmt = v4l2_subdev_get_pad_format(sd, sink_state, TC358746_SINK);
> +	v4l2_subdev_unlock_state(sink_state);
> +
> +	fmt = tc358746_get_format_by_code(TC358746_SINK, mbusfmt->code);

You can no longer access mbusfmt here as you've already unlocked subdev
state.

> +
> +	/* Self defined CSI user data type id's are not supported yet */
> +	val = PDFMT(fmt->pdformat);
> +	dev_dbg(dev, "DATAFMT: 0x%x\n", val);
> +	err = tc358746_write(tc358746, DATAFMT_REG, val);
> +	if (err)
> +		return err;
> +
> +	val = PDATAF(fmt->pdataf);
> +	dev_dbg(dev, "CONFCTL[PDATAF]: 0x%x\n", fmt->pdataf);
> +	err = tc358746_update_bits(tc358746, CONFCTL_REG, PDATAF_MASK, val);
> +	if (err)
> +		return err;
> +
> +	val = tc358746->vb_size / 32;
> +	dev_dbg(dev, "FIFOCTL: %u (0x%x)\n", val, val);
> +	err = tc358746_write(tc358746, FIFOCTL_REG, val);
> +	if (err)
> +		return err;
> +
> +	/* Total number of bytes for each line/width */
> +	val = mbusfmt->width * fmt->bpp / 8;
> +	dev_dbg(dev, "WORDCNT: %u (0x%x)\n", val, val);
> +	return tc358746_write(tc358746, WORDCNT_REG, val);
> +}

...

> +static int tc358746_s_stream(struct v4l2_subdev *sd, int enable)
> +{
> +	struct tc358746 *tc358746 = to_tc358746(sd);
> +	struct v4l2_subdev *src;
> +	int err;
> +
> +	dev_dbg(sd->dev, "%sable\n", enable ? "en" : "dis");
> +
> +	src = tc358746_get_remote_sd(&tc358746->pads[TC358746_SINK]);
> +	if (!src)
> +		return -EPIPE;
> +
> +	if (enable) {
> +		err = pm_runtime_resume_and_get(sd->dev);
> +		if (err)
> +			return err;
> +
> +		err = tc358746_apply_dphy_config(tc358746);
> +		if (err)
> +			goto err_out;
> +
> +		err = tc358746_apply_misc_config(tc358746);
> +		if (err)
> +			goto err_out;
> +
> +		err = tc358746_enable_csi_lanes(tc358746, 1);
> +		if (err)
> +			goto err_out;
> +
> +		err = tc358746_enable_csi_module(tc358746, 1);
> +		if (err)
> +			goto err_out;
> +
> +		err = tc358746_enable_parallel_port(tc358746, 1);
> +		if (err)
> +			goto err_out;
> +
> +		err = v4l2_subdev_call(src, video, s_stream, 1);
> +		if (err)
> +			goto err_out;
> +
> +		return err;

This can be return 0.

> +
> +err_out:
> +		pm_runtime_mark_last_busy(sd->dev);
> +		pm_runtime_put_sync_autosuspend(sd->dev);
> +
> +		return err;
> +	}

-- 
Kind regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

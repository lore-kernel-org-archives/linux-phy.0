Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE6CCECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 14:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRs2lfHTIqEjtqGDKx0uJjA4qcs+nletiHIe4g8NLVk=; b=gefcQa/cZq8I2O
	X2oTvKLTwH+4lXdodB3LKACSiweNEDXfrTttwxbuhWZCioeXyVzIWJvw60IqvfcDmEzhbHEoNA10y
	T9PUGpu93Kay0TfoXXqINjvqJHPkc3+CqUUzglswegoS0tuLqPqiYGr8dKsHbs9P3FePGuVtIHNlW
	3JhNHUW7lL8iUpLyDv0gFvpEqyaGZZ4rzphWgA+zXEpP2POpIZahPOPWnuPwGDC7940YaDrrF6Tnk
	QDmfDyy6B3XTuMQxv3N2kVbiga9tTzsySRMGXYtMwBhgSvJF6V7W346zDi0Pz7POVAQmMHO7goExe
	/yVA60UmRPJo7ENHitnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1objp1-004ero-6l; Fri, 23 Sep 2022 14:38:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1objoy-004er0-4h
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 14:38:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1objoi-00045V-NU; Fri, 23 Sep 2022 16:38:12 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1objoh-0001T7-SC; Fri, 23 Sep 2022 16:38:11 +0200
Date: Fri, 23 Sep 2022 16:38:11 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	laurent.pinchart@ideasonboard.com, jacopo@jmondi.org,
	hverkuil@xs4all.nl, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <20220923143811.d5gk52vh2koczyhk@pengutronix.de>
References: <20220922134843.3108267-1-m.felsch@pengutronix.de>
 <20220922134843.3108267-5-m.felsch@pengutronix.de>
 <Yy2rNit+rRGkcFdL@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy2rNit+rRGkcFdL@paasikivi.fi.intel.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_073828_186765_41EBD677 
X-CRM114-Status: GOOD (  18.89  )
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

Hi Sakari,

On 22-09-23, Sakari Ailus wrote:
> Hi Marco,
> 
> Thanks for the update. A few small things below.
> 
> On Thu, Sep 22, 2022 at 03:48:43PM +0200, Marco Felsch wrote:
> ...
> > +static int tc358746_apply_misc_config(struct tc358746 *tc358746)
> > +{
> > +	const struct v4l2_mbus_framefmt *mbusfmt;
> > +	struct v4l2_subdev *sd = &tc358746->sd;
> > +	struct v4l2_subdev_state *sink_state;
> > +	const struct tc358746_format *fmt;
> > +	struct device *dev = sd->dev;
> > +	u32 val;
> > +	int err;
> > +
> > +	sink_state = v4l2_subdev_lock_and_get_active_state(sd);
> > +	mbusfmt = v4l2_subdev_get_pad_format(sd, sink_state, TC358746_SINK);
> > +	v4l2_subdev_unlock_state(sink_state);
> > +
> > +	fmt = tc358746_get_format_by_code(TC358746_SINK, mbusfmt->code);
> 
> You can no longer access mbusfmt here as you've already unlocked subdev
> state.

You're right, Laurent also mentioned this but this function gets called
during .s_stream(on) so the format shouldn't be changed that late.
However since you're the 2nd with the thought, I will fix it in the v4.

> > +
> > +	/* Self defined CSI user data type id's are not supported yet */
> > +	val = PDFMT(fmt->pdformat);
> > +	dev_dbg(dev, "DATAFMT: 0x%x\n", val);
> > +	err = tc358746_write(tc358746, DATAFMT_REG, val);
> > +	if (err)
> > +		return err;
> > +
> > +	val = PDATAF(fmt->pdataf);
> > +	dev_dbg(dev, "CONFCTL[PDATAF]: 0x%x\n", fmt->pdataf);
> > +	err = tc358746_update_bits(tc358746, CONFCTL_REG, PDATAF_MASK, val);
> > +	if (err)
> > +		return err;
> > +
> > +	val = tc358746->vb_size / 32;
> > +	dev_dbg(dev, "FIFOCTL: %u (0x%x)\n", val, val);
> > +	err = tc358746_write(tc358746, FIFOCTL_REG, val);
> > +	if (err)
> > +		return err;
> > +
> > +	/* Total number of bytes for each line/width */
> > +	val = mbusfmt->width * fmt->bpp / 8;
> > +	dev_dbg(dev, "WORDCNT: %u (0x%x)\n", val, val);
> > +	return tc358746_write(tc358746, WORDCNT_REG, val);
> > +}
> 
> ...
> 
> > +static int tc358746_s_stream(struct v4l2_subdev *sd, int enable)
> > +{
> > +	struct tc358746 *tc358746 = to_tc358746(sd);
> > +	struct v4l2_subdev *src;
> > +	int err;
> > +
> > +	dev_dbg(sd->dev, "%sable\n", enable ? "en" : "dis");
> > +
> > +	src = tc358746_get_remote_sd(&tc358746->pads[TC358746_SINK]);
> > +	if (!src)
> > +		return -EPIPE;
> > +
> > +	if (enable) {
> > +		err = pm_runtime_resume_and_get(sd->dev);
> > +		if (err)
> > +			return err;
> > +
> > +		err = tc358746_apply_dphy_config(tc358746);
> > +		if (err)
> > +			goto err_out;
> > +
> > +		err = tc358746_apply_misc_config(tc358746);
> > +		if (err)
> > +			goto err_out;
> > +
> > +		err = tc358746_enable_csi_lanes(tc358746, 1);
> > +		if (err)
> > +			goto err_out;
> > +
> > +		err = tc358746_enable_csi_module(tc358746, 1);
> > +		if (err)
> > +			goto err_out;
> > +
> > +		err = tc358746_enable_parallel_port(tc358746, 1);
> > +		if (err)
> > +			goto err_out;
> > +
> > +		err = v4l2_subdev_call(src, video, s_stream, 1);
> > +		if (err)
> > +			goto err_out;
> > +
> > +		return err;
> 
> This can be return 0.

Sure.

Regards,
  Marco

> 
> > +
> > +err_out:
> > +		pm_runtime_mark_last_busy(sd->dev);
> > +		pm_runtime_put_sync_autosuspend(sd->dev);
> > +
> > +		return err;
> > +	}
> 
> -- 
> Kind regards,
> 
> Sakari Ailus
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

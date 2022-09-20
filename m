Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 292D0C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 11:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmRBF9r/Ym+V2BdcMAXHUyp5S4vWTFA4K+wpNa6deF4=; b=lLJUKpT7BLm38L
	DtYcrsxMHfU2rn1ndzcqS7c+Dmnnv2hDDw9sijcObAwbJi6v5UtjBMofbij6H/A1vBnnfijS8OXnv
	HlnaW4UPOy1x91aw3JUDZ/7DCWiQwSZRlj2/t1gx/PZZ2SFjrG4LxX8l3wNcRGlyxDjWjgYCY8ImE
	qixPJD4kG+XzqEt/T0c1/V83qrKBROfCN4IzoYcDJDBsPGcIfLgmejMrRveA7igtfk4hzHe6QwcMg
	B3RQA/b5X3fK8Ou3O+R86xEMMhzARHlN7sRgfrzyuVnHjTUtF0x2akCww5AUSABqWwrg05sAral9n
	4ucMxyauEb78z+aynHyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabcD-003Pen-Cu; Tue, 20 Sep 2022 11:40:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabXR-003N9X-N7
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 11:35:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oabXC-0008TL-5B; Tue, 20 Sep 2022 13:35:26 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oabXA-000335-Om; Tue, 20 Sep 2022 13:35:24 +0200
Date: Tue, 20 Sep 2022 13:35:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	hverkuil@xs4all.nl, jacopo@jmondi.org,
	kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <20220920113524.yq2abqbunvfipnb2@pengutronix.de>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhjB+RbLokmBKPx@paasikivi.fi.intel.com>
 <YyhlQPhezmLG8ZCn@pendragon.ideasonboard.com>
 <Yyhonw7SEjkAPivN@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yyhonw7SEjkAPivN@paasikivi.fi.intel.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_043541_786164_A4C23050 
X-CRM114-Status: GOOD (  20.23  )
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

On 22-09-19, Sakari Ailus wrote:
> On Mon, Sep 19, 2022 at 03:49:04PM +0300, Laurent Pinchart wrote:
> > On Mon, Sep 19, 2022 at 12:39:35PM +0000, Sakari Ailus wrote:
> > > > +	dev_set_drvdata(dev, tc358746);
> > > > +	pm_runtime_set_autosuspend_delay(dev, 200);
> > > > +	pm_runtime_use_autosuspend(dev);
> > > > +	pm_runtime_enable(dev);
> > > > +
> > > > +	err = tc358746_init_hw(tc358746);
> > > 
> > > The driver depends on runtime PM being enabled but does not depend on
> > > CONFIG_PM. I'd suggest to power the device on and only then enable runtime
> > > PM. See
> > > <URL:https://hverkuil.home.xs4all.nl/spec/driver-api/camera-sensor.html#power-management>.
> > 
> > Or simply depend on CONFIG_PM :-)
> 
> The user can still disable runtime PM.

You mean by user-space? If I read the runtime.c code correctly in such
case the core handles this enabling if one forbid it by increasing the
usage-counter and calling the resume callback. So it is powered as you
want. To fix the PM Kconfig, I will add "depends on PM".

Regards,
  Marco

> I guess few do though. This should be addressed separately from this
> driver, it'd be good to be able to deny that. In fact, no-one has ever
> probably tested this for a large number of drivers and I guess it exists
> just to have a way to disable runtime PM support in drivers that do not
> work with it...
> 
> -- 
> Sakari Ailus
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7E0ECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 14:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsLd5eb++5ltj+W0tuguPxqwqHHhjq6wyIpgBnP8VkM=; b=DobyaXEKNsPzqX
	Mafj8Grm+LNFS1TbREIIuRtbONc5+il/msOH1qoVVJaHqefX++PdDjnBcD4yNtKYfv9udQxU8iOLz
	cyZyItP0HeJSqRIfUH5d7Fk89xEAvyuD6kkzNYXj8PvFg33ir/6fnz7LHfexI3XbA3efLE+nCvhQh
	AmK4m6awuxxBif9goJ4NF1kBWOGJ6NIpbKjuKal6YTYc1I+fgadt/VPSVqwA/qlYEdAJQErbOrTre
	laYq4iNm+UxuBpGiS1jLjZ1atKzEq+d1JU0MJsRjqWizzDehX4lUbeG4WabgxbYypB0Oh6mDaTuXU
	93UshyBdj6Gd/duRHA9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1objhK-004dpg-UW; Fri, 23 Sep 2022 14:30:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1objhH-004dpA-Qi
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 14:30:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1objh1-0002rt-OC; Fri, 23 Sep 2022 16:30:15 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1objgz-00016D-Gx; Fri, 23 Sep 2022 16:30:13 +0200
Date: Fri, 23 Sep 2022 16:30:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	sakari.ailus@linux.intel.com, jacopo@jmondi.org, hverkuil@xs4all.nl,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-media@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v3 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <20220923143013.vymstztawb3wb2nf@pengutronix.de>
References: <20220922134843.3108267-1-m.felsch@pengutronix.de>
 <20220922134843.3108267-5-m.felsch@pengutronix.de>
 <Yyyq7CRB3Tg8508B@pendragon.ideasonboard.com>
 <20220923092726.mrurgoylqdlw3ena@pengutronix.de>
 <Yy24k5OQGcuZvcSo@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy24k5OQGcuZvcSo@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_073031_870647_E8B55533 
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

On 22-09-23, Laurent Pinchart wrote:
> Hi Marco,
> 
> On Fri, Sep 23, 2022 at 11:27:26AM +0200, Marco Felsch wrote:

...

> > > > +static int tc358746_write(struct tc358746 *tc358746, u32 reg, u32 val)
> > > > +{
> > > > +	size_t count;
> > > > +	int err;
> > > > +
> > > > +	/* 32-bit registers starting from CLW_DPHYCONTTX */
> > > > +	count = reg < CLW_DPHYCONTTX_REG ? 1 : 2;
> > > > +
> > > > +	err = regmap_bulk_write(tc358746->regmap, reg, &val, count);
> > > > +	if (err)
> > > > +		dev_dbg(tc358746->sd.dev,
> > > > +			"Failed to write reg:0x%04x val:0x%04x\n", reg, val);
> > > 
> > > I'm not sure if the value is relevant here, but I'd add the error, it's
> > > useful to know what kind of I2C issue occurred. Same for read().
> > 
> > Yeah.. I'm not sure, since you told me to not flood the kernel log. If
> > someone recognised error while probing or streaming the debug will be
> > turned on anyways. However, I will make it a dev_err() since this
> > shouldnt appear normally, you're right.
> 
> Sorry, I meant printing the value of the error code in the message, the
> err variable. dev_err() is probably good too actually, as this isn't
> meant to happen.

Sorry that was my fault, I misread your comment.. Anyway since we agree
with dev_err() and I added the err value into the message, everything is
fine :)

Regards,
  Marco

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

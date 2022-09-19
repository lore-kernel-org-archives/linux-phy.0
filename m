Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE3EECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 13:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBh1w1j6IbaRzYA6EqzgLhIYviqAoXieA/jvRVhjNj0=; b=XducpqimOLkpZ5
	jFIjCgDfTkIEP4R4ChxO+2zRyZ6Q3vofKshaFljYVmRHYEip0XAhz/tvicUh4wlq7LzM+ttNe1uTk
	GoZjAg9pq804hMytqSSGK3tEz9UfTTqX9KrQvFmWCs7hQvf9EjQcCMUA1nhhRUBF+TJukU3tbaPYH
	k+az274kzKM4E1EbLDUAPDams22LvE9caCboAd9Up6K7esQkQgS9NBB1dKcJH9PlF38I4U5Eu8aJ3
	NlrgYRkajgnWkaZIXTSZhckEmOw6dJaJ1oSYJOO6/vaaQQv2XhejzG+jURArC42JPB7Ze7QWTVJy3
	eUxWSAKBQ4KVPHg5YsUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaGSR-00BoHA-10; Mon, 19 Sep 2022 13:05:07 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaGSO-00BoEZ-4J
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 13:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663592704; x=1695128704;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=G1P3+TIjxdWvSQeptpPpiJ2C7v1Rhk5VtMylTJBmLH4=;
  b=GBlb4OUrETi+y0TzonuZYlQVjXTiSAWN4Vu6mPGhaUb/4sPacZJ3W/Bd
   fv18h8ISGFyLPfNmmCKlrMd3yHwHoUKXQ89EIh/qFTkFaBq6TwpH86pJv
   q3tdUpfMfcdV7pZ46N09qDUxnxIlrIhZ8Ak8SJg2S3j+PThAItKsYKBfW
   rmV87xce9WjqHO9pBxNJoyDP+VAsTrK4hQ5LDZpXxABbgiZZLx4cM0VIT
   wRjW8HtbtBDB3Fd21uLEA93bDRViNMkCmi0Akfo2TntUC+qCrFnXctiOl
   QrNMdVoMUbQiy4SRBb7pP5eSatfhKcKAPejdIaP0uuZHC8I4pPMFbE/93
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300766524"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="300766524"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 06:03:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="863551826"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 06:03:29 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id DEE94202D2;
	Mon, 19 Sep 2022 16:03:27 +0300 (EEST)
Date: Mon, 19 Sep 2022 13:03:27 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, mchehab@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com, vkoul@kernel.org, hverkuil@xs4all.nl,
	jacopo@jmondi.org, kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <Yyhonw7SEjkAPivN@paasikivi.fi.intel.com>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhjB+RbLokmBKPx@paasikivi.fi.intel.com>
 <YyhlQPhezmLG8ZCn@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyhlQPhezmLG8ZCn@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_060504_332293_EB4799FF 
X-CRM114-Status: GOOD (  13.75  )
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

On Mon, Sep 19, 2022 at 03:49:04PM +0300, Laurent Pinchart wrote:
> On Mon, Sep 19, 2022 at 12:39:35PM +0000, Sakari Ailus wrote:
> > > +	dev_set_drvdata(dev, tc358746);
> > > +	pm_runtime_set_autosuspend_delay(dev, 200);
> > > +	pm_runtime_use_autosuspend(dev);
> > > +	pm_runtime_enable(dev);
> > > +
> > > +	err = tc358746_init_hw(tc358746);
> > 
> > The driver depends on runtime PM being enabled but does not depend on
> > CONFIG_PM. I'd suggest to power the device on and only then enable runtime
> > PM. See
> > <URL:https://hverkuil.home.xs4all.nl/spec/driver-api/camera-sensor.html#power-management>.
> 
> Or simply depend on CONFIG_PM :-)

The user can still disable runtime PM.

I guess few do though. This should be addressed separately from this
driver, it'd be good to be able to deny that. In fact, no-one has ever
probably tested this for a large number of drivers and I guess it exists
just to have a way to disable runtime PM support in drivers that do not
work with it...

-- 
Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

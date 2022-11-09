Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDEC7C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  9 Nov 2022 09:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVEHw2jq0QFL7TUjZNGaUkj+KzskAJVVTD6AV+cUqao=; b=qzpa5hH4wrjkB7
	zjbohk2kXzM8AEGqassYlc/lKsSB5EtNlnDfs6Um2stzwSMJm02QEaSJiVDjMhvENKLfUIBLjtECw
	mV4q+Yx4c7oSA3cI+sA2UmKNULFXBIMXAQjg26caDCrz7il/mZBA6uxdbtpLq4lWepE8yIVvu1n2K
	lMKh5FOA1MGCo1bDuAzlgcU+QrirIF9WAd+bGkKMiqZSXfbTdwKm6IUdSBvgRSDbUjbRnNoSP9sOq
	0+ufigRdOegV9i9BCxlrbW1Vu1qPDvT0x+lzBOfTKUcIldHCWte6XK4fnYKCtPkQIwXSGsPsPwzwP
	J/FUqqNyf4rOQvTY6GDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oshWI-00CMv8-9H; Wed, 09 Nov 2022 09:37:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oshWF-00CMu3-6e
	for linux-phy@lists.infradead.org; Wed, 09 Nov 2022 09:37:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oshVx-0006zs-CE; Wed, 09 Nov 2022 10:36:57 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oshVv-0005Qw-Br; Wed, 09 Nov 2022 10:36:55 +0100
Date: Wed, 9 Nov 2022 10:36:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	laurent.pinchart@ideasonboard.com, jacopo@jmondi.org,
	hverkuil@xs4all.nl, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-media@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Add support for Toshiba TC358746
Message-ID: <20221109093655.eh4aa2cnak6zwc35@pengutronix.de>
References: <20220930124812.450332-1-m.felsch@pengutronix.de>
 <20221028134349.lxvo2jjvs6aehrbd@pengutronix.de>
 <Y2peJ+G7ho1HuJSl@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y2peJ+G7ho1HuJSl@paasikivi.fi.intel.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_013715_254394_A423E5BA 
X-CRM114-Status: GOOD (  11.87  )
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

On 22-11-08, Sakari Ailus wrote:
> Hi Marco,
> 
> On Fri, Oct 28, 2022 at 03:43:49PM +0200, Marco Felsch wrote:
> > Hi,
> > 
> > gentle ping.
> 
> This is in my latest PR to Mauro:
> 
> <URL:https://patchwork.linuxtv.org/project/linux-media/patch/Y1uVp8hHo7DYUK82@valkosipuli.retiisi.eu/>

Thanks for the info. FTR: The fixing patch for the Kconfig is already
send.

Regards,
  Marco

> 
> -- 
> Sakari Ailus
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

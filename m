Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 699BCC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 10:03:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3303D611B0
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 10:03:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3303D611B0
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5Pcsx46HxuJ/sraE8XQoS+Zd4Lr3jlIbUgbFY1Xfvk=; b=0NChqcSTd8QgcU
	yzDUQxP4lyqVwxiAWcj4uMEJcMLWH+5hc6c/qAVz0Yq0hxkf/lMWwke3eeXVTBYs+B6TPYNeHW/SL
	qHrj0Gv0c9y2n/Sch7gNVUKGYV3uMcQk8EyJ1Zn6w/W78NTRm3hohNG+9XcIc/RUXLheeCp/pn7bA
	hoKGsUESdgXcTzhJ12Nvub/P6un6/vzMkeVoLtmXvHcteLsd+B9tnk5JnXbwIOFmAGyr9PnihkaVn
	upq1DOpVN8gl4K97JwrUrFQqP5xEdDUOxs9F9LLj/HGuMzFiX0NkgF8HwJQ4FUqnXvRnH9ghJ+3CC
	f/8hafGhYmqt05+y0GBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSz5l-007gjO-Li; Wed, 22 Sep 2021 10:03:05 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSz5j-007giS-6o
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 10:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632304983; x=1663840983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=o84MUAaAl22mDdS3oZhqYx+P4ZTe4XQ7zU9iNgirFVY=;
 b=HsuOf5+Nvg8IG7xmeJCOeaSxAMAtwYGjngSU7a9BUagRiIXFpa7+tL9f
 5eFtw8VrqZZ1E8VV9OPfG9PHaLsV6iMq4ahIwJruBzxQ+cm276exyn8fm
 eI/9sjtWErRsgLslKRjtzl/6CzwPOA4Dsp2Mz10QBD4H8yRE13a3oIN6b
 CMw39uHyYZP0mMKa4Ds8A4Lc73zIdFvgr9SLnoL6hDFjjUNhHdmD75HIe
 pDQZ3LMTLpAIckbioBbbooXmSljDxuFhikDINEKmWudLjSb7qPCK+hTeA
 ws7PRfcOoLNPbB52YmC4ymvHfEedbGKueTtsVvlFIBJ0XwvXCOqOqkFKM w==;
IronPort-SDR: ibErfwqDhJ2fywgCsuET4CuoS29yy35I7mKoyFBQW1zywnFbkk+Yr2ECx85/edn8JqYt9AP9kK
 TIKixxgFOCBk89BZNjDdZ3Egk9JxiA77bBYa50SQKGAy9nJl75iGTRv0nE8HYjAo5zBMcRDfBh
 DMNk6F3O86owaY9pjc6ZMRic1MTZYgcm2aVdLD/byVg1MkN81qvoGsxxVbYfFcunyQRADFnUHW
 tiPtl31s3soIxQJTwI7dVJPts1sEO4klwtaDI1+kDO5/Hp8Ea6rO4oiZZ3H+bG6f7vljcmDy28
 BkItikD+KqPesWVE6CDRB//W
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="132710408"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Sep 2021 03:03:00 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 22 Sep 2021 03:03:00 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Wed, 22 Sep 2021 03:03:00 -0700
Date: Wed, 22 Sep 2021 12:04:29 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <f.fainelli@gmail.com>, <alexandre.belloni@bootlin.com>,
 <vladimir.oltean@nxp.com>, <UNGLinuxDriver@microchip.com>,
 <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-pm@vger.kernel.org>
Subject: Re: [RFC PATCH net-next 03/12] phy: Add lan966x ethernet serdes PHY
 driver
Message-ID: <20210922100429.pjrd2s4y3jbxpjjt@soft-dev3-1.localhost>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-4-horatiu.vultur@microchip.com>
 <YUiPqJjsoBg99VbR@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUiPqJjsoBg99VbR@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_030303_355373_D7A6C4FF 
X-CRM114-Status: GOOD (  16.24  )
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

The 09/20/2021 14:42, Russell King (Oracle) wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, Sep 20, 2021 at 11:52:09AM +0200, Horatiu Vultur wrote:
> > +static int lan966x_calc_sd6g40_setup_lane(struct lan966x_sd6g40_setup_args config,
> > +                                       struct lan966x_sd6g40_setup *ret_val)
> > +{
> > +     struct lan966x_sd6g40_mode_args sd6g40_mode;
> > +     struct lan966x_sd6g40_mode_args *mode_args = &sd6g40_mode;
> > +
> > +     if (lan966x_sd6g40_get_conf_from_mode(config.mode, config.refclk125M,
> > +                                           mode_args))
> > +             return -1;
> 
> This needs fixing to be a real negative error number.
> lan966x_sd6g40_setup_lane() propagates this functions non-zero
> return value, which is then propagated through lan966x_sd6g40_setup(),
> and then through serdes_set_mode() to the PHY layer.
> 
> In general, I would suggest that _all_ int-returning functions in the
> kernel that return a negative failure value _should_ _always_ return a
> negative error code, so that your reviewers don't have to chase code
> paths to work out whether a mistake such as the above exists.
> 
> To put it another way: never use "return -1" in the kernel.

Hi Russell,

Thanks for the suggestion. I will fix this in the next version.

> 
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

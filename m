Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 959BFCAC583
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 16:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uieokNtGYeH7sYGoueX0ZVgb3N/Ahf2YTSJkm5vmh1c=; b=jfg0PgtnLecMj+
	e8BG5L/CIoAc+wk2Uk+bqET11QqYDDYDxzRtsqIbsMjp6l32XxGH/sDA9iHtSb5ifljEyV0mkQqlI
	2fnsmiBQ10mskaiw6QwTKoam4KU3valQw91CYxpdtFr3EeMGUPRtU3BKg//VgwBcd6NaNQIWu49CK
	V2xrnWZ5cXcUhYF8rYX1v1vlO642U9fKV0JZP5itVHNS+wI2/8hG7/bzLtmdT2ZEVgA9QlsQJnzAt
	9xnKRo3wh8RRauYqEtwauoHPqKYfbCQWR0Utw65AJi/7NNgwu1OHFS/CPI+y/+g32rH09KqOCtmXA
	Hik7TW6gDMzjN2QbX45Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1QF-00000008awt-42hL;
	Tue, 09 Sep 2025 16:42:23 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvv5M-00000006Asc-45rJ;
	Tue, 09 Sep 2025 09:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757411785; x=1788947785;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uo5ZUhYMuByiGgJRlg8TUV2xCirGU9z4qi8EAlibyr8=;
  b=F/+D67q/rxCANk0mmJHf1tsw4wt0CE8TwpgJpr5V+dgiDecQuszOaMYb
   R4NSV7GJCZcyvELP5H4Q2ZiplonQsxrxa2djRPanWYvSIlqZiC0b0WXOi
   rSU7SgESuSV/4S4IPpGCRs5vlTIf5AgNS+njJB94JwcgpQ/p30xnMxrNm
   Ys8f66HmAuOI2jGTDRwWQ6gcNtmkQuspAQO1i2ySOXiUze2UBDaiqiG+Q
   LmHHGp1XhVjjhgekbjy8BLslHHtNFbrajh7pI9Maa3zas6njd4zWDT7jy
   c/ljXheOnwbp/Bet3H3HyxQn+s8co3b864SitLpHQdAjQLJoCQfBNqg5z
   A==;
X-CSE-ConnectionGUID: L5Srpdw2T8O0MtkZRuJRSA==
X-CSE-MsgGUID: e1l+ePUrQgKJxK8ou2v2og==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="70308690"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; 
   d="scan'208";a="70308690"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2025 02:56:21 -0700
X-CSE-ConnectionGUID: P1az0YAkRKGZnXA+YSHqnw==
X-CSE-MsgGUID: x+o8/7BtRJCBL8qT1k7V2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; 
   d="scan'208";a="172209638"
Received: from kuha.fi.intel.com ([10.237.72.152])
  by orviesa006.jf.intel.com with SMTP; 09 Sep 2025 02:56:15 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Tue, 09 Sep 2025 12:56:13 +0300
Date: Tue, 9 Sep 2025 12:56:13 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Sven Peter <sven@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
	Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH v2 13/22] usb: typec: tipd: Use read_power_status
 function in probe
Message-ID: <aL_5vZvZG4oYQACo@kuha.fi.intel.com>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-13-52c348623ef6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250906-atcphy-6-17-v2-13-52c348623ef6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_025625_029708_5137E333 
X-CRM114-Status: GOOD (  18.88  )
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

On Sat, Sep 06, 2025 at 03:43:26PM +0000, Sven Peter wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> We need the initial power status to be able to reliably detect connector
> changes once we introduce de-bouncing for CD321x next. read_power_status
> takes care of this and also forwards the status to the trace subsystem
> so let's use that instead of open-coding it inside probe.
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> Signed-off-by: Sven Peter <sven@kernel.org>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/tipd/core.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index cd427eecd8a594b7e609a20de27a9722055307d8..e6e9730ee6dacd8c1271b1d52a02da49ff248d3e 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -1549,11 +1549,8 @@ static int tps6598x_probe(struct i2c_client *client)
>  		goto err_role_put;
>  
>  	if (status & TPS_STATUS_PLUG_PRESENT) {
> -		ret = tps6598x_read16(tps, TPS_REG_POWER_STATUS, &tps->pwr_status);
> -		if (ret < 0) {
> -			dev_err(tps->dev, "failed to read power status: %d\n", ret);
> +		if (!tps6598x_read_power_status(tps))
>  			goto err_unregister_port;
> -		}
>  		ret = tps6598x_connect(tps, status);
>  		if (ret)
>  			dev_err(&client->dev, "failed to register partner\n");
> 
> -- 
> 2.34.1
> 

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

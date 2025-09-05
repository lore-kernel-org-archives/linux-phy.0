Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B74EBCA1016
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 15:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dictimeotS5HLNU3Bb0DBiJW/l4yT61Q+CkmkQIe2r8=; b=fY094PtjbBNfsj
	PeWdzZXSDAo3dBzATDDUbZQqpEdoV45JXGDv3/ZO0kPwFCuPiO9TF/6yb1YGNgkHmwJYhBLixjFYz
	ZyDVmmwDqRk0lLnuDX1xmzpslt0H1i1KBEbZccIci1EyODUE2JPgBpl7k86c+Zccmsw9/wdeFEmBE
	GDCfJ9zZVIfq1y5A5UdPmnzM1rkL5D05QLIliuFOb+bFc0pCuO8n1SOIQ2hto3wjtUeLZOiTpabAz
	dfszs1o1IQ+HGR0aAAlGXER1ABKg3Dae9mtLy7eP/kDjiTdKDjJCLEqIJultMtayWBbenbgvovOMt
	EODX8Ey1RiomzVvyIuew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuYYx-00000002pQX-25q9;
	Fri, 05 Sep 2025 15:41:19 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuUnZ-00000001RJ8-1aG6;
	Fri, 05 Sep 2025 11:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757072409; x=1788608409;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sx2wz53gv4OIUWMCEXeNS8i0YplTPAB4OZ9qODA9qog=;
  b=fRMXcTtJPiwsmWmgGpYLKGjNyC/2wv5qZE/3vl3u3zFqlvH5wvqo8nY7
   YgnpmaFP484/TufyOOizdeVHkbZv5NZil89vcYE3hbpQEyf6jofQJX8sa
   TGlwz5PTrh3snTIlCEfwbTFdFzbaNQ3NZtvzZZSMieLBwN2QAu5ZGqzbr
   2emF/6J81ssYv7xYm9bCSZL8mysAnqsVJFByACRbS5vS3A6ltpqW/MrM3
   MHxQZeU2yQnYC4oCgXLMyrMlyyRgxrP7DyNC/rhklTgY59X3pmxgxtpLB
   xABRWl9kqqy4/drG664rdbgAjHyqklyClSJzxVsOtmFe64l+1hpYxS9GZ
   Q==;
X-CSE-ConnectionGUID: ArmKiuowRxCnJwfPabMeRw==
X-CSE-MsgGUID: GpMWsEivRI+y3lxy2I02Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63064748"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; 
   d="scan'208";a="63064748"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2025 04:40:06 -0700
X-CSE-ConnectionGUID: 7ivWf5SiTburyJTsZYw9/Q==
X-CSE-MsgGUID: Mm1LtjFKRfexLBEV4Qw4+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; 
   d="scan'208";a="171710329"
Received: from kuha.fi.intel.com ([10.237.72.152])
  by fmviesa007.fm.intel.com with SMTP; 05 Sep 2025 04:40:01 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Fri, 05 Sep 2025 14:40:00 +0300
Date: Fri, 5 Sep 2025 14:40:00 +0300
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
	Philipp Zabel <p.zabel@pengutronix.de>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH RFC 15/22] usb: typec: tipd: Update partner identity when
 power status was updated
Message-ID: <aLrMEL_St_0JlZYG@kuha.fi.intel.com>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-15-172beda182b8@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-atcphy-6-17-v1-15-172beda182b8@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_044009_454614_6D33DE47 
X-CRM114-Status: GOOD (  18.50  )
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

Hi,

On Thu, Aug 21, 2025 at 03:39:07PM +0000, Sven Peter wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> Whenever the power status is changed make sure to also update the
> partner identity to be able to detect changes once de-bouncing and mode
> changes arre added for CD321x.

s/arre/are/

> Signed-off-by: Hector Martin <marcan@marcan.st>
> Signed-off-by: Sven Peter <sven@kernel.org>
> ---
>  drivers/usb/typec/tipd/core.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index e369897bfa017ca96e559a8bd70da11207d4513a..b0fdd4dddd3a490dbc2a8ced21ea0803658f36a7 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -636,9 +636,16 @@ static irqreturn_t cd321x_interrupt(int irq, void *data)
>  	if (!tps6598x_read_status(tps, &status))
>  		goto err_unlock;
>  
> -	if (event & APPLE_CD_REG_INT_POWER_STATUS_UPDATE)
> +	if (event & APPLE_CD_REG_INT_POWER_STATUS_UPDATE) {
>  		if (!tps6598x_read_power_status(tps))
>  			goto err_unlock;
> +		if (TPS_POWER_STATUS_PWROPMODE(tps->pwr_status) == TYPEC_PWR_MODE_PD) {
> +			if (tps6598x_read_partner_identity(tps)) {
> +				dev_err(tps->dev, "%s: failed to partner identity\n", __func__);

				dev_err(tps->dev, "failed to read partner identity\n");

> +				tps->partner_identity = (struct usb_pd_identity) {0};
> +			}
> +		}
> +	}
>  
>  	if (event & APPLE_CD_REG_INT_DATA_STATUS_UPDATE)
>  		if (!tps->data->read_data_status(tps))

thanks,

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

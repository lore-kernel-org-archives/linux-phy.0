Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22D5ECAC580
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 15:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5218IlHKRfAFgbWAi6ic4BkPtBgzzWu+V9SvPPQE5k=; b=e+WwXbvyBw1zPX
	jeJejedjLHTY/gsJpWoEiaFyTaIBeyA8zYCy78U+Zm99h2sWMBzugcZuNtsoC2xsXbc/TJd0PoUKv
	/BS3xIDay5H1MQR4xuMFM9ODcPqES70afWchcJIJE4SeEjoKRvTfc01hnQZaSkgYDcAyq27dacSUy
	P/Oha6pF3V3s6W0tK+g4KK9Y2H+I6jBBtue6LJKa6MvxQ047FbbTckLlENs5ycFvf+WRFyEUiRAHi
	vEf1XPNaa4VjXsB6nm0IphiXDvgEFkI9eLSjptfiHgiYrjMJEXAaUjVpDhqksEazymJzgzh1S/PrV
	azVtWZmQnL6oEPYJHYog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuYYs-00000002pJq-3jKE;
	Fri, 05 Sep 2025 15:41:14 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuUE0-00000001FHZ-22hz;
	Fri, 05 Sep 2025 11:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757070204; x=1788606204;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KN4dsiaZ268F8wno1pY0dZJf8plsMc1elk4smFEFKIw=;
  b=LMpJ3o7JZNGUa3krLfmG0hl4XAKOxF39ASRjjKC+QjN6hK2yDdamqk5O
   JSk2cEFagDdDJTJfNnZL0en7YP+Fb3Jd50rmCOw+kXbXvKi5B6uvT1B/c
   nYQ4E5LBDqglZcztPjovuMYHbDgC/4tFn9BG5EZMgNhXZhHazZibpOpKM
   LlwWH1GP2VFJ0SPT9r3if+0h2hw3Y+y1py6G5nZdu952WeEF16FrGQ6Za
   ZVZcWzkCoOh5zks74lGHoq8+Gn7HOwHSEgaLBBJ/phTv7/8bPzMPg6joM
   DjMl8ay6WVGyXqd0dB/P4d/2VnGkDHAwEKW5VWzCXu5jIwOm3VUZHXpeE
   g==;
X-CSE-ConnectionGUID: 1doGHwQCTy+r6Vh2DrigBg==
X-CSE-MsgGUID: iYwNlWtuRKqNP2/jhJyX7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="62050718"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; 
   d="scan'208";a="62050718"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2025 04:03:21 -0700
X-CSE-ConnectionGUID: 53kU7cAnTr6NKDSKeZLK+w==
X-CSE-MsgGUID: P5pb7rInQZK8UjIlkKEOQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; 
   d="scan'208";a="176470702"
Received: from kuha.fi.intel.com ([10.237.72.152])
  by fmviesa005.fm.intel.com with SMTP; 05 Sep 2025 04:03:16 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Fri, 05 Sep 2025 14:03:15 +0300
Date: Fri, 5 Sep 2025 14:03:15 +0300
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
	linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 09/22] usb: typec: tipd: Move initial irq mask to
 tipd_data
Message-ID: <aLrDc-IMZkqzvnv2@kuha.fi.intel.com>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-9-172beda182b8@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-atcphy-6-17-v1-9-172beda182b8@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_040324_562644_D4CFD2D3 
X-CRM114-Status: GOOD (  18.74  )
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

On Thu, Aug 21, 2025 at 03:39:01PM +0000, Sven Peter wrote:
> Since the irq mask was originally added more tipd variants have been
> introduced and there's now struct tipd_data. Move the initial mask in
> there.
> 
> Signed-off-by: Sven Peter <sven@kernel.org>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/tipd/core.c | 23 +++++++++++------------
>  1 file changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index 1c80296c3b273e24ceacb3feff432c4f6e6835cc..6d8bcbc9cad8a1394e066504d4c5ca570edd4e4f 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -112,6 +112,7 @@ struct tps6598x;
>  
>  struct tipd_data {
>  	irq_handler_t irq_handler;
> +	u64 irq_mask1;
>  	int (*register_port)(struct tps6598x *tps, struct fwnode_handle *node);
>  	void (*trace_power_status)(u16 status);
>  	void (*trace_status)(u32 status);
> @@ -1298,7 +1299,6 @@ static int tps6598x_probe(struct i2c_client *client)
>  	u32 status;
>  	u32 vid;
>  	int ret;
> -	u64 mask1;
>  
>  	tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
>  	if (!tps)
> @@ -1337,16 +1337,6 @@ static int tps6598x_probe(struct i2c_client *client)
>  		if (ret)
>  			return ret;
>  
> -		/* CD321X chips have all interrupts masked initially */
> -		mask1 = APPLE_CD_REG_INT_POWER_STATUS_UPDATE |
> -			APPLE_CD_REG_INT_DATA_STATUS_UPDATE |
> -			APPLE_CD_REG_INT_PLUG_EVENT;
> -
> -	} else {
> -		/* Enable power status, data status and plug event interrupts */
> -		mask1 = TPS_REG_INT_POWER_STATUS_UPDATE |
> -			TPS_REG_INT_DATA_STATUS_UPDATE |
> -			TPS_REG_INT_PLUG_EVENT;
>  	}
>  
>  	tps->data = i2c_get_match_data(client);
> @@ -1364,7 +1354,7 @@ static int tps6598x_probe(struct i2c_client *client)
>  			return ret;
>  	}
>  
> -	ret = tps6598x_write64(tps, TPS_REG_INT_MASK1, mask1);
> +	ret = tps6598x_write64(tps, TPS_REG_INT_MASK1, tps->data->irq_mask1);
>  	if (ret)
>  		goto err_reset_controller;
>  
> @@ -1527,6 +1517,9 @@ static const struct dev_pm_ops tps6598x_pm_ops = {
>  
>  static const struct tipd_data cd321x_data = {
>  	.irq_handler = cd321x_interrupt,
> +	.irq_mask1 = APPLE_CD_REG_INT_POWER_STATUS_UPDATE |
> +		     APPLE_CD_REG_INT_DATA_STATUS_UPDATE |
> +		     APPLE_CD_REG_INT_PLUG_EVENT,
>  	.register_port = tps6598x_register_port,
>  	.trace_power_status = trace_tps6598x_power_status,
>  	.trace_status = trace_tps6598x_status,
> @@ -1536,6 +1529,9 @@ static const struct tipd_data cd321x_data = {
>  
>  static const struct tipd_data tps6598x_data = {
>  	.irq_handler = tps6598x_interrupt,
> +	.irq_mask1 = TPS_REG_INT_POWER_STATUS_UPDATE |
> +		     TPS_REG_INT_DATA_STATUS_UPDATE |
> +		     TPS_REG_INT_PLUG_EVENT,
>  	.register_port = tps6598x_register_port,
>  	.trace_power_status = trace_tps6598x_power_status,
>  	.trace_status = trace_tps6598x_status,
> @@ -1546,6 +1542,9 @@ static const struct tipd_data tps6598x_data = {
>  
>  static const struct tipd_data tps25750_data = {
>  	.irq_handler = tps25750_interrupt,
> +	.irq_mask1 = TPS_REG_INT_POWER_STATUS_UPDATE |
> +		     TPS_REG_INT_DATA_STATUS_UPDATE |
> +		     TPS_REG_INT_PLUG_EVENT,
>  	.register_port = tps25750_register_port,
>  	.trace_power_status = trace_tps25750_power_status,
>  	.trace_status = trace_tps25750_status,
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

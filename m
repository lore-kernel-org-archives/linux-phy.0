Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B467F3C9AE
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 16:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhRItYRBb4Ezev/GFzYK3zUMOCY1cDrgyMRJZ1FEtfk=; b=g79RinPICCw/MK
	Yv6g39JXGoak6Ok9NSHAwJHp7+XQNbsv8Qn3ZIdZsW8K4D9FvdF5avgeWSlqDJVi91B9qTd2N0O/n
	nZ3vkJBeSP0YjhATC5/xrVqTmAKJMoAkElxpLGBQiWYGDg2KjpQ7Sv4VijR7WxoZFPirVEChl1Xa/
	H9A8qow6AWy76p5Owh9gRS7IqUaKWiVShRG2JeMne4VPyxvEbsSA0JpIrmSFWljsM2NvD+Yto/b36
	VjkrbyQXxz0qk+YDTf5VH2Jr/3VonJsYM9FdNfgcp6gtBjx+ual/CrVKW4StGEYa1fkASW8HR8vkE
	0HmolCu5oRrHBYd8s7pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvEl-00000002P3N-3Vqk;
	Tue, 24 Feb 2026 16:26:15 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvEj-00000002P2d-11Y5
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 16:26:14 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-43631742db9so399869f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 08:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950369; x=1772555169; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0UJCCAJ5+VhuXYvQW4umc3jIBzl7EEXxPBo7h1hHDXA=;
        b=WB+xcGPAKKKUUV2ixiyoZZa9WFmMcuVWdZXrpnNnyqJfeIoaq9GydWBCW7Nnc1WpLl
         b9iybfQUQ8CSUfhKX4vck7DerRzrZHdO9YfGAbdaRjnVi1PbFu4PiCi9Dq5A8bbxAOUk
         NQPldZ8osBxT18UGX8S65kALtfzCkDCxC2EQcSNI4HGtI180We05RwXxIRKOqYm16N/C
         n5l1B044CY0PmhCYz2EbdbbuYivraBYb/DlHk+E675sDbAZGess6GLGTGyMivJFpPFIQ
         CwJZbXoM1ate1AYZRxyvztpVsS47vLA+T4QsMseqX6Szg099dDQfPxMC/RAcdh6bypPL
         Gb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950369; x=1772555169;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0UJCCAJ5+VhuXYvQW4umc3jIBzl7EEXxPBo7h1hHDXA=;
        b=YjTuPNE2DbKHeI0hfeGo5ZNVeuOT0PKSzdesIAb/DokdLVjOhFtQ80Y8G9D59tgacM
         5vZOiuZeO4Nolkr33ojpBD3BACsSus7aIJJFHkp9BYqbg7AWA1J7weg+ojWKzko69k5F
         utvDbAJczYQY/tvQuvp4kMtTDF7Z09inSXeWwU3WcYqnGTFVIL2OeJvyithxr3jXa6pR
         kquW+OPB91nd364bULRi+x4/SwYj5VpYG/dy8YgeHQul/CFGeo6vvnFrUYouhFgXNutY
         ApT5WhA61d3X5BHkwW/okEfCDGlScCi/awP2Ma3tu572mk0E9A1lT7+0N+C34nHjqiKK
         sFBw==
X-Forwarded-Encrypted: i=1; AJvYcCWTWaU4FkOW7CkUF5eJV9dMiASAEQ8MetlB7TDExL/IcChIEkLZsPrV+w6LTl2tZkKU/TQnkN4Utro=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAtetbKMdnT6/Q8bNM4SW88UWbVMhmpwEyRd+MaUOxXYAP4PcT
	Frpls1BLXHH8rn2xYw/HiSGhK9r24s8CWneUTg8HqajJkoReY8+PlH+G
X-Gm-Gg: ATEYQzwJTNO3dSgWWps1+xa3Bf0vVsbBBcGNgiQpUde2Q5ILJ9TC1XMkC0hZgbCXJNX
	559gaGzWr+fH+x+WnHi3h0RPFKLUAeGLT1ag4YFTI6T7+mwk60I6OT80KitYtW6/J1Yvm58sPov
	jckA5SKFp4ZZW5DCDAlhdJrf7oYZcezNuY5ia/+Rejiv39PGD2LDhk1/JZkumlDj2kSSMxMs05s
	AbTq+WodkMvdGdNlllkCtE200XwiCPcEHwCxmKnBVdcimxjSnzJmJddcaLnY59NCjsxehI2ZLO4
	UwmvAVjYeTclbSxg+cifyQOv8vH3C/ZXmPThJRbp8VrY1jeGWUp2ZEceFRqSUHIsObtnfIoUnf0
	C0a9A89WOO/cJNu/NSvUrrBcJtGxpdm35V6yJuO+pTXQrE8lEe+qQaFLO1oJjY1GRDfP5MM9WL2
	uW2Ow8vNSkYofHusY=
X-Received: by 2002:a05:6000:2301:b0:431:8f8:7f2a with SMTP id ffacd0b85a97d-4396f156c01mr13242241f8f.1.1771950369200;
        Tue, 24 Feb 2026 08:26:09 -0800 (PST)
Received: from skbuf ([2a02:2f04:d809:4b00:7cd9:3431:5b61:7303])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bf9fb2sm28510048f8f.1.2026.02.24.08.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:26:08 -0800 (PST)
Date: Tue, 24 Feb 2026 18:26:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH v1 1/4] phy: phy-can-transceiver: Convert to use device
 property API
Message-ID: <20260224162606.spnzzedvmvp2h7xd@skbuf>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_082613_322661_043776BF 
X-CRM114-Status: GOOD (  23.20  )
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

Hi Andy,

On Thu, Feb 19, 2026 at 09:26:19PM +0100, Andy Shevchenko wrote:
> It seems the driver is half-moved to use device property APIs.
> Finish that by converting everything to use that.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/phy/phy-can-transceiver.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> index 330356706ad7..f2259af4af8a 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -5,9 +5,9 @@
>   * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com
>   *
>   */
> -#include <linux/of.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/module.h>
>  #include <linux/gpio.h>
>  #include <linux/gpio/consumer.h>
> @@ -130,7 +130,7 @@ MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
>  static inline struct mux_state *
>  devm_mux_state_get_optional(struct device *dev, const char *mux_name)
>  {
> -	if (!of_property_present(dev->of_node, "mux-states"))
> +	if (!device_property_present(dev, "mux-states"))

There's an entire saga with this function - devm_mux_state_get_optional().
Josua Mayer is preparing to move it to the MUX core, which will be a cross-tree series.
Would you mind not touching this, to avoid complicating what is already
a complicated operation? It is going away anyway, and from what I can
see in Josua's last series, its implementation from drivers/mux/core.c
is already using device property APIs:
https://lore.kernel.org/linux-phy/20260208-rz-sdio-mux-v9-2-9a3be13c1280@solid-run.com/

>  		return NULL;
>  
>  	return devm_mux_state_get(dev, mux_name);
> @@ -162,7 +162,6 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	struct can_transceiver_phy *can_transceiver_phy;
>  	struct can_transceiver_priv *priv;
>  	const struct can_transceiver_data *drvdata;
> -	const struct of_device_id *match;
>  	struct phy *phy;
>  	struct gpio_desc *silent_gpio;
>  	struct gpio_desc *standby_gpio;
> @@ -171,8 +170,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	u32 max_bitrate = 0;
>  	int err, i, num_ch = 1;
>  
> -	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
> -	drvdata = match->data;
> +	drvdata = device_get_match_data(dev);
>  	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
>  		num_ch = 2;
>  
> @@ -197,7 +195,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  		can_transceiver_phy = &priv->can_transceiver_phy[i];
>  		can_transceiver_phy->priv = priv;
>  
> -		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
> +		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);

It is not obvious why you replaced dev->of_node with NULL here.
It doesn't appear correct. You seem to be breaking OF-based PHY lookups.

>  		if (IS_ERR(phy)) {
>  			dev_err(dev, "failed to create can transceiver phy\n");
>  			return PTR_ERR(phy);
> -- 
> 2.50.1
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

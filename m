Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72043C52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 09:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYTaGmJ2CM1FX6JrlIOlmGvQK/uTmiwWmiIuRZCDRWs=; b=LZJRNiZMRYPjOp
	aBtrmCnL8of12qN+qUENVEFkDzYaowiICbbUFEyNW515Q5MIaBY0I051T3N0O8mMGa5vmm4K6U0CF
	jtPKYeImt+3bhstpfvrA5cVwrmdzBJqySLjZZZppdXIQHPty/pSsDTiNSX4ivsNYmdGHiPk211D0z
	gKUsnWfuKKKlJKHLbuAANXGV2uMKdshkhjPytqx5/G69Bv0MMqGsVKX03XEeLXuXS6XuTR8KTpBV+
	bVEofui+vWVVfTgmakb6/UgVUElZ2SExZqwrHyB6LRxGiCuq1NE9hEoGTNsa3RxoseqjjcK2DJlGC
	4Ouv22taNnDVJLgsw/yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQHf-0000000G1xJ-3pTN;
	Fri, 23 Aug 2024 09:08:39 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQ6x-0000000FywW-3u7O
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 08:57:37 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5bec4fc82b0so4929190a12.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 01:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724403454; x=1725008254; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/VK+R1YErGMIO7vYDEQLL4B3Ghiw/eVr2mZ+qQpA7ME=;
        b=DG7RqbBMIsqc1fyuzFxT1eXtNZ/c1Cgo1BuFrVIRmamCugedFUOWEp30MiGXWh5uM3
         lBqQW+7lPWpUzRFQmyn/O87kJedQItDFKnYhXoohN9rstzRav+a1F8VnYWEyu5FijZ+y
         b6DA29iT2FXuUcETjdVnGCcouthTgxiaxqjUaJuRpPK4J/tPJSSMj5ZJoQt1skasei5Z
         xWw0i/AlmK9s3f0Unc2IDf/uYrDkaxN4kLPv0ZsMEmDmPO0igMElG3Imo1Pb8g40hkSE
         eUGnCy7jBvCk4qOXns14WR18WufXbb+poIyvN8exxTTjD9EQg1PNpPaSGJJPRoiOGOmg
         GrwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724403454; x=1725008254;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/VK+R1YErGMIO7vYDEQLL4B3Ghiw/eVr2mZ+qQpA7ME=;
        b=I16Qs8JZabv1KVGpP0o4rZ40iRDE88YliKVQHvIzkJuQmR41FmElNREGwj6NzPot8Z
         K5NWKoH++L+8v2d9SDeIdswy8QIe84k1945/1STEFvcvUiesJAbf9jEcfw6rkeoNYpfS
         aXetB2jzpH0Fuw3LC6+VjBTaYm+A3iCgBCULW5xEyRJhUaMMNFTVZXcPRVXVKsd6Onjk
         YAAsJ34oI3LRrjFZnJ/9m19zc9GnigTSUC2dIgJa6ZLhWwLkfO/niVwB/yebVgU4gSsj
         lj+EQ2EbuL/EzEy1UhtSg/7x+x3j8zgFuZ2Li1HmiQ9s8Vof9j8VyC4kQpn5WL6vh9DO
         f4ag==
X-Gm-Message-State: AOJu0YxiTcKPhOF7FoeZX8URvjvp1XCoigKQlGADKWuQTGZqM6FxHPZ9
	iK1f/Q/LeuaTu2N2J5CZyn1HmPys7tTDfTbofTU1Xw50bLA6pGC4MmZ8lv9n71Q=
X-Google-Smtp-Source: AGHT+IEuOD6mMoOYP1+ZXn8J654fsnrlqdSXKZuQL602YsnGpaYCCO0kwwL9QjY/ps2l0W7ExxRiUw==
X-Received: by 2002:a17:906:c144:b0:a86:91a5:4d09 with SMTP id a640c23a62f3a-a86a309ae59mr140738466b.26.1724403454000;
        Fri, 23 Aug 2024 01:57:34 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f299e28sm230756866b.56.2024.08.23.01.57.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:57:33 -0700 (PDT)
Message-ID: <8faa6b6d-a013-4a71-a8b7-af02ac92d94b@tuxon.dev>
Date: Fri, 23 Aug 2024 11:57:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
 initialize the bus
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-11-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB113468A6CA4ADBCA577670AD486882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113468A6CA4ADBCA577670AD486882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_015735_989822_350FB8CF 
X-CRM114-Status: GOOD (  26.26  )
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

Hi, Biju,

On 23.08.2024 10:35, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Thursday, August 22, 2024 4:28 PM
>> Subject: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to initialize the bus
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The Renesas RZ/G3S need to initialize the USB BUS before transferring data due to hardware limitation.
>> As the register that need to be touched for this is in the address space of the USB PHY, and the UBS
>> PHY need to be initialized before any other USB drivers handling data transfer, add support to
>> initialize the USB BUS.
>>
>> As the USB PHY is probed before any other USB drivers that enables clocks and de-assert the reset
>> signals and the BUS initialization is done in the probe phase, we need to add code to de-assert reset
>> signal and runtime resume the device (which enables its clocks) before accessing the registers.
>>
>> As the reset signals are not required by the USB PHY driver for the other USB PHY hardware variants,
>> the reset signals and runtime PM was handled only in the function that initialize the USB BUS.
>>
>> The PHY initialization was done right after runtime PM enable to have all in place when the PHYs are
>> registered.
> 
> There is no user for this patch. The first user is RZ/G3S and you should merge this patch with
> next one.

I think this is a matter of taste... This is how I usually format the
patches (for scenarios like this) and got no request for squashing.

Anyway, I can do it your way, too.

Thank you,
Claudiu Beznea

> 
> Cheers,
> Biju
> 
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 50 ++++++++++++++++++++++--
>>  1 file changed, 47 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> index 7594f64eb737..cf4299cea579 100644
>> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> @@ -19,12 +19,14 @@
>>  #include <linux/platform_device.h>
>>  #include <linux/pm_runtime.h>
>>  #include <linux/regulator/consumer.h>
>> +#include <linux/reset.h>
>>  #include <linux/string.h>
>>  #include <linux/usb/of.h>
>>  #include <linux/workqueue.h>
>>
>>  /******* USB2.0 Host registers (original offset is +0x200) *******/
>>  #define USB2_INT_ENABLE		0x000
>> +#define USB2_AHB_BUS_CTR	0x008
>>  #define USB2_USBCTR		0x00c
>>  #define USB2_SPD_RSM_TIMSET	0x10c
>>  #define USB2_OC_TIMSET		0x110
>> @@ -40,6 +42,10 @@
>>  #define USB2_INT_ENABLE_USBH_INTB_EN	BIT(2)	/* For EHCI */
>>  #define USB2_INT_ENABLE_USBH_INTA_EN	BIT(1)	/* For OHCI */
>>
>> +/* AHB_BUS_CTR */
>> +#define USB2_AHB_BUS_CTR_MBL_MASK	GENMASK(1, 0)
>> +#define USB2_AHB_BUS_CTR_MBL_INCR4	2
>> +
>>  /* USBCTR */
>>  #define USB2_USBCTR_DIRPD	BIT(2)
>>  #define USB2_USBCTR_PLL_RST	BIT(1)
>> @@ -111,6 +117,7 @@ struct rcar_gen3_chan {
>>  	struct extcon_dev *extcon;
>>  	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
>>  	struct regulator *vbus;
>> +	struct reset_control *rstc;
>>  	struct work_struct work;
>>  	struct mutex lock;	/* protects rphys[...].powered */
>>  	enum usb_dr_mode dr_mode;
>> @@ -125,6 +132,7 @@ struct rcar_gen3_chan {  struct rcar_gen3_phy_drv_data {
>>  	const struct phy_ops *phy_usb2_ops;
>>  	bool no_adp_ctrl;
>> +	bool init_bus;
>>  };
>>
>>  /*
>> @@ -650,6 +658,35 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
>>  	return candidate;
>>  }
>>
>> +static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
>> +{
>> +	struct device *dev = channel->dev;
>> +	int ret;
>> +	u32 val;
>> +
>> +	channel->rstc = devm_reset_control_array_get_shared(dev);
>> +	if (IS_ERR(channel->rstc))
>> +		return PTR_ERR(channel->rstc);
>> +
>> +	ret = pm_runtime_resume_and_get(dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = reset_control_deassert(channel->rstc);
>> +	if (ret)
>> +		goto rpm_put;
>> +
>> +	val = readl(channel->base + USB2_AHB_BUS_CTR);
>> +	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
>> +	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
>> +	writel(val, channel->base + USB2_AHB_BUS_CTR);
>> +
>> +rpm_put:
>> +	pm_runtime_put(dev);
>> +
>> +	return ret;
>> +}
>> +
>>  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)  {
>>  	const struct rcar_gen3_phy_drv_data *phy_data; @@ -703,6 +740,15 @@ static int
>> rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>>  		goto error;
>>  	}
>>
>> +	platform_set_drvdata(pdev, channel);
>> +	channel->dev = dev;
>> +
>> +	if (phy_data->init_bus) {
>> +		ret = rcar_gen3_phy_usb2_init_bus(channel);
>> +		if (ret)
>> +			goto error;
>> +	}
>> +
>>  	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
>>  	if (phy_data->no_adp_ctrl)
>>  		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN; @@ -733,9 +779,6 @@ static int
>> rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>>  		channel->vbus = NULL;
>>  	}
>>
>> -	platform_set_drvdata(pdev, channel);
>> -	channel->dev = dev;
>> -
>>  	provider = devm_of_phy_provider_register(dev, rcar_gen3_phy_usb2_xlate);
>>  	if (IS_ERR(provider)) {
>>  		dev_err(dev, "Failed to register PHY provider\n"); @@ -762,6 +805,7 @@ static void
>> rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
>>  	if (channel->is_otg_channel)
>>  		device_remove_file(&pdev->dev, &dev_attr_role);
>>
>> +	reset_control_assert(channel->rstc);
>>  	pm_runtime_disable(&pdev->dev);
>>  };
>>
>> --
>> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

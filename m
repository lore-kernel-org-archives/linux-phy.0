Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68D5C7EE3A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 08:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cau4JukevDEU+bmJRUmkK+P4ozrrnHNiYKgjm6+x0H4=; b=N0ZcY6dJeKUtJegl/PnqcJo0bu
	5d8xJMZe8oDUqTnuDrn/s7eSqcNYgvu1fqcAh1y2Nss8Jhvieyizb6OoJabYK1/Vpu3Ecljo/F93y
	b4Yz30azUR0r7Fg6y5EZbMx/g6xsvl0JXKQpRgzclrtTmcOkst2w5V/SMR9AIYcIfE+bkH75ddtLT
	O2d1lpDLq6lDopBnUNFIgBNwtcJJ5dyZHfhFKisaMFLm4+52M+F69ctyEvt1YiDotkfGA5EixEeCA
	6UiLVOmpr9EGCxBc39lxMk5a1nyW05WvhSNim2mwiKUWTdT/aoPwTwx96YQ0XSYZadCDzmUZwsWUR
	CklojHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjafE-00000001BBF-2IAr;
	Thu, 29 Aug 2024 08:37:56 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaYP-000000019NI-3S2m
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 08:30:55 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-42bac9469e8so3286105e9.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 01:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724920252; x=1725525052; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/fW71FS0lmTuV1wHWmHmOLHgNUvex8iYSoVrr1nHB6s=;
        b=tU0ikx02jPOrg4Ux36zvWU7WPuQIyV1eMZfc7gE6VZVH0P2O0+lv1pn60x+G+VR/Nv
         lPZcmFG5Ttu1JXtkpKtHAuBnV3PudwCcb5aB6OqAhJXgy0PzVqT3X2EYcSbgpL4GLspx
         7YwGDXcLqDmyfHUVnYhgRYL4WH0hB3ChO3zyB+y5kUvpoQP2IUBhnFMduA7UCbNPXQsn
         792XUAogHDkWiI+Cn8SFWFszgm8a3MKbuZLrRaS+qdrj4OpGH3W0tR8BbVXx+pm52+Fu
         8JUoZuNNw5FJ0x86olEIhaSr3k/EvyaXXNOXK/usf+CAK46i63/4Iz0NullnZlr20g6i
         PNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724920252; x=1725525052;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/fW71FS0lmTuV1wHWmHmOLHgNUvex8iYSoVrr1nHB6s=;
        b=eQ4fKqzg6KOe15cNBIAIWWKkaT8TgvSXDKtBKirr2c1FmnyR6xNuvtHSChfn50aInw
         33kUdIDTfPhW2/jH+qhdK9PfDQtVxEp26pf6QwR/9GL5AQ5faDoCu+5zntKKZjBRSK/4
         hRLurI5XXF5MAGyodXZOrEvhdhEXL5TwJwZI7y0Wb0gd9hRWmB5Du24mx6GUYHplYj30
         I12hbZFqMXvN5Kx5Hjce1yj2YOPy2lAsC70y/4Gb6X/o4lC4jph/YOHiMH0NUUPc5vJX
         1XfdP8iWKYTZxF18QKgEOO1yU+mzktRE+pchSfQWEjuqSVaUTmR+YM7j+fLeUYTOtMYw
         fxHA==
X-Forwarded-Encrypted: i=1; AJvYcCWyUK6HhDBW3bcFZmfxs5TpIVBuudImgGMcoH5x5/r9T3Y77bZdGgcPfsKMH5u6+SOA8ozLqmms0z0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEMMO1HMNIaVaMGE0bjjLer1ULrWOxIQExCu7dhjs65eRLi35y
	/L+ooKhrfbyNAGPHbieIfAsJxp5EXeJ+SUSaS0fIdU9AYW3ncT9/TTNSxvTG2BatbomWCzSU84r
	I
X-Google-Smtp-Source: AGHT+IHGuznT7s9K3x5HeSkF7fCIjIIH9qT4bN2dkHvKGxtIsO2SxucelcGw+Ke16+3q8DaHNkERJA==
X-Received: by 2002:a05:600c:5110:b0:426:6696:9e50 with SMTP id 5b1f17b1804b1-42bb02591d1mr12515665e9.14.1724920251352;
        Thu, 29 Aug 2024 01:30:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:12f5:c9c:a0e1:6915? ([2a01:e0a:982:cbb0:12f5:c9c:a0e1:6915])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba639652esm44084155e9.2.2024.08.29.01.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2024 01:30:50 -0700 (PDT)
Message-ID: <79a643de-9808-4866-9e41-8bd5ab55ffed@linaro.org>
Date: Thu, 29 Aug 2024 10:30:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
 <20240829-nxp-ptn3222-v1-2-46906bc4747a@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20240829-nxp-ptn3222-v1-2-46906bc4747a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_013054_052597_C33A9CCD 
X-CRM114-Status: GOOD (  23.41  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29/08/2024 10:21, Dmitry Baryshkov wrote:
> The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> translation between eUSB2 and USB2 signalling schemes. It supports all
> three data rates: Low Speed, Full Speed and High Speed.
> 
> The reset state enables autonegotiation of the PHY role and of the data
> rate, so no additional programming is required.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/Kconfig           |  11 ++++
>   drivers/phy/Makefile          |   1 +
>   drivers/phy/phy-nxp-ptn3222.c | 119 ++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 131 insertions(+)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index dfab1c66b3e5..cb06a7f79740 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -82,6 +82,17 @@ config PHY_AIROHA_PCIE
>   	  This driver create the basic PHY instance and provides initialize
>   	  callback for PCIe GEN3 port.
>   
> +config PHY_NXP_PTN3222
> +	tristate "NXP PTN3222 1-port eUSB2 to USB2 redriver"
> +	depends on I2C
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support NXP PTN3222 1-port eUSB2 to USB2 Redriver.
> +	  This redriver performs translation between eUSB2 and USB2 signalling
> +	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
> +	  Speed and High Speed.
> +
>   source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 5fcbce5f9ab1..b64247046575 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -11,6 +11,7 @@ obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
>   obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
>   obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
>   obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
> +obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
>   obj-y					+= allwinner/	\
>   					   amlogic/	\
>   					   broadcom/	\
> diff --git a/drivers/phy/phy-nxp-ptn3222.c b/drivers/phy/phy-nxp-ptn3222.c
> new file mode 100644
> index 000000000000..429a91910f14
> --- /dev/null
> +++ b/drivers/phy/phy-nxp-ptn3222.c
> @@ -0,0 +1,119 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2024, Linaro Limited
> + */
> +
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +
> +#define NUM_SUPPLIES 2
> +
> +struct ptn3222 {
> +	struct i2c_client *client;
> +	struct phy *phy;
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data supplies[NUM_SUPPLIES];
> +};
> +
> +static int ptn3222_init(struct phy *phy)
> +{
> +	struct ptn3222 *ptn3222 = phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret = regulator_bulk_enable(NUM_SUPPLIES, ptn3222->supplies);
> +	if (ret)
> +		return ret;
> +
> +	gpiod_set_value_cansleep(ptn3222->reset_gpio, 0);
> +
> +	return 0;
> +}
> +
> +static int ptn3222_exit(struct phy *phy)
> +{
> +	struct ptn3222 *ptn3222 = phy_get_drvdata(phy);
> +
> +	gpiod_set_value_cansleep(ptn3222->reset_gpio, 1);
> +
> +	return regulator_bulk_disable(NUM_SUPPLIES, ptn3222->supplies);
> +}
> +
> +static const struct phy_ops ptn3222_ops = {
> +	.init		= ptn3222_init,
> +	.exit		= ptn3222_exit,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int ptn3222_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct phy_provider *phy_provider;
> +	struct ptn3222 *ptn3222;
> +	int ret;
> +
> +	ptn3222 = devm_kzalloc(dev, sizeof(*ptn3222), GFP_KERNEL);
> +	if (!ptn3222)
> +		return -ENOMEM;
> +
> +	ptn3222->client = client;
> +
> +	ptn3222->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +						      GPIOD_OUT_HIGH);
> +	if (IS_ERR(ptn3222->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ptn3222->reset_gpio),
> +				     "unable to acquire reset gpio\n");
> +
> +	ptn3222->supplies[0].supply = "vdd3v3";
> +	ptn3222->supplies[0].init_load_uA = 11000;
> +	ptn3222->supplies[1].supply = "vdd1v8";
> +	ptn3222->supplies[1].init_load_uA = 55000;
> +
> +	ret = devm_regulator_bulk_get(dev,
> +				      NUM_SUPPLIES,
> +				      ptn3222->supplies);

Suggestion only, you could switch to devm_regulator_bulk_get_const()

> +	if (ret)
> +		return ret;
> +
> +	ptn3222->phy = devm_phy_create(dev, dev->of_node, &ptn3222_ops);
> +	if (IS_ERR(ptn3222->phy)) {
> +		dev_err(dev, "failed to create PHY: %d\n", ret);
> +		return PTR_ERR(ptn3222->phy);
> +	}
> +
> +	phy_set_drvdata(ptn3222->phy, ptn3222);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +
> +	return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +static const struct i2c_device_id ptn3222_table[] = {
> +	{ "ptn3222" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, ptn3222_table);
> +
> +static const struct of_device_id ptn3222_of_table[] = {
> +	{ .compatible = "nxp,ptn3222" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, ptn3222_of_table);
> +
> +static struct i2c_driver ptn3222_driver = {
> +	.driver = {
> +		.name = "ptn3222",
> +		.of_match_table = ptn3222_of_table,
> +	},
> +	.probe = ptn3222_probe,
> +	.id_table = ptn3222_table,
> +};
> +
> +module_i2c_driver(ptn3222_driver);
> +
> +MODULE_DESCRIPTION("NXP PTN3222 eUSB2 Redriver driver");
> +MODULE_LICENSE("GPL");
> 

Apart that, it looks fine, please add my:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

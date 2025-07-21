Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E484FC83F26
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 11:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIm232+xriH5Jyx0sHyPGPRO4g+3VBP0hJcuErVdwXo=; b=hSLJcXRq5ko0WM
	abE0JQ5WH7N09AQdtWyeivtRpZmm+igvp2UtVQRiOAsIGeMBHF/G1si0qiZJ+1wYsQVbitNWgJNil
	uh4moyBZo2jFb6jpYhJ/pOUQvTBzg5JLh90R4jETk0TxXq/OQ/1DJylvNxRVI8bcf6nlQwF8oOQk/
	n+3zOlwziLi0M+M8qsfmrxL/DpcYd/fmp7mI5OlyOuBVUifytKXrtdF8M5CsQ4iA90IlFdYV7lSFR
	0dDOfnhH4m1PB7Ndxy+5IrQskcWliGPrU8YdOWcNuOLnkKsMW56Zg7UdrmuLtlyUwYv/YHtC0b3FE
	qRoWScIf99p8flhW9xwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udosI-0000000H8Xo-28Gk;
	Mon, 21 Jul 2025 11:40:06 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udo0U-0000000GzHy-15wX
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 10:44:31 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3a4fb9c2436so2366754f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 03:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753094668; x=1753699468; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jv8CKZAnBLUK/0fb5CiuD7Hp6E+b8QPJo8tRAQ5ZhDg=;
        b=b+jtgibRGufFMBfBSBYQTSHQQO2hv+MGt5eu7jtWrDrx/WKrUkarFZsVzdnhFqg29j
         +XevyFFWc9lLZpBNeoJ9kLjIYwIRG3sL275hI/FsnTIHXukhG2p+Om/XGPRd2NvklH6l
         55JXppn7P+5kYxMOUQ9OKbmoPWbpDTkdnd7Ch1grgJG/v+ATX5xM6xcN9xyXdZIr8TOZ
         ThXMFqlVqmBvh6MQE9j0nZDeHFHbweZ+TPrgqBNH94fuSv71zkp27YnXNTHXD4jtxAFB
         DzfRo6RnaX6lHcKFr6k4iOAgGxHUjtgbEqm++ugNQAm+GpPbpLlVqC2QzdmzmfFMwAmt
         Nhjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753094668; x=1753699468;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jv8CKZAnBLUK/0fb5CiuD7Hp6E+b8QPJo8tRAQ5ZhDg=;
        b=MofqcDRO5MYDwHZhkYmOR42yn4yLooB0bHuGLGMDb6aErxy9JOB5VUxFs/u8B0ydSq
         Nu3UndMjB0n6c51R0KJO70waUm/rR68v80AJjyUOXb+1FbZA479eLg0EWKwkCwgWU1P9
         ytTQ7d3R+5jv9HrG/8Po9Qc1mKetYpkh74Q9TF/unj1iWBGrZYgtfIaMNiO469oM0gV2
         Oe3QOokq/DyNuFjc0v/54jIL2pVABjbmtoSbJD6XWAhfbBhxMwiy0wcbV/RH8OJ7rhuI
         /cm/EbA5BIu/QkBhcK6PqKYCffHvpXeZzSOrDiCZflFdlsO4JCKWFR8VOTqU26R0BFBf
         WJ5w==
X-Forwarded-Encrypted: i=1; AJvYcCVSHW5z+CxvRRcJXKjMBhZygPnzjVHlB9/cvHdFYEELebDa6lt3BJeWR9yqZwyhY5DLvHjwoSGaAPQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxH4QIKfVCge2Xjdz3vsC3D8gt/S4VgY5Owx91rhHGUiX42cZik
	aH9S/O7pbtbkFMmwVC2WKTJHYbrS3VIYBV+UoCUw+2m6qvTYv8Hykqu8l6OGM20gAA4=
X-Gm-Gg: ASbGncufidOc7BFo4D2FndW9nBurYJCgRx9sLdYIV64u/NyzGmPYpSAT6hHULV4zuHz
	rThmbGaqRI90az864s/lmONf9jBvUUVC+WbwhrM0nIQJwbbVMgyvzpCQZ7Ghgn42uFUJ7VxF/Y9
	QO7URHEfIY9iEydTeie4p26uhgj1k/UHaVqg1JXE/e/L4UDV5Vk5uWXhlFe3ZRcx9a6WY3lGlh+
	/y8fsnWmOK9QPot/ixWktMkvnOOlcQkobADoiOb375hSiXe8sCssuXajfxHSsSHGODehOh+WXJH
	Nqbp07eR7nVGMV5FThEoxy1ZlvaHK9CpYCXFcwgvAI7K+mB3pVJIKR9r9feXa5BDl59CuUhrloL
	nPSzQenH4Cgp/7KaZsiHtfMfiPcK5cUpctgE2LDmn3abxGK3pLFHOYsFyD7+TrJbg88QcoEl0tQ
	==
X-Google-Smtp-Source: AGHT+IHsr6BfHmmGvAFEpmk7FK7MXUXtHfZVvvvivtdI5mefMv0lLuRMGQqdMBTcEDjNOnr/mFRYmQ==
X-Received: by 2002:a05:6000:4108:b0:3a4:dc42:a0c3 with SMTP id ffacd0b85a97d-3b61b22ec16mr7504872f8f.56.1753094668208;
        Mon, 21 Jul 2025 03:44:28 -0700 (PDT)
Received: from [192.168.1.36] (p549d4bd0.dip0.t-ipconnect.de. [84.157.75.208])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48c40sm10159988f8f.58.2025.07.21.03.44.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 03:44:27 -0700 (PDT)
Message-ID: <e724e6a2-21a8-436a-8809-ce73c0afa433@linaro.org>
Date: Mon, 21 Jul 2025 12:44:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 sboyd@kernel.org
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
 krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-3-angelogioacchino.delregno@collabora.com>
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <20250721075525.29636-3-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_034430_305976_2B5298BA 
X-CRM114-Status: GOOD (  18.40  )
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

Hi Angelo,

On 21/07/2025 09:55, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate a SDAM device, internally located in
> a specific address range reachable through SPMI communication.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for SDAM
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.

This is honestly a really nice improvement :D>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/nvmem/qcom-spmi-sdam.c | 41 +++++++++++++++++++++++++---------
>  1 file changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/nvmem/qcom-spmi-sdam.c b/drivers/nvmem/qcom-spmi-sdam.c
> index 4f1cca6eab71..1b80e8563a33 100644
> --- a/drivers/nvmem/qcom-spmi-sdam.c
> +++ b/drivers/nvmem/qcom-spmi-sdam.c
> @@ -9,6 +9,7 @@
>  #include <linux/nvmem-provider.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> +#include <linux/spmi.h>
>  
>  #define SDAM_MEM_START			0x40
>  #define REGISTER_MAP_ID			0x40
> @@ -20,7 +21,6 @@
>  struct sdam_chip {
>  	struct regmap			*regmap;
>  	struct nvmem_config		sdam_config;
> -	unsigned int			base;
>  	unsigned int			size;
>  };
>  
> @@ -73,7 +73,7 @@ static int sdam_read(void *priv, unsigned int offset, void *val,
>  		return -EINVAL;
>  	}
>  
> -	rc = regmap_bulk_read(sdam->regmap, sdam->base + offset, val, bytes);
> +	rc = regmap_bulk_read(sdam->regmap, offset, val, bytes);
>  	if (rc < 0)
>  		dev_err(dev, "Failed to read SDAM offset %#x len=%zd, rc=%d\n",
>  						offset, bytes, rc);
> @@ -100,7 +100,7 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
>  		return -EINVAL;
>  	}
>  
> -	rc = regmap_bulk_write(sdam->regmap, sdam->base + offset, val, bytes);
> +	rc = regmap_bulk_write(sdam->regmap, offset, val, bytes);
>  	if (rc < 0)
>  		dev_err(dev, "Failed to write SDAM offset %#x len=%zd, rc=%d\n",
>  						offset, bytes, rc);
> @@ -110,28 +110,47 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
>  
>  static int sdam_probe(struct platform_device *pdev)
>  {
> +	struct regmap_config sdam_regmap_config = {
> +		.reg_bits = 16,
> +		.val_bits = 16,

I believe registers are 8 bits wide, at least on Qualcomm platforms.

Kind regards,
-- 
// Casey (she/her)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

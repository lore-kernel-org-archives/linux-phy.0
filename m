Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DA8C47074
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 19:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPyouwJ/sN914QLi2ohs+1BfWrLTGbGF47+ofLup9rw=; b=zcH8jCDVne+kpT
	8yDytye5kBa0+6hpC4ClaaIbN0SAE1oHcB7GgmEv/YM6z9U34A/+p8gOao/xO+vknOn66DJFl4pLF
	ibzPQ/Pv2DszTx4fsc57YDGyPamxBK0fGLzRpKdrgyXDc6xTMrMEDYgMFTTQ5TBPm4c+4Vi9bwKbr
	mbVBQShoCtuKF36bTh6vnJtjtJthM3oKDVCpABfGnhkJM1vDlo41Flsg0BEWLtwcf+YiXxx7Qav7h
	t3c1cwJGvITev2k+VE/UIQy0OZ9L7YlA/0G+tOYR/cCrfTEYV3F0jr8UCgdxkJrFzs1FlY4A1ZvnW
	ZzmAOcuac/gN7Y7rkHCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLT9G-00F2Xp-2K;
	Thu, 04 Jan 2024 19:12:58 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLT9E-00F2Wm-0F
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 19:12:57 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50e67e37661so1005842e87.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Jan 2024 11:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704395573; x=1705000373; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=04Sj92+QLWqEQ6y2Wbd70hX6tL6uLlbH/Urgy/yOj4k=;
        b=dbvznYUwEyjOoWhcM7j26EiLilsIAFiFfc9Bt/oow/0/ezM4mwXBtzG3cF9WN3lSU7
         DxFewB/DYSNIw38C7WtoMLCVUnoUOogWo8xlgPXtV61fK1BKrlS3mdPhsX63Ez50jqRF
         NBqN49/KilWuSVFijcoTYnHzjX0ho+oc3ezI6wRtVq0lKnlozOaDSMUSu75h1sx3NXGr
         FtO8aP7FXHeX34/CkJfkTM4ItgrJS/9BSXTZHzsvYAYPK9BT1n1XgxOfbwVO0Vjj5rBI
         iExJ5ydAuRccFzaSQOwY3C2hHMlX6zLFwMJQtBjK37yRMFh+LxfSwHGudhKRL/irqohD
         P4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704395573; x=1705000373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=04Sj92+QLWqEQ6y2Wbd70hX6tL6uLlbH/Urgy/yOj4k=;
        b=I1XilXHvdYbCa+ZvYHEbVFkQcUxj6Fxw3+TM3HAUuhXw0QKLEBGrI8OPH5mBD1LGvO
         qJZc4vbBryFZTE22wBSOW44ua4KkruHjrxwTZOF7xvq8UMBOTKnwNbofECHQFdFhtXQr
         AcPzaBdf5f4qd7fYZpJj1vLCUOfVX4GkGy5OpTC3ix2nW28sftYzcYM9KEafcsz1dLBZ
         3NOH6kYg/bCK+fWu1Q2IqDPWH0ayQDcewdyHwUsjIddlX80Lf98ciSXiKUo7Mi4iES2r
         1m77PCmz7Dtci8aSOtz3h8JNGPf3Nw/KX2NqKm/71wQIy6xkYKwYzlSEP7ye2a9YLSO5
         7aBA==
X-Gm-Message-State: AOJu0YxY1311g/l5hQhPIde/GzLMgpIHOrbt9sENkddyoR3z7UVqXvPy
	lQw5Lb71sX5gCfWwjpi52/DPUchlC/byZw==
X-Google-Smtp-Source: AGHT+IGhYsG+HQD4oALPgtDqlROhyrgVD1QlXnV8T4qjomqRtAxBfF7MsbhciIOKImhEgYZaEHJelA==
X-Received: by 2002:a05:6512:3c84:b0:50e:8983:8743 with SMTP id h4-20020a0565123c8400b0050e89838743mr734425lfv.87.1704395572914;
        Thu, 04 Jan 2024 11:12:52 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id zr16-20020a170907711000b00a26af4d96c6sm13068108ejb.4.2024.01.04.11.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 11:12:52 -0800 (PST)
Date: Thu, 4 Jan 2024 21:12:51 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qualcomm: eusb2-repeater: Fix the regfields for
 multiple instances
Message-ID: <ZZcDM1CU3e1XfS/B@linaro.org>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
 <20240104-phy-qcom-eusb2-repeater-fixes-v1-1-047b7b6b8333@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240104-phy-qcom-eusb2-repeater-fixes-v1-1-047b7b6b8333@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_111256_111989_8642D198 
X-CRM114-Status: GOOD (  21.36  )
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

On 24-01-04 16:52:11, Abel Vesa wrote:
> The global regmap fields offsets currently get incremented with the base
> address of the repeater. This issue doesn't get noticed unless the probe
> defers or there are multiple repeaters on that platform. So instead of
> incrementing the global ones, copy them for each instance of the
> repeater.
> 
> Fixes: 4ba2e52718c0 ("phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index a623f092b11f..5f5862a68b73 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -101,6 +101,7 @@ struct eusb2_repeater {
>  	struct regmap_field *regs[F_NUM_FIELDS];
>  	struct phy *phy;
>  	struct regulator_bulk_data *vregs;
> +	struct reg_field *regfields;
>  	const struct eusb2_repeater_cfg *cfg;
>  	enum phy_mode mode;
>  };
> @@ -140,8 +141,8 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
>  
>  static int eusb2_repeater_init(struct phy *phy)
>  {
> -	struct reg_field *regfields = eusb2_repeater_tune_reg_fields;
>  	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
> +	struct reg_field *regfields = rptr->regfields;

Oups, this is not needed. Will drop after I get some more comments on
this.

>  	struct device_node *np = rptr->dev->of_node;
>  	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
>  	u8 override;
> @@ -262,15 +263,21 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
>  	if (!regmap)
>  		return -ENODEV;
>  
> +	rptr->regfields = devm_kmemdup(dev, eusb2_repeater_tune_reg_fields,
> +				       sizeof(eusb2_repeater_tune_reg_fields),
> +				       GFP_KERNEL);
> +	if (!rptr->regfields)
> +		return -ENOMEM;
> +
>  	ret = of_property_read_u32(np, "reg", &res);
>  	if (ret < 0)
>  		return ret;
>  
>  	for (i = 0; i < F_NUM_FIELDS; i++)
> -		eusb2_repeater_tune_reg_fields[i].reg += res;
> +		rptr->regfields[i].reg += res;
>  
>  	ret = devm_regmap_field_bulk_alloc(dev, regmap, rptr->regs,
> -					   eusb2_repeater_tune_reg_fields,
> +					   rptr->regfields,
>  					   F_NUM_FIELDS);
>  	if (ret)
>  		return ret;
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98911C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SOZMWNTvgVEFlMXMcNoqrHj37EeN0KXX1wAevrLY5lw=; b=4xsaaQA5m4m8JWxOCVBADrya1D
	n+pvOYHGaMJZ+lsvvKPYOE3nSBsKyUVe8QURQ4TQXiYwsAt6oU1O6wMfE2Z0lYjrxXNofr28Fq7Fl
	OqCD/mTFbPzO9XvYJCM6A/2m3pzlL2+7WTdcXFB5A4GUDOVc6CtwG2MVVtVHnzUGfGru01w6/zcEm
	87ORtkkxM2Jmv0jNAovvvGxZo+ZbdMhTgf5S2ZgOiJtv1O6MUiyj2CntVMg+bpu8ToOrsG1reLoLw
	/xcOjfOmSQQcUyG2hG9GtImXDls155CEMUllCTjERRpSlsS1rmCecHM3JEvCkfJ92TwABWGtAFH42
	1rLNoXIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLbR-00FRxR-Tv; Thu, 22 Sep 2022 12:46:53 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLaz-00FRfx-HP
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:46:26 +0000
Received: by mail-wr1-x436.google.com with SMTP id g3so15301150wrq.13
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=olI7b5Ge4I5pDP0ro1CkQmQcdDvjVFooXcdgp3/TKnE=;
        b=R1sFjfsHnRXTCAmXwdmcjBuB2a2S6u9NS/QL/8voRobOHxqb1OQSOb7mDYhLNsa7Qu
         vF3dVeD+TNRfd0dfBQoSBqIrEiXJ603FcXHHM5/mUrqJS4mE7aGzipguPHCLc9WpOF6I
         zFKB4dCBHz0Hk0wuiYt1/C++jl6HhPeIJYD2YU5KC5e8NERxBJluTect+Rm9cKyvF7Ya
         ajzcHPLN49i7cxNWmsqBfvDdwG7syAFYLCiLWbP91jsVlDBQJbc+gn/oTjEOZGT4K/OB
         1+XidpE3NdYX1rHZMt4GYAQs+wG3Wl3G7ZuOOhrrIyuJY+BIu2mPKhbC8VZDjRCYyiV9
         iWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=olI7b5Ge4I5pDP0ro1CkQmQcdDvjVFooXcdgp3/TKnE=;
        b=iatn8T1yvwRRf3LZHulj1STPAFhZNvf7LpvPJ9cnFxqASngBeL6cDOQ6EgIbVYZmt4
         SYf5iJCUAZxlimEfZtbzMuSoAhWGAhcfOV2nfn4ETKyNu0p8CtIGLGPI6QXOVCVv3EsU
         K7lI7mc8mYmp3lF2AspC+sNDX6686HSjx4fRHVWZh9IzIjL4u0SHe8o4WdzB/YKsTM0C
         iVCwJiT/7B7jZPGJexostq49t8SQkboKV7LWZG86TW1PiRQHb2RszihJIy+ZbUciNzhI
         vHjYxOb6HqwNixTPSp5tmMDCTV9+UhsEBPRFIFX21AFdphNZWSTvVlKjx/UWA9Q2rXna
         GFJw==
X-Gm-Message-State: ACrzQf3/VydNTXI5fjxaNy5vz2zXsS/LO1CeZM07+f31TbqvMl3LWRG3
	Q4Oo/ik5w5mkxF8wt+C4bWQbObVqyR/SqlkE
X-Google-Smtp-Source: AMsMyM6OKOZNESjdUhYEdSTyCimFaJmjy2hdZhxkKfSMpP545EHsExTK+its5/+pDoPSmx+ul05hrA==
X-Received: by 2002:a5d:574a:0:b0:228:b90c:e5ee with SMTP id q10-20020a5d574a000000b00228b90ce5eemr1939560wrw.328.1663850781834;
        Thu, 22 Sep 2022 05:46:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6aa5:ee77:c3d6:a9d6? ([2a01:e0a:982:cbb0:6aa5:ee77:c3d6:a9d6])
        by smtp.gmail.com with ESMTPSA id l14-20020a5d410e000000b00228aea99efcsm5198877wrp.14.2022.09.22.05.46.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:46:21 -0700 (PDT)
Message-ID: <548bec54-c795-f500-39e2-970c3580198a@linaro.org>
Date: Thu, 22 Sep 2022 14:46:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 5/7] phy: qcom-qmp-usb: Use dev_err_probe() to simplify
 code
Content-Language: en-US
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-6-yuancan@huawei.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220922111228.36355-6-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_054625_656669_837EAEC7 
X-CRM114-Status: GOOD (  17.39  )
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

On 22/09/2022 13:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index fba8e40441cb..41f91829af17 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -2821,12 +2821,9 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
>   		return ret;
>   
>   	ret = qcom_qmp_phy_usb_vreg_init(dev, cfg);
> -	if (ret) {
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get regulator supplies: %d\n",
> -				ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to get regulator supplies\n");
>   
>   	num = of_get_available_child_count(dev->of_node);
>   	/* do we have a rogue child node ? */

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

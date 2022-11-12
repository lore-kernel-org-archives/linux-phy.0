Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47129C43217
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfWedsj1W+dwWfCIwInaPrjGTf7cyrBkhfNiFW67nbk=; b=yX9tzPlqsDz2+S
	cUSOOW8Wrwalpy/aq4U+HUOK3IL2UzX8SeSGY2cRsgw36n7hNGg+hLuuZsipIZ8g3m+DCr6AlW9/9
	lRDL3syoY/jFQlEcVA2Hjc2Oki7MzHPp/B5BSJOlTwyiJ4J5f1jYnZVA2DjsPmbOzBXUpqloAXzN5
	nsAX1rXqVmMRlMuw1YUyqaKvSm1+Nv79AK7gbq7qGTKjJ+DyOykUaMDxxpZWR8W78qChubnm559Gj
	zie3DlWXASmRPFeHqh7ov5IyJq61Cz8UepwqvHDU+MLgjd4Fgk3hwPG0we9mziDceCrCfZFOpnm91
	ygOBi50U+rF6A3s5k/ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjjR-003bjM-9s; Sat, 12 Nov 2022 06:11:09 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjjN-003bhQ-GZ
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:11:08 +0000
Received: by mail-lf1-x12b.google.com with SMTP id a29so11242066lfj.9
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xgEFrQxF5erS41BXftmnuJVC4f2mIZC62wulZ8QcVq4=;
        b=unfxgYsI+Wp7KKEqj45kLKcOIMODrgTPzgRv5i2bTfxwLtr7a0DLFbTQXnQPBqNL06
         6NTuCi4tbd0qt3IGLJVR6rUNW0G/v+4iISGtfcv104x+PBoqeyzlwVB33K2+Mszhbs81
         90LvzuxvW8A5CNUiCw0ddj2Q7C4SFFovCnZGg4TefYPPQ0Rx84E/I5diXMwcUmhBdAg7
         XMVG5DA3VzLSTwK3Vi3zYWBu7kvKDoo0ovYAoylyBvGzPbg72hdR2QyY1phKwUT9bc1p
         LqLV0lhjrpeLTDbk3oBB7R8qJuHH9PLWlLAYkMx36OVpQWlYbEL7yc6e3M/TJbT1NTyb
         z1ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xgEFrQxF5erS41BXftmnuJVC4f2mIZC62wulZ8QcVq4=;
        b=ejMa7iC/x+zi5CezDau7CC2ShPWusbVwlWoZA5SapCu5yGUXc/9fzgHw5npfg6lglp
         qdjkah1Oh76c5g335c1lYcBDy6km4YNDakTlKu+I1lp7d9bG08sJfAacAeCzgasOq4//
         kG6kCFia2qlsckL13av2UfB9Fx+Qritn2945n1ZO3KPoy0bfr2cmlt17UFG0Gsu2GCWk
         U3MYay894KJBolFHtmYFCdDwu8HYCl/5XpGQIZMxJIx4c5KpcVRV6xytAEEQgjXsPVsr
         ISmfWA8ULj5OC8h+jGXH/KwE1y/OlJPqrAz0U3X85jj72XMDR2NQ2Rq+rrdAFNZzfu6j
         Pjzg==
X-Gm-Message-State: ANoB5pmaJSjz5F0onfteO/WzEp7YRmCg4emVXwmDnr32iU2MNs5EhYf3
	byxv3RjrqTey1Zz7Lm4xclqlOr4vi98FZ0gv
X-Google-Smtp-Source: AA0mqf727C/tU8votlwq4Rgzh0ltalzyYBYUm03eCr9mgdImpS0cM3o+T9813EWmFtHd7QrWxGF3Eg==
X-Received: by 2002:a19:dc15:0:b0:4b1:18a2:2fbd with SMTP id t21-20020a19dc15000000b004b118a22fbdmr1598550lfg.564.1668233459632;
        Fri, 11 Nov 2022 22:10:59 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m7-20020a056512358700b004a2c3fd32edsm706433lfr.144.2022.11.11.22.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:10:59 -0800 (PST)
Message-ID: <77fe7684-5ac7-a538-80a3-2654e2365a3b@linaro.org>
Date: Sat, 12 Nov 2022 09:10:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/6] phy: qcom-qmp-combo: fix out-of-bounds clock access
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111084255.8963-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221105_589265_04637584 
X-CRM114-Status: GOOD (  15.11  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/11/2022 11:42, Johan Hovold wrote:
> The SM8250 only uses three clocks but the DP configuration erroneously
> described four clocks.
> 
> In case the DP part of the PHY is initialised before the USB part, this
> would lead to uninitialised memory beyond the bulk-clocks array to be
> treated as a clock pointer as the clocks are requested based on the USB
> configuration.

... because the num_clks comes from the struct qmp_phy_cfg, not from the 
struct qcom_qmp.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Fixes: aff188feb5e1 ("phy: qcom-qmp: add support for sm8250-usb3-dp phy")
> Cc: stable@vger.kernel.org	# 5.13
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 5e11b6a1d189..bb38b18258ca 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1270,8 +1270,8 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
>   	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
>   	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
>   
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
>   	.reset_list		= msm8996_usb3phy_reset_l,
>   	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>   	.vreg_list		= qmp_phy_vreg_l,

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51096CF11F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 13:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuNJPfSqU3lHiq97Eq5RgwjwK2JDBeIwjUbUE1P31+M=; b=0OVzZ8mKFOfmU6
	uDgKmpfYTHYmoVdipg09zSWQAv9J02hqy/RY7MJWGnpJYzsTqZ69zJtrgy4Vl6+0DJX84my2oDKbl
	RDy9UDyfys1vetKVBTVb1YLHCWmBvD1XbHWgsc1hDUCcwgwmOPuVApo+hgT41XjhzWEKgxwjJZPPX
	TTjhGtLJFp1vvGAs5XQ6vku/RHcsiFOA7DwNR7JmYafrZU2kPTzFRGsx2J70tI87qFGRWjeGLwlgK
	rcTjAKT6E5dLNwkKFhVuP5xwV7tw/oYQx0cUV3owh9x3IQpFKk/aiz63SSc5goZRUo1xZcdYe1QnL
	FANHXSMv4NH8V3MGxALA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sytZL-0000000CzQ7-439a;
	Thu, 10 Oct 2024 13:51:07 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sytZJ-0000000CzP3-1DOY
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 13:51:06 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-53988c54ec8so1220163e87.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Oct 2024 06:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728568263; x=1729173063; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cMqw76UFr3KyOj7RnEC3aqiu0YdHjPevmACOjAMgttE=;
        b=yd5CqgmsGTy0vMKQhyQNiVZ5zlfExmUE+IVgC4W16hAlEts6VyTf83zBM9Uf0wFNKC
         q3w9iNVYFPhdlR7e0UbnwcZWjXKKXylmPINrW3l+jko3e1kNjAWlGDGpWc40s0nLtFTP
         wCd04wWk6ytNW56PPPCU2YdvTeKVROL9BAOgBAJvQ/HIp1DqveEcVUDcA32JPsdLH6C5
         UyPGWCTqob0xm+4xdwMK5r9BA8eTpCoLNdbxODe1sXaKaZbRYTSN2YJXFzyejqg+IQc1
         15oShjhFVA9/7/DwmzlgNrmhlFZEIL44S4kDWhaQKiLgtjxjq6Bo3qUQh1jASlswaQ5v
         Thtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728568263; x=1729173063;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMqw76UFr3KyOj7RnEC3aqiu0YdHjPevmACOjAMgttE=;
        b=vhyK2yyYE1jiQI2FbQOrEs3Nyh39QWC7xxNGl8YACZpFCvhxIhH0fINnVKZfzeeoBs
         0eD6+r9HSFu7t71YndYi99bzKf3g1X9kyIAau3+hoz/IpnT5ftmPyJRh32yQGqAVsuHS
         Q9oqXKD4dh+sUzRHOwS3TPgLrJjleD6pJx4ohK7Apm1llLmW3nYtQoUhSGjybG2NI05A
         glLiqadpcbWUflgY26kFgRJiPjTQIDZxPdA8LoE1OmfFXiYBTPtox5xNW0zQ56Kk67Oo
         zdubW2Rn8IByaIdhgyZDRoHBjhPc40U3g5J8WWPX0oyBji63NEHumSZczNyTUTXX+GKi
         IHFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIgxDo1UNHG4shBMQly8cp/y4CRzXez90NgA3O7weklCZR3gMOMn8QW/lQBbuaICQT/p0aRxFgyhc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtML/y2BsCkRXfzPjpmJ9Nwcy/N6XsjEHrA89PaC/AwEuJ46uF
	70sM+b/rA6YMski0qhWdVkqnxsLjNxJcSr6Wv/DaePyK5eSL4i9PhNoZZr+kqoc=
X-Google-Smtp-Source: AGHT+IEdFN6tHEPOV5BGfgasm+djxDl4woP34V2NNtQEEnSKQjbMo5AzUtpP2ZOqLjKUa8VMlGqcng==
X-Received: by 2002:a05:6512:2808:b0:536:54fd:275b with SMTP id 2adb3069b0e04-539c4967edemr4294135e87.54.1728568263124;
        Thu, 10 Oct 2024 06:51:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb6c863bsm258410e87.87.2024.10.10.06.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 06:51:01 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:50:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v5 6/7] PCI: qcom: Fix the ops for X1E80100 and SC8280X
 family SoC
Message-ID: <otipwbhacorpdyjlhvf4g3tpg7ymtqmcuzjirewhkmwv3gbpka@2urxbhufrveb>
References: <20241009091540.1446-1-quic_qianyu@quicinc.com>
 <20241009091540.1446-7-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009091540.1446-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_065105_388052_09779867 
X-CRM114-Status: GOOD (  17.94  )
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

On Wed, Oct 09, 2024 at 02:15:39AM GMT, Qiang Yu wrote:
> On X1E80100 and SC8280X family SoC, PCIe controllers are connected to
> SMMUv3, hence they don't need the config_sid() callback in ops_1_9_0
> struct. Fix it by introducing a new ops struct, namely ops_1_21_0, so
> that BDF2SID mapping won't be configured during init.

Fixes tag missing. Cc:stable if required.

> 
> In addition, since it is recommended to disable ASPM L0s on X1E80100 as
> same as SC8280X, hence X1E80100 can simply reuse cfg_sc8280xp as its
> config.

Separate commit, please with its own description and Fixes tag.

> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 88a98be930e3..c533e6024ba2 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>  	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>  };
>  
> +/* Qcom IP rev.: 1.21.0 */
> +static const struct qcom_pcie_ops ops_1_21_0 = {
> +	.get_resources = qcom_pcie_get_resources_2_7_0,
> +	.init = qcom_pcie_init_2_7_0,
> +	.post_init = qcom_pcie_post_init_2_7_0,
> +	.host_post_init = qcom_pcie_host_post_init_2_7_0,
> +	.deinit = qcom_pcie_deinit_2_7_0,
> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
> +};
> +
>  static const struct qcom_pcie_cfg cfg_1_0_0 = {
>  	.ops = &ops_1_0_0,
>  };
> @@ -1405,7 +1415,7 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
>  };
>  
>  static const struct qcom_pcie_cfg cfg_sc8280xp = {
> -	.ops = &ops_1_9_0,
> +	.ops = &ops_1_21_0,
>  	.no_l0s = true,
>  };
>  
> @@ -1837,7 +1847,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
>  	{ }
>  };
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

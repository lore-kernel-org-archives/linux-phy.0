Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE6D5C54FB9
	for <linux-phy@archiver.kernel.org>; Tue, 21 Nov 2023 08:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pomvDMrWealiDjgovBNNDg2bR+R6P8Q81iS2hdnDTeg=; b=i3lMX9pImAB2Zg
	fUylmi229kjddTq28jaxfjGGCWgcsvEHno4MBZMjdLuxkETCTfWs3x3QECCccZQtdIT6nD2tdr55Q
	7REr1mSdFlgZmJJ22xhH5snoPAHe+PksqV2m9Oeez4S8UYiw4H6RrxACoRWURVcW5bz8E2ILAwOap
	kSQWgA2AuGEeuP5F4xe8pFWJZWl4N+c3T5RWBihB/EAftm3f0CjD+1PxON+nLWOfAog//j6+7dxvb
	9Ft0t7vIo/qdb5XR77zrHsbCirmvSgdV0DWDhk3FAcVHslU1YM0vIQn/SS9oTQnqj8WjrfuzfGfFO
	056bNLnV60issSbckBRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MWX-00G3QP-1d;
	Tue, 21 Nov 2023 08:54:25 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MWU-00G3Pa-1w
	for linux-phy@lists.infradead.org;
	Tue, 21 Nov 2023 08:54:24 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5079f9ec8d9so5481698e87.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Nov 2023 00:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700556858; x=1701161658; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B9xw1X7ZA/w4qP7ewLLpSYyupPFRZNLRs/Ge/9QSmfw=;
        b=QLOob+Y60YWwGyh2cWueteRpOKTMjOOVMZnttZCEN96rN0oRYXtv6O7yjIUrvNNJTs
         79H89HuW+EeLnGQBOy0j/MZdXIOD7QwKLjNudfDWL4X2s/FxnK51qcldKZ/Ov67TQQzJ
         8LtGbAgsjjnAWtSpuFBXhHM42h438uPpSMj53bC/nB05B8f7pXa4t1msyZjHAk9wndde
         IWV9rHoHB5Ft4zQZ+KsW/UEoOeU8HITMdWrO4ASzPpHm7uV48oKb4llQNLRrT4TMr3vK
         1z/BOYDjd4v+l2MIXCGaGNr7g2t6EgNxetaXMrcKjLsM5jhU0k/efKUdoprX8XaMkxXJ
         /kbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700556858; x=1701161658;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B9xw1X7ZA/w4qP7ewLLpSYyupPFRZNLRs/Ge/9QSmfw=;
        b=YCCfc9ZMDO+BoPUVld2uY8Xku9bMbdrc3FRsbsz7pX+KZWChi0Fc3ycrB+nT+1Aq6g
         Tmu7GDYHYc9fiNfM+paYI+saKoZ370l62VKf7ecs8XgJ9GOm0EJpriR0WW5yffdQJDNz
         BX1c9j4VLyjQo1YuNLs6YOC3r80gIKngk/mZu+2Vkv0KnLnnsrf8x0Ld6E0P4dINlwvb
         GqxjK9v2ir2+LMykPAopIaR1Z5t0IJtjFGKrXs5lqEvfBY/cymLRYerDV8l9iJAC9K+K
         uDUlPzV5ROwQek0/rlG7aVgAZT5PBWXztb++qakCQe0KsSxrpKTbBBe/9DtNwVb88UeC
         5TKQ==
X-Gm-Message-State: AOJu0Yy0Cw/lTP4oe4d90eDN0nMEjDHyzDCVgRZVHr4gKqbxJgc/Drbg
	A91bD4C2WBp+mdgZEx+ph929tg==
X-Google-Smtp-Source: AGHT+IF1xuQVsWLIefERP/sR6Kn9g3CbTRMtFwzRE/bayjQ5Xh7VoLcJ8SVMJ610YuVMdXcCuAIcKw==
X-Received: by 2002:a05:6512:3e25:b0:500:acae:30c5 with SMTP id i37-20020a0565123e2500b00500acae30c5mr737235lfv.15.1700556857891;
        Tue, 21 Nov 2023 00:54:17 -0800 (PST)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id w3-20020ac25983000000b0050aa51bd5b5sm1150927lfn.136.2023.11.21.00.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 00:54:17 -0800 (PST)
Message-ID: <209eceaa-10b0-47fc-aabf-1cfb0e1c9ce0@linaro.org>
Date: Tue, 21 Nov 2023 10:54:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] usb: typec: qcom-pmic-typec: switch to
 DRM_AUX_HPD_BRIDGE
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
 <20231103230414.1483428-7-dmitry.baryshkov@linaro.org>
In-Reply-To: <20231103230414.1483428-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_005422_763465_EF1AB24F 
X-CRM114-Status: GOOD (  21.11  )
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

On 04/11/2023 01:03, Dmitry Baryshkov wrote:
> Use the freshly defined DRM_AUX_HPD_BRIDGE instead of open-coding the
> same functionality for the DRM bridge chain termination.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Greg, Bryan, could you pease ack merging this patch through the drm-misc 
tree together with the rest of the series?

You have acked patch 3, but since that time I added this one.

> ---
>   drivers/usb/typec/tcpm/Kconfig                |  1 +
>   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c | 41 +++----------------
>   2 files changed, 7 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/usb/typec/tcpm/Kconfig b/drivers/usb/typec/tcpm/Kconfig
> index 0b2993fef564..64d5421c69e6 100644
> --- a/drivers/usb/typec/tcpm/Kconfig
> +++ b/drivers/usb/typec/tcpm/Kconfig
> @@ -80,6 +80,7 @@ config TYPEC_QCOM_PMIC
>   	tristate "Qualcomm PMIC USB Type-C Port Controller Manager driver"
>   	depends on ARCH_QCOM || COMPILE_TEST
>   	depends on DRM || DRM=n
> +	select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE
>   	help
>   	  A Type-C port and Power Delivery driver which aggregates two
>   	  discrete pieces of silicon in the PM8150b PMIC block: the
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> index 581199d37b49..1a2b4bddaa97 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> @@ -18,7 +18,7 @@
>   #include <linux/usb/tcpm.h>
>   #include <linux/usb/typec_mux.h>
>   
> -#include <drm/drm_bridge.h>
> +#include <drm/bridge/aux-bridge.h>
>   
>   #include "qcom_pmic_typec_pdphy.h"
>   #include "qcom_pmic_typec_port.h"
> @@ -36,7 +36,6 @@ struct pmic_typec {
>   	struct pmic_typec_port	*pmic_typec_port;
>   	bool			vbus_enabled;
>   	struct mutex		lock;		/* VBUS state serialization */
> -	struct drm_bridge	bridge;
>   };
>   
>   #define tcpc_to_tcpm(_tcpc_) container_of(_tcpc_, struct pmic_typec, tcpc)
> @@ -150,35 +149,6 @@ static int qcom_pmic_typec_init(struct tcpc_dev *tcpc)
>   	return 0;
>   }
>   
> -#if IS_ENABLED(CONFIG_DRM)
> -static int qcom_pmic_typec_attach(struct drm_bridge *bridge,
> -				     enum drm_bridge_attach_flags flags)
> -{
> -	return flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR ? 0 : -EINVAL;
> -}
> -
> -static const struct drm_bridge_funcs qcom_pmic_typec_bridge_funcs = {
> -	.attach = qcom_pmic_typec_attach,
> -};
> -
> -static int qcom_pmic_typec_init_drm(struct pmic_typec *tcpm)
> -{
> -	tcpm->bridge.funcs = &qcom_pmic_typec_bridge_funcs;
> -#ifdef CONFIG_OF
> -	tcpm->bridge.of_node = of_get_child_by_name(tcpm->dev->of_node, "connector");
> -#endif
> -	tcpm->bridge.ops = DRM_BRIDGE_OP_HPD;
> -	tcpm->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
> -
> -	return devm_drm_bridge_add(tcpm->dev, &tcpm->bridge);
> -}
> -#else
> -static int qcom_pmic_typec_init_drm(struct pmic_typec *tcpm)
> -{
> -	return 0;
> -}
> -#endif
> -
>   static int qcom_pmic_typec_probe(struct platform_device *pdev)
>   {
>   	struct pmic_typec *tcpm;
> @@ -186,6 +156,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
>   	struct device_node *np = dev->of_node;
>   	const struct pmic_typec_resources *res;
>   	struct regmap *regmap;
> +	struct device *bridge_dev;
>   	u32 base[2];
>   	int ret;
>   
> @@ -241,14 +212,14 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
>   	mutex_init(&tcpm->lock);
>   	platform_set_drvdata(pdev, tcpm);
>   
> -	ret = qcom_pmic_typec_init_drm(tcpm);
> -	if (ret)
> -		return ret;
> -
>   	tcpm->tcpc.fwnode = device_get_named_child_node(tcpm->dev, "connector");
>   	if (!tcpm->tcpc.fwnode)
>   		return -EINVAL;
>   
> +	bridge_dev = drm_dp_hpd_bridge_register(tcpm->dev, to_of_node(tcpm->tcpc.fwnode));
> +	if (IS_ERR(bridge_dev))
> +		return PTR_ERR(bridge_dev);
> +
>   	tcpm->tcpm_port = tcpm_register_port(tcpm->dev, &tcpm->tcpc);
>   	if (IS_ERR(tcpm->tcpm_port)) {
>   		ret = PTR_ERR(tcpm->tcpm_port);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

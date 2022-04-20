Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 649CFC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 02:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xtx38Hvhas8ZFguh6izEIVGoJo9TQCmzHBxHWrapVGg=; b=odCm6HIxqDMKQR
	bTLz3zXOtGGMa7nOe0zaS+LbsYMV10OKsPKKKS/vtcPZxnuSIQmzRtE0vJIXzHPwzORZRNEmK8o5R
	/W7LnRtBuoT6y1fIZhqlcXqpXuUqkiZ1dMY0Fl3Q+jetburq2G2WipFgza0q5kA6o4flvq7JCgTsv
	2FssVhS6shdyXG9t64fpm8smGxGGV+EKREQODEpJpjgeqe49cGsjYhwSICqP+8ErhxqM6bID4H3HR
	KfrKPNkOixNA03FN4jIuHRzivPUpnKK8dwTn0xIcNMEn5ArBjEMcI4KFdlL9QZomk6nikGRkMCu8u
	YmMpz6N05MnDojQQ6eLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh0Hz-006zRi-K0; Wed, 20 Apr 2022 02:41:55 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh0Hw-006zQF-QE
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 02:41:54 +0000
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-e5c42b6e31so576007fac.12
 for <linux-phy@lists.infradead.org>; Tue, 19 Apr 2022 19:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aaX/UB/2BnqdVf5C8GfwvoatWrRoN/yQh5VPxrROKnA=;
 b=w8ElRxixNxczkAPSzOilsYI1pNXrdnHKeUV12k8IHbGZw24Riiz/+1SYrEvkxMxDjy
 4JdAV2AM8nbTtjYWWiE60Yn1kamcRup6xEeaYY/sV3MGVU74FttnhcUn6E3cUVVrW1I6
 QQwX5Ct4amk+euAWMhLxPc2KjUx6EU9Y48eKZ2GsM7DlfaVce84NN1KHpfl+IHaepuxu
 UODZOwOc/LXe7NneiytyjbYQ5uq0LGv3YNl1MXyr3RhlCN3bpupDiDvXTRUFX86D3L3h
 wOznhUtAB9kiRMWKbesYmSpDENs4AiHxpjyE9FOw8y1pHLLC5uuNCyfml/bdaGmavy3P
 Wzlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aaX/UB/2BnqdVf5C8GfwvoatWrRoN/yQh5VPxrROKnA=;
 b=J2A28/x1nQNRUST68vHMzlTy4wBTXzTKbQdZdExLNJyYVBpGDmKl5VdpL+N/9+gEAt
 YcjCNCEvZpu9MGCOdTzs2E0Lq/j/hR3OzeQwsKrIaT0nxU1IQ49nw+mEjMKPRkLpQe/X
 /OGtBZe+wid0OE4Df5ubNI63A/RS74Oen4odv3U6EDspvaXze+l7W2O+ZYHULkmm799r
 Nv6ZCXbK5IGpmhECBaG477c7yTOBGd6YXmcDcrmzHQHvi4yM2kcc3Ipb4UjgOb2WQTv/
 n4TGo3jTlRDn2u/hsdcg5s+pnMWUKaMAVinrSgm/ydbkXJ2iOAVfNONYEQYISYQt5U1N
 riwg==
X-Gm-Message-State: AOAM531xgp6v54JZXg5g086eWdmMFhX/MvxL9nfF2OT1lboscCZdZybm
 L2EJBGLexx5kxNeig4VAyBSu7A==
X-Google-Smtp-Source: ABdhPJx/b7/bSQcrLQiriSkVkxOgSx/ZCNnuCH6SWCqN2lWYiL+xBRcWyS2xtW/clxXTZAw9aszy0A==
X-Received: by 2002:a05:6870:7090:b0:e6:49ed:4a9b with SMTP id
 v16-20020a056870709000b000e649ed4a9bmr219923oae.177.1650422510011; 
 Tue, 19 Apr 2022 19:41:50 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id
 e18-20020a9d7312000000b006054dfa7eb6sm2781708otk.78.2022.04.19.19.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 19:41:49 -0700 (PDT)
Date: Tue, 19 Apr 2022 21:41:47 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	konrad.dybcio@somainline.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, Marijn Suijten <marijn.suijten@somainline.org>
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: sm8350-sagami: usb qmp phy node
 - add 'vdda-pll-supply' & 'vdda-phy-supply'
Message-ID: <Yl9y668H/N+bcrP4@builder.lan>
References: <20220419205854.1269922-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419205854.1269922-1-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_194152_966194_18FB56FA 
X-CRM114-Status: GOOD (  22.09  )
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

On Tue 19 Apr 15:58 CDT 2022, Bhupesh Sharma wrote:

How about making the subject:

"arm64: dts: qcom: sm8350-sagami: add supplies to USB phy node"

It still says the same thing, but in much less characters.

> As suggested by Bjorn during review of [1], the 'vdda-pll-supply' &
> 'vdda-phy-supply' supplies denote the power for the bus and the
> clock of the usb qmp phy and are used by the qcom qmp phy driver.
> 
> So, its safe to assume that the two regulators are the same as on
> the MTP. So let's wire them up in the same way as the MTP.
> 

I'm not sure it's "safe to assume", so I would like to get Konrad's
input before merging this.

> In absence of the same 'make dtbs_check' leads to following warnings:
> 
> arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
>  phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
> 
> arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
>  phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
> 

This is good!

Thanks for the patch Bhupesh,
Bjorn

> [1]. https://lore.kernel.org/lkml/20220228123019.382037-9-bhupesh.sharma@linaro.org/
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: konrad.dybcio@somainline.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
> Changes since v1:
> -----------------
> - v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg108467.html
> - Fixed the commit message to read usb qmp phy instead of ufs phy (which
>   was introduced erroraneously in the commit log).
> 
>  .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> index 90b13cbe2fa6..238ac9380ca2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
>   */
>  
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "sm8350.dtsi"
>  #include "pm8350.dtsi"
>  #include "pm8350b.dtsi"
> @@ -75,6 +76,27 @@ ramoops@ffc00000 {
>  	};
>  };
>  
> +&apps_rsc {
> +	pm8350-rpmh-regulators {
> +		compatible = "qcom,pm8350-rpmh-regulators";
> +		qcom,pmic-id = "b";
> +
> +		vreg_l1b_0p88: ldo1 {
> +			regulator-name = "vreg_l1b_0p88";
> +			regulator-min-microvolt = <912000>;
> +			regulator-max-microvolt = <920000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l6b_1p2: ldo6 {
> +			regulator-name = "vreg_l6b_1p2";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1208000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +};
> +
>  &adsp {
>  	status = "okay";
>  	firmware-name = "qcom/adsp.mbn";
> @@ -256,4 +278,7 @@ &usb_1_hsphy {
>  
>  &usb_1_qmpphy {
>  	status = "okay";
> +
> +	vdda-phy-supply = <&vreg_l6b_1p2>;
> +	vdda-pll-supply = <&vreg_l1b_0p88>;
>  };
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

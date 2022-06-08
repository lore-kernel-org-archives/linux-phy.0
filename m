Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4664C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 09:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1R47fDwxRQdALYpT//A2h5VFr1b6wlb+N4OE2WO8Oo4=; b=3qHbrOnuGiDkBR
	DrhufMgT0UfubF4C+FbmwMBPALnTiFwLJ7cL0IbgsrsIVoPPVfIya8j9MFDNewX9f1uHM42RKNJfR
	mgqprGruOlwOVF9s1mFJ+8g0H6LxpJqYmC68hw4HudsyHpG3r9b9g9CcJouKcUnQ8gdTfIft1w1Nd
	tx/xsdc1hry3vvtvy1UbxdYI7GDUKwE+fO0561+rtsyBE3ktQyMYGt6O/hPi82COsQNBRBx0Q4cpX
	6WyjxYCYtWZ8rioz9tlTMOacWp4UAlF6JZOEdJPIXMpn9ayqJCq9Euw1bB8Pgtom5nU9JfpdTQoF8
	X/Z9QShpJNsSdhpGevSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nysGS-00CSes-8j; Wed, 08 Jun 2022 09:46:12 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nysGP-00CSd0-SI
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 09:46:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id v19so26289666edd.4
        for <linux-phy@lists.infradead.org>; Wed, 08 Jun 2022 02:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=j0PTdx0/UCIpK0ZOIeulGWW4GyE4LxYKkVGD3OmaXiU=;
        b=Fk+XgbdK5jt6EWM3XYV3oHRYmbpqB55Wv2esIF2vb1QeiZyuFNKtE0Fo0ZrxudjbGM
         0PocN0v51sQvP+fC4UV2UnbEwQTyqAOfMPizB1atI1tbT4GpIdEihfqXkFffFnVHvc8Q
         sN+5ZtpLXnyKbd/m20ae79ezGjRjBi7tmCbJuxjoPvegNDCCGzFK9tEwd2S8DPa012AS
         1ehQeu8KsrNiL7fprbh2o4ZzSNO1VbDLUE+oDtPtpXvgjzioUQM/15NRH3v8AgB8nbEq
         SWSNqghBxtngi0n9itnfLNDWRdtoe51Fee1wdWDf07X4XjhsLNyzQAuEuFzV7vLrST0C
         Ty1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=j0PTdx0/UCIpK0ZOIeulGWW4GyE4LxYKkVGD3OmaXiU=;
        b=CzvrdsHN/If18K7XFMtAVqTXdeYfchUqQmZ3v3r1715bTDAn1IxLJq5oC75ESxy/+h
         q0FgFqHaZ90//ANtyyTooXzpEQRGjyzqE8HCttpI7ULBU/2GKWuvHG8dMyPeEtUrNTxA
         CMZMGOPvdG/nFCesJ+ygz6jVSg3dAAgug9FSvoP7UTrJSMy8OuUJ5imaU/79z3OgNC2F
         pB9mLAQlkx6i3Jp7HF037dsnYFOw5w/D2323p9wtk/xgHpV61qTKG3l3l3awmC7SyOoh
         fjPU/7YuoBFR2PW7PUcjyhzjmROjLTFQ5G8LBuw5jqnJoe1Vk6dZ8kHwl465yJOHIVDz
         vR/w==
X-Gm-Message-State: AOAM530ZUWT+LUT2xdkP1LU8FLwBLSfIr3gOw6rxtiCwCUBoh4EZmlPg
	aGKmw4wknQgt0sCuDgrOqsC6Xg==
X-Google-Smtp-Source: ABdhPJxvBQYdWTcwz3QvJ11WUeVjDfmXGE7aAyqClhYPiTBjrba7qY3e1zzsvhWdTEtYrBqeoC/9Nw==
X-Received: by 2002:a05:6402:400b:b0:42d:c902:6c75 with SMTP id d11-20020a056402400b00b0042dc9026c75mr38760810eda.32.1654681565480;
        Wed, 08 Jun 2022 02:46:05 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v3-20020a056402348300b0042dccb44e88sm971530edc.23.2022.06.08.02.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 02:46:04 -0700 (PDT)
Message-ID: <97d63ed3-ec95-5a2e-edab-01af687c1d34@linaro.org>
Date: Wed, 8 Jun 2022 11:46:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v8 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-3-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1654066564-20518-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_024609_968537_E8846667 
X-CRM114-Status: GOOD (  21.03  )
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

On 01/06/2022 08:56, Krishna Kurapati wrote:
> Add support for overriding electrical signal tuning parameters for
> SNPS HS Phy.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> Reviewed-by: Pavankumar Kondeti <quic_pkondeti@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 267 +++++++++++++++++++++++++-
>  1 file changed, 265 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 5d20378..14bbb06 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -52,6 +52,12 @@
>  #define USB2_SUSPEND_N				BIT(2)
>  #define USB2_SUSPEND_N_SEL			BIT(3)
>  
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0		(0x6c)
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1		(0x70)
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2		(0x74)
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3		(0x78)
> +#define PARAM_OVRD_MASK				0xFF
> +
>  #define USB2_PHY_USB_PHY_CFG0			(0x94)
>  #define UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN	BIT(0)
>  #define UTMI_PHY_CMN_CTRL_OVERRIDE_EN		BIT(1)
> @@ -60,12 +66,76 @@
>  #define REFCLK_SEL_MASK				GENMASK(1, 0)
>  #define REFCLK_SEL_DEFAULT			(0x2 << 0)
>  
> +#define HS_DISCONNECT_MASK			GENMASK(2, 0)
> +
> +#define SQUELCH_DETECTOR_MASK			GENMASK(7, 5)
> +

I wonder why do you have here blank lines after every define. Are these
bits from different registers?

> +#define HS_AMPLITUDE_MASK			GENMASK(3, 0)
> +
> +#define PREEMPHASIS_DURATION_MASK		BIT(5)
> +
> +#define PREEMPHASIS_AMPLITUDE_MASK		GENMASK(7, 6)

These two look like from same register...

> +
> +#define HS_RISE_FALL_MASK			GENMASK(1, 0)
> +
> +#define HS_CROSSOVER_VOLTAGE_MASK		GENMASK(3, 2)
> +
> +#define HS_OUTPUT_IMPEDANCE_MASK		GENMASK(5, 4)

The same

> +
> +#define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
> +
> +
>  static const char * const qcom_snps_hsphy_vreg_names[] = {
>  	"vdda-pll", "vdda33", "vdda18",
>  };
>  
>  #define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
>  
> +struct override_param {
> +	s32	value;
> +	u8	reg;
> +};
> +
> +#define OVERRIDE_PARAM(bps, val)\
> +{				\
> +	.value = bps,		\
> +	.reg = val,		\
> +}
> +
> +struct override_param_map {
> +	struct override_param *param_table;
> +	u8 table_size;
> +	u8 reg_offset;
> +	u8 param_mask;
> +};
> +
> +#define OVERRIDE_PARAM_MAP(table, num_elements, offset, mask)		\
> +{									\
> +	.param_table = table,						\
> +	.table_size = num_elements,					\
> +	.reg_offset = offset,						\
> +	.param_mask = mask,						\
> +}
> +
> +struct phy_override_seq {
> +	bool	need_update;
> +	u8	offset;
> +	u8	value;
> +	u8	mask;
> +};
> +
> +static const char *phy_seq_props[] = {

static const char * const

> +	"qcom,hs-disconnect-bp",
> +	"qcom,squelch-detector-bp",
> +	"qcom,hs-amplitude-bp",
> +	"qcom,pre-emphasis-duration-bp",
> +	"qcom,pre-emphasis-amplitude-bp",
> +	"qcom,hs-rise-fall-time-bp",
> +	"qcom,hs-crossover-voltage-microvolt",
> +	"qcom,hs-output-impedance-micro-ohms",
> +	"qcom,ls-fs-output-impedance-bp",
> +};
> +
>  /**
>   * struct qcom_snps_hsphy - snps hs phy attributes
>   *
> @@ -91,6 +161,7 @@ struct qcom_snps_hsphy {
>  
>  	bool phy_initialized;
>  	enum phy_mode mode;
> +	struct phy_override_seq update_seq_cfg[ARRAY_SIZE(phy_seq_props)];
>  };
>  
>  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
> @@ -173,10 +244,147 @@ static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
>  	return 0;
>  }
>  
> +static struct override_param hs_disconnect_sc7280[] = {

This should be const. I see you are using it in non-const way and this
makes me wonder why... You just need to store the value from the DT and
program it (after converting the units). Why modifying static driver
data? What if you have two phy drivers? Which data is being used?

IOW, all these tables should be const and you could store the final
value in 'struct qcom_snps_hsphy'. Then just program to registers this
final value.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1022CA100E
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 20:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wf47ZhxArhRhJ0QUkfHANEFN8wuk+K6/pqoYWrCgoCs=; b=sX26pNVpS5QFzj
	ftlF1gazTN1scPtvO3I6HP2AIK+k3WIWVFLAtJ3AVtgYuqJaD6YRCuJ17HvfGlfF1wGECB2O4qO/y
	gJfhmrNG9xPt5/EY46rf/drW1aDgHqQk4gG6ZSU39X+g9pbVY95DwANbWiWfx9aKTLXlz4DXGVPrA
	shvMcdlFGFTo7kerQoBEIZ9QxSc4A2aYSfDMLlOofJive/IdfzGsllnUv0c3UTNm6P1LaKG+uIZO9
	RA2Srpntnj7HgP2ABexRKrfod/VXXaG70ou42WMNGEr2unuljAa8mXADFlCVIz44xrnVSlb+GCXQH
	IH1v7PIDd3NlD+kUF4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcp7-006hUT-0l;
	Tue, 05 Sep 2023 20:38:57 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcp3-006hTt-2h
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 20:38:55 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9a5e1812378so459724466b.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 13:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693946332; x=1694551132; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qISIWFWT+90Xd6ZFQOF4flQ0s4igN8yW6IgB7edRboU=;
        b=W0vhzA/X385CJecJqrc1fff1Za2oyUzYW4HmuPC7Ii3jyAKd4QATuJDnZu10vO/9hP
         mMroJqLZSd9Z5LWHqGRaOpJU7pw9TSu/f1a42g3Daq3Tvg7MjUvUtfFBxnt+MeoKMR1K
         50YWwM3sm0fbKKnomH+LZFJU4WR/qwRfkrNDxoECsaBjqo1c4LU9GR9HYZmHm+r8Pu5g
         EZySvEWJ5gAcCJw8t+H9fWl4Y5y/o9LV2fnoowCdJpgoLM+ix1XcFHTG9ePIKgTL8jCf
         DOYNAu+1nXGqEF70gCXf6q3h6YJYW0fTk/x7vYJqa3sQbRtzGLBbYwEaoHG4+BzsydhA
         cksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693946332; x=1694551132;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qISIWFWT+90Xd6ZFQOF4flQ0s4igN8yW6IgB7edRboU=;
        b=OuDtwfW3IkWOfYOntr0Ohl6zajS2PVj3LF+dkoWf77POb+Vk7vYCae9QyRKCLLB4z2
         LgnKCQS6FFSik+XKsDvTYuU9YSO1CvnYlmhtdHzH/RugS3daCVG/s68eYu9SD14pJ64L
         f758TFXfxUjApg/DNP+x118WYSJc9GF/yYTDwqO983PpP/NWOqyKgVJbUIOoK60Uu67P
         k9I5BvrneS7p106XnTsMzsBrYyY2mp320gCLnf8KiPivsFqzUqufmfU9eQzsRR/zUGaV
         k7IQo8aN4fBxMzbckMUcNDuAGpMz3g3fLL5AiQsWrEWv6noezVgONE2Kd262Ya02k/Cz
         sQyA==
X-Gm-Message-State: AOJu0YzVuk1EfKQgSQfPVdDeT5Wyv82r6/JHjZcdg8FlYvyqSsu/5rHA
	tBmMlnHJopi6TDCXdp939a38yg==
X-Google-Smtp-Source: AGHT+IEwOKhjqGOu2h/QRhHr/SAOH0IQAohqcX26Y4rMgNvLsbCvrMoYVYHzeWdQFLWTxxzvuqgoEQ==
X-Received: by 2002:a17:906:5a70:b0:9a1:c370:1aef with SMTP id my48-20020a1709065a7000b009a1c3701aefmr695845ejc.55.1693946332043;
        Tue, 05 Sep 2023 13:38:52 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x10-20020a1709064a8a00b009937e7c4e54sm8001110eju.39.2023.09.05.13.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 13:38:51 -0700 (PDT)
Message-ID: <8aefd8f9-cfe9-4011-a24b-ebb13d28faa0@linaro.org>
Date: Tue, 5 Sep 2023 23:38:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY
 support
Content-Language: en-GB
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-6-git-send-email-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1693909838-6682-6-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_133853_881726_8D8B3CCB 
X-CRM114-Status: GOOD (  14.95  )
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

On 05/09/2023 13:30, Rohit Agarwal wrote:
> Add support for USB3 QMP PHY found in SDX75 platform.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 158 ++++++++++++++++++++++++++++++++
>   1 file changed, 158 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 0130bb8..57b8b5b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -23,6 +23,7 @@
>   #include "phy-qcom-qmp-pcs-misc-v3.h"
>   #include "phy-qcom-qmp-pcs-usb-v4.h"
>   #include "phy-qcom-qmp-pcs-usb-v5.h"
> +#include "phy-qcom-qmp-pcs-usb-v6.h"
>   
>   /* QPHY_SW_RESET bit */
>   #define SW_RESET				BIT(0)
> @@ -858,6 +859,134 @@ static const struct qmp_phy_init_tbl sdx65_usb3_uniphy_rx_tbl[] = {

[skipped the tables]

> @@ -1556,6 +1685,32 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
>   	.has_pwrdn_delay	= true,
>   };
>   
> +static const struct qmp_phy_cfg sdx75_usb3_uniphy_cfg = {
> +	.lanes			= 1,
> +	.offsets		= &qmp_usb_offsets_v5,

v6?

> +
> +	.serdes_tbl		= sdx75_usb3_uniphy_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_serdes_tbl),
> +	.tx_tbl			= sdx75_usb3_uniphy_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_tx_tbl),
> +	.rx_tbl			= sdx75_usb3_uniphy_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_rx_tbl),
> +	.pcs_tbl		= sdx75_usb3_uniphy_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_pcs_tbl),
> +	.pcs_usb_tbl		= sdx75_usb3_uniphy_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(sdx75_usb3_uniphy_pcs_usb_tbl),
> +	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),

Clocks and resets are gone in 
https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/

> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v5_usb3phy_regs_layout,

This must be v6, if the rest of the PHY is using v6 register names.

> +	.pcs_usb_offset		= 0x1000,
> +
> +	.has_pwrdn_delay	= true,
> +};
> +
>   static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
>   	.lanes			= 1,
>   
> @@ -2256,6 +2411,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
>   		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
>   		.data = &sdx65_usb3_uniphy_cfg,
>   	}, {
> +		.compatible = "qcom,sdx75-qmp-usb3-uni-phy",
> +		.data = &sdx75_usb3_uniphy_cfg,
> +	}, {
>   		.compatible = "qcom,sm6115-qmp-usb3-phy",
>   		.data = &qcm2290_usb3phy_cfg,
>   	}, {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

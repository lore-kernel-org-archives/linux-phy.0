Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F29C6FA90
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 13:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xR39KGh29YvZnD3wo+GNpRvzrZFQpmm+UpKgEzvIckg=; b=KM+gfkbEsu3vUj
	YcHKesYlK0/F80dqq1HMvNuZED1Xdl3iEFVf+U0PHH6OewnqLbvtd61w6bSMH78jkt6cIk8nyeP1Q
	ciSHh5LzA60vyh5xsw42mzXbMtr6gSOYjmiXYu4KwXzIgGn/UrHmesK/hIi7KnPJRKeUfEShHd6aC
	N8rvQTH0QgXIolJJsu6XjmFS6vTdydS/bOBWJACUM8Hd6HQu0BsJHVlhdJEXmHSJVHAGX5K1Keff2
	xwphBXwNlvo9P9dkPbza57gzFz93sT3i/4l5FGPxZLy2DRgUAIj3he3dt/+KDvIWa+iuZ7zgRSfA0
	Ff/5CI7bkfqkdfmOnEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oazQi-00BNv0-DL; Wed, 21 Sep 2022 13:06:20 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oazQf-00BNuB-Om
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 13:06:19 +0000
Received: by mail-lj1-x22a.google.com with SMTP id g20so5723839ljg.7
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 06:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=gAZ4zcbB2orsLPAQ8EJjR8EjPWSXSxUFgQ5EnML0I7I=;
        b=OJiVAcCSHD7qCGHeeMts6h6iBTjME+np3LrBiZF09r2NsgKvfKDb0UgyATfCdMPZIM
         fhCz17ALMAKbZszbda79CmL9JlQLDD1iFfBk6Jx9UOMe3ZK1xMsxv3Ror5XAzD1HLzov
         91tOUuF+HqBxI4NdgjzgJA6UXtMJFj6uhGiqaSvbVmGpnSxLFLjMeR91p41SFUxqayCt
         QFrJ/x5GRpGEygOzZJBn24KmIvpHVuCd2t0jOwRcbALvNY38OxjdeEBNR3DEtUY6Fw8R
         78UbNc/tiv1q6sMVQZp+MiaX8xoe8+EwemNx7sstZSMGz8ptpqPTqjWpslzUrzIgEyIn
         Iquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=gAZ4zcbB2orsLPAQ8EJjR8EjPWSXSxUFgQ5EnML0I7I=;
        b=W2neQ1bFGrGI23XxrA3yGkZPNLIWwbXFLXXmoIPOkCdSffO9dwOO558t3PuYgCYgKu
         xKl1iCJfVLq52ADaQVgEShFCSSDiErLNtQ0GczQTtfYCHqwU5/aHHT3Sm3/QtUjXW40R
         1zxLnPvK0JYwxu9tHTQUs34z1va1VLvDUVzQpzxcoUpVIdyiJ68NkYIR2R/CPJGlb4W1
         yVyeE4WnUbON2OUQxIxUzVUwHtHxswo7UMWN1zsbqa4NkVTbroDxGOakSjrp5GJ6VGuc
         k6TVdweG1VV+vMe/o1S/MXgaMw6dULLlVzriAAo9isdlLeNb4Bv4yoCca9EFkT77OHdF
         piCA==
X-Gm-Message-State: ACrzQf2c+8b7EgvBYnTUr5C5Ugjb/9lM3yJ7iaSxvvnskqNaiK6JRTB2
	XANAu9iCjXd2z1qxs7J3Qd5zig==
X-Google-Smtp-Source: AMsMyM6+sJnzoKk2ra9r0XoN+2znerZ9uj5UFe4DJYjXt9KsiXp045FDLjIa6Ele9KhkbFcAn/wJqA==
X-Received: by 2002:a2e:a887:0:b0:26a:ba85:8fbe with SMTP id m7-20020a2ea887000000b0026aba858fbemr8367222ljq.14.1663765572108;
        Wed, 21 Sep 2022 06:06:12 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s3-20020a056512314300b0048a9e18ae67sm429912lfi.84.2022.09.21.06.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 06:06:11 -0700 (PDT)
Message-ID: <f6ab7125-4f1a-61fc-cfeb-8988921c35b4@linaro.org>
Date: Wed, 21 Sep 2022 16:06:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix the SM8450 PCS registers
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 vkoul@kernel.org, andersson@kernel.org
Cc: kishon@ti.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_060617_859790_4062AE01 
X-CRM114-Status: GOOD (  16.61  )
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

On 10/09/2022 09:38, Manivannan Sadhasivam wrote:
> In the PCS region, registers QPHY_V5_PCS_EQ_CONFIG4 and
> QPHY_V5_PCS_EQ_CONFIG5 should be used instead of QPHY_V5_PCS_EQ_CONFIG2
> and QPHY_V5_PCS_EQ_CONFIG3.
> 
> This causes high latency when ASPM is enabled, so fix it!

I have checked against vendor's tree [1]. The registers in question have 
offsets 0x01c0f3e0 / 0x01c0f3e4. The sm8450.dtsi uses 0x1c0f200 as the 
PCS region base for the PCIe PHY1. Thus the correct offsets for the 
table are 0x1e0/0x1e4.

There might be a mistake in the name of the register, but the address 
corresponds to the address in the vendor's tree.

[1] 
https://github.com/MiCode/kernel_devicetree/blob/zeus-s-oss/qcom/waipio-pcie.dtsi#L520

> 
> Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 4 ++--
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 4648467d5cac..b508903d77d0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1332,8 +1332,8 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rx_tbl[] = {
>   };
>   
>   static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_tbl[] = {
> -	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG2, 0x16),
> -	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG3, 0x22),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG4, 0x16),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG5, 0x22),
>   	QMP_PHY_INIT_CFG(QPHY_V5_PCS_G3S2_PRE_GAIN, 0x2e),
>   	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x99),
>   };
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> index 61a44519f969..cca6455ec98c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> @@ -11,7 +11,7 @@
>   #define QPHY_V5_PCS_G3S2_PRE_GAIN			0x170
>   #define QPHY_V5_PCS_RX_SIGDET_LVL			0x188
>   #define QPHY_V5_PCS_RATE_SLEW_CNTRL1			0x198
> -#define QPHY_V5_PCS_EQ_CONFIG2				0x1e0
> -#define QPHY_V5_PCS_EQ_CONFIG3				0x1e4
> +#define QPHY_V5_PCS_EQ_CONFIG4				0x2e0
> +#define QPHY_V5_PCS_EQ_CONFIG5				0x2e4
>   
>   #endif

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

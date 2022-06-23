Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D13C43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVESySxT+LNH4xGPj6ywue+3J2m3zt7mmttfPcKkomc=; b=had2kjMl5UdFiS
	juHta+KKCLARXDBSP3S/+R9iRsBqfAIGh45h3TFjDpFNap6wO7mKomUnnED1ZqBmwV+M5n+puD4jT
	p1wf6xwayeCO0TYAoEmOfe8ST5s/THg5xoZSVFiWA8NegOduSAk15/MBgyvaDNbjEfPUOqcq26ZE7
	CyR98/Zep6rhM5SMb2vUHxOKbBRdy9sey7rRFxLNDf/vM7IWCOlxhccm2WaKreM6YdJSNckOluq5m
	CfmJ9TJ2YRBZ8/nGAvozw53Q3Vc3+uTlSNS7ao7PVjsoBSucVD9Q8Kgtnd9W2L9E8yEN72KAyLyQs
	YIR+FOWax8svVBam2R4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LLH-00EmVA-AG; Thu, 23 Jun 2022 11:49:47 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LLE-00EmTI-3H
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:49:45 +0000
Received: by mail-lf1-x129.google.com with SMTP id w20so32854785lfa.11
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 04:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ik3t0l4fcbio4cX8FR37ZQkgyke1x7n6Zn3wLLd1pX0=;
        b=fM0xWDs5K7teHGXOJztCHJT/llpM7zu9xuI0NnHI0hirBcCYnXJl763ue0nt3L5JRQ
         4GKgrI529bs2dRMOZrMfotgWsdpUXRsNTypUJmgGIt87Z/Na3Ancc/XA6hgMJ1rcJgBc
         K0dNESZRqFvcnrHvk8eJcbS2nb/ftJMDauYerWPHbWA98w32gqLb1LDAzkU6mQzy2f3P
         mPfZI7BuIxhDCphAI5eJ/+OyhhS3oI9lOLXbq35TSL6Jw+T3C4ehMhGD4FH/7l6YvxYM
         IbZzl93zvLHyc23QlKIn6OWQvq5uKKDHDSspY1ggFNKwwbalTDpZ3AnsksLB5IIZaojI
         quQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ik3t0l4fcbio4cX8FR37ZQkgyke1x7n6Zn3wLLd1pX0=;
        b=KYNj7Vb7xzvmCSSw9Ok29S9LdK31wXFZrJkK0DIaK3vmJrI5oD340Nyzn+x1yeBYVf
         1bbluFf5lfRcxrSsufFq5qVS0HA6W9Ml/uMdEeTjMvEDWKZ3qzoE48oL6hDZX8JPWh6S
         KWq9+R9AQAVEFaz6DtVOX5AZ4jGkfhb+bHyjdUtdpMV7KsGk6PlMrEXZ/Tqk0Vej7uDK
         9bPxLbVcPOkaYRCy0qDD3qVjmjzRgEC/hSBOxQzoqYYyI9YWt5wL8mSbMDMRvE4KrYVk
         1u5XZVfLw1cek5+po8BVfDtqL6UFI9i8Lj5pfMS6pkdTdBQ0Lkn0VoyGSHs6BpbwUsxe
         Rf0A==
X-Gm-Message-State: AJIora+TYyVUAtOzGPHaDPuHUf97bYKy4IkNYDpeGoCZ9IP6/xLuNPpU
	R1z2MiOT8KyioERgMxtBd4uVOw==
X-Google-Smtp-Source: AGRyM1t4TD1Sc6F5sq9F1yH8vffHMc1UT8wQzHLHJY65aci0iWr4UtrSIZrFRYsEuvp936wciB48uQ==
X-Received: by 2002:a05:6512:686:b0:47d:b7f3:e6a4 with SMTP id t6-20020a056512068600b0047db7f3e6a4mr5207986lfe.138.1655984980388;
        Thu, 23 Jun 2022 04:49:40 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t7-20020a2e9d07000000b002556cf330e8sm2754306lji.99.2022.06.23.04.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 04:49:39 -0700 (PDT)
Message-ID: <80da3045-5351-5d21-ffb2-e514e0b25961@linaro.org>
Date: Thu, 23 Jun 2022 14:49:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] phy: qcom-qmp: clean up v4 and v5 define order
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220609120338.4080-1-johan+linaro@kernel.org>
 <20220609120338.4080-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220609120338.4080-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_044944_197121_637E9139 
X-CRM114-Status: GOOD (  13.38  )
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

On 09/06/2022 15:03, Johan Hovold wrote:
> Clean up the QMP v4 and v5 defines by moving a few entries that were out
> of order.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index eb5705d1e32c..626be0ccede2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -577,8 +577,8 @@
>   #define QSERDES_V4_COM_LOCK_CMP1_MODE0			0x0ac
>   #define QSERDES_V4_COM_LOCK_CMP2_MODE0			0x0b0
>   #define QSERDES_V4_COM_LOCK_CMP1_MODE1			0x0b4
> -#define QSERDES_V4_COM_DEC_START_MODE0			0x0bc
>   #define QSERDES_V4_COM_LOCK_CMP2_MODE1			0x0b8
> +#define QSERDES_V4_COM_DEC_START_MODE0			0x0bc
>   #define QSERDES_V4_COM_DEC_START_MODE1			0x0c4
>   #define QSERDES_V4_COM_DIV_FRAC_START1_MODE0		0x0cc
>   #define QSERDES_V4_COM_DIV_FRAC_START2_MODE0		0x0d0
> @@ -1106,8 +1106,8 @@
>   #define QSERDES_V5_COM_LOCK_CMP1_MODE0			0x0ac
>   #define QSERDES_V5_COM_LOCK_CMP2_MODE0			0x0b0
>   #define QSERDES_V5_COM_LOCK_CMP1_MODE1			0x0b4
> -#define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
>   #define QSERDES_V5_COM_LOCK_CMP2_MODE1			0x0b8
> +#define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
>   #define QSERDES_V5_COM_DEC_START_MODE1			0x0c4
>   #define QSERDES_V5_COM_DIV_FRAC_START1_MODE0		0x0cc
>   #define QSERDES_V5_COM_DIV_FRAC_START2_MODE0		0x0d0
> @@ -1134,8 +1134,8 @@
>   #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x1ac
>   #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
>   #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1	0x1b4
> -#define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
>   #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1	0x1b8
> +#define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
>   
>   /* Only for QMP V5 PHY - TX registers */
>   #define QSERDES_V5_TX_RES_CODE_LANE_TX			0x34


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

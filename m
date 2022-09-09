Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B2CC6FA82
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVEn3vqMKc7BdHRXXyQUXuRxgWGk3JWkZ/LENawHpDM=; b=0CZp47Pp/jRk6y
	9qNBsD3A7LuJ88zyh2BpO0Q5GGdBf30JVOhNC/Gy4/A5ozVANkH1doqT5N3SGtXTNOWEUTkCgDAaC
	wncZGBLcOlT6I3fx8uYQ461/uJAvtyfi0lKts8lAxf6odGUt5FaLGKqfgMYuUQXgoC0lcdeKqJykz
	7Sged9U77xOxfd/4KBQ+Rm4ReDg/dUDN0NFSpFj6t02B9iyIS2eW+GzHVBpNxGBUTEvKUGNO8LkFH
	O2NpD3d7EL6d9pCv5Y3uSQd+1h9rPFbWJ3ZdU5/Q0klpjbwpWW6xQjXysOhkg4xypekai40zzzWs2
	ouKY3mV3Uvvru2ImR4Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaCO-00F1KG-GP; Fri, 09 Sep 2022 09:21:20 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaCJ-00F1Hk-QF
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:21:19 +0000
Received: by mail-lf1-x12b.google.com with SMTP id k10so1680873lfm.4
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=5C5lLPWXo2PEugtUTd2/amAX/cOIrsmkGvZKcxLNXv8=;
        b=FjVvfjC4Qeanl9HJy1Wx0CDHchT64ls67ctXS3tW53xX37jJcTi0bJ0T8efnLOgred
         dC15271al2nKmj0OGleXVqNIEwnGhWfh7YLZYvONOCHBX1yTnlntuymCC/6jd6WcSYtc
         FHMsbFGKU/mpAINtvgEPyY++uCrQW47hJ75Sgl206LvZPHbtsmqhOONUoqZmOcE2Cqgk
         8/C28GxQMxs7S3CMX8zSlWeADy5SNwGkiMMLfHB51glfXKmoL0UDtXw5njLAS/qJWBGG
         iBCZxpw1Gwf4/zv5RK90wWztLUuvjKfdRwEWLde6spzua/n3Eqz2e6VwAhPmupfNSC8R
         UL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5C5lLPWXo2PEugtUTd2/amAX/cOIrsmkGvZKcxLNXv8=;
        b=QOCtDEJ7ooPoZgu8irkvlAxaQSzCWanmEWiAL+qYjVOMqiJpc7/fQE020v3y4c4ceI
         HSgQPmIQei6D+abKjdEJl279iNdv4+T0CQg3u8ou7KhnRqX7HB/21k9InKAv7/svhz3+
         d0MzTKHmpVWgoee0J0RE0QOcuuy9NXq/cqmTrSqgpCX7N/TVnNqi2nx/X+ljOE/tedtZ
         UIuDgWAPg/AtUkey1KZ/elDsqVskxCTsPd1+PIhXz/fLo4qoqv6SobJOE+DB0wUJ6JlM
         B5tHJ+ZGNAwiqkbypW2SH4lbBjOcIlJUldnBDeA+OCrfaH+5cSr05kM5SvdIEAeX+wqZ
         BHTQ==
X-Gm-Message-State: ACgBeo03W4D48TJWtJZSkh/OEsE3Nz9/Pf1ke5Hxd4iyN6Wg737I65RQ
	ExB0ogWkLH8U/WsWK9uDnmSQxA==
X-Google-Smtp-Source: AA6agR4yyCDK3ccYh+WDpIf9g7K8b0E/jVJyesR/aOpi2YHy8mnAnvD5r6xvAlgzq4ZTZOOdwrtHWQ==
X-Received: by 2002:a05:6512:1694:b0:48a:9d45:763f with SMTP id bu20-20020a056512169400b0048a9d45763fmr3886463lfb.662.1662715273122;
        Fri, 09 Sep 2022 02:21:13 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u23-20020a05651c131700b0026ac8c94022sm207044lja.119.2022.09.09.02.21.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:21:12 -0700 (PDT)
Message-ID: <7370ba1d-472c-b036-4155-f86ca13f9824@linaro.org>
Date: Fri, 9 Sep 2022 12:21:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 02/16] phy: qcom-qmp-combo: drop unused defines
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_022115_885260_9969BCD8 
X-CRM114-Status: GOOD (  15.78  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Drop defines and enums that are unused since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 15 ---------------
>   1 file changed, 15 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 9ce2ab56be4c..838f7e328b55 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -28,16 +28,11 @@
>   #define SW_RESET				BIT(0)
>   /* QPHY_POWER_DOWN_CONTROL */
>   #define SW_PWRDN				BIT(0)
> -#define REFCLK_DRV_DSBL				BIT(1)
>   /* QPHY_START_CONTROL bits */
>   #define SERDES_START				BIT(0)
>   #define PCS_START				BIT(1)
> -#define PLL_READY_GATE_EN			BIT(3)
>   /* QPHY_PCS_STATUS bit */
>   #define PHYSTATUS				BIT(6)
> -#define PHYSTATUS_4_20				BIT(7)
> -/* QPHY_PCS_READY_STATUS & QPHY_COM_PCS_READY_STATUS bit */
> -#define PCS_READY				BIT(0)

I think these defines, describing registers and bits, can go to the 
common header instead.

For the rest of the patch:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>   
>   /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
>   /* DP PHY soft reset */
> @@ -71,8 +66,6 @@
>   #define POWER_DOWN_DELAY_US_MIN			10
>   #define POWER_DOWN_DELAY_US_MAX			11
>   
> -#define MAX_PROP_NAME				32
> -
>   /* Define the assumed distance between lanes for underspecified device trees. */
>   #define QMP_PHY_LEGACY_LANE_STRIDE		0x400
>   
> @@ -115,22 +108,14 @@ struct qmp_phy_init_tbl {
>   
>   /* set of registers with offsets different per-PHY */
>   enum qphy_reg_layout {
> -	/* Common block control registers */
> -	QPHY_COM_SW_RESET,
> -	QPHY_COM_POWER_DOWN_CONTROL,
> -	QPHY_COM_START_CONTROL,
> -	QPHY_COM_PCS_READY_STATUS,
>   	/* PCS registers */
>   	QPHY_SW_RESET,
>   	QPHY_START_CTRL,
> -	QPHY_PCS_READY_STATUS,
>   	QPHY_PCS_STATUS,
>   	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
>   	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
>   	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
>   	QPHY_PCS_POWER_DOWN_CONTROL,
> -	/* PCS_MISC registers */
> -	QPHY_PCS_MISC_TYPEC_CTRL,
>   	/* Keep last to ensure regs_layout arrays are properly initialized */
>   	QPHY_LAYOUT_SIZE
>   };

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

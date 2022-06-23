Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F5ACC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNTIeTogPDk66z4LCEv8K/31KWLoWmh7D1zNgQQWF9s=; b=B89ZCDGVVixHtg
	3zfAy7TqaLNYxMvvxZgqX0xDh4p7eE6nKF5oDVTXm/tGclyNYHUhbjHS8H2eRaH5hd4ymnl9XJDSV
	5lUyGcKLtEA07gud7Rqurtvb7gTrf4E7HmhYmY5bT+YWP2lNjLJt84Hx75VW36ug72l1BdNic/GG5
	xHJgIUm0SQHO8AvhelBTubhBa6qiVZZ/rtbVuput2AmpnUqUZ8NpGiV9yRe0mIQeStAeTW0LsJhq9
	dGlUA6L13dPllP41r4ZGv8dIoNNXtruOrL+w6Eph09Z8OKrLUa4TUt9SksoiDVhPwUQENqemyxCCG
	iyQyVldi9g8JwHgkwcdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LLo-00Embs-J7; Thu, 23 Jun 2022 11:50:20 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LLl-00Emb4-SZ
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:50:19 +0000
Received: by mail-lf1-x12f.google.com with SMTP id c2so32922477lfk.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 04:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ir/DilAOPoYnMwqX0RWgy8L38tqV+tCh1dw/wevTBm0=;
        b=OejTdaKldG7w60iXTil2LTWtIYmZ6cXgsc1JH0iyWTjgT4hmoTEyjeJX8TQdj2N2Ws
         E8HUd8TxD1crsF8kCXsNoZRivQwtQUdaW+ez27VUF8JBhiPIC/q56Kouou/kZbsu2erH
         Qy95S0j3SswM2ZzEPHlmSjWgvXw2sW+MIkOeHE0bTcPEnmuTjT8UCi7+tApmG+pVnjRe
         Lm7+W7vTcw2/JU4cxOQOHnEgyPybhSUrz9azDVqPU/nkt3995VdLUCSIpqGCjcZghbOz
         XgwB9+aKf2giQJ3lP6UI9GkgLMuOhLRWO//rXUr/lPRdr14XgECA9y5kvPnyKSJD3AgH
         dDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ir/DilAOPoYnMwqX0RWgy8L38tqV+tCh1dw/wevTBm0=;
        b=nDOjq7UmmudqBXkrseI/RDNXincT376kR7RuFuEu5tNRBMxyj/5t2LXTLCFgskZcLe
         jq9pO0xu23bxsbfNJrn4mNOqioBV/uDN7QW2TKMdr203Z0chFyqLs7H/ynZNbajFnghd
         cQSNBzTmLP5j/2bkUmTHDlatSUUBFT7RZn8kzFEfW3CKwTQn2Z7xP49/X0ppRUNJILdV
         ZnRWvMyS1yxcR/gRz/kqR1wH3Vqoz4JgBXOC3pO7zDby3JPT2KENSvhryQ4/4BYgovQH
         GFiNVrFPVTlvpUq9wAmVP/b6xlTFDbinMxxCJ0vND/xomJm8LQMyzUpX4iX+UYlMIZS9
         v8fw==
X-Gm-Message-State: AJIora+YqLxxCDWQ1tF5qtI43+OJRMXyLS7ZvVxRuVYowID78BhGP24R
	ZbXLgBmSEX7jyMDcTfPO3EUuoQ==
X-Google-Smtp-Source: AGRyM1tkOVrfM4sz3EsqFiZKvIHswAgXa27vIRjdVNDRiwQ7ylmF73Un1GaG9iJ6lcvP+oVLUfac6g==
X-Received: by 2002:ac2:52b7:0:b0:47f:616d:e54c with SMTP id r23-20020ac252b7000000b0047f616de54cmr4974909lfm.218.1655985016310;
        Thu, 23 Jun 2022 04:50:16 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u2-20020a05651220c200b0047f6e03d10fsm1727926lfr.226.2022.06.23.04.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 04:50:15 -0700 (PDT)
Message-ID: <a6c53db8-8639-55b5-c86a-449dbc07e7d7@linaro.org>
Date: Thu, 23 Jun 2022 14:50:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/3] phy: qcom-qmp: clean up hex defines
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220609120338.4080-1-johan+linaro@kernel.org>
 <20220609120338.4080-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220609120338.4080-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_045017_969155_4EE1E961 
X-CRM114-Status: GOOD (  11.50  )
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
> Use lower case hex consistently for define values.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp.h | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index 6d410826ae90..3a4f150dd499 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -30,7 +30,7 @@
>   #define QSERDES_PLL_CP_CTRL_MODE0			0x080
>   #define QSERDES_PLL_CP_CTRL_MODE1			0x084
>   #define QSERDES_PLL_PLL_RCTRL_MODE0			0x088
> -#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08C
> +#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08c
>   #define QSERDES_PLL_PLL_CCTRL_MODE0			0x090
>   #define QSERDES_PLL_PLL_CCTRL_MODE1			0x094
>   #define QSERDES_PLL_BIAS_EN_CTRL_BY_PSM			0x0a4
> @@ -44,7 +44,7 @@
>   #define QSERDES_PLL_DIV_FRAC_START3_MODE0		0x0e0
>   #define QSERDES_PLL_DIV_FRAC_START1_MODE1		0x0e4
>   #define QSERDES_PLL_DIV_FRAC_START2_MODE1		0x0e8
> -#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0eC
> +#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0ec
>   #define QSERDES_PLL_INTEGLOOP_GAIN0_MODE0		0x100
>   #define QSERDES_PLL_INTEGLOOP_GAIN1_MODE0		0x104
>   #define QSERDES_PLL_INTEGLOOP_GAIN0_MODE1		0x108
> @@ -270,11 +270,11 @@
>   #define QPHY_RX_MIN_HIBERN8_TIME			0x140
>   #define QPHY_RX_SIGDET_CTRL2				0x148
>   #define QPHY_RX_PWM_GEAR_BAND				0x154
> -#define QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1A8
> -#define QPHY_OSC_DTCT_ACTIONS				0x1AC
> -#define QPHY_RX_SIGDET_LVL				0x1D8
> -#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1DC
> -#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1E0
> +#define QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1a8
> +#define QPHY_OSC_DTCT_ACTIONS				0x1ac
> +#define QPHY_RX_SIGDET_LVL				0x1d8
> +#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1dc
> +#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1e0
>   
>   /* Only for QMP V3 & V4 PHY - DP COM registers */
>   #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
> @@ -639,7 +639,7 @@
>   #define QSERDES_V4_TX_TRAN_DRVR_EMP_EN			0xb8
>   #define QSERDES_V4_TX_TX_INTERFACE_MODE			0xbc
>   #define QSERDES_V4_TX_PWM_GEAR_1_DIVIDER_BAND0_1	0xd8
> -#define QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1	0xdC
> +#define QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1	0xdc
>   #define QSERDES_V4_TX_PWM_GEAR_3_DIVIDER_BAND0_1	0xe0
>   #define QSERDES_V4_TX_PWM_GEAR_4_DIVIDER_BAND0_1	0xe4
>   #define QSERDES_V4_TX_VMODE_CTRL1			0xe8


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

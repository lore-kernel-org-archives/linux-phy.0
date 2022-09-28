Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D507BC54EE9
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 16:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDNwAp6Rjxf/SoL2X20lIpvsgE6s/n2sx1pQN168+gk=; b=CWw+CCHBdizr76
	LSMrA+W8Ewlg9dL5JhMYnXh3nU9sgIS7B6J2SpijQOST7I+J/1KSEsbpLVoDjKpAL8qBMbA38oEOU
	UM59uXHn9e2Wl/LhKlif3b8QAbaikelepCW8qClxVqpWOx2W7YZfA5+2T3Vf17i3nsxcI7xYBAEWe
	TvfPx4kP9sHNX2Cxx00IFAIztX6bBk0X9kQiD6R6QymIgFuv5wZXPYVSbWO+d3KW6B6JSa+CnPTLB
	FYiYoe5nd3Sa19xrVimk0NXS+gt5OpDOLTuYsV4wpGyyR4EDf9I+A5G/mRVtvK+LMbNQjR1+uCJsw
	iunCFnZ9cgAKsifntK1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZVP-00H2sX-8Z; Wed, 28 Sep 2022 16:01:51 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZVL-00H2p9-U4
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 16:01:49 +0000
Received: by mail-wr1-x42b.google.com with SMTP id m4so6170764wrr.5
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 09:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=4inxAI01QnbzXGzpXNBlmGzMPfFHML7Rc///8QtHfQw=;
        b=bwNJtqHnLTVnmoq5aN8ffeBw48XV4187pwlMxA4c+lq3ppt7wXs1kdsvmh5zNVUZdD
         eon8ceGG1Wy8ht3nl5MULBoL6o0NkVdtWEDcJBQvNU2y7IoLh9Bjul6ooyAlyvd2iooF
         j915l9+Mw+kdUBCVEDkEjuNP3B2Y3aE3bg3svIqoIve3m47p6pSACGKDl/hCcNwf4xRg
         PbcS2CBA2gWpmaKtXE4IJd8uYmeLmPxtifM+d3T64FIFk9oilmiIATH5YaKFIZqHcGjM
         5dw//khd9Rmxj2w/7Nr1TIJDgK9ZVZntWYiK64GclpDJ2Uf9/A1CDrECkbaautHi0nsE
         WvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=4inxAI01QnbzXGzpXNBlmGzMPfFHML7Rc///8QtHfQw=;
        b=MYZLSLPU6dZXSzMRBdC9oONGBDqW2FMLYcZKszPHLgcnLe+3Kz8HVzcINGD9A+7Wsr
         oe2Bb/OTMmj5JbJXtfxIvhYEEUYjTxHFaxYjt7N9U/Q5yBKzq+ldlD3nIZVK4JcqKTIv
         HfohdPAsC5WcfgHpT2d/EAZUJauWPGET83G+TE72PElmyiZ3p8i5MB4yKUHvsNtTxWbL
         C6tPrQRSu7Ca/Kbe0F4FP3x4X0KZ1bfLcMLnMZVG/W3S+ri7+uDhfy1U+Fqk3m6fSmU9
         2g+UAqD9aeqv5ybpGTY8e/R/L6Cc4MU3+/3WD5gSPV/Zlr30tvpw5BcOb+tas5vtvyZb
         8Fmw==
X-Gm-Message-State: ACrzQf3NavygYg1dVubkja1aUQXp+pg+WHxYLqLiRLtr73N+M+0VTgu9
	FWnsA/XAQOOm/32UgvWSrbkI7g==
X-Google-Smtp-Source: AMsMyM5bko9Ra+sYBhK18zzhT3+GrmZE4IS4feXvWnGfJGhe/EsDZqZ8/DNekKrNGTuIL9UCOWTtNw==
X-Received: by 2002:a5d:584d:0:b0:22b:229:7582 with SMTP id i13-20020a5d584d000000b0022b02297582mr21795034wrf.211.1664380902320;
        Wed, 28 Sep 2022 09:01:42 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id l13-20020a5d410d000000b0022cbcfa8447sm4665456wrp.87.2022.09.28.09.01.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 09:01:41 -0700 (PDT)
Message-ID: <f4148c7f-3f75-bedd-3e3e-a50113cf41b8@linaro.org>
Date: Wed, 28 Sep 2022 18:01:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 05/13] phy: qcom-qmp-pcie: unify sdm845 registers
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-6-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220928152822.30687-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_090148_007865_956B3F96 
X-CRM114-Status: GOOD (  14.04  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 17:28, Johan Hovold wrote:
> The SDM845 register array is identical to pciephy_regs_layout so drop
> the former.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 +-------
>   1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 7b3f7e42edd5..4146545fdf5f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -92,12 +92,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>   	[QPHY_PCS_STATUS]		= 0x174,
>   };
>   
> -static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
> -	[QPHY_SW_RESET]			= 0x00,
> -	[QPHY_START_CTRL]		= 0x08,
> -	[QPHY_PCS_STATUS]		= 0x174,
> -};
> -
>   static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>   	[QPHY_SW_RESET]			= 0x00,
>   	[QPHY_START_CTRL]		= 0x08,
> @@ -1545,7 +1539,7 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
>   	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
>   	.vreg_list		= qmp_phy_vreg_l,
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> -	.regs			= sdm845_qmp_pciephy_regs_layout,
> +	.regs			= pciephy_regs_layout,
>   
>   	.start_ctrl		= PCS_START | SERDES_START,
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,

Isn't is an issue if QPHY_COM_* entries are in pciephy_regs_layout and not in sdm845_qmp_pciephy_regs_layout ?

BTW it seems those QPHY_COM_* are never used..

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

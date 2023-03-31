Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77699C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYnHJXnvjnlJ40BV4dc2GALFgHNOpTPKU92B9Nhb4YY=; b=EP9IwP1h5Tl6ax
	B0Htdj/wo3lSaFs7pbGTSZ3RrAhqxs8hsnJhROpvUSqHbHWejEASFrkvSnRZn+9hLqclB72ydpB9f
	/NlzXS+yrTBo5JhLeroushxSyFeBhYEFOG6EnadxHKKmaO7FtcfrqcmRTgrts1L/l7cQmu74hkwFo
	TyDaTx9x+9ybsoT54sdYOTQYTkgcLtoYkqdLSaayS+b2+eJjS43zJinwOI/b2XA0L6+IfBk520+y1
	BYl1AzRY21Tr4VdsaYTyQm7h+oCSnz758B3q7p/SsAFLVRw5hb1huSWwEQ3tVQtbAupzuKy1/PMnD
	iodUnkdsU245iNJSrsPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKeS-008eZo-1v;
	Fri, 31 Mar 2023 19:43:08 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKeP-008eYh-0A
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:43:07 +0000
Received: by mail-lj1-x233.google.com with SMTP id z42so24206486ljq.13
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680291782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sehubCagA5aNt1ghQYew9DpGyR3IiV4Tr5g7aqEM3ZA=;
        b=ibHbux3mByAgnIVoQxABLN5Jl2WI6jGFcoETwSinUHFPxDWhC5hXlm4ZfK/cyJ22n2
         ON03k+HRmoCvjQIUAGDR6l0PdRU80Nn9f4gQahcFTF/Tdgg/f4sKxUe6xyYmLRJuT4uN
         luQQKk5sOACRDEwvrpDLXkJYkFaYxRQ45ItOOeMFV8dim0A9SJ7dI1PEiORd3Zf/lWV3
         LSMbrShY/USruw2oRvIxzoewKgY3lJDCMQQaVU4ugKWQCOl3kpusUSjMgIRI0BC8VYT0
         wTqhDvITPm3Yg0eZ09igFVB8NOnKzXzL4E4TusAIv8ikQK+LXQPcCpeDmx7NIO3UxaM+
         50dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680291782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sehubCagA5aNt1ghQYew9DpGyR3IiV4Tr5g7aqEM3ZA=;
        b=0vsxpARRW8KjV2OD9FtDHnN2vxs90puhW3PaPMqQgVDqjmoP5FTxJLVPUDed2MObiD
         Mdg2rWUMVjRukiQXjfoXZbY0Qjr18wEbPEKb4nwnBvNuRiO+h0qRcXC1y0lm4+BhPakP
         OpfwRL7vnVyyR+0QeGmRPnw5WmYRG9uNktckL02qrcZeaEqi+TOIyT0fgSUgSyuK6sgB
         M29iI4poeTPSmN/a8PBCsyc8gQQjCV2O+Aur4xxRoIr9M3Nc3x4xgw31w87i93uhQx9Z
         Bzylap7JvAKdLCDVTxOkzl4lcvOMB4nm5Cbpvu/Ue3T8dZ00Mk1izaETXh4icPVbV825
         w9/g==
X-Gm-Message-State: AAQBX9d5sl75Q1rUtu5C8qRKG/KXsBlnjYDszI/Fu2YT4D3nfRtaDo5f
	7WgsSMGFbHuxP7oRPGuup7Eflw==
X-Google-Smtp-Source: AKy350Z+p4cwTvZPZdfQSVVE3COHMQ6zlB9Ujb+Huyiur8ueUUTDR+1S77pnMASrKt3Uwydq77Yw1g==
X-Received: by 2002:a05:651c:207:b0:29c:39aa:7b3f with SMTP id y7-20020a05651c020700b0029c39aa7b3fmr8398795ljn.21.1680291781905;
        Fri, 31 Mar 2023 12:43:01 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id u4-20020a2e9b04000000b00295a3a64816sm486167lji.2.2023.03.31.12.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:43:01 -0700 (PDT)
Message-ID: <8b785c0b-082f-308b-8346-9bb3c89e0048@linaro.org>
Date: Fri, 31 Mar 2023 21:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH RESEND v2 2/2] phy: qcom-qmp-pcie: drop
 sdm845_qhp_pcie_rx_tbl
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
References: <20230331151250.4049-1-dmitry.baryshkov@linaro.org>
 <20230331151250.4049-2-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230331151250.4049-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_124305_122211_FC66D7E9 
X-CRM114-Status: GOOD (  12.41  )
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



On 31.03.2023 17:12, Dmitry Baryshkov wrote:
> The SDM845 QHP PHY doesn't have designated RX region. Corresponding RX
> table is empty, so we can drop it completely.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index f378c1ebefd7..df505279edfd 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -725,9 +725,6 @@ static const struct qmp_phy_init_tbl sdm845_qhp_pcie_tx_tbl[] = {
>  	QMP_PHY_INIT_CFG(PCIE_GEN3_QHP_L0_RSM_START, 0x01),
>  };
>  
> -static const struct qmp_phy_init_tbl sdm845_qhp_pcie_rx_tbl[] = {
> -};
> -
>  static const struct qmp_phy_init_tbl sdm845_qhp_pcie_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(PCIE_GEN3_QHP_PHY_POWER_STATE_CONFIG, 0x3f),
>  	QMP_PHY_INIT_CFG(PCIE_GEN3_QHP_PHY_PCS_TX_RX_CONFIG, 0x50),
> @@ -2212,8 +2209,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>  		.serdes_num	= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
>  		.tx		= sdm845_qhp_pcie_tx_tbl,
>  		.tx_num		= ARRAY_SIZE(sdm845_qhp_pcie_tx_tbl),
> -		.rx		= sdm845_qhp_pcie_rx_tbl,
> -		.rx_num		= ARRAY_SIZE(sdm845_qhp_pcie_rx_tbl),
>  		.pcs		= sdm845_qhp_pcie_pcs_tbl,
>  		.pcs_num	= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
>  	},

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

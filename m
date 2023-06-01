Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D417C77B7E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 09:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RMyU2q3advY6fXMKm0029wMe7gwMUV94I5r3FCwTGw=; b=Trgffn+EvYv9b0
	Ch33aYHZAWpj3IE+nZkif8bavRimkTbVMXVbiA3CXKV4uO9q9abcCKoCF4YSU2z3EoQnTkWW3y/v9
	YMGqOHoWgoXPS/wogW9n47jf6gYoLowSiWVNexrmrFini/1DFVBae3/BocbfaKfQUm3a0BCI2LT+P
	w3EW/TagAZXwm1bO1fLPlhov9ADg5Q0G2cMmdXLeb6VgXOiWZeAePxF+t9uMNviA5FYZWjjUHjjV6
	7G70YnGUpGWCn2NuvzS90Vp6s3xVk2znYPGnjh/BmLF3+ClPt1xLvGA4E1ULbmftWt5Vxo7w3cAli
	VPDfvurgzdLrVVzhDVjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4eow-002lXM-26;
	Thu, 01 Jun 2023 09:42:14 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4eos-002lWX-1O
	for linux-phy@lists.infradead.org;
	Thu, 01 Jun 2023 09:42:13 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2af225e5b4bso7536131fa.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Jun 2023 02:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685612523; x=1688204523;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iU4xmtUMX9w6zebg9MlJSqLt7G1H1md/4T/8wkl1MeQ=;
        b=q7ZGGNGiaXJhXgsEQWO1S8RqG6AWF14Y+cBOPc35YykwyaMUlD5oQDTXyEoRhZ11ze
         Fw+RugGz+bpPvN97e/rQukvJg5GfDlQSUEOMpWE5R0KT1HHemYFBAFUQUddg6gf+TVZ6
         1SQkpF0O7D9CNMbZKp5FhrKOxS7C550nnFPgl0TL24zz7aQQGJAMj5wY9jJQ7QaVkg0n
         MLjFgpDBQALUq22J0P11GPtA8f024aeFPoEdNNcxoYjT9yD2N+jfbYU1PqT9mBdosOWE
         x7T1JEnHZfk7YRH7rMjIKzFdrCI9ONkNcWmzSvGxyJ52MkYi2O2Ii78cxeifCMiQU8Ro
         cPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685612523; x=1688204523;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iU4xmtUMX9w6zebg9MlJSqLt7G1H1md/4T/8wkl1MeQ=;
        b=WqONlXpacBwY4qDJH+3xFeB/U2l2LkWkeFhxHWCQHb8I/4+yR6tte1vZW0+g/wYPxa
         E/dfx72+zhyWRkVcghQuBdNb+EZPIC48aWAzz2RVUj8hEMk1uwIylSkFV0hepv/YDdbr
         NOZT7x8ApAZjBPI3VhaEfzfw9hz/LFudaw+S15jneUhcs6fswIiQ8nTGEj4i7FFggLWo
         qjAq6+mloHyP/kvHV0DR9vYNvWO0br5RcLpHtRE1xeEQRrJdC95qYaghUIdfLHUp0T6S
         +9GClnA0GNKlsDYRlzqpP6p3X8dfpPHvHqOyR3oDivrLnEGzKr55ZFQ3vK7sBvIKlxOl
         oZhQ==
X-Gm-Message-State: AC+VfDxpdpr83BAX2NkralcnDPPGe7swThEbKFMxisxcsL8cBFHXNgW5
	+rdZyncgqJSHWQ9Amxli5D4NZQ==
X-Google-Smtp-Source: ACHHUZ6dR77rVYZoSpQxjUEWeCWY+lvjsNiArIBtcpXi+EJlqEv8hdhlSjqXQkiVKje2MmkgtVVpyQ==
X-Received: by 2002:a2e:8402:0:b0:2b0:360f:5752 with SMTP id z2-20020a2e8402000000b002b0360f5752mr4457807ljg.2.1685612523522;
        Thu, 01 Jun 2023 02:42:03 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id w5-20020a2e9985000000b002adb0164258sm3722531lji.112.2023.06.01.02.42.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 02:42:03 -0700 (PDT)
Message-ID: <979f665e-5ca5-afff-17a8-d967fefca6cb@linaro.org>
Date: Thu, 1 Jun 2023 11:42:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix Display Port PHY configuration
 for SM8550
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230601-topic-sm8550-upstream-dp-phy-init-fix-v1-1-4e9da9f97991@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230601-topic-sm8550-upstream-dp-phy-init-fix-v1-1-4e9da9f97991@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_024210_474884_72BE0617 
X-CRM114-Status: GOOD (  16.12  )
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



On 1.06.2023 11:39, Neil Armstrong wrote:
> The SM8550 PHY also uses a different offset for the CMN_STATUS reg,
> use the right one for the v6 Display Port configuration.
> 
> Fixes: 49742e9edab3 ("phy: qcom-qmp-combo: Add support for SM8550")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Must have been fun to debug.. 

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 33cc99d9c77d..bebce8c591a3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2151,6 +2151,7 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>  static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp,
>  				     unsigned int com_resetm_ctrl_reg,
>  				     unsigned int com_c_ready_status_reg,
> +				     unsigned int com_cmn_status_reg,
>  				     unsigned int dp_phy_status_reg)
>  {
>  	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> @@ -2207,14 +2208,14 @@ static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp,
>  			10000))
>  		return -ETIMEDOUT;
>  
> -	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_V4_COM_CMN_STATUS,
> +	if (readl_poll_timeout(qmp->dp_serdes + com_cmn_status_reg,
>  			status,
>  			((status & BIT(0)) > 0),
>  			500,
>  			10000))
>  		return -ETIMEDOUT;
>  
> -	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_V4_COM_CMN_STATUS,
> +	if (readl_poll_timeout(qmp->dp_serdes + com_cmn_status_reg,
>  			status,
>  			((status & BIT(1)) > 0),
>  			500,
> @@ -2250,6 +2251,7 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
>  
>  	ret = qmp_v456_configure_dp_phy(qmp, QSERDES_V4_COM_RESETSM_CNTRL,
>  					QSERDES_V4_COM_C_READY_STATUS,
> +					QSERDES_V4_COM_CMN_STATUS,
>  					QSERDES_V4_DP_PHY_STATUS);
>  	if (ret < 0)
>  		return ret;
> @@ -2314,6 +2316,7 @@ static int qmp_v5_configure_dp_phy(struct qmp_combo *qmp)
>  
>  	ret = qmp_v456_configure_dp_phy(qmp, QSERDES_V4_COM_RESETSM_CNTRL,
>  					QSERDES_V4_COM_C_READY_STATUS,
> +					QSERDES_V4_COM_CMN_STATUS,
>  					QSERDES_V4_DP_PHY_STATUS);
>  	if (ret < 0)
>  		return ret;
> @@ -2373,6 +2376,7 @@ static int qmp_v6_configure_dp_phy(struct qmp_combo *qmp)
>  
>  	ret = qmp_v456_configure_dp_phy(qmp, QSERDES_V6_COM_RESETSM_CNTRL,
>  					QSERDES_V6_COM_C_READY_STATUS,
> +					QSERDES_V6_COM_CMN_STATUS,
>  					QSERDES_V6_DP_PHY_STATUS);
>  	if (ret < 0)
>  		return ret;
> 
> ---
> base-commit: d4cee89031c80066ec461bb77b5e13a4f37d5fd2
> change-id: 20230601-topic-sm8550-upstream-dp-phy-init-fix-ed90c001592d
> 
> Best regards,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

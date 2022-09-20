Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2793EECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNjkgkMlcUD5KZXPsRWI2Gr1GGcvC0NES5cPTw076dU=; b=ppj4QYI6hxXrbU
	jzlsac3UUTZtJ6HkgOeCxUND5mjo12I7jj+Pv/26JMB6kkiAfWAh/SF2wDugCRjv+RN0qWw9wKGaZ
	YdfM27fS/HzJI7QWhDbvwuIDCrJ5I7oYfy1MclJ7Vxy6YPh6HbtDar9XYkFScaUSRuCsTpYg/EArn
	lBq8jOwpNklK5Mwx0d/mS9vYOj+wMKkcO40pS9Te5d3clJMuOFUFHEzPF8t9cp8Ja5Qi5I8j1jnE5
	RDBRLjaqD1B6TZ70zAvI6aRVIh7LO2fEdFcz2x55Lp9KUqESRw7GZHkT/7Tgi82NG9NSpZSpH97KX
	oIxxVkq0i5QspsT+b60Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeW-004FSr-Dn; Tue, 20 Sep 2022 13:51:08 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeR-004FNh-EW
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:07 +0000
Received: by mail-wm1-x32a.google.com with SMTP id e18so1979985wmq.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=vwvpH9OCUXie6JCH3Id6Xbj2ycjGgu6cufNjGSnRVxI=;
        b=PXsyjr2YR55AB98TCWIzI1oVJEwxYonA7Mf3TC5hnslTtwwgzwM9Nm3G/InB+w5RA4
         cfCn8JWn8ktZMg4VpAIsGyyejDEW11sSI42B2hnhtdWTedp+OgbXLggikkZptZGkNu0h
         LiDJjWexPyY+j9E9jI2L0viELzQqYn28OYVz1uMrKCo65j10ryulaJ+ZU324ysYpkm5j
         /bpCurXxWukGg3fphNkuD8ic11M+U2+3Ukf5jxYdBSi8R6u0Ku3YE83alMr1UnIWivtw
         qPn6R1KCLgJxCoN8X4yRqyVzJqmhw+W2aYNk/PpcJkoxEx3MijB2BiNWM/BK3XtBrc14
         yZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=vwvpH9OCUXie6JCH3Id6Xbj2ycjGgu6cufNjGSnRVxI=;
        b=LAToxD1CUnUni+4AAiDu0vyQCIdK5DHlakBoHhJo/EFw3ojB2Ji3hwxOHqFdc6zEod
         ZAEIhaO2iz+yIEG+IP5vF9cEeW4dPpHpz3rGI6Qhdh9yAfQz+IWf05bGuxwR6+G6GDgH
         Rr3/ms7lS+nMBLwC9y7dW7HPOkip1ipLCx48T2Su+I27sVfyHYiFUQbHXBJ3Hun6Lan3
         EVd/zl5aj8qCERdDi9pUp2o4DcruePXX/e4RN+ovjDAbJsdW2ViNEobiEDH2USwUBaO/
         h7jufP9TFM6Lei9FqWsxbLNo7uYtY/vmJHXDUtpYHF35KjxUoALLIPVWMP+uZF2cJLsb
         PynA==
X-Gm-Message-State: ACrzQf34RjtUFiPsDVSW3QrY6utefun7CGCpws68Kja3zOwXQM/LHoeV
	XPyR+iph0kGmBhEjcNTpDQplAw==
X-Google-Smtp-Source: AMsMyM7nVr2E4rDnRhbelfS7us0PH0eK3nVw9E84nraECaQCRgntj+daUZUAzMqKthsGAPklo64f+g==
X-Received: by 2002:a05:600c:221a:b0:3b4:75b8:3f7f with SMTP id z26-20020a05600c221a00b003b475b83f7fmr2450241wml.175.1663681860947;
        Tue, 20 Sep 2022 06:51:00 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c434a00b003b4868eb71bsm75688wme.25.2022.09.20.06.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:00 -0700 (PDT)
Message-ID: <65b66c5f-2f33-903c-ce87-3fb2b23f1b50@linaro.org>
Date: Tue, 20 Sep 2022 15:50:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/17] phy: qcom-qmp-pcie-msm8996: drop unused type from
 config
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-3-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065103_540877_166786EC 
X-CRM114-Status: GOOD (  16.86  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> The configuration PHY type is no longer used since the QMP driver split
> so drop it from the configuration.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 245f6dc1710e..20a76b1b23a2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -188,8 +188,6 @@ struct qmp_phy;
>   
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
> -	/* phy-type - PCIE/UFS/USB */
> -	unsigned int type;
>   	/* number of lanes provided by phy */
>   	int nlanes;
>   
> @@ -323,7 +321,6 @@ static const char * const qmp_phy_vreg_l[] = {
>   };
>   
>   static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
> -	.type			= PHY_TYPE_PCIE,
>   	.nlanes			= 3,
>   
>   	.serdes_tbl		= msm8996_pcie_serdes_tbl,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

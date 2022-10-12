Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B4D4C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uqI+IkBxLuLouSh/zoOWjWkcPzFIcnOrzIlfaLmlbo=; b=dTpcGMpOzvqtQP
	xnpyrH0+lOmhsaoa4D8ZqEXnNbw18nLzciVOr1oN+xu51KUkzfq6ASwDZsHg6e9Do0t6qA8m8rv3v
	oHuFf7Lo8D9HLqi/pYeuJbzGhEYOvRF1ynZqaappMmYzgDoeVwpwPt11a59KTQ0I03jHcMWZ16amS
	SrBvd9KkyQEv7B/M4jN6nynlJ7dzAOrJ7VyjlXxei28s6WmOpHgRZt1js1qM3EcHToS7hunG6HQzI
	2iTPNXX8YYauh6Ue4zYx3NoJ+jclagjr13V8zFh70OidnrkLbG6BHWZa2lBWlZsFKvMAcfdxqXlKX
	4H4z8qROvuvb1oX9bDUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij3X-009MrW-8h; Wed, 12 Oct 2022 21:14:23 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij3U-009Mqj-U0
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:14:22 +0000
Received: by mail-lj1-x22a.google.com with SMTP id c20so36228ljj.7
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k2wHfeYVczJ7pTmpwYQg5AHr9jzgUcdFH8v2Yq9evuY=;
        b=yAtZrddc3MZD0cYVyNGcrcByzmQI0MosWirM10UwAJre9HSEuICNwu9G3LH5csOhe7
         XLRM9870ZU8Gt0MtgXvPHTHeDRRm0FonC6ZQW69kyyxazEyB0dB3ScesYQMNxfCRAaOf
         jvK8AtvJ4EV3fTQDR79QudKQfviO7ekHYlDa/OJ63Yk7qjaoWfEERgyYQOHP8eFCW/e+
         f34c1X72QedByimJK95WQ4FjEYwxN1k7uGf50wtQnSOAF7AC3y7eeqPaipk9xiFOnK+G
         gjsbIvmko4Ww1BtQvgvWbzqlGpKasYh0iTjnR78zasP4nF9DPGoBgUXRgDkVVtH0uP+u
         5/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k2wHfeYVczJ7pTmpwYQg5AHr9jzgUcdFH8v2Yq9evuY=;
        b=3fGD7ZLglPFwbuA1+hJBqvlhy6eucRGgoDQN6yAsFWTHfsTBZpc5ePEcRoGDlQYT79
         qnfZcQwHd0KFujn0mCCNuFZTThOTR7PBErmaA3gXgLiT8YweoPttVwEYpWRTI5Hy/ygy
         qQdRQhLAibV8K+90Er+fsIdjXF58QwHBP5EfhPnbswzKwajG4Sc4wbrxyWstJZLFcUA5
         kBTNSaSWv8NXyNQ7328TpHSfMy9RYC4hLAtkjzAOzdRj0hrh0zFSP33sxl9b9pOUFmgd
         zep/GaDoz9iX8bhXxj5h/9VCGI4AF8uNV++scjcgJDxGjXLrA4meCymYuKVrENyWxV1v
         8wNg==
X-Gm-Message-State: ACrzQf0di5PJrRqIfsmePhUnp8OSU8ju/OGI+88shWLdK9AjCSu6aRYw
	Tm+eqHF8brm8NoK4iQprygAuNw==
X-Google-Smtp-Source: AMsMyM7BUlUaBh67kpcRmFBSY56N1BjyNPwpKtT3CxzjKJVNnPUOrReFRfvSZW/wQDKBXLEWxYaeFw==
X-Received: by 2002:a2e:a910:0:b0:261:b408:1169 with SMTP id j16-20020a2ea910000000b00261b4081169mr12189526ljq.360.1665609258091;
        Wed, 12 Oct 2022 14:14:18 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j28-20020ac253bc000000b00494792ea34esm98713lfh.273.2022.10.12.14.14.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:14:17 -0700 (PDT)
Message-ID: <ca4eef6a-dedd-1823-9525-67d695ac3e58@linaro.org>
Date: Thu, 13 Oct 2022 00:14:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 08/20] phy: qcom-qmp-combo: clean up status polling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_141421_047335_8B6163C9 
X-CRM114-Status: GOOD (  17.81  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> Clean up the PHY status polling by dropping the configuration mask which
> is no longer needed since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

This comes in expectation that 4.20 / 5.20 PHYs will be limited to PCIe. 
I'd add this to the commit message. With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 14 ++------------
>   1 file changed, 2 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 82055d3a3536..e312cad6d9c2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -853,8 +853,6 @@ struct qmp_phy_cfg {
>   
>   	unsigned int start_ctrl;
>   	unsigned int pwrdn_ctrl;
> -	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
> -	unsigned int phy_status;
>   
>   	/* true, if PHY needs delay after POWER_DOWN */
>   	bool has_pwrdn_delay;
> @@ -1023,7 +1021,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
>   
>   	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
> -	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
>   };
> @@ -1092,7 +1089,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
>   
>   	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
> -	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
>   };
> @@ -1127,7 +1123,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>   
>   	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
> -	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
>   };
> @@ -1197,7 +1192,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
>   
>   	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
> -	.phy_status		= PHYSTATUS,
>   };
>   
>   static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
> @@ -1267,7 +1261,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
>   
>   	.start_ctrl		= SERDES_START | PCS_START,
>   	.pwrdn_ctrl		= SW_PWRDN,
> -	.phy_status		= PHYSTATUS,
>   
>   	.has_pwrdn_delay	= true,
>   };
> @@ -2017,7 +2010,7 @@ static int qmp_combo_power_on(struct phy *phy)
>   	void __iomem *rx = qphy->rx;
>   	void __iomem *pcs = qphy->pcs;
>   	void __iomem *status;
> -	unsigned int mask, val, ready;
> +	unsigned int val;
>   	int ret;
>   
>   	qmp_combo_serdes_init(qphy);
> @@ -2059,10 +2052,7 @@ static int qmp_combo_power_on(struct phy *phy)
>   		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
>   
>   		status = pcs + cfg->regs[QPHY_PCS_STATUS];
> -		mask = cfg->phy_status;
> -		ready = 0;
> -
> -		ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
> +		ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
>   					 PHY_INIT_COMPLETE_TIMEOUT);
>   		if (ret) {
>   			dev_err(qmp->dev, "phy initialization timed-out\n");

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

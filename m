Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EAEFC04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fN0Nybeqt/sqiYDzsRlRoJLKOIyuajvIGIaQZ6d6lY=; b=pWdE091itO1Ld3
	S3Q0DK5/Ob2NnIS+4sdjooeQDs1uZ7vLWDvlhEBFqGcqnzedp8AyS9+BfzBFMAKLLzwxv2Ed9nOWF
	YnvSr1B9F7WuaLlUAqZ+47b4vy/rtekTDVsxv/LKpgJsZKmh/rAysV+ciroZ7dQapJ91Qszmea6pC
	0zzWIwYl+EFjsqApWHleiX6mHMP8ygVCscn7xmEnODghicB4rdH5srPcenvGU9aFaJQTHIc7TRflb
	U6YzhKBCcV37B/jvKpkMrkmzUSpUo/aU5xI7xoEvso7bLwoybXLuTQBA1nFg4BmxmguhMRrjfnOEz
	nXpkRqE4/C9VgzusyuMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcSp-0006f5-PZ; Wed, 28 Sep 2022 19:11:23 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcSn-0006c0-HG
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:11:22 +0000
Received: by mail-lj1-x22d.google.com with SMTP id q17so15368176lji.11
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=/gZf36AfrA3hWD/0cvl58ifdsuky8QGAhYN3zOeCaIo=;
        b=faHhIgC9G9GY47c9RFQEDUiqcP/c+1d82TnEsyyAkNe5jX9D+/0H8GnIHR1gVnNA4g
         y10VJ0dfhTpOjl5GJVG5YGNLyWVhSkvLNhaDfy7oSmMH4SqMGho0Bynr9naJpviXydwC
         BagBkj6Q5/PK4Vt4BBEXPdjrjLrJ/fJGs5r3QAMjs3Ka8GdR8F5Tbev7mKHvSobXewpg
         lLyeVHJ1upWV/WQH3waU8jot0MvFviPHZzxbrIw722gRU9cdyR1y5iFtp3eM1eF4/UJc
         tx+pG+YjWeNJ7ZJJMc1srLTbehQXLvTP4SM/h7mqWigx4DqgRq4q24mGj46oR0No6ENE
         s3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=/gZf36AfrA3hWD/0cvl58ifdsuky8QGAhYN3zOeCaIo=;
        b=P/F0GN0bUePt19PzVXdSmdZNZNLvicJjg1H+4eYylESfknn2iUuT0zJ7v1Pka8E+ir
         rH8tEwoyOP3KZeau/ZxdUhon1xvQYj+N4jgMhB53scKq+sw98fjCmMRhpC9PAikbqDrh
         GViTj/JUx8HI9CO8lyY9o+rlrpruSLMFp+FqmksM3xCbqL55D5wM9g4uP+Cmtbi5RMfk
         uJXYlRafYEw+3NIPJO4gC1VNwQK3LUCzgC88wFucp0rD8cvJGFj4dcTmXBuQx4iGO0ct
         xB6vMJBRAj6dzCoF1pjskkqPk1OLBoLuUYCchtLJn238GzsjewxXlAz8ShyG1dCvjPDu
         22VA==
X-Gm-Message-State: ACrzQf0pmWVbRXGYk2ClGDoOX+rVjWWty5WPo8MLcYViD4s0sjiHjkWi
	hLkxcL23BkF7HYw/rugPPT6KGg==
X-Google-Smtp-Source: AMsMyM4hpI1q8lH1cn6x1gtWTCHIX/Bo1GOEPemGLdA43LovkM3rJ9HHWH/WhDDtIlyo2rvcBA6Etg==
X-Received: by 2002:a2e:983:0:b0:26c:5b0e:f5e4 with SMTP id 125-20020a2e0983000000b0026c5b0ef5e4mr12162453ljj.502.1664392271455;
        Wed, 28 Sep 2022 12:11:11 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z24-20020a2e9b98000000b0026a92616cd2sm519306lji.35.2022.09.28.12.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:11:11 -0700 (PDT)
Message-ID: <f7c29d82-2972-6e42-8a74-ae93227331ae@linaro.org>
Date: Wed, 28 Sep 2022 22:11:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 05/13] phy: qcom-qmp-pcie: unify sdm845 registers
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_121121_604128_831477AE 
X-CRM114-Status: GOOD (  14.79  )
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

On 28/09/2022 18:28, Johan Hovold wrote:
> The SDM845 register array is identical to pciephy_regs_layout so drop
> the former.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Same comment as for the patch 04/13.

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

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

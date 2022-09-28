Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D14BC32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVomyAUlhSA8iVGmEBLx3RGMQe6IKwmXfVKwHQtVvDk=; b=L8gqHhvKsBEPDJ
	dbaLrwlCEn/QQVEBBg0fKwfImHhSz3RX8dmNp77C3vAe1xsS2ByMFw8zPscuj6UWtMEBSISzzy3ws
	CPGSuBDhXzds2eVM89oppPxhAOiYMIG+inLbdPYLMcWEKINY1meAkB+0KK3AjUFISL0SEwKWpsoC8
	kLyuKlTzAJLvW32oPJm2iApu48FjBNQYkfgIBmBfy+33K8L0HGPCaqbCEvCg8xWv9FvSuFyoUZOgY
	E93vYFWqETysloz6e7fhYWvrtxsCdXCaiD/o0s7hgSEx3ye8M+6RqtYdRl6DHVUwbJ19UyhBP1Db3
	W7xsLYI+K4wQYm2X+STw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcXJ-00079i-OE; Wed, 28 Sep 2022 19:16:01 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcXH-00077M-1A
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:16:00 +0000
Received: by mail-lf1-x136.google.com with SMTP id g1so4202482lfu.12
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=v9AUnRjO2I6miLavN2yEnEf1RGDOOvreZhD6/ZtXL0c=;
        b=O5XQ8YaQgffej3awuvAT1+h+SmTlKX2PrkfOu3buOEqj9nkkAG496M4zpid4tF5yDu
         g6vNQcL4RTvGoJKuvVnYBZhult/bGdv5lQG8/9vg5vJp/yiuMM0b0zhSZAbnR8oEpBLG
         7mSLdkM2w9P1Ep1kVJDyLLM7gvDHyofBYnPvcWzXT0Gq2kx18IKcWmic8S4lioH/a6b3
         VNvF0WPZPS7dARP+owjdaiRcfg3PnrV7bGpaidDR1agFqvaeTscCAGurM3CL4pxc3Zof
         sBgd1Dbn9n1Sy97CU6hAB3PVZ5tyM9vK7xbPeY7i6wYL8ZMXTzKhijdO0IiTc1BfwyCV
         H3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=v9AUnRjO2I6miLavN2yEnEf1RGDOOvreZhD6/ZtXL0c=;
        b=crZUo1oGZTVh9hqyD/E2v3p8aGPIScGBhn/1u6UnwQJp//AWfpWckYLZ0kU58rWMAk
         M6FekQsPCr3IbreX2IF27700BBZaqi9d6R6EtkWb12D4QrDeIAnWrZV6sTFNkZe1xr09
         Ud4ZAZbHCcti+wTgqPpFtyRXLnjrhEov89x5z2fM2dEIlByuk8qVgnJ3t3oLQfBWA0Yc
         +LWFIJLXNwnZ2cUxJm93pqSxNxq40kRHVoUlnbVE0sTp/a30dqHNeHi/BjVQt3x802/5
         1bh9tzLlSJgKGwvExq6ZjzwbI/IDVpJaDluXHZDuf10/NU4BOiYfszR9EiF/EfOQXGk/
         61sA==
X-Gm-Message-State: ACrzQf14THLZn9n6+Wm8po5lWE9qXu12yza26BEJJ1UzLuVWbciJT2Ok
	YA8CWGpmGgvCo7oObQ848jWd2g==
X-Google-Smtp-Source: AMsMyM7uFp6b3scZvJgm5d/f0hHy6uDvB0ECqwfcwJQtQ5AKsRY1t945LjU8a/xIXxais1OIskGI7g==
X-Received: by 2002:a05:6512:1151:b0:4a0:50f2:9509 with SMTP id m17-20020a056512115100b004a050f29509mr13049964lfg.297.1664392547558;
        Wed, 28 Sep 2022 12:15:47 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r11-20020a056512102b00b0049d0a98f73csm548977lfr.154.2022.09.28.12.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:15:47 -0700 (PDT)
Message-ID: <c3d39c4e-2099-b09a-8486-8abae7336611@linaro.org>
Date: Wed, 28 Sep 2022 22:15:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 07/13] phy: qcom-qmp-pcie: clean up power-down handling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_121559_103286_932DB853 
X-CRM114-Status: GOOD (  17.56  )
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
> Always define the POWER_DOWN_CONTROL register instead of falling back to
> the v2 offset during power on and power off.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 20 ++++++--------------
>   1 file changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index eea66c24cf7e..47cdb9ed80cd 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -90,12 +90,14 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>   	[QPHY_SW_RESET]			= 0x00,
>   	[QPHY_START_CTRL]		= 0x08,
>   	[QPHY_PCS_STATUS]		= 0x174,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
>   };

Without symbolic names it's not obvious that 0x04 (and thus this 
regs_layout) can be used for v2 and v3, but not for v4.

>   
>   static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>   	[QPHY_SW_RESET]			= 0x00,
>   	[QPHY_START_CTRL]		= 0x08,
>   	[QPHY_PCS_STATUS]		= 0x2ac,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
>   };
>   
>   static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
> @@ -1872,13 +1874,8 @@ static int qmp_pcie_init(struct phy *phy)
>   	if (ret)
>   		goto err_assert_reset;
>   
> -	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
> -		qphy_setbits(pcs,
> -				cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -				cfg->pwrdn_ctrl);
> -	else
> -		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
> -				cfg->pwrdn_ctrl);
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +			cfg->pwrdn_ctrl);
>   
>   	return 0;
>   
> @@ -1995,13 +1992,8 @@ static int qmp_pcie_power_off(struct phy *phy)
>   	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
>   
>   	/* Put PHY into POWER DOWN state: active low */
> -	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
> -		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -			     cfg->pwrdn_ctrl);
> -	} else {
> -		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
> -				cfg->pwrdn_ctrl);
> -	}
> +	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +			cfg->pwrdn_ctrl);
>   
>   	return 0;
>   }

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

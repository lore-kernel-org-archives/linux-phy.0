Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CAD5C32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oca8ZHzEttQg1CDptG8utxGPCNiWn2eqQMOzpvclpiY=; b=nfBpWw9TjDRYZs
	Dh1IpSVeYpUiuYWUmMkw2B/8AOIMhyndq8mqnijLMq+y7CQo1B6vnBD2kbWk6Tmadk6YFTNV9VSRZ
	lo+aoGDHyvhejWnZksYrNOx25FdKbu+DOeY3dMd7E6GoPFmV+ZCFhn9fLaFscPki0IdAwsm1jtFCV
	689tdJAB6aHAtFhMEpyjTHFUdKwIfO7OtpixlZtfrx8n+L1LGimVi44wPe+aJLEgzh5pJiSnWJUJJ
	PJnLbu4vs1D/1r2ddv3y+Mk9tmm+FRWTbeVoM4bP7j+wcEjiUWIFSkWMwQf6Dz/beXs1aDmOtfJLg
	lTMa0Qiuz/Rkaxas/O4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcRc-0006Ws-Po; Wed, 28 Sep 2022 19:10:08 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcRa-0006W8-LM
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:10:08 +0000
Received: by mail-lj1-x235.google.com with SMTP id b24so15363640ljk.6
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cP+0I3mOs2L1eIjpsJ/L9c174FcHhto93z5jVh+tc0g=;
        b=k0KtMBwhj90pHjs/axB9uH2GwSCWiySEVILQVZb+aLITWPo+4e/xOTrnXSeyfXhP8+
         WUJpwSsQOcuDRr6LkhtREjRJmACOcjjQrZlhr4weZBBw98ujBEGcj+lSdo0NMjrMkuxE
         HZ/oqxKHUxTjwxIXDKXmdwrwkFFfHllLa9roMLyXjF4eWU+PQVf0Sk0CyrgHM9J9qx1Q
         nY4kSM8V5dV2LhaFiyvDSsED5X1XKIIip65LFJPfiHWE0QK5OnyIL+7G5NJzI5vzZKHf
         /3Dtn5mAbjPjRGXd99wF3PMoxJO+/EBez63XhUA5eeBWm53U5DDhpmWPmYbYCdxGCgbU
         M/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cP+0I3mOs2L1eIjpsJ/L9c174FcHhto93z5jVh+tc0g=;
        b=4G2ptJJs+QAcBMtCDr5JiBG70iuhH5lB5zgrRi3cuVy2bVq9pmRoW3OiJf5z1QML/4
         ZwxFbUK8TVyWejEClMSLVEiBZERu1SIcHrzUxEIDzRLLi6A9YrQ4IrYnO2ZJnt8ENJ6Y
         0bD1yRXfeTfI/pcfv5xlXMu3IMrNHPY0s0VKenFzuTtwxUV8SSuk1dmpyqpqrKf38a0D
         UuN8lvLpxLlUEd2oxbu2+SECJksT3e80v0aN546Vc+mtX3R7Pg6S7pVhuDeMyHior4E5
         JJLsvEDlf6eTnJQHDEY5wpf0vGOKNETw81YrOK5USi1qWuEmu5wyS1gtiqEjuYpWNjBy
         qcWQ==
X-Gm-Message-State: ACrzQf1rtYQ3mGDDQp6HI+z4YnUOsVBXKnLz/DVw1MNXth5aWxkQypHn
	+rRgXNwTTrqsRhAhDLwsPxNuLw==
X-Google-Smtp-Source: AMsMyM74hGFUFf9B9nArhWD7MayY4zuDeYdL2If2toJlhwy/g3tvy4kLs1xzd1Nf/dJDpKGQGSnxxw==
X-Received: by 2002:a2e:91ca:0:b0:26b:efd1:112c with SMTP id u10-20020a2e91ca000000b0026befd1112cmr11777214ljg.26.1664392203203;
        Wed, 28 Sep 2022 12:10:03 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u11-20020ac243cb000000b00497ad8e6d07sm548957lfl.222.2022.09.28.12.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:10:02 -0700 (PDT)
Message-ID: <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
Date: Wed, 28 Sep 2022 22:10:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 06/13] phy: qcom-qmp-pcie: drop bogus register update
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-7-johan+linaro@kernel.org>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_121006_774668_818943C5 
X-CRM114-Status: GOOD (  19.15  )
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
> Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
> PHY is powered on before configuring the registers and only the MSM8996
> PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
> initialisation table, may possibly require a second update afterwards.
> 
> To make things worse, the POWER_DOWN_CONTROL register lies at a
> different offset on more recent SoCs so that the second update, which
> still used a hard-coded offset, would write to an unrelated register
> (e.g. a revision-id register on SC8280XP).
> 
> As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
> the bogus register update.
> 
> Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for sm8150 USB") added support

I'm not sure about the particular fixes tag. Backporting from the split 
driver into old qmp driver would be a complete pain.

> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 4146545fdf5f..eea66c24cf7e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1953,12 +1953,6 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
>   	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec, cfg->pcs_misc_tbl_num_sec);
>   
> -	/*
> -	 * Pull out PHY from POWER DOWN state.
> -	 * This is active low enable signal to power-down PHY.
> -	 */
> -	qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
> -
>   	if (cfg->has_pwrdn_delay)
>   		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
>   

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

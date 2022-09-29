Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A62C43219
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 19:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpKJ39YCFHWLOIDrJodTHH+EJ11IPqWPXjz/Q9eUdI4=; b=LIMaKt2OLXfSUC
	Bcpojo0aBTcPExNkNlPDUmrgFV2nRzY7Iey1GKPoVRZmV/bWc8/rIFk0bvP1ANsOLMiCeZvWbNtCK
	eqH+FVXz9aro6X7tAarJNpIQ23MAG6OMv93Dz+v4RjzsCQh/Uq95PNJoZG05wXeehIaCQbT9fuN5C
	c/aUSnUa0F2UV4U79LH1iom8d3KztIzp2Xj07U7Ct69yVWFSIFpDEme5eeyK47tcuaKCZdar0AxHm
	ktLP2PYnJ1okJksqKh2DNWEfD37Q6K78WYc44J0mhr7XYNDjKvF5pb7wbvBgB64QrfbTa/dAp10t/
	icrRuKSOMPAu+DayItzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odyqe-00572s-3P; Thu, 29 Sep 2022 19:05:28 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odyqb-00570Y-JQ
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 19:05:26 +0000
Received: by mail-lf1-x129.google.com with SMTP id o2so3609707lfc.10
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 12:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wi7DKofjueA16E8e073uzmvDRDUJqZe/ZGoID7ylCHY=;
        b=gdS1Hv80h456Tz8KssxXjJqBn/GIYD0ZTanE39MjltmnmvHogFZJZdDnch/7G7tpJO
         jYVSX/xR7xiDfgSFCgvKMfuIZKGSiZPKLQ4vaA6AWS1/HkrG0jAk/EQYPjNFxWzIuVk3
         ztyr/siX+On5Mj1jieGwNyfWQNbuRkKwX9/UT/DR5m8PgtFr3u6JtHjIj2suGcJk8HNT
         HsQHUiRpQWmpMLGl72z40MSWMLoOF1e8HTvf3xVbSCCh9aCV8Zc/dkE7sSPL3QupH9CR
         2DDYAGCB7eWlsgHAYBdKc7ruDJwe+v4LKIgaxgUUgqkQyj8KgdClk0Kuw8puieSw3r/Q
         FMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wi7DKofjueA16E8e073uzmvDRDUJqZe/ZGoID7ylCHY=;
        b=V6rYEd5Em9IPudBbC9VPS60B/wK6Fp0M3V+C5V1mMVcXHZw3qYjHnKjwJLLxibR4/F
         qcwu9wQt8aXum0WZ26nafOJLbb2Ib0Mw8fuEOd1KOCbQJidK9uJ5LBinPO5Q5hkA6r/+
         fcM9t3x2aSWfWjem8ILEaGsI2F63Ln6onNYed7kJnkPj6PaTrCcCka54WT4wHiVnDYHl
         xLc2bptWdGMR6UtmGuRucwT8tyC4csryIfSYHwMETbxR3zi+WEkth5ZUuRTvxLJlJfOe
         Rq1jcKvJbJhHipvO8u1f3Bb4i0v/PNhcuEJO0KN8t0YemTD2vU8PhxeOXLSis4ilkS3p
         FjFg==
X-Gm-Message-State: ACrzQf3yYg7EpC4u3Tn4IBXMWebVGy7AG0ONtTuw7ZHUQ8MiQJvbwVmP
	wCtknHRr+LIjqcIy7NLUl4/lXw==
X-Google-Smtp-Source: AMsMyM722J1TLcGst0IOdDfyiDEnlFJw4RZaKJUjf0jo/VODR83r0rkj8uF+voj/tSB3DxVPpGoVPA==
X-Received: by 2002:ac2:464b:0:b0:49e:b29c:2b04 with SMTP id s11-20020ac2464b000000b0049eb29c2b04mr1924631lfo.127.1664478321707;
        Thu, 29 Sep 2022 12:05:21 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n5-20020a0565120ac500b0048af3c090f8sm34684lfu.13.2022.09.29.12.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 12:05:21 -0700 (PDT)
Message-ID: <f57feedb-01ce-4c15-1344-860bff602b10@linaro.org>
Date: Thu, 29 Sep 2022 22:05:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 05/11] phy: qcom-qmp-pcie: move power-down update
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220929092916.23068-1-johan+linaro@kernel.org>
 <20220929092916.23068-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220929092916.23068-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_120525_682790_84AAEE55 
X-CRM114-Status: GOOD (  16.37  )
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

On 29/09/2022 12:29, Johan Hovold wrote:
> Move the power-down-control register update that powers on the PHY to
> the power-on handler so that it matches the power-off handler.
> 
> Note that the power-on handler is currently always called directly
> after init.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index efffb77e8f45..db78d2d76c03 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1862,7 +1862,6 @@ static int qmp_pcie_init(struct phy *phy)
>   	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   	struct qcom_qmp *qmp = qphy->qmp;
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
> -	void __iomem *pcs = qphy->pcs;
>   	int ret;
>   
>   	/* turn on regulator supplies */
> @@ -1888,9 +1887,6 @@ static int qmp_pcie_init(struct phy *phy)
>   	if (ret)
>   		goto err_assert_reset;
>   
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -			cfg->pwrdn_ctrl);
> -
>   	return 0;
>   
>   err_assert_reset:
> @@ -1929,6 +1925,9 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	unsigned int mask, val, ready;
>   	int ret;
>   
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +			cfg->pwrdn_ctrl);
> +
>   	qmp_pcie_serdes_init(qphy);
>   
>   	ret = clk_prepare_enable(qphy->pipe_clk);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

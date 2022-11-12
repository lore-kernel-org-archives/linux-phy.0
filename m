Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 766ADC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEim47nopNjX5rt7n8UZu0BJoyp7RmF1HENZs1fAAU8=; b=JBeFeQ2rg2Nzvj
	O1JxaEoUv+NGgc2TubRNPfb2G4NrfxQ/p+eSwigvh1UAVjK2Xr5pxy1zNOe2rCx1i8bFKXTfZt+UW
	yPSmP+yqI6M65BjKi7ZVBGioF10O1lFOFCO0Ym+yCyK5eNQ7ebjjCl0MqZe+hdo1/2/hvBIXqrm7s
	3CCrTZCHuCmHdEjR4P1O+iJ14MBSNyANlyT50m1gyIcQkUwwnTLBq9UX0oYq0lXasxI9nnPOlP1Th
	43dLPCQVUf+qRQdWvzmOtvbpto+E9v/43Rwu3wIkvihPSCbd5tZSP6ybKd5BufFpOyN4HWfKpxUy7
	PxKa9RWWRLDXLY63Pu2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjnx-003dPt-TY; Sat, 12 Nov 2022 06:15:49 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjnu-003dOi-V6
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:15:48 +0000
Received: by mail-lj1-x234.google.com with SMTP id u2so6722114ljl.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V6HHp3kjp2Y5eg27eh7Uy6SYCKJuVG3gDdAuKss9nCY=;
        b=e7TM8jPBMUFp+fjzQ8p+CrhgMAoc2vMhsqVLbf3TY2L56K74Ynq5gYojbu3qggnc0/
         K5jlxFhDjn3TSYAQnE7cnibPhbGhagjkWIAoUK7ZaJW+qBAoxWiHjR6o4b+OrfMOvicN
         0mOPiuYeBmxBvG9Bv7LYrJuHfTPbvMeHKS6w/le4Oi30Gi/LWzdlrurX4SYirFvFXLL2
         zeALUmb0bC5dy9XCIiMue0dZz38djou+F44Wiv/WvTIt8dLi8/PkoJO1uMCz+juHdWpW
         ylbw48SJrJg3Xx9eFrr3SDtuP4CerB5nFGTii23Fl//Zx1xonVwYHHu/kXi0w/9Xd7Ty
         3UrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V6HHp3kjp2Y5eg27eh7Uy6SYCKJuVG3gDdAuKss9nCY=;
        b=kxy3sjk9ZhC7FeQcU6A0+piFNZBjYMenrLkj2UFH0rzWQjVDrsykYF3h7TPLxjISAv
         NoS0kIIZH2ZjB8Jilea3Eb5UYAIUMFYO983ZkbDdE41VuKttXpBWHv/97O4BR2wPvV+4
         S9eksxyxRdiCl+5JKv/SDlZWYzd1wVZ5B7ZLC4zxST79mV14nYdcKPbqD6nwPmXHcX56
         Q5FM8oF/w2NhXd8pAKQqMJcI4SJ7wILtltW9CgQRv1cEBzhskhcVHbAo3c32YFkqaCHG
         qRIRCp478ocTtymNpXRnETkU288WI7llZ2wCywdnpAAism+LkwZM4u/Ntrj26ZphkTnb
         FYIw==
X-Gm-Message-State: ANoB5pnzDUTm2qP2G5HtdcUJmXUXUkLg6/rQY6L61gO5qtlC6cWFRFyT
	YV4ILXAZGst9LMekHj2BUn/fqQ==
X-Google-Smtp-Source: AA0mqf6A7M+SMFfpLiKhUvuklixhziPDNQLKFdS4we5IQFgEAup7ijFKwgKsLZDrnjW6I9JqyxSfxQ==
X-Received: by 2002:a2e:6a03:0:b0:277:24b8:9bd4 with SMTP id f3-20020a2e6a03000000b0027724b89bd4mr1554878ljc.470.1668233744781;
        Fri, 11 Nov 2022 22:15:44 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t23-20020a056512209700b004b0a1e77cb2sm707385lfr.137.2022.11.11.22.15.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:15:44 -0800 (PST)
Message-ID: <e4a423c6-e92d-1c40-2609-e8512bd9c03c@linaro.org>
Date: Sat, 12 Nov 2022 09:15:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 4/6] phy: qcom-qmp-combo: fix broken power on
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111084255.8963-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221547_034169_20F85CC3 
X-CRM114-Status: GOOD (  25.25  )
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

On 11/11/2022 11:42, Johan Hovold wrote:
> The PHY is powered on during phy-init by setting the SW_PRWDN bit in the

Nit: SW_PWRDN

> COM_POWER_DOWN_CTRL register and then setting the same bit in the in the
> PCS_POWER_DOWN_CONTROL register that belongs to the USB part of the
> PHY.
> 
> Currently, whether power on succeeds depends on probe order and having
> the USB part of the PHY be initialised first. In case the DP part of the
> PHY is instead initialised first, the intended power on of the USB block
> results in a corrupted DP_PHY register (e.g. DP_PHY_AUX_CFG8).
> 
> Add a pointer to the USB part of the PHY to the driver data and use that
> to power on the PHY also if the DP part of the PHY is initialised first.
> 
> Fixes: 52e013d0bffa ("phy: qcom-qmp: Add support for DP in USB3+DP combo phy")
> Cc: stable@vger.kernel.org	# 5.10
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

I can only hope that at some point in your cleanup this hack is going to 
be removed.
Nevertheless, I don't see a good way to do this at this moment. Thus:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 40c25a0ead23..17707f68d482 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -932,6 +932,7 @@ struct qcom_qmp {
>   	struct regulator_bulk_data *vregs;
>   
>   	struct qmp_phy **phys;
> +	struct qmp_phy *usb_phy;
>   
>   	struct mutex phy_mutex;
>   	int init_count;
> @@ -1911,7 +1912,7 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
>   {
>   	struct qcom_qmp *qmp = qphy->qmp;
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
> -	void __iomem *pcs = qphy->pcs;
> +	struct qmp_phy *usb_phy = qmp->usb_phy;
>   	void __iomem *dp_com = qmp->dp_com;
>   	int ret;
>   
> @@ -1963,7 +1964,8 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
>   	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
>   	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
>   
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> +	qphy_setbits(usb_phy->pcs, usb_phy->cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +			SW_PWRDN);
>   
>   	mutex_unlock(&qmp->phy_mutex);
>   
> @@ -2831,6 +2833,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   				goto err_node_put;
>   			}
>   
> +			qmp->usb_phy = qmp->phys[id];
> +
>   			/*
>   			 * Register the pipe clock provided by phy.
>   			 * See function description to see details of this pipe clock.
> @@ -2846,6 +2850,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   		id++;
>   	}
>   
> +	if (!qmp->usb_phy)
> +		return -EINVAL;
> +
>   	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>   
>   	return PTR_ERR_OR_ZERO(phy_provider);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

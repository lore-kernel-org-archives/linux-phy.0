Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021D1C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  3 Dec 2021 03:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4c+b4tpFiz4lU8gz+sl+2ZG1fFmAL3C4y6eeuNwP8No=; b=eWRziE9fwtDrIR
	SlBEI+HZwYaMHNukuJtn+jwWHKC1CO0G56TYmphY7xjkI6TqMrP50i+dtAH7WbtgnE/OFzpinGjR7
	sWT85clOQpyGqm+tKqnosKvEXNTLsJJc860FSRzrkMvcwwOiwXIx7Gywup4NV8tCRFgFf6W1hVP+j
	WwumqLoK4naxfmhuugeaqUCBp98FpHXRuib6zPyrddf5VTN/5h8XX9nbKMX1hufXoB2ezEmvXwi8O
	7/ZqGU895N1pMSa3Fg/j+5dqB/HjH4U91cjnmJQb2Df+I4IY7EO/pLYQ6XnHgvSPlTSAWC7GzHlzY
	lIBgK8RAJMyjn9YfotRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msz7V-00EAhz-D7; Fri, 03 Dec 2021 03:20:21 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msz7S-00EAgg-6k
 for linux-phy@lists.infradead.org; Fri, 03 Dec 2021 03:20:19 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id
 b1-20020a4a8101000000b002c659ab1342so642361oog.1
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 19:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xJoVk3rXUz398tlAPaYkfNg5UuqyJJndacNsBihAPCQ=;
 b=FpCIRndlBi8LdIwXFzDDWqUjuVMB/0kC9GzScyMBEcxryNtrqisNi2G1SpWLyChVWx
 ORFkgZQ7wOG0D8XCr9sQgT7zdOSe8Y3aHeowoVGBPFpGQSovfu2QZgL41gs+LTlYEeRd
 RfOEORj16JKgH5k+hSe0J+ZhrhXKB9FRPrZWN646yRKhVCSsV0nukdSxJfh9M9S1aoUI
 uXJIzKvknR3Lfiou+Jmx+EIg0GaHV1vHcgGBpglh3x279CjhlKNS8RsYyR+Y2c/rdeMu
 kZVGoDmS2W0XRLlYeg8uGLelvf4fxnf/mONUgqJ2lACO3aRUsuvVmmg0WQ0bUU3YM1o0
 r5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xJoVk3rXUz398tlAPaYkfNg5UuqyJJndacNsBihAPCQ=;
 b=6uSZra6/f91UHoY0+JFF6mc6wZuRIXS3oFyRwmos82uI+fTzcsQ0QB3VEL4bRkcWf1
 3Qoornll4/hZdLeQX/tPIBH5q0GtFyws5bytqYysY7LIehsfRSzsaAjTH1ACpQ1drLUp
 prsRPWr4anEj3W83q6rbgur1Vsv77TSg4wKntZYr6qN/9Mcavxsqs2oeDAdbOq5GG7Q4
 51eKn/ivFzJ1MhH2BSz+851igcp0MGFmNOYOvbqQS5ZUjvucGLie80DWZ33ghBL0cafN
 6wJ+pYp7xoAXw6I6+rbzkw4Zh+nr/OO/TdGpBAplWxr+mIVVHQCNzHXNetpnPHc3x3rP
 3KcA==
X-Gm-Message-State: AOAM530beyoE/sxojnbD++xhh6G/Z2bvb4gf7K8tsroSRtrgTK0+1xX1
 y12ncy5kn4HOvqKnPSb8JAUX8w==
X-Google-Smtp-Source: ABdhPJzcnbKzTROSXM07Z6AAlu+A4kXhtriXTKVzNcQBvpOGfbkoLPmRCRmcQ50N7tsa58D63aYuVg==
X-Received: by 2002:a05:6830:1049:: with SMTP id
 b9mr14391159otp.60.1638501617215; 
 Thu, 02 Dec 2021 19:20:17 -0800 (PST)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id t12sm395218oor.21.2021.12.02.19.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 19:20:16 -0800 (PST)
Date: Thu, 2 Dec 2021 21:20:11 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH 3/3] phy: qcom-qmp: Add SM8450 UFS QMP Phy
Message-ID: <YamM65exw/iAqB3Q@yoga>
References: <20211201074456.3969849-1-vkoul@kernel.org>
 <20211201074456.3969849-4-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201074456.3969849-4-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_192018_275180_1C66FE52 
X-CRM114-Status: GOOD (  15.70  )
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

On Wed 01 Dec 01:44 CST 2021, Vinod Koul wrote:

> SM8450 UFS seems to use same sequence as SM8350, so reuse the sequence
> from SM8450. Add the new clock list for this phy and the new compatible
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 32 +++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 456a59d8c7d0..a959c97a699f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -3091,6 +3091,10 @@ static const char * const qmp_v4_sm8250_usbphy_clk_l[] = {
>  	"aux", "ref_clk_src", "com_aux"
>  };
>  
> +static const char * const sm8450_ufs_phy_clk_l[] = {
> +	"qref", "ref", "ref_aux",
> +};
> +
>  static const char * const sdm845_ufs_phy_clk_l[] = {
>  	"ref", "ref_aux",
>  };
> @@ -4087,6 +4091,31 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
>  	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>  };
>  
> +static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
> +	.type			= PHY_TYPE_UFS,
> +	.nlanes			= 2,
> +
> +	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
> +	.tx_tbl			= sm8350_ufsphy_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
> +	.rx_tbl			= sm8350_ufsphy_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
> +	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
> +	.clk_list		= sm8450_ufs_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= sm8150_ufsphy_regs_layout,
> +
> +	.start_ctrl		= SERDES_START,
> +	.pwrdn_ctrl		= SW_PWRDN,
> +	.phy_status		= PHYSTATUS,
> +
> +	.is_dual_lane_phy	= true,
> +};
> +
>  static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>  	.type			= PHY_TYPE_USB3,
>  	.nlanes			= 1,
> @@ -5745,6 +5774,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sm8350-qmp-usb3-uni-phy",
>  		.data = &sm8350_usb3_uniphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8450-qmp-ufs-phy",
> +		.data = &sm8450_ufsphy_cfg,
>  	}, {
>  		.compatible = "qcom,qcm2290-qmp-usb3-phy",
>  		.data = &qcm2290_usb3phy_cfg,
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

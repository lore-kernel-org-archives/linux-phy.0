Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C547C49EA5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 03:37:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4D0F6135A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 03:37:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C4D0F6135A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79RPIDw1GBLOhPLPwoHxRju5fwE8W+pi69xueIJTUhE=; b=bTprRYNwuTvyNI
	Ap+iEUK8TdmHSe5MAlf8fN0Xhb84mRnK+bO+l83jWnjDvXvB7LevWxbsK5TOFd/+TxmQh3ExASEhL
	k8WlRuzpy1gTY9eXrjqPiszu7WlSq1sf1tWe+jFdLO+G5xig+Si6zad2Fv5igaBz8OgTVe1EKc60p
	SkN9WIEgI8u3T1lRHvpnq1DFcaYuk8d4lyfwRvKpSAjy25VY1DAm4AuAYi75iOjiUnwfty8elJH00
	Lawd+W1Ehfc+AY5nvjEyN/SjFuWYxGa2RWEgRBIpTfUKYWSvc5Fy+OqXLmxRM9IYaWtuInD8HM87e
	kIA7xo+8lEyKDwRAJ1ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvti0-009Axd-Ah; Wed, 23 Jun 2021 03:37:48 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvthx-009Avj-MP
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 03:37:47 +0000
Received: by mail-oi1-x22c.google.com with SMTP id x196so1779221oif.10
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 20:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2FvWhtJmcV/16/EjsQ9dgtceUGbcijtN3zkjcRvsci0=;
 b=IJLo9nODJoEAENam9rz9IpUFB+H6qytEd0ng5OQnL9FzBqgRgt1yyCexd/Bqofg9Px
 q9LzIocK6+SI66KvIqd/c72TUYe6+b3H9+Sxfxc7tcgwN+QJtkBzLhkK/JfNMjHcOpU7
 CPldcdBwRLP82XQWxZxsVdZWqgrIvQy0l+o/XWygEXd6UPqNI8K/mhxFyyaXAp1eXChS
 XkB7ZgWsg3VLdEZVSfNy4geFw377UPs3VDQZmEKaENag6Ti9NFRqzo7WnZNM0DY5Y1rs
 9sdhGzVm2TXNQIU3zyp/jcgXSM7oV7YQXZ38CGOM1ElFWA7zGRGUlsXAu5VrQSRKtnMs
 iRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2FvWhtJmcV/16/EjsQ9dgtceUGbcijtN3zkjcRvsci0=;
 b=MdlT1PshcyHsEPXn9TBetIe6jI+WhPLGNsE3EzLxs+V8FpdD3fnXB5amUCd+Lg9RHd
 EMvxHsXywGvQb+7Pd+ObOWAu68xkkUyjRfj+iEcqTNDPeQYJJSSFZ26zXVJpPCrSKx/+
 j3XC3IT/yHew/osZSMTaPHIicICXxUXBBDMHkI5l1d74UWc5QqBiJ8m35RzjflynRHTA
 itguJiXZDbK1NBXrdnYTfnTP6gexqmpx+e03Ul3xD3Uhx3VifOwLfIT6CHE/g6Cws5+C
 ssJ3Cv+X7p0EPJhq0McEdcYsmv8jTPpZBwTNwepzS7N2HRXDz/4ES/0hhcutniF8B7mG
 vo3Q==
X-Gm-Message-State: AOAM533rH6gVYWpMYY+69UeSWjof6zXAjWCLM13ok+MEO71rM5kI2L+H
 Z8Zy6PRYtXywMfrVDaOG/Nfgbg==
X-Google-Smtp-Source: ABdhPJwD3YI+MKyLUE9P+xDxEzxwGjvVdcTAgdfEO+nNUwMFiAjqbOVH8MR0JEEMIb4LTI9YCGg48A==
X-Received: by 2002:a05:6808:903:: with SMTP id
 w3mr1619363oih.16.1624419464708; 
 Tue, 22 Jun 2021 20:37:44 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id c21sm939260ooj.33.2021.06.22.20.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 20:37:44 -0700 (PDT)
Date: Tue, 22 Jun 2021 22:37:41 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1 3/3] phy: qcom-qusb2: Add configuration for SM4250 and
 SM6115
Message-ID: <YNKshSbsf5d5Uyew@yoga>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
 <20210622203240.559979-4-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622203240.559979-4-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_203745_781429_C1DE8FD6 
X-CRM114-Status: GOOD (  18.11  )
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

On Tue 22 Jun 15:32 CDT 2021, Iskren Chernev wrote:

> The SM4250 and SM6115 uses the same register layout as MSM8996, but the
> tune sequence is a bit different.
> 

Didn't review the initialization sequence, but it's different from the
existing ones so adding a new compatible and init_tbl seems to be the
right choice.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 34 +++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index 8f1bf7e2186b..3c1d3b71c825 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -219,6 +219,22 @@ static const struct qusb2_phy_init_tbl msm8998_init_tbl[] = {
>  	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_DIGITAL_TIMERS_TWO, 0x19),
>  };
>  
> +static const struct qusb2_phy_init_tbl sm6115_init_tbl[] = {
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xf8),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x81),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0x17),
> +
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
> +
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
> +
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
> +};
> +
>  static const unsigned int qusb2_v2_regs_layout[] = {
>  	[QUSB2PHY_PLL_CORE_INPUT_OVERRIDE] = 0xa8,
>  	[QUSB2PHY_PLL_STATUS]		= 0x1a0,
> @@ -342,6 +358,18 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
>  	.autoresume_en	 = BIT(3),
>  };
>  
> +static const struct qusb2_phy_cfg sm6115_phy_cfg = {
> +	.tbl		= sm6115_init_tbl,
> +	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
> +	.regs		= msm8996_regs_layout,
> +
> +	.has_pll_test	= true,
> +	.se_clk_scheme_default = true,
> +	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
> +	.mask_core_ready = PLL_LOCKED,
> +	.autoresume_en	 = BIT(3),
> +};
> +
>  static const char * const qusb2_phy_vreg_names[] = {
>  	"vdda-pll", "vdda-phy-dpdm",
>  };
> @@ -888,6 +916,12 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
>  	}, {
>  		.compatible	= "qcom,sdm660-qusb2-phy",
>  		.data		= &sdm660_phy_cfg,
> +	}, {
> +		.compatible	= "qcom,sm4250-qusb2-phy",
> +		.data		= &sm6115_phy_cfg,
> +	}, {
> +		.compatible	= "qcom,sm6115-qusb2-phy",
> +		.data		= &sm6115_phy_cfg,
>  	}, {
>  		/*
>  		 * Deprecated. Only here to support legacy device
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

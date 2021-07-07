Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBDDC07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:00:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6214C61CAD
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:00:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6214C61CAD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqmclQIsv94vabQPqTFdDv/kxFrab+xX7I1kq5lfTRY=; b=dsYvd6faqnewr4
	/5ADHEI93Wh6miSwB/1AiKOwkhl8KgsJyWrwwjMr/TgVPRz7cmQK69v9cQ4fGMNd8ZPCem+EyoNI6
	1QpSvZZQSpJcQ9rb4FDQQhrKj60Q0bXY2wOHmEoxwqVfPoTILco0Va1LXf07Kxgtjl4L+8tGvJDMi
	hTYIp2hYGEDmpvmjfIECrTA4oa+OZFVgKntyO22l8x1ejnd9tDm0BGkSoUCZ4JytVY3mvcPnRXeO4
	EJ0fOLaldw97F6Pmu2apyLYK86HCjPlx8PF0AHIj+RO/zVwj3tOiLVmI+4O9CQp+REWPn/MhNyPoE
	7+gaBPOBzySipAZyExig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0uz9-00D45V-TY; Wed, 07 Jul 2021 00:00:15 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0uz6-00D454-2G
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:00:14 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 h24-20020a9d64180000b029036edcf8f9a6so546360otl.3
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 17:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Joa40jmO1WN+91hJmYTXehc3LoT7R9K6Xfzimk5u65c=;
 b=QTJumyjrELKOSvhA2C6IlzmrDnrrPO1bKZtNGkp4RNnycLeCYe95PxNbSKjO5PZw4m
 9aJuCYiXSXEMWlyTJK9k+wd2tmRs76at1MddUoLD9J8140b9hYdCBGYMEs73fl+wkXks
 rL95TLz2p+tKZ/aNblzbj0myMfVu5Wh4V1YbVF/VdZB39aFTjCLVQrAPZlzZTuDd0P8q
 qFW7vVSmssl2wO8SVJLnO3/Kf43U0RNk6C1i7CnVH85uKl76vJvPzHnQvnDcYlsU3M1G
 bvy6Vw5eI2Z9vqyl7dwXQ+EsyITz3bVxYc7HKod6vIuhaz3Kq0newA3E2OjJLr9SZBcE
 5Ojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Joa40jmO1WN+91hJmYTXehc3LoT7R9K6Xfzimk5u65c=;
 b=azo8lec6MZrKcaupXR+ezcfTCpCjkpIAhqfqS2obKB8lczMzjIfHl66SkPdjxaAl92
 fVrqAvYgnPRsQazYNafTsJb9SoZRyx3sbl17HfDw6ejKGSnljRxkcVfRF/2zMT0KE81q
 LfifDOsw+KD9IJZBLN8vthkSODe46z8K1G1xJdW8qqFPgMEvwkbuPENBsWARY9MTz25n
 R/4Oq3thEnBh/LbeTbEnjY09ozW1PFSarOErnv3MI8Bqe4MqYC6u86YzWymhNGvyxy2O
 5tjhtRw7B/2ou6CRNe2WkZ6Huc4H7JUJNKzhKjXKIoXhWNtl9WjNKvJ7NbdzryF96u0t
 KKOg==
X-Gm-Message-State: AOAM531v3j01vSD8XWzU7LT+FpcBJ8BQewJWUyU7punbGUQoYp1JOCKr
 zmnTtDSSg2kKoSJwnmrTaXzoeA==
X-Google-Smtp-Source: ABdhPJwLKEKOJsnH/VUYKd/BvJAq53bMq8AYJ4QGyZoaxAT10yBO0O+RO+V3hkGSZY1Sat2eAc/XZg==
X-Received: by 2002:a9d:7197:: with SMTP id o23mr17299899otj.81.1625616009884; 
 Tue, 06 Jul 2021 17:00:09 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id t5sm3593740otk.39.2021.07.06.17.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 17:00:09 -0700 (PDT)
Date: Tue, 6 Jul 2021 19:00:07 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, jonathan@marek.ca,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Wesley Cheng <wcheng@codeaurora.org>
Subject: Re: [PATCH 2/2] phy: qcom-qmp: Register as a typec switch for
 orientation detection
Message-ID: <YOTuh2hYp7IC+4rt@yoga>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-3-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210706230702.299047-3-bryan.odonoghue@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_170012_178486_B86DBF0D 
X-CRM114-Status: GOOD (  40.03  )
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

On Tue 06 Jul 18:07 CDT 2021, Bryan O'Donoghue wrote:

> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> The lane select switch for USB typec orientation is within the USB QMP PHY.
> the current device.  It could be connected through an endpoint, to an
> independent device handling the typec detection, ie the QCOM SPMI typec
> driver.
> 
> bod: Fixed the logic qcom_qmp_phy_typec_switch_set() to disable phy
>      on disconnect if and only if we have initialized the PHY.
>      Retained CC orientation logic in qcom_qmp_phy_com_init() to simplify
>      patch.
> 
> Co-developed-by: Wesley Cheng <wcheng@codeaurora.org>
> Signed-off-by: Wesley Cheng <wcheng@codeaurora.org>
> Co-developed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/Kconfig        |   8 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 107 ++++++++++++++++++++++------
>  2 files changed, 95 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 7f6fcb8ec5ba..47d56333a512 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -48,6 +48,14 @@ config PHY_QCOM_QMP
>  	  Enable this to support the QMP PHY transceiver that is used
>  	  with controllers such as PCIe, UFS, and USB on Qualcomm chips.
>  
> +config PHY_QCOM_QMP_TYPEC

We want to run all platforms from a single defconfig, so I don't fancy
the idea of adding a separate compatible for this. I would rather see
that we make QMP depend on TYPEC || TYPEC=n and then check for
CONFIG_TYPEC in the driver.

> +	def_bool PHY_QCOM_QMP=y && TYPEC=y || PHY_QCOM_QMP=m && TYPEC
> +	help
> +	  Register a type C switch from the QMP PHY driver for type C
> +	  orientation support.  This has dependencies with if the type C kernel
> +	  configuration is enabled or not.  This support will not be present if
> +	  USB type C is disabled.
> +
>  config PHY_QCOM_QUSB2
>  	tristate "Qualcomm QUSB2 PHY Driver"
>  	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 7877f70cf86f..9afc09f241e5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -19,6 +19,7 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
> +#include <linux/usb/typec_mux.h>
>  
>  #include <dt-bindings/phy/phy.h>
>  
> @@ -66,6 +67,10 @@
>  /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
>  #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
>  
> +/* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
> +#define SW_PORTSELECT_VAL			BIT(0)
> +#define SW_PORTSELECT_MUX			BIT(1)
> +
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  #define POWER_DOWN_DELAY_US_MIN			10
>  #define POWER_DOWN_DELAY_US_MAX			11
> @@ -2494,6 +2499,8 @@ struct qmp_phy_dp_clks {
>   * @phy_mutex: mutex lock for PHY common block initialization
>   * @init_count: phy common block initialization count
>   * @ufs_reset: optional UFS PHY reset handle
> + * @sw: typec switch for receiving orientation changes
> + * @orientation: carries current CC orientation
>   */
>  struct qcom_qmp {
>  	struct device *dev;
> @@ -2509,6 +2516,8 @@ struct qcom_qmp {
>  	int init_count;
>  
>  	struct reset_control *ufs_reset;
> +	struct typec_switch *sw;
> +	enum typec_orientation orientation;
>  };
>  
>  static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy);
> @@ -3609,30 +3618,26 @@ static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy)
>  
>  static bool qcom_qmp_phy_configure_dp_mode(struct qmp_phy *qphy)
>  {
> +	const struct phy_configure_opts_dp *dp_opts = &qphy->dp_opts;
> +	struct qcom_qmp *qmp = qphy->qmp;
>  	u32 val;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
>  
>  	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
>  	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;
>  
> -	/*
> -	 * TODO: Assume orientation is CC1 for now and two lanes, need to
> -	 * use type-c connector to understand orientation and lanes.
> -	 *
> -	 * Otherwise val changes to be like below if this code understood
> -	 * the orientation of the type-c cable.
> -	 *
> -	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC2)
> -	 *	val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
> -	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC1)
> -	 *	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> -	 * if (orientation == ORIENTATION_CC2)
> -	 *	writel(0x4c, qphy->pcs + QSERDES_V3_DP_PHY_MODE);
> -	 */
> +	if (dp_opts->lanes == 4 || reverse)
> +		val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
> +	if (dp_opts->lanes == 4 || !reverse)
> +		val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> +
>  	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
>  	writel(val, qphy->pcs + QSERDES_DP_PHY_PD_CTL);
>  
> -	writel(0x5c, qphy->pcs + QSERDES_DP_PHY_MODE);
> +	if (reverse)
> +		writel(0x4c, qphy->pcs + QSERDES_DP_PHY_MODE);
> +	else
> +		writel(0x5c, qphy->pcs + QSERDES_DP_PHY_MODE);
>  
>  	return reverse;
>  }
> @@ -3959,6 +3964,7 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
>  	void __iomem *serdes = qphy->serdes;
>  	void __iomem *pcs = qphy->pcs;
>  	void __iomem *dp_com = qmp->dp_com;
> +	u32 val;
>  	int ret, i;
>  
>  	mutex_lock(&qmp->phy_mutex);
> @@ -4001,13 +4007,17 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
>  	if (cfg->has_phy_dp_com_ctrl) {
>  		qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL,
>  			     SW_PWRDN);
> +
>  		/* override hardware control for reset of qmp phy */
>  		qphy_setbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>  			     SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>  			     SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>  
> -		/* Default type-c orientation, i.e CC1 */
> -		qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
> +		/* Latch CC orientation based on reported state by TCPM */
> +		val = SW_PORTSELECT_MUX;
> +		if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> +			val |= SW_PORTSELECT_VAL;
> +		qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, val);
>  
>  		qphy_setbits(dp_com, QPHY_V3_DP_COM_PHY_MODE_CTRL,
>  			     USB3_MODE | DP_MODE);

In order to perform link training on 4 lanes we need to reset the
PHY_MODE_CTRL with only DP_MODE.

In my efforts on sc8180x I skipped the disable/enable in switch_set() (I
believe because I didn't have the init_count check...) and then in
qcom_qmp_phy_configure_dp_mode() I issue a reset when we're heading to 4
lanes. Perhaps we can do the disable/enable and achieve the same thing,
but as written here you won't get 4 lanes...

I will do some more testing.

Regards,
Bjorn

> @@ -5021,6 +5031,52 @@ static const struct dev_pm_ops qcom_qmp_phy_pm_ops = {
>  			   qcom_qmp_phy_runtime_resume, NULL)
>  };
>  
> +#if IS_ENABLED(CONFIG_PHY_QCOM_QMP_TYPEC)
> +static int qcom_qmp_phy_typec_switch_set(struct typec_switch *sw,
> +					 enum typec_orientation orientation)
> +{
> +	struct qcom_qmp *qmp = typec_switch_get_drvdata(sw);
> +	struct qmp_phy *qphy = qmp->phys[0];
> +
> +	dev_dbg(qmp->dev, "Toggling orientation current %d requested %d\n",
> +		qmp->orientation, orientation);
> +
> +	qmp->orientation = orientation;
> +
> +	if (orientation == TYPEC_ORIENTATION_NONE) {
> +		if (qmp->init_count)
> +			qcom_qmp_phy_disable(qphy->phy);
> +	} else {
> +		if (!qmp->init_count)
> +			qcom_qmp_phy_enable(qphy->phy);
> +	}
> +
> +	return 0;
> +}
> +
> +static int qcom_qmp_phy_typec_switch_register(struct qcom_qmp *qmp, const struct qmp_phy_cfg *cfg)
> +{
> +	struct typec_switch_desc sw_desc;
> +	struct device *dev = qmp->dev;
> +
> +	sw_desc.drvdata = qmp;
> +	sw_desc.fwnode = dev->fwnode;
> +	sw_desc.set = qcom_qmp_phy_typec_switch_set;
> +	qmp->sw = typec_switch_register(dev, &sw_desc);
> +	if (IS_ERR(qmp->sw)) {
> +		dev_err(dev, "Error registering typec switch: %ld\n",
> +			PTR_ERR(qmp->sw));
> +	}
> +
> +	return 0;
> +}
> +#else
> +static int qcom_qmp_phy_typec_switch_register(struct qcom_qmp *qmp, const struct qmp_phy_cfg *cfg)
> +{
> +	return 0;
> +}
> +#endif
> +
>  static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  {
>  	struct qcom_qmp *qmp;
> @@ -5103,7 +5159,12 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	num = of_get_available_child_count(dev->of_node);
> +	/* count child nodes ingoring connection graph ports */
> +	num = 0;
> +	for_each_available_child_of_node(dev->of_node, child)
> +		if (strncmp("port", child->name, 4))
> +			num++;
> +
>  	/* do we have a rogue child node ? */
>  	if (num > expected_phys)
>  		return -EINVAL;
> @@ -5130,7 +5191,10 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  			serdes = usb_serdes;
>  		}
>  
> -		/* Create per-lane phy */
> +		/* Ignore conngraph nodes */
> +		if (!strncmp("port", child->name, 4))
> +			continue;
> +
>  		ret = qcom_qmp_phy_create(dev, child, id, serdes, cfg);
>  		if (ret) {
>  			dev_err(dev, "failed to create lane%d phy, %d\n",
> @@ -5160,6 +5224,9 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  		id++;
>  	}
>  
> +	if (cfg->has_phy_dp_com_ctrl)
> +		qcom_qmp_phy_typec_switch_register(qmp, cfg);
> +
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  	if (!IS_ERR(phy_provider))
>  		dev_info(dev, "Registered Qcom-QMP phy\n");
> -- 
> 2.30.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 448E4C54EE9
	for <linux-phy@archiver.kernel.org>; Thu,  8 Sep 2022 23:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/P2aD5/7U+jX39uZSaVneSH+d8Sv3gNu5KuK2QmPKY=; b=znbJ8sdcdQoU/D
	dVnEK6dklgYAZVGLaV2wzyDlAynCjzubDiV4+ka75zXzK++GAiUMUzmin95LtKI4OhvLa/edmQT1I
	t1LpFJSXru0XG6lueG4G+obTBwwpH0ntgxcPFgvQ6VA+ibCAnZ7mLx8HgC7J9NqGLsCRVbLAeV9+n
	wcxHLDA1kZygQRN/SmHgjvrZfAPYSCZCdzID6RqwrbY3JcUmCebxmTSffBED1GnTwkq2mmf0mTDWO
	ijKEd6ha+cMz6unMfiFUhQZHoxjvfT15KL/dc5b39LyZABgogx7eI8BzPZg77zVp4+FB5cMOE+MR7
	CGDkdfv3yCQ355qwg6CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWQmT-009lIl-J0; Thu, 08 Sep 2022 23:17:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWQmQ-009lGL-DX
	for linux-phy@lists.infradead.org; Thu, 08 Sep 2022 23:17:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AE8FF61E57;
	Thu,  8 Sep 2022 23:17:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FBCFC433D7;
	Thu,  8 Sep 2022 23:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662679073;
	bh=jR7gX2FL4TvSSe9zjk5NzIM3Z6U/ODSb9N8fZlm3LGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ytcu9eaTor6NqLceGIaIAtI1VKcS90xH8Bo/rw+7FVTktsXcjKikrKnOzZfT7V6N4
	 x6F0iiuSU2NRhN7wp+isjYguw/PZ1fFziX/GmhSdyfQWTBDVacNGeTM0+fl5PU+sNo
	 pgOMu58akHR08w0S85Pky41mP3UWoZup0ZILPM8I61PwKxHLusCTyI5UqGt3ztGuDn
	 Uz3IbnZSDTm74L04t889N3vgvJnhV/vAvqmoBSq2rNc10JD7A88ybNXd6WxY32aASM
	 dzu0WKyWUSWPoZ9aovAznmMKZIuzZ7xWNodOaWcyWoiV25Id9jXRsuXxuyfnk2wsHH
	 X+9XxDlxcIipA==
Date: Thu, 8 Sep 2022 18:17:49 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Doug Anderson <dianders@chromium.org>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
	quic_vpulyala@quicinc.com
Subject: Re: [PATCH v13 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Message-ID: <20220908231749.7mihn6yhkqpdeuee@builder.lan>
References: <1662480933-12326-1-git-send-email-quic_kriskura@quicinc.com>
 <1662480933-12326-3-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662480933-12326-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_161754_568162_EECD94AF 
X-CRM114-Status: GOOD (  27.51  )
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

On Tue, Sep 06, 2022 at 09:45:32PM +0530, Krishna Kurapati wrote:
> Add support for overriding electrical signal tuning parameters for
> SNPS HS Phy.
> 

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 255 +++++++++++++++++++++++++-
>  1 file changed, 253 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 5d20378..2502294 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -52,6 +52,12 @@
>  #define USB2_SUSPEND_N				BIT(2)
>  #define USB2_SUSPEND_N_SEL			BIT(3)
>  
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0		(0x6c)
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1		(0x70)
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2		(0x74)
> +#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3		(0x78)
> +#define PARAM_OVRD_MASK				0xFF
> +
>  #define USB2_PHY_USB_PHY_CFG0			(0x94)
>  #define UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN	BIT(0)
>  #define UTMI_PHY_CMN_CTRL_OVERRIDE_EN		BIT(1)
> @@ -60,12 +66,47 @@
>  #define REFCLK_SEL_MASK				GENMASK(1, 0)
>  #define REFCLK_SEL_DEFAULT			(0x2 << 0)
>  
> +#define HS_DISCONNECT_MASK			GENMASK(2, 0)
> +#define SQUELCH_DETECTOR_MASK			GENMASK(7, 5)
> +
> +#define HS_AMPLITUDE_MASK			GENMASK(3, 0)
> +#define PREEMPHASIS_DURATION_MASK		BIT(5)
> +#define PREEMPHASIS_AMPLITUDE_MASK		GENMASK(7, 6)
> +
> +#define HS_RISE_FALL_MASK			GENMASK(1, 0)
> +#define HS_CROSSOVER_VOLTAGE_MASK		GENMASK(3, 2)
> +#define HS_OUTPUT_IMPEDANCE_MASK		GENMASK(5, 4)
> +
> +#define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
> +
>  static const char * const qcom_snps_hsphy_vreg_names[] = {
>  	"vdda-pll", "vdda33", "vdda18",
>  };
>  
>  #define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
>  
> +struct override_param {
> +	s32	value;
> +	u8	reg_val;
> +};
> +
> +struct override_param_map {
> +	const char *prop_name;
> +	const struct override_param *param_table;
> +	u8 table_size;
> +	u8 reg_offset;
> +	u8 param_mask;
> +};
> +
> +struct phy_override_seq {
> +	bool	need_update;
> +	u8	offset;
> +	u8	value;
> +	u8	mask;
> +};
> +
> +#define NUM_HSPHY_TUNING_PARAMS	(9)
> +
>  /**
>   * struct qcom_snps_hsphy - snps hs phy attributes
>   *
> @@ -91,6 +132,7 @@ struct qcom_snps_hsphy {
>  
>  	bool phy_initialized;
>  	enum phy_mode mode;
> +	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>  };
>  
>  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
> @@ -173,10 +215,158 @@ static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
>  	return 0;
>  }
>  
> +static const struct override_param hs_disconnect_sc7280[] = {
> +	{ -272, 0 },
> +	{ 0, 1 },
> +	{ 317, 2 },
> +	{ 630, 3 },
> +	{ 973, 4 },
> +	{ 1332, 5 },
> +	{ 1743, 6 },
> +	{ 2156, 7 },
> +};
> +
> +static const struct override_param squelch_det_threshold_sc7280[] = {
> +	{ -2090, 7 },
> +	{ -1560, 6 },
> +	{ -1030, 5 },
> +	{ -530, 4 },
> +	{ 0, 3 },
> +	{ 530, 2 },
> +	{ 1060, 1 },
> +	{ 1590, 0 },
> +};
> +
> +static const struct override_param hs_amplitude_sc7280[] = {
> +	{ -660, 0 },
> +	{ -440, 1 },
> +	{ -220, 2 },
> +	{ 0, 3 },
> +	{ 230, 4 },
> +	{ 440, 5 },
> +	{ 650, 6 },
> +	{ 890, 7 },
> +	{ 1110, 8 },
> +	{ 1330, 9 },
> +	{ 1560, 10 },
> +	{ 1780, 11 },
> +	{ 2000, 12 },
> +	{ 2220, 13 },
> +	{ 2430, 14 },
> +	{ 2670, 15 },
> +};
> +
> +static const struct override_param preemphasis_duration_sc7280[] = {
> +	{ 10000, 1 },
> +	{ 20000, 0 },
> +};
> +
> +static const struct override_param preemphasis_amplitude_sc7280[] = {
> +	{ 10000, 1 },
> +	{ 20000, 2 },
> +	{ 30000, 3 },
> +	{ 40000, 0 },
> +};
> +
> +static const struct override_param hs_rise_fall_time_sc7280[] = {
> +	{ -4100, 3 },
> +	{ 0, 2 },
> +	{ 2810, 1 },
> +	{ 5430, 0 },
> +};
> +
> +static const struct override_param hs_crossover_voltage_sc7280[] = {
> +	{ -31000, 1 },
> +	{ 0, 3 },
> +	{ 28000, 2 },
> +};
> +
> +static const struct override_param hs_output_impedance_sc7280[] = {
> +	{ -2300000, 3 },
> +	{ 0, 2 },
> +	{ 2600000, 1 },
> +	{ 6100000, 0 },
> +};
> +
> +static const struct override_param ls_fs_output_impedance_sc7280[] = {
> +	{ -1053, 15 },
> +	{ -557, 7 },
> +	{ 0, 3 },
> +	{ 612, 1 },
> +	{ 1310, 0 },
> +};
> +
> +static const struct override_param_map sc7280_snps_7nm_phy[] = {
> +	{
> +		"qcom,hs-disconnect-bp",
> +		hs_disconnect_sc7280,
> +		ARRAY_SIZE(hs_disconnect_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
> +		HS_DISCONNECT_MASK
> +	},
> +	{
> +		"qcom,squelch-detector-bp",
> +		squelch_det_threshold_sc7280,
> +		ARRAY_SIZE(squelch_det_threshold_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
> +		SQUELCH_DETECTOR_MASK
> +	},
> +	{
> +		"qcom,hs-amplitude-bp",
> +		hs_amplitude_sc7280,
> +		ARRAY_SIZE(hs_amplitude_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
> +		HS_AMPLITUDE_MASK
> +	},
> +	{
> +		"qcom,pre-emphasis-duration-bp",
> +		preemphasis_duration_sc7280,
> +		ARRAY_SIZE(preemphasis_duration_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
> +		PREEMPHASIS_DURATION_MASK,
> +	},
> +	{
> +		"qcom,pre-emphasis-amplitude-bp",
> +		preemphasis_amplitude_sc7280,
> +		ARRAY_SIZE(preemphasis_amplitude_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
> +		PREEMPHASIS_AMPLITUDE_MASK,
> +	},
> +	{
> +		"qcom,hs-rise-fall-time-bp",
> +		hs_rise_fall_time_sc7280,
> +		ARRAY_SIZE(hs_rise_fall_time_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
> +		HS_RISE_FALL_MASK
> +	},
> +	{
> +		"qcom,hs-crossover-voltage-microvolt",
> +		hs_crossover_voltage_sc7280,
> +		ARRAY_SIZE(hs_crossover_voltage_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
> +		HS_CROSSOVER_VOLTAGE_MASK
> +	},
> +	{
> +		"qcom,hs-output-impedance-micro-ohms",
> +		hs_output_impedance_sc7280,
> +		ARRAY_SIZE(hs_output_impedance_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
> +		HS_OUTPUT_IMPEDANCE_MASK,
> +	},
> +	{
> +		"qcom,ls-fs-output-impedance-bp",
> +		ls_fs_output_impedance_sc7280,
> +		ARRAY_SIZE(ls_fs_output_impedance_sc7280),
> +		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3,
> +		LS_FS_OUTPUT_IMPEDANCE_MASK,
> +	},
> +	{},
> +};
> +
>  static int qcom_snps_hsphy_init(struct phy *phy)
>  {
>  	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
> -	int ret;
> +	int ret, i;
>  
>  	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
>  
> @@ -223,6 +413,14 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
>  					VBUSVLDEXT0, VBUSVLDEXT0);
>  
> +	for (i = 0; i < ARRAY_SIZE(hsphy->update_seq_cfg); i++) {
> +		if (hsphy->update_seq_cfg[i].need_update)
> +			qcom_snps_hsphy_write_mask(hsphy->base,
> +					hsphy->update_seq_cfg[i].offset,
> +					hsphy->update_seq_cfg[i].mask,
> +					hsphy->update_seq_cfg[i].value);
> +	}
> +
>  	qcom_snps_hsphy_write_mask(hsphy->base,
>  					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2,
>  					VREGBYPASS, VREGBYPASS);
> @@ -280,7 +478,10 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
>  static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
>  	{ .compatible	= "qcom,sm8150-usb-hs-phy", },
>  	{ .compatible	= "qcom,usb-snps-hs-5nm-phy", },
> -	{ .compatible	= "qcom,usb-snps-hs-7nm-phy", },
> +	{
> +		.compatible	= "qcom,usb-snps-hs-7nm-phy",
> +		.data		= &sc7280_snps_7nm_phy,
> +	},
>  	{ .compatible	= "qcom,usb-snps-femto-v2-phy",	},
>  	{ }
>  };
> @@ -291,6 +492,55 @@ static const struct dev_pm_ops qcom_snps_hsphy_pm_ops = {
>  			   qcom_snps_hsphy_runtime_resume, NULL)
>  };
>  
> +static void qcom_snps_hsphy_override_param_update_val(
> +			const struct override_param_map map,
> +			s32 dt_val, struct phy_override_seq *seq_entry)
> +{
> +	int i;
> +
> +	/*
> +	 * Param table for each param is in increasing order
> +	 * of dt values. We need to iterate over the list to
> +	 * select the entry that matches the dt value and pick
> +	 * up the corresponding register value.
> +	 */
> +	for (i = 0; i < map.table_size - 1; i++) {
> +		if (map.param_table[i].value == dt_val)
> +			break;
> +	}
> +
> +	seq_entry->need_update = true;
> +	seq_entry->offset = map.reg_offset;
> +	seq_entry->mask = map.param_mask;
> +	seq_entry->value = map.param_table[i].reg_val << __ffs(map.param_mask);
> +}
> +
> +static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
> +{
> +	struct device_node *node = dev->of_node;
> +	s32 val;
> +	int ret, i;
> +	struct qcom_snps_hsphy *hsphy;
> +	const struct override_param_map *cfg = of_device_get_match_data(dev);
> +
> +	if (!cfg)
> +		return;
> +
> +	hsphy = dev_get_drvdata(dev);
> +
> +	for (i = 0; cfg[i].prop_name != NULL; i++) {
> +		ret = of_property_read_s32(node, cfg[i].prop_name, &val);
> +		if (ret)
> +			continue;
> +
> +		qcom_snps_hsphy_override_param_update_val(cfg[i], val,
> +					&hsphy->update_seq_cfg[i]);
> +		dev_dbg(&hsphy->phy->dev, "Read param: %s dt_val: %d reg_val: 0x%x\n",
> +			cfg[i].prop_name, val, hsphy->update_seq_cfg[i].value);
> +
> +	}
> +}
> +
>  static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -352,6 +602,7 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>  
>  	dev_set_drvdata(dev, hsphy);
>  	phy_set_drvdata(generic_phy, hsphy);
> +	qcom_snps_hsphy_read_override_param_seq(dev);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  	if (!IS_ERR(phy_provider))
> -- 
> 2.7.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

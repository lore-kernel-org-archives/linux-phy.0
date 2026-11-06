Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A713606A331
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 22:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YgnwK0NH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IaS9er6z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EIq0KS3pddbrHOYdvQbjlmxdmbpXIJ1ZZDAYslKd2Dw=; b=YgnwK0NHUe7c2mEcIZ/R0o2N9I
	VSNuXT01FODPobC/KmSgJS+U5T+M5jSHo6AAolOYBREoY0gM/spW+Wl33LjVLOKBLOlAvUp57weIW
	+SYh7ijJGAyI10Lxw9KbYaGpcwJTfzODvmlk4bxHP/jtkd022cCvnuo47eywPVebiFuH/g+2sxVAt
	F5DvJB4Fl/h/JmkbmjrYoKEtRgUDL5MRSP+PGxVLT+ButMKFv5zm6OxF8XTlsE0fKBARE0iTOIkX+
	GqXTPug1dzHeLwzintL3RwW6c2MJmwttA0oy20KOVd/KeseviSoxC/q5Iy9BbTpOSlqBwYYBmfCPS
	Y6Ctk+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPSRS-0000000DmvT-0R2J;
	Fri, 06 Nov 2026 22:29:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPSRR-0000000DmvF-0TcG
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 22:29:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 310E6601BF;
	Fri,  6 Nov 2026 22:29:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E664A1F0089F;
	Fri,  6 Nov 2026 22:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794004187;
	bh=nMZpNIkcGTdYfdMzEc4nfMQokEv9/vL5W1VNPtjLnMY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=IaS9er6z0421dsbeQGunqP8h1lQkYqY3nFsMQZ/c2bg0F+VGMKzUQcwljNUkt6+7N
	 oKBa+hFTL4Oqk4brtNbjd1jEMkgyD3OkPY0aVmjf+pIctiXp7bbdDnI9yo0QBwkC6J
	 QwouoW1UaOhOp/bs2S+nhgjA2Cut9vUX/kzsxvH5mJbQ8y5WXDyLyd6cWFH/AKZGOb
	 PnNPqWrAnCQSlG0aNSlsqoM7f7iePfWz8NIGH3K6Gw4Owjx/hF/xmxhzJfbaUObLib
	 gr/wvlXZ55mQ3+TSRWtHU4tgMuOz3AIKnSY04Kd4jUTa3oudS9JJ/cHIN84oYu7xKL
	 la2xK/yrecG1g==
Message-ID: <88407f72-0c6e-4e46-b97b-7031c237dac7@kernel.org>
Date: Fri, 6 Nov 2026 22:29:40 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] phy: qcom-mipi-csi2: Add SM8150 CSI2 DPHY support
To: mail@andrewgigena.dev, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <C4VI5PNThYmwD0VGOO9DvvHRRydBUz2k5DOLjkianYgYaz4G3-El6cDpnQh2siR4mMwjeiL4_Yp2xEAYeJDJ2Q==@protonmail.internalid>
 <20261106-sm8150-v7.4-rc1-camss-v3-6-0103e8a0bbcd@andrewgigena.dev>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-GB
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-6-0103e8a0bbcd@andrewgigena.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 06/11/2026 18:35, Andrew Gigena via B4 Relay wrote:
> From: Andrew Gigena <mail@andrewgigena.dev>
> 
> Add SM8150 platform data to the CSI2 DPHY driver so that SM8150 can use
> the dedicated PHY driver instead of the CAMSS-integrated CSIPHY.
> 
> The SM8150 CSIPHY uses the SC8280XP lane register layout, as already
> used by the CAMSS driver, so reuse that table, dropping the DNP entries,
> which the new PHY driver does not program. The PHY is fed by the "core"
> and "timer" clocks, the vdda-phy and vdda-pll supplies, and the Titan top
> power domain, which is not scaled.
> 
> The timer clock is pinned to 300 MHz via a new timer_rate_hz soc field
> (SM8150 timer only supports 19.2/300 MHz). SM8150 is ordered before
> X1E80100 as it predates it (7 nm vs 4 nm). A detach of the
> platform-attached single power domain is done before attaching by name,
> so single-domain SoCs do not fail with -EEXIST.
> 
> Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
> ---
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 97 ++++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 16 +++-
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  4 +
>   3 files changed, 116 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index 966d79c98f9b..b8b6589cee35 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -45,6 +45,73 @@
>   #define CSIPHY_SETTLE_CNT_LOWER_BYTE			2
>   #define CSIPHY_SKEW_CAL					7
> 
> +/* 7nm 2PH v 1.1 2p5Gbps 4 lane DPHY mode */
> +static const struct
> +mipi_csi2phy_lane_regs lane_regs_sm8150[] = {
> +	{.reg_addr = 0x0004, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x002c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0034, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x001c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x003c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0000, .reg_data = 0x90, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0008, .reg_data = 0x0e, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0010, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0038, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0060, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0064, .reg_data = 0x7f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0704, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x072c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0734, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x071c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0714, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0728, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x073c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0700, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0708, .reg_data = 0x0e, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x070c, .reg_data = 0xa5, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0710, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0738, .reg_data = 0x1f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0760, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0764, .reg_data = 0x7f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0204, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x022c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0234, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x021c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0214, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x023c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0200, .reg_data = 0x90, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0208, .reg_data = 0x0e, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0210, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0238, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0260, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0264, .reg_data = 0x7f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0404, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x042c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0434, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x041c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x043c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0400, .reg_data = 0x90, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0408, .reg_data = 0x0e, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0410, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0438, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0460, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0464, .reg_data = 0x7f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0604, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x062c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0634, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x061c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0614, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x063c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0600, .reg_data = 0x90, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0608, .reg_data = 0x0e, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0610, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0638, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0660, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0664, .reg_data = 0x7f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +};
> +
>   /* 4nm 2PH v 2.1.2 2p5Gbps 4 lane DPHY mode */
>   static const struct
>   mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
> @@ -352,6 +419,36 @@ static const struct mipi_csi2phy_hw_ops phy_qcom_mipi_csi2_ops_3ph_1_0 = {
>   	.lanes_disable = phy_qcom_mipi_csi2_lanes_disable,
>   };
> 
> +static const char * const sm8150_clks[] = {
> +	"core",
> +	"timer"
> +};

Is there really no AHB clock to be listed here ? Seems again suspect.

> +
> +static const char * const sm8150_supplies[] = {
> +	"vdda-phy",
> +	"vdda-pll"
> +};

These are not the correct names

> +
> +static struct mipi_csi2_genpd sm8150_genpds[] = {
> +	{ .name = "top", .scaled = false },
> +};
> +
> +const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sm8150 = {
> +	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
> +	.reg_info = {
> +		.init_seq = lane_regs_sm8150,
> +		.lane_array_size = ARRAY_SIZE(lane_regs_sm8150),
> +		.common_regs_offset = 0x800,
> +	},
> +	.supply_names = (const char **)sm8150_supplies,
> +	.num_supplies = ARRAY_SIZE(sm8150_supplies),
> +	.clk_names = (const char **)sm8150_clks,
> +	.num_clk = ARRAY_SIZE(sm8150_clks),
> +	.timer_rate_hz = 300000000,
> +	.genpds = sm8150_genpds,
> +	.num_genpds = ARRAY_SIZE(sm8150_genpds),
> +};
> +
>   static const char * const x1e_clks[] = {
>   	"core",
>   	"timer",
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> index c0a4fa20eaf0..3a45b8766311 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> @@ -68,7 +68,11 @@ phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
>   		goto unset_opp_rate;
>   	}
> 
> -	timer_rate = clk_round_rate(csi2phy->timer_clk, link_freq / 4);
> +	if (csi2phy->soc_cfg->timer_rate_hz)
> +		timer_rate = clk_round_rate(csi2phy->timer_clk,
> +					    csi2phy->soc_cfg->timer_rate_hz);
> +	else
> +		timer_rate = clk_round_rate(csi2phy->timer_clk, link_freq / 4);

But why ?

>   	if (timer_rate <= 0) {
>   		ret = -ENODEV;
>   		goto unset_opp_rate;
> @@ -233,6 +237,15 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
>   	const char **pd_names;
>   	int i;
> 
> +	/*
> +	 * platform_probe() auto-attaches a single power domain during probe.
> +	 * Detach it first so devm_pm_domain_attach_list() can attach all
> +	 * domains by name (otherwise it returns -EEXIST for single-domain
> +	 * SoCs such as SM8150).
> +	 */
> +	if (csi2phy->dev->pm_domain)
> +		dev_pm_domain_detach(csi2phy->dev, false);
> +

No, there's something in the CPHY series for this already. You'll either 
have to absorb that patch or apply those changes to your tree and base 
your stuff off of that, and orchestrate landing this series on top of 
that series.

>   	pd_names = devm_kzalloc(csi2phy->dev,
>   				sizeof(char *) * csi2phy->soc_cfg->num_genpds,
>   				GFP_KERNEL);
> @@ -443,6 +456,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>   }
> 
>   static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
> +	{ .compatible	= "qcom,sm8150-csi2-phy", .data = &mipi_csi2_dphy_sm8150 },
>   	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
>   	{ }
>   };
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> index 7e55ae007370..4da9f12d4f8d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> @@ -68,6 +68,9 @@ struct mipi_csi2phy_soc_cfg {
>   	const char ** const clk_names;
>   	const unsigned int num_clk;
> 
> +	/* 0 = derive timer rate from link_freq/4; non-zero = fixed rate */
> +	unsigned long timer_rate_hz;
> +
>   	const struct mipi_csi2_genpd *genpds;
>   	const unsigned int num_genpds;
>   };
> @@ -92,6 +95,7 @@ struct mipi_csi2phy_device {
>   	u32 hw_version;
>   };
> 
> +extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sm8150;
>   extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
> 
>   #endif /* __PHY_QCOM_MIPI_CSI2_H__ */
> 
> --
> 2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

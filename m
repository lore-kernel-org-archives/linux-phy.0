Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628CB606D817
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=azjWldJ/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=TISD4Ygz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5U1MvzcMHi7tb+BkBbPhDVNqVEGg9/UBkIfe53IkSnM=; b=azjWldJ/tWiuVAMCNR4ThEN2Zf
	TS4/CSXouEhv+/Q+BGPZZ32WWRNBOwdL3iGoYihxXKpnhSf8EaWD7N1evxMWch7ZXwvQtcU/reFFK
	zhzaKW/B3dQUiaamg6xcRfIkPKgMuT1LXEdmLaaGyKjvkuLEaF02EyjKZ6Pe/IPBmr3n69Qtno3mY
	ZZIg1JI2qUpR1cEXwYyYcTqDkoxoJsZVplfRiv7I8Ujw/ZrW99KtRCT/uTk0tqMyCmF99duspJGlV
	07UceAh9J2L0Iciec8gWLm9ir9L98kZbo2l8wLL1RWNPtrsRMerprbLgjdDZ1ZP/lSvZxv2PiImQX
	oxPZKI6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPOnq-0000000DPbI-0R0e;
	Fri, 06 Nov 2026 18:36:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPOno-0000000DPaC-3WAB
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:36:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7664143F65;
	Fri,  6 Nov 2026 18:36:40 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793990200;
	b=lw7e0CdZcfU246yZ21IjMqfd4v3xBENivYc6duJasKmww5tzK+JImtm7XKGsamHfsNCc
	 6AyAAfISOj9vrKvvbPykUxKLsfka/rdVudBCfyx6b6PFJhPqfrDSWIl3M6Okw58Gistf6
	 yOT2rangnxyyMdXLpHbNnc4YOCNnSw8SHSJfa3iFXd3YtHxkabwp/RFlF6XA/+VsZAx5e
	 87pQBB/iCR6zxQ7g9YWn0LSHett8Ydbvpz/4YyBgtZu2Aubg6cinxN7xnZ4CRUjZOkIk4
	 73VumeHN2qYqs4njcXAQwoPAmd2ImTjCzH1uzV5rdZAllezovc5uEipmcmRoGURJGKA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793990200;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=vjQlTRsQBcuSOXbJdtTEbKsFD8aomlnMM/LY1cLLkl0=;
	b=O9Eon3UAWRuRjTitbAvPKl5mwGWRM6afvZCPP/PeEntzW7fBDCRjGdy4swQjVsLcqHvT
	 5S9yhf13n6HfG1rY0BG5+3UsHWBjXnl7RqL0unsLebYRkpOB8PCl5q4fqyBX7u+cu+6I7
	 72LLKqy1npCdBzgyb+C3VOw3xTNe4WlI1lwv2GXenDycG/tLFBjU9zXlwmMHbi3V4tazu
	 kSr4Wr6QMgN/2ztvujhpL0PxfAX8R05r3+QSp7JRBbQNhLiU4wZDntSNpTvmwKp9XKpq1
	 tCjWInqlc/cA7IzCiT2z3YsO9m/MYzLkj/G6LhIpFYqF+4l4opgOzMzC5pQ2UkfZJhg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id E75A81F008A6;
	Fri,  6 Nov 2026 18:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793990200;
	bh=vjQlTRsQBcuSOXbJdtTEbKsFD8aomlnMM/LY1cLLkl0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=TISD4YgzQ6xSMlq1gMA7uiM3M1AtgBwxIgd/N9lYLnc8Bkdq63n8LCBherTVoeVzu
	 HB6bfte+kOaLC1AlBwlv8NISm/Tw7hGWXlb2NeqddLhlMmCKEz7FclBX5yoBXDy4KO
	 QJPLrt92o5ikbeh3c/6WlqyFsCFJQDyBx3LCh3tGPp0O89jVDqNT8xrmfMUzxs3VF8
	 yGSjbZWQt1PHZMIF9plE0YOI8FOjK/bbQT7k1Q4xQNPTSqzhPzBKjv6ylh4huKnfnL
	 aduIW4NkTnYeOBwUlLJUltx4R8lFeaOa0yrJ8Oe2olioi1zpDtR13UCnSx4aVrKceH
	 xAS5FK2dOXgOA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 5F62747821;
	Fri,  6 Nov 2026 18:36:37 +0000 (UTC)
From: Andrew Gigena via B4 Relay <devnull+mail.andrewgigena.dev@kernel.org>
Date: Fri, 06 Nov 2026 18:35:37 +0000
Subject: [PATCH v3 5/7] media: qcom: camss: Add support for SM8150
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-sm8150-v7.4-rc1-camss-v3-5-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
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
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Andrew Gigena <mail@andrewgigena.dev>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793990195; l=9431;
 i=mail@andrewgigena.dev; s=20261104; h=from:subject:message-id;
 bh=XGER5/nNLrxHHeVeD6R2PB2HfzasWHcrEstJmcRUSE8=;
 b=C12fe012US7MHoklcemqZuXkiv373tUub/PiWXw6henB+4DXDLKj0aBQ6JexS/Fky4Ld/A6v1
 ZI4b4W51TZhDFWyx+vKS+EuhSwAIr26j1WJK9lKZ23kCS5XZeSzEhCA
X-Developer-Key: i=mail@andrewgigena.dev; a=ed25519;
 pk=OMhlYIBaOEC8g4mJ4JCKy7kbg+lrwRxuujieZF8Ne6U=
X-Endpoint-Received: by B4 Relay for mail@andrewgigena.dev/20261104 with
 auth_id=1402
X-Original-From: Andrew Gigena <mail@andrewgigena.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: mail@andrewgigena.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Andrew Gigena <mail@andrewgigena.dev>

Add CAMSS platform data for the Qualcomm SM8150 SoC. The camera
subsystem contains four CSIPHY, four CSID (two full and two lite), two
VFE and two VFE-Lite instances.

The hardware reuses the existing 3-phase 1.0 CSIPHY, Gen2 CSID and
VFE 17x implementations; the CSIPHY uses the SC8280XP lane register
layout. Add CAMSS_8150 to the version enum and to the shared code
paths, then add the per-block clock, regulator, power domain,
interrupt and interconnect resources.

The CSIPHY resources are reduced to id/hw_ops/formats only; clocks,
regulators, registers and interrupts are owned by the dedicated CSI2
PHY driver.

Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
---
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 231 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 3 files changed, 234 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index dac8d2ecf799..5e7c2e67ae88 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -1133,6 +1133,7 @@ static bool csiphy_is_gen2(u32 version)
 	case CAMSS_6150:
 	case CAMSS_6350:
 	case CAMSS_7280:
+	case CAMSS_8150:
 	case CAMSS_8250:
 	case CAMSS_8280XP:
 	case CAMSS_8300:
@@ -1235,6 +1236,7 @@ static int csiphy_init(struct csiphy_device *csiphy)
 		regs->lane_regs = &lane_regs_sm8250[0];
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8250);
 		break;
+	case CAMSS_8150:
 	case CAMSS_8280XP:
 		regs->lane_regs = &lane_regs_sc8280xp[0];
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_sc8280xp);
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a..da4d2213fd3d 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -1940,6 +1940,223 @@ static const struct resources_icc icc_res_sm6350[] = {
 	},
 };
 
+static const struct camss_subdev_resources csiphy_res_sm8150[] = {
+	/* CSIPHY0 - clocks/regs/supplies owned by PHY driver */
+	{
+		.csiphy = {
+			.id = 0,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY1 - clocks/regs/supplies owned by PHY driver */
+	{
+		.csiphy = {
+			.id = 1,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY2 - clocks/regs/supplies owned by PHY driver */
+	{
+		.csiphy = {
+			.id = 2,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY3 - clocks/regs/supplies owned by PHY driver */
+	{
+		.csiphy = {
+			.id = 3,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+};
+
+static const struct camss_subdev_resources csid_res_sm8150[] = {
+	/* CSID0 */
+	{
+		.regulators = {},
+		.clock = { "vfe0_csid", "vfe0_cphy_rx", "vfe0", "vfe0_axi" },
+		.clock_rate = { { 400000000, 480000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid0" },
+		.interrupt = { "csid0" },
+		.csid = {
+			.hw_ops = &csid_ops_gen2,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID1 */
+	{
+		.regulators = {},
+		.clock = { "vfe1_csid", "vfe1_cphy_rx", "vfe1", "vfe1_axi" },
+		.clock_rate = { { 400000000, 480000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid1" },
+		.interrupt = { "csid1" },
+		.csid = {
+			.hw_ops = &csid_ops_gen2,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID_LITE0 */
+	{
+		.regulators = {},
+		.clock = { "vfe_lite0_csid", "vfe_lite0_cphy_rx", "vfe_lite0" },
+		.clock_rate = { { 400000000, 480000000, 600000000 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "csid_lite0" },
+		.interrupt = { "csid_lite0" },
+		.csid = {
+			.is_lite = true,
+			.hw_ops = &csid_ops_gen2,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID_LITE1 */
+	{
+		.regulators = {},
+		.clock = { "vfe_lite1_csid", "vfe_lite1_cphy_rx", "vfe_lite1" },
+		.clock_rate = { { 400000000, 480000000, 600000000 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "csid_lite1" },
+		.interrupt = { "csid_lite1" },
+		.csid = {
+			.is_lite = true,
+			.hw_ops = &csid_ops_gen2,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2
+		}
+	}
+};
+
+/*
+ * cpas_ahb is left at the CAMCC default 80 MHz; it is not matched by
+ * vfe_match_clock_names(). The VFE/VFE-Lite rates are set from the
+ * remaining clock-rate tables.
+ */
+static const struct camss_subdev_resources vfe_res_sm8150[] = {
+	/* VFE0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi",
+			   "vfe0", "vfe0_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 400000000, 558000000, 637000000, 847000000, 950000000 },
+				{ 0 }, },
+		.reg = { "vfe0" },
+		.interrupt = { "vfe0" },
+		.vfe = {
+			.line_num = 4,
+			.is_lite = false,
+			.has_pd = true,
+			.pd_name = "ife0",
+			.hw_ops = &vfe_ops_170,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE1 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi",
+			   "vfe1", "vfe1_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 400000000, 558000000, 637000000, 847000000, 950000000 },
+				{ 0 }, },
+		.reg = { "vfe1" },
+		.interrupt = { "vfe1" },
+		.vfe = {
+			.line_num = 4,
+			.is_lite = false,
+			.has_pd = true,
+			.pd_name = "ife1",
+			.hw_ops = &vfe_ops_170,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE_LITE_0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi", "vfe_lite0" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 320000000, 400000000, 480000000, 600000000 }, },
+		.reg = { "vfe_lite0" },
+		.interrupt = { "vfe_lite0" },
+		.vfe = {
+			.is_lite = true,
+			.line_num = 4,
+			.hw_ops = &vfe_ops_170,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE_LITE_1 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi", "vfe_lite1" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 320000000, 400000000, 480000000, 600000000 }, },
+		.reg = { "vfe_lite1" },
+		.interrupt = { "vfe_lite1" },
+		.vfe = {
+			.is_lite = true,
+			.line_num = 4,
+			.hw_ops = &vfe_ops_170,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	}
+};
+
+static const struct resources_icc icc_res_sm8150[] = {
+	{
+		.name = "cam_ahb",
+		.icc_bw_tbl.avg = 38400,
+		.icc_bw_tbl.peak = 76800,
+	},
+	{
+		.name = "cam_hf_0_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+	{
+		.name = "cam_hf_1_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+	{
+		.name = "cam_sf_0_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8250[] = {
 	/* CSIPHY0 */
 	{
@@ -5725,6 +5942,19 @@ static const struct camss_resources sm6350_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_sm6350),
 };
 
+static const struct camss_resources sm8150_resources = {
+	.version = CAMSS_8150,
+	.pd_name = "top",
+	.csiphy_res = csiphy_res_sm8150,
+	.csid_res = csid_res_sm8150,
+	.vfe_res = vfe_res_sm8150,
+	.icc_res = icc_res_sm8150,
+	.icc_path_num = ARRAY_SIZE(icc_res_sm8150),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_sm8150),
+	.csid_num = ARRAY_SIZE(csid_res_sm8150),
+	.vfe_num = ARRAY_SIZE(vfe_res_sm8150),
+};
+
 static const struct camss_resources sm8250_resources = {
 	.version = CAMSS_8250,
 	.pd_name = "top",
@@ -5824,6 +6054,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sdm845-camss", .data = &sdm845_resources },
 	{ .compatible = "qcom,sm6150-camss", .data = &sm6150_resources },
 	{ .compatible = "qcom,sm6350-camss", .data = &sm6350_resources },
+	{ .compatible = "qcom,sm8150-camss", .data = &sm8150_resources },
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..74d8cc2921be 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -89,6 +89,7 @@ enum camss_version {
 	CAMSS_8x39,
 	CAMSS_8x53,
 	CAMSS_8x96,
+	CAMSS_8150,
 	CAMSS_8250,
 	CAMSS_8280XP,
 	CAMSS_8300,

-- 
2.56.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

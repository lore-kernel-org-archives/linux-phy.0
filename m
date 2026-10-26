Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC16606A333
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 22:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L8+sXf5l;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=c/NRBgLb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AqqmI3e2Qi3mXdKR8eS0SUCN5v4jze1W1SlipGaF5Tk=; b=L8+sXf5lzbZN+rQCUZRfMWWk1s
	3P/A2UbeA2pltyp9fQsnNhu/WGPoLRxv0Hr9T0cIoP6kmTPqWR72rhSqXasqzSqoDb2QLtNgW7q7Z
	SONv/bYDh5h7BX+5GD5RiNG8Lyyfrea1CjxGbr9BEO7OwbzSgO08KAfGM6Lk5uA1g0zIre7mE9LqE
	O+QgexipWJP5qN/84Zt2hMWd0p1jYm8/ftkBfNc2Tcz1MsFW+4KZKW43CeddQT6JhY+sY5dHHhYZ8
	mH4ej4DDbhgO3lulwYSRJkmnVlxHGqW1Kg3nFNziYWYJ7+0bAcjidnZ3QEJNMZxAUUFZDjPU1SaPH
	JVSgC9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTWI-00000003NuH-31Gt;
	Mon, 26 Oct 2026 22:50:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTWH-00000003Nu9-36lH
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 22:50:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3CEDA4036C;
	Mon, 26 Oct 2026 22:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A34E1F031E1;
	Mon, 26 Oct 2026 22:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793055021;
	bh=T96QPlDe8xy1Z5JM1jww1MObGqVfpxoPg42i47uCCgM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=c/NRBgLbNsWIYSF55C5fSpuDLgaNLhVkV8DBuIAnXQdEn5vYcwQrH1IHDYfuGKBK5
	 O+8oZkSS4t1f+0ZlvNBl3NrfAskCjj3osD0Bpt/8Yg7R+ASds5UtdrIgG2lDgmfM3p
	 axEnRRuN5UWOzRyHrAMWAn4MbO9sJ3/arexAg1DF+GKsa9aTKBUwfOBHSHpABwx9VN
	 +YWtT6iKABTpHnk8qiS16tLanG55EeMK15ZQ0JdA/9WdoJi7XN6Iym8tkTeihKA/Ww
	 0RgYZxSf48X+DKUx0D5zCOTngwSOKIx5sJ//DWxuG8oHPsnzMBiflmGFciB08/2jkN
	 hd2rAjVd/1X7w==
From: Vladimir Zapolskiy <vz@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/7] media: qcom: camss: Add SM8450 CAMSS support
Date: Tue, 27 Oct 2026 00:49:54 +0200
Message-ID: <20261026224957.1115370-5-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261026224957.1115370-1-vz@kernel.org>
References: <20261026224957.1115370-1-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add support of the camera subsystem (CAMSS) found on Qualcomm SM8450 SoC.

The CAMSS IP on SM8450 contains:
* three CSID and two CSID lite, which are supported by CSID 680,
* three VFE and two VFE lite blocks, which are supported by VFE 680,
* three CSI test pattern generators, which are supported by TPG Gen1.

Qualcomm SM8450 CSIPHYs are supported by the CSI2 PHY driver only.

Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 236 ++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h     |   1 +
 3 files changed, 239 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 2680a9914765..8ebd67bd9b2e 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -350,6 +350,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
 	case CAMSS_8280XP:
 	case CAMSS_8300:
 	case CAMSS_845:
+	case CAMSS_8450:
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
@@ -2010,6 +2011,7 @@ static int vfe_bpl_align_rdi(struct vfe_device *vfe)
 	case CAMSS_8280XP:
 	case CAMSS_8300:
 	case CAMSS_845:
+	case CAMSS_8450:
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index b0d60e70e4bb..1db66976e51b 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -2967,6 +2967,226 @@ static const struct resources_icc icc_res_sc8280xp[] = {
 	},
 };
 
+static const struct camss_subdev_resources csid_res_sm8450[] = {
+	/* CSID0 */
+	{
+		.regulators = {},
+		.clock = { "cpas_ahb", "csid", "csiphy_rx" },
+		.clock_rate = { { 0 },
+				{ 480000000 },
+				{ 400000000 }, },
+		.reg = { "csid0" },
+		.interrupt = { "csid0" },
+		.csid = {
+			.hw_ops = &csid_ops_680,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2,
+		},
+	},
+	/* CSID1 */
+	{
+		.regulators = {},
+		.clock = { "cpas_ahb", "csid", "csiphy_rx" },
+		.clock_rate = { { 0 },
+				{ 480000000 },
+				{ 400000000 }, },
+		.reg = { "csid1" },
+		.interrupt = { "csid1" },
+		.csid = {
+			.hw_ops = &csid_ops_680,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2,
+		},
+	},
+	/* CSID2 */
+	{
+		.regulators = {},
+		.clock = { "cpas_ahb", "csid", "csiphy_rx" },
+		.clock_rate = { { 0 },
+				{ 480000000 },
+				{ 400000000 }, },
+		.reg = { "csid2" },
+		.interrupt = { "csid2" },
+		.csid = {
+			.hw_ops = &csid_ops_680,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2,
+		},
+	},
+	/* CSID_LITE0 */
+	{
+		.regulators = {},
+		.clock = { "cpas_ahb", "vfe_lite_csid", "vfe_lite_cphy_rx",
+			   "csiphy_rx" },
+		.clock_rate = { { 0 },
+				{ 480000000 },
+				{ 400000000 },
+				{ 400000000 }, },
+		.reg = { "csid_lite0" },
+		.interrupt = { "csid_lite0" },
+		.csid = {
+			.is_lite = true,
+			.hw_ops = &csid_ops_680,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2,
+		},
+	},
+	/* CSID_LITE1 */
+	{
+		.regulators = {},
+		.clock = { "cpas_ahb", "vfe_lite_csid", "vfe_lite_cphy_rx",
+			   "csiphy_rx" },
+		.clock_rate = { { 0 },
+				{ 480000000 },
+				{ 400000000 },
+				{ 400000000 }, },
+		.reg = { "csid_lite1" },
+		.interrupt = { "csid_lite1" },
+		.csid = {
+			.is_lite = true,
+			.hw_ops = &csid_ops_680,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2,
+		},
+	},
+};
+
+static const struct camss_subdev_resources vfe_res_sm8450[] = {
+	/* IFE0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "camnoc_axi", "cpas_ahb",
+			   "core_ahb", "cpas_fast_ahb", "cpas_vfe0",
+			   "vfe0_fast_ahb", "vfe0" },
+		.clock_rate = { { 0 },
+				{ 300000000, 400000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 432000000, 594000000, 675000000, 727000000 }, },
+		.reg = { "vfe0" },
+		.interrupt = { "vfe0" },
+		.vfe = {
+			.line_num = 4,
+			.pd_name = "ife0",
+			.hw_ops = &vfe_ops_680,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845,
+		},
+	},
+	/* IFE1 */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "camnoc_axi", "cpas_ahb",
+			   "core_ahb", "cpas_fast_ahb", "cpas_vfe1",
+			   "vfe1_fast_ahb", "vfe1" },
+		.clock_rate = { { 0 },
+				{ 300000000, 400000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 432000000, 594000000, 675000000, 727000000 }, },
+		.reg = { "vfe1" },
+		.interrupt = { "vfe1" },
+		.vfe = {
+			.line_num = 4,
+			.pd_name = "ife1",
+			.hw_ops = &vfe_ops_680,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845,
+		},
+	},
+	/* IFE2 */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "camnoc_axi", "cpas_ahb",
+			   "core_ahb", "cpas_fast_ahb", "cpas_vfe2",
+			   "vfe2_fast_ahb", "vfe2" },
+		.clock_rate = { { 0 },
+				{ 300000000, 400000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 432000000, 594000000, 675000000, 727000000 }, },
+		.reg = { "vfe2" },
+		.interrupt = { "vfe2" },
+		.vfe = {
+			.line_num = 4,
+			.pd_name = "ife2",
+			.hw_ops = &vfe_ops_680,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845,
+		},
+	},
+	/* IFE_LITE_0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "camnoc_axi", "cpas_ahb",
+			   "core_ahb", "cpas_fast_ahb", "cpas_vfe_lite",
+			   "vfe_lite_ahb", "vfe_lite" },
+		.clock_rate = { { 0 },
+				{ 300000000, 400000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 400000000, 480000000 },
+				{ 0 },
+				{ 400000000, 480000000 }, },
+		.reg = { "vfe_lite0" },
+		.interrupt = { "vfe_lite0" },
+		.vfe = {
+			.is_lite = true,
+			.line_num = 4,
+			.hw_ops = &vfe_ops_680,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845,
+		},
+	},
+	/* IFE_LITE_1 */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "camnoc_axi", "cpas_ahb",
+			   "core_ahb", "cpas_fast_ahb", "cpas_vfe_lite",
+			   "vfe_lite_ahb", "vfe_lite" },
+		.clock_rate = { { 0 },
+				{ 300000000, 400000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 400000000, 480000000 },
+				{ 0 },
+				{ 400000000, 480000000 }, },
+		.reg = { "vfe_lite1" },
+		.interrupt = { "vfe_lite1" },
+		.vfe = {
+			.is_lite = true,
+			.line_num = 4,
+			.hw_ops = &vfe_ops_680,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845,
+		},
+	},
+};
+
+static const struct resources_icc icc_res_sm8450[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8550[] = {
 	/* CSIPHY0 */
 	{
@@ -5769,6 +5989,21 @@ static const struct camss_resources sc7280_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_7280),
 };
 
+static const struct camss_resources sm8450_resources = {
+	.version = CAMSS_8450,
+	.pd_name = "top",
+	.tpg_res = tpg_res_8775p,
+	.csid_res = csid_res_sm8450,
+	.vfe_res = vfe_res_sm8450,
+	.csid_wrapper_res = &csid_wrapper_res_sm8550,
+	.icc_res = icc_res_sm8450,
+	.icc_path_num = ARRAY_SIZE(icc_res_sm8450),
+	.csiphy_num = 6,
+	.tpg_num = ARRAY_SIZE(tpg_res_8775p),
+	.csid_num = ARRAY_SIZE(csid_res_sm8450),
+	.vfe_num = ARRAY_SIZE(vfe_res_sm8450),
+};
+
 static const struct camss_resources sm8550_resources = {
 	.version = CAMSS_8550,
 	.pd_name = "top",
@@ -5829,6 +6064,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm6150-camss", .data = &sm6150_resources },
 	{ .compatible = "qcom,sm6350-camss", .data = &sm6350_resources },
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
+	{ .compatible = "qcom,sm8450-camss", .data = &sm8450_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..e2bb00bd7099 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -93,6 +93,7 @@ enum camss_version {
 	CAMSS_8280XP,
 	CAMSS_8300,
 	CAMSS_845,
+	CAMSS_8450,
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

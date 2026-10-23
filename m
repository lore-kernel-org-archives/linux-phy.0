Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0420606A31D
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uieZZPUs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AvVPXfO+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dqGFGjvI3rmfYiwQWsiPEtpIYPXIgg4p5g/Uzi6dHLk=; b=uieZZPUsOXTxQN62132AFVEY+Q
	97c/PMJQOXaQb0fhNrAdq89IocCK2mWht8mkaXJPEGdZc+yA6zkBZ28zwifxpr0n4sNeT6ZAryo3e
	yii3BWMjWI+t6Gmlsda9yaSQJtTdAStbnbuuwMUa9ItZuLkqIiBv9J2QSxs1JOx1MXaYGIWbEDz8F
	NPVI38rmEd+msT8Q31jPhixD3kLjngjYBjaN1DQB6nmntpDoaBehmp/Kklw9vK6Q9XmECyGEx3413
	REGqhCFG9cC9TSu9EaQY8n1hW66C6nCv8iO7OtwIFZ5s90Fn5OWzlxehkZsMp19aMneHqyehqvWmV
	x+La5f5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIBR-0000000GfFU-1iK2;
	Fri, 23 Oct 2026 16:31:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIBL-0000000GfEQ-12QQ
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:31:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 07134418FE;
	Fri, 23 Oct 2026 16:31:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46E711F01825;
	Fri, 23 Oct 2026 16:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792773110;
	bh=yl8QJfRZuvkNJm2THHc8v87wJg0vu5rrEXOwizXufww=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=AvVPXfO+KOJhWIebgeXSyxZU2hKeHuDiH0DooCvS2NtZmxFSX5tGSGoyLEdDhlCe7
	 bi51+uLV1qS+D3sprUJKoe5Fs6QtkBwANePNSjhgIRcEpTE5wwYpe1wGly8G0hhNdO
	 lqVMKPNkTXH6y/eJSVs3i0sPZGrQQW6vTnmgRacVOtzYU6u6AlmVLMfsbUrykrOlwZ
	 OZW4t6Z1lTHeY7NFF0DnCTZwfkj3EirjVFahh9irdnP6QF2rzxsvZWfce+53Bq13Tm
	 /QmfV/DPOpYlewBxJvSGkdqsVTqvGb8dhq1xdrmmwU52Ev8ajfbM1m79Av0wjF/HnN
	 4XkMkhqEyspUQ==
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
Subject: [PATCH 7/7] media: qcom: camss: Add Waipio CAMSS support
Date: Fri, 23 Oct 2026 19:30:57 +0300
Message-ID: <20261023163057.775917-8-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261023163057.775917-1-vz@kernel.org>
References: <20261023163057.775917-1-vz@kernel.org>
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

Add support of the camera subsystem (CAMSS) found on Qualcomm Waipio SoC.

The CAMSS IP on Waipio contains:
* three CSID and two CSID lite, which are supported by CSID 680,
* three VFE and two VFE lite blocks, which are supported by VFE 680,
* three CSI test pattern generators, which are supported by TPG Gen1.

Qualcomm Waipio CSIPHYs are supported by the CSI2 PHY driver only.

Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 236 ++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h     |   1 +
 3 files changed, 239 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 2680a9914765..f2aada991a0d 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -353,6 +353,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
+	case CAMSS_WAIPIO:
 	case CAMSS_X1E80100:
 		switch (sink_code) {
 		case MEDIA_BUS_FMT_YUYV8_1X16:
@@ -2013,6 +2014,7 @@ static int vfe_bpl_align_rdi(struct vfe_device *vfe)
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
+	case CAMSS_WAIPIO:
 	case CAMSS_X1E80100:
 		ret = 16;
 		break;
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index b0d60e70e4bb..efb8f9cc983c 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -2967,6 +2967,226 @@ static const struct resources_icc icc_res_sc8280xp[] = {
 	},
 };
 
+static const struct camss_subdev_resources csid_res_waipio[] = {
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
+static const struct camss_subdev_resources vfe_res_waipio[] = {
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
+static const struct resources_icc icc_res_waipio[] = {
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
 
+static const struct camss_resources waipio_resources = {
+	.version = CAMSS_WAIPIO,
+	.pd_name = "top",
+	.tpg_res = tpg_res_8775p,
+	.csid_res = csid_res_waipio,
+	.vfe_res = vfe_res_waipio,
+	.csid_wrapper_res = &csid_wrapper_res_sm8550,
+	.icc_res = icc_res_waipio,
+	.icc_path_num = ARRAY_SIZE(icc_res_waipio),
+	.csiphy_num = 6,
+	.tpg_num = ARRAY_SIZE(tpg_res_8775p),
+	.csid_num = ARRAY_SIZE(csid_res_waipio),
+	.vfe_num = ARRAY_SIZE(vfe_res_waipio),
+};
+
 static const struct camss_resources sm8550_resources = {
 	.version = CAMSS_8550,
 	.pd_name = "top",
@@ -5831,6 +6066,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
+	{ .compatible = "qcom,waipio-camss", .data = &waipio_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
 	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
 	{ }
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..b62f555bd0f6 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -96,6 +96,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_WAIPIO,
 	CAMSS_X1E80100,
 };
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

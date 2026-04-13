Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 171E3EBFD00
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 06:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2BXYt/cLDn0qgmfbAuNj4RzrN7IIiNjYnmvIPPUXo4=; b=ifwcs51jJH7grN
	S6pkzygMkr2cQNATZbkDhhrzrasBj2Qr5l0v08xqtM5yqlf5FE6GvvCDv3xj8jqNBheYY6xU2b6Ip
	jU4rEC1O9c5KbMf5Z8mXZbIJmlrryBP4hi/ppmMoKNMGf24HGIJw4djnnK+Hb/edHi26Dv/px6CI6
	fmcdqXG/FmUVecLqUmGmKPksuWRQtEcklqFSOsexQFBerIHl6jRVKVXTyjweMhF0qwWmFIvbu+p2t
	9piBbAIBaloxTNsQVJE/zCeakRgeJut5Z5IazWwSZFK4vPRaVQh1uWZddMsjPDu45H3w9fttzQCUI
	Vf5QA2YlU+zikw7rcFFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkb-0000000F4nm-3UFs;
	Mon, 13 Apr 2026 06:26:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkZ-0000000F4lC-0Yeg
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 06:26:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63CNrA0Z2811968
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hAjmJXPhlt6Zci48E3mL+6SgK0euCberT+LTCSR0TNw=; b=S3AZ8WkFSbHRTOHO
	1MbMvRmncrbXXztIijKD2o0usiAog2e7qIfpmMlEfw4sMRVCm74NujTbJJp+VgL1
	qfx8ECZNUtswBg2FkScYPCoq9sy9cyTv4zXXYYTeQoUy3oBSiG5WbRTqysLqFk2z
	/i3h3Uj7jy0qc9Iz4IV7czd8dX3Qw2Ot/Wx0ffht8ZjNbQOyICyq/IvR2i+bwGig
	QB/IvNUks9dtEnBBaONUskLdW/0UUetQ5nw9ZazjZQLSyD+3TeFcnMhV5t1kvfer
	EDMCgB3+jeZ1/ZlZ5UYq1UFCAuGknztMDaJHHWkkYabTGMaDzVHwFMQ5DXlVOMDv
	EOcwsA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dffk6m1bf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:22 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2c0f6593ef5so5578440eec.1
        for <linux-phy@lists.infradead.org>; Sun, 12 Apr 2026 23:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776061582; x=1776666382; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hAjmJXPhlt6Zci48E3mL+6SgK0euCberT+LTCSR0TNw=;
        b=UFdKnXD479s217Mxhz7BQHTMms2cSAJUvgp/rK4Oyk5pKYIOfooCXsKbsWzaGI7heY
         izogv/GbwcUX8VQvOHUmiLqdi6ZXn/q5rqC+egPw9f233doZGQkElgTrCN9hSFAwo/K0
         9S3L0yQxqm0kAtKQtJYN1lDJWS/DPHNXubcoIBQJ5QTt2I2t0wJrd1imCis8b87uaMiK
         Ac0UbMJYRRg1eTh2p5SD7tPIcK7Um4OwUgL5ZAKL4uchNaAyfR2G2zCkbKb4aP+mkCyR
         WquZzF+Vh+xutTs6GleSEn5gyt6WkrknFfIkl7BjHbJk0K3qmu4Jslf7pLz3LzSANBUF
         ZaCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776061582; x=1776666382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hAjmJXPhlt6Zci48E3mL+6SgK0euCberT+LTCSR0TNw=;
        b=U40tvBCUuWNTn8bvFwCZf8rvOD+vYjgqMQe6trU8iM+x+CpzfyY8Mj4uYHdGiyEOG/
         /Xzj96N2KKUqR/487X9PIjhajSYZgoohVHMUs/+K/d6OFxohzoLHxhPRRPT9OfiPzc44
         5D/hDNTQ+akZ/sKkIwxa6/MVJcRdwuIwdeHEQ6KiefRmtKdgX6tn5Ua3tTt+Dvb7Szzw
         xFlKp4WhXeUAom3lAQEokRO3YmladMrVGw52RSik78ChFLoxK3RQCLO22AODh3RFj7O+
         EE58CizYV2EUYrPAyIPMQpaeCd3RiovU2n69ZAb+E6JD0bnbHr3WwBUMdNa8IVBm/EuD
         aTUg==
X-Forwarded-Encrypted: i=1; AFNElJ8AW7iCptHynm6PTHz/EnUD7ybTOrBfx5VEbwB1biuS9/knhCjh0BsKaic7LvrOaeYu75DTMYBcn/A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcWpCWGnbiXloArQ7M7I4Dzs2vJ9W+UVCZ7FaADvEG8s5UOpFK
	R1up9qNFyCpIJPdCQoa3TcodgajQ54Ws1q+9+WS5cUt3oGp41NnQOJKGAWBjWBrhFbm40LZroy5
	mR16FOASPszaA6AMi9C1Gsneyq2s8UTj20iQ9ufRAADBm6TKz770Y3e13KUtxeRqa7/nT
X-Gm-Gg: AeBDievjApu3NUht0LHhYptw0J5WRqnyBC9bLhO85gl47hex7EFMs06PcwztE73MXAg
	9ohfqfHYeunZeJtCja4fEBe/t5iDSCp6q9BCELK1Hn7G0QZhwAPkiSlAj5HAAiCj9dWX4CW8maU
	GlvI3nWJuUSlNgYwUIiFtvdyn7OMwy+yYqVEbU8vSgrw+BjEY97qsEBzWFCaopVHO9xQGObz4q8
	0XRT+GlB4KOX0flv0SDUrSJHDsMHFtZPYKwOfjc/Kdv37t1I2pahEGlt0G48Vxp/49w53yj4zMX
	6xeXYWMLBsiJQBap3EKbyKyIXGArRzjxoCIDckYXCYkJ3rsi5czvxneQTF0Xf5U+Jxf//b261is
	omOJWOSTcU6GO8mYwlwUoaDP5gvvs9u6vkH9sNZfErDtEun+J+FGYIr6peOlHMzT0nHVz
X-Received: by 2002:a05:7300:d13:b0:2be:1f58:32a3 with SMTP id 5a478bee46e88-2d5898a5344mr6840747eec.29.1776061581801;
        Sun, 12 Apr 2026 23:26:21 -0700 (PDT)
X-Received: by 2002:a05:7300:d13:b0:2be:1f58:32a3 with SMTP id 5a478bee46e88-2d5898a5344mr6840721eec.29.1776061581107;
        Sun, 12 Apr 2026 23:26:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2d561cd3138sm15260935eec.14.2026.04.12.23.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 23:26:20 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 12 Apr 2026 23:25:58 -0700
Subject: [PATCH v3 3/5] phy: qcom: qmp-pcie: Support multiple nocsr resets
MIME-Version: 1.0
Message-Id: <20260412-glymur_gen5x8_phy_0413-v3-3-affcebc16b8b@oss.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776061577; l=10138;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=DxC/gzVZbMcfvTcP9R5APmqYjCaKSVBVLpWXzTTw9Eo=;
 b=4uGIDWRbRJLOdyDwup4GDs6ttARwmz1gbhLBp45Z8ahj73uEU28BqqaT2UQj4FfYyGvPj3dv4
 Rho8zkf/SrPAq9SUA+jKl6rafzdazmAOuWw3DC8N/JZtBb9m/2wlbQ+
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDA2MCBTYWx0ZWRfX9jEKEg284KF1
 h3b5NuCYT9fNvjjMbXR+xIN09DwELmPpgbson5TrXrLQeWJxVMDbcdGtdRRJDqrhSC5ycJmoOdt
 l9581pWGtTQYX+Q/XzBfIi8aTLeCEOP+35/NsADjfivQ8v5vEg19tqGqP+tSIBTCHknM+PJCd0k
 LtCSUotzGlxRpsibjjY7OpWZlBCUZOiVWsjANvEojKy6VNrpPVMNxeEdZSBnxoXxzOOPV7a8kVd
 2CcWBpNrYBMS+eXFTFC81z2wmWJOI+5So1OxfawLnfaIr+IbZADSOQZBXtNcJOxkS4EHCgTz/0Q
 /qSP11SOF5msrCgi7bA/EoFzxe192pWH5hynrqo4AoHMNyzh9oAGRHV/2S8Ha/wmflAcfIg3vl5
 o6e2McjTf9OzQ2hMPbfxhdrZB7LSdb25YCGfhpAEfgu+Ii6jFgHaAHAnSHLNt0KsRG+NOjCuvsy
 ZO8ap3vIx5B73gKOhlA==
X-Authority-Analysis: v=2.4 cv=YM2vDxGx c=1 sm=1 tr=0 ts=69dc8c8e cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=wBkCwaD4edhj46uzH8YA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: AMPv1dDlogyvz2jYnY0ov2BDwzYxGx5R
X-Proofpoint-ORIG-GUID: AMPv1dDlogyvz2jYnY0ov2BDwzYxGx5R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_02,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_232623_187235_6B1E6238 
X-CRM114-Status: GOOD (  16.72  )
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

Refactor nocsr reset handling to support multiple nocsr resets required
for PHY configurations with bifurcated operation modes.

The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs
in bifurcation, where each PHY requires its own nocsr reset to be
controlled simultaneously. The current implementation only supports a
single nocsr reset per PHY configuration.

Add num_nocsr and nocsr_list fields to struct qmp_phy_cfg to represent the
number and names of a group of nocsr reset names. Initialize these fields
for all PHYs that have nocsr resets, allowing the driver to correctly
acquire multiple nocsr resets during probe and control them as an array
by using reset_control_bulk APIs.

The refactoring maintains backward compatibility for existing single
nocsr reset configurations while enabling support for multi-PHY
scenarios like Glymur's 8-lane bifurcation mode.

Additionally, introduces x1e80100_qmp_gen3x2_pciephy_cfg as a separate
configuration from sm8550_qmp_gen3x2_pciephy_cfg since the x1e80100 Gen3x2
PHY requires nocsr reset support while the sm8550 Gen3x2 PHY does not.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 87 ++++++++++++++++++++++++++++----
 1 file changed, 77 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 424c935e27a8766e1e26762bd3d7df527c1520e3..51db9eea41255bad0034bbcfbfdc36894c2bc95f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3281,6 +3281,11 @@ struct qmp_phy_cfg {
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
+
+	/* nocsr resets to be requested */
+	const char * const *nocsr_reset_list;
+	int num_nocsr_resets;
+
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -3327,7 +3332,7 @@ struct qmp_pcie {
 	int num_pipe_clks;
 
 	struct reset_control_bulk_data *resets;
-	struct reset_control *nocsr_reset;
+	struct reset_control_bulk_data *nocsr_reset;
 	struct regulator_bulk_data *vregs;
 
 	struct phy *phy;
@@ -3392,6 +3397,10 @@ static const char * const sdm845_pciephy_reset_l[] = {
 	"phy",
 };
 
+static const char * const sm8550_pciephy_nocsr_reset_l[] = {
+	"phy_nocsr",
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
 	.serdes		= 0,
 	.pcs		= 0x1800,
@@ -4348,6 +4357,8 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	},
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4380,6 +4391,8 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 	},
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4480,6 +4493,35 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg x1e80100_qmp_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tbls = {
+		.serdes		= sm8550_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_serdes_tbl),
+		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8550_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_rx_tbl),
+		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 	.lanes = 2,
 
@@ -4502,6 +4544,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4535,6 +4579,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4566,6 +4612,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
@@ -4581,6 +4629,8 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs                   = pciephy_v6_regs_layout,
@@ -4609,6 +4659,8 @@ static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v8_regs_layout,
@@ -4624,6 +4676,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 
@@ -4640,6 +4694,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 
@@ -4768,7 +4824,7 @@ static int qmp_pcie_init(struct phy *phy)
 		}
 	}
 
-	ret = reset_control_assert(qmp->nocsr_reset);
+	ret = reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_reset);
 	if (ret) {
 		dev_err(qmp->dev, "no-csr reset assert failed\n");
 		goto err_assert_reset;
@@ -4805,7 +4861,7 @@ static int qmp_pcie_exit(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	if (qmp->nocsr_reset)
-		reset_control_assert(qmp->nocsr_reset);
+		reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_reset);
 	else
 		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
@@ -4849,7 +4905,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(qmp->nocsr_reset);
+	ret = reset_control_bulk_deassert(cfg->num_nocsr_resets, qmp->nocsr_reset);
 	if (ret) {
 		dev_err(qmp->dev, "no-csr reset deassert failed\n");
 		goto err_disable_pipe_clk;
@@ -4998,14 +5054,25 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 	for (i = 0; i < cfg->num_resets; i++)
 		qmp->resets[i].id = cfg->reset_list[i];
 
-	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets,
+						    qmp->resets);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get resets\n");
 
-	qmp->nocsr_reset = devm_reset_control_get_optional_exclusive(dev, "phy_nocsr");
-	if (IS_ERR(qmp->nocsr_reset))
-		return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
-							"failed to get no-csr reset\n");
+	if (!cfg->num_nocsr_resets)
+		return 0;
+	qmp->nocsr_reset = devm_kcalloc(dev, cfg->num_nocsr_resets,
+				   sizeof(*qmp->nocsr_reset), GFP_KERNEL);
+	if (!qmp->nocsr_reset)
+		return -ENOMEM;
+
+	for (i = 0; i < cfg->num_nocsr_resets; i++)
+		qmp->nocsr_reset[i].id = cfg->nocsr_reset_list[i];
+
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
+						    qmp->nocsr_reset);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get no-csr reset\n");
 
 	return 0;
 }
@@ -5520,7 +5587,7 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 		.data = &sm8750_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen3x2-pcie-phy",
-		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
+		.data = &x1e80100_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

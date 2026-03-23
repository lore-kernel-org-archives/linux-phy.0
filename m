Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 107D4FC72CA
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 07:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2BXYt/cLDn0qgmfbAuNj4RzrN7IIiNjYnmvIPPUXo4=; b=KosiDeUyKDAkth
	htf5tEKbUg+Tbq1lQINRgsiybnyHN6dyTqQzGdYfv+GT8KLNQWjT7X64qPKYUkLP5Jcs4TPVREvJ/
	C9LzwUrGiuiiTRgnVG/Ksr0txWd98374TtEpfQRwV/udK95p/ahHHvSHnS/gA8RtrQOCXhlzlrNWH
	EKSBqgct6jVtMOnOuXVVNBMG2cOf/q9HXCkwUlfbNTrIX8W4mQogJbRbtT8KJNkC9KbxIvVSL4umf
	KGmksvYU2Lvam1imHssjT4JrVChpni1S8qAvi+GPhhKLhwUtYXTHFgHBHtKuAuhYA5cONathax6R6
	vVB91Er9euv5iOPnga+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVm-0000000GAsi-3MHB;
	Mon, 23 Mar 2026 07:15:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVj-0000000GApa-0dQu
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 07:15:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MM0U7g562075
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hAjmJXPhlt6Zci48E3mL+6SgK0euCberT+LTCSR0TNw=; b=EGaBtv4hEl6T7Vc/
	VtjH+KlUlyzOdk/5F9XPZgnQL+rt8WKC3t9CV3sD+zeDDPLfDlyBI4ZUWdubHo1c
	/CAiDNLIySAxb7LjkyXfZv+2niNQEejvzNjovH4xf3PajwFDrRkvTv/zOm1i30wZ
	SGpeL1W7lamjFOL7o85FMEID/Sqqn405bsdvAHHAmkR9jbUqPJG/V/pRcLUVQVnB
	kYVDBNsLeFRTfDYQT/GhPKJqO+tPeymf9BIYn4bUxluNiOlW4AL3STUmLJplHl6F
	vBoBq7xvuwJKs2c2Lt0rEZUfe1ZUrkmcoLyso62AtPg9SDpsLwx9+Ys2PZKPc6Gf
	JtRGug==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1jwvm8gg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:38 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2c0ba59a830so2923424eec.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 00:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774250137; x=1774854937; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hAjmJXPhlt6Zci48E3mL+6SgK0euCberT+LTCSR0TNw=;
        b=kIkLRGMPPprp4QTEt4ix28t3UUeOqFFegkSsB8P7bMYT8iiRrqnNTHg6eQQON9s8h3
         Z/3wSp3+5hz+kN8DkI43BPtAtMcA1JCaQmGTPpNzsvek8p0Ci1IG+KAYRY0C9cud8yOZ
         nGwlXBeKexuPILpx36FE6gGo5Vjf/GTdA5bsOv9cNi0M1fOktnIWt9vZUfMjl+zDErA6
         LhxTausVB9Ab11pWCeTtRLHNAAaCQAFxXidePAKFUDvRVQJAAtASVJxdk7Bjiv8IrTWy
         30s60l6CAh6ep7gNXqdoSq8X/0CyU1d5XGy2YCbUZA93yuTJSCjfar2LuHY6nwBRSMOS
         Sw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774250137; x=1774854937;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hAjmJXPhlt6Zci48E3mL+6SgK0euCberT+LTCSR0TNw=;
        b=mYxI3EwMDu7J9BP0Nct7hWfzvxBwVJUQeymcuJbhbwCe2fHJ8x43sQeFMRxYEv2o4g
         IpuuhXLo3Nfx1KMFDDNl2WYlW7cZh2Aef1T8LcltW8exqN8WsGEF8x+dAzGS4vesfCbY
         +LQcZ4OjPkHJHEouWxud5aqnUh0L6a5+82ddWbPHMBCEMTjOeFNY4rmsr7/4NP8H+RR+
         aTvLrxuA/JOuhAbblGSXKAsxcAbyiRHFO5BLK8T5wp9Sa3NzjzlgboHkm8x8FIybDm4N
         pI2B5DUtmXYUhEpxVOjFzkBDfL3HfRkStE4a5Lbz3+MKBAodD9SS1hXmmhmd7UXX3LSA
         zipQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEZl2lCgwdHvMLeAfsPYAmPiFwJwGKAQKSPlsLmTX7mgNbB6wLaSkPgtQEh9weI9Wt/SFdRrie6Pc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGZrk3VBeTRMEWGN1Cn0uNdltL97azQyDtzs2U3ZCU59gKxpQj
	e7R9VtEMHOk+VzA34BlsMyy+9TGISpkdF8ap9KUNR8dLz7fI88Kj/3vbVnVS2NmAkDO4+PxUE9H
	y6JE+VJvDxLqMPJ/l/b9e8MSYYfTESF3dzoou1dVDKPAud8qxt8CDOgcN4L5Vb7YvkHqa
X-Gm-Gg: ATEYQzwI4hDwxVK8PGWtZq3kcBdawh5o1LPcjNxeeKtAxdPNamayE/qjZG7nGsplKVH
	jsGwBzV3CzbQaGEt8M7fC97jbeGWkxGrhfLikFGc6DQ0TfcjrfR7jkhwhTkJClxZDJsM1aKGLuF
	dN8srNVT+dmW9ISj8tDC8jJkFyaQXtu1O7j9owGvcXek1tngqjN5FV2e+npuADtUzvLCwPXt2KC
	12kS2L4LuRi6oo7cJ2mD42/L6pwE2WPIzMRXG3rMicZXOJ1yfSyb2GQ7o6s5KQa1ifj2KqUMg2N
	3E3NaR5hRMw5ZYN8fnGVeCsx0GoMbB/24fomplmkomucxikzgHSBsb0M2DdqjLvavCzbABQcU/z
	hVsgQAr3q0chUelJ6oPGqsxoYAmTWGgoRNY5FQJ0+VW2jKM1SY0Z7xqJ62rec1JGbZXT/
X-Received: by 2002:a05:7022:160b:b0:119:e56b:91ec with SMTP id a92af1059eb24-12a726f5b6fmr4673510c88.29.1774250136882;
        Mon, 23 Mar 2026 00:15:36 -0700 (PDT)
X-Received: by 2002:a05:7022:160b:b0:119:e56b:91ec with SMTP id a92af1059eb24-12a726f5b6fmr4673492c88.29.1774250136236;
        Mon, 23 Mar 2026 00:15:36 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b14cadbsm13997886eec.3.2026.03.23.00.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 00:15:35 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 00:15:30 -0700
Subject: [PATCH v2 3/5] phy: qcom: qmp-pcie: Support multiple nocsr resets
MIME-Version: 1.0
Message-Id: <20260323-glymur_gen5x8_phy_0323-v2-3-ce0fc07f0e52@oss.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774250130; l=10138;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=DxC/gzVZbMcfvTcP9R5APmqYjCaKSVBVLpWXzTTw9Eo=;
 b=hQ0y5v1WwDFOAQr/O8x+Dz+1lSYukKZ5z8dc9CwzbaREjpcD6ua+3b8IT6L34UXwpKX17gbNM
 rKVMqYsLNtRC5B4Uy5XkDV3idQtD2aJK6tWS8FP0elDb/XJNqm5+RfZ
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA1MyBTYWx0ZWRfXzvGwOm74FytJ
 52P1TfmrYsrjn/L8rZlUH1vOv4uLLT2evkFM3MWvLg24mss1T2oiRXqc/3mKcBDFy2yw+upyR7U
 aMYi9h87ZK5HseqeF048xSoxhm9CU4XXuligCDjhUPobh4iBPndYf/FrTnjCnbVDJ4XKnx4xX4l
 OVuUlJw4ez17ZI/DB6dQLwCCBnRmsrRuUC40FWhUfvCs4Hs26hcO9alB5S4McPhMP2qmUeUII+c
 s1Ek+vIvZrwDVWj7cev46/QoyTn1JsgXm3iiSiBHa8r4+mYXMLXqfeAhPjMYYF3T4zFwFH00581
 zjgC+zzMt5r6HbXR+0ZW9/IjHT6/0nzknwKgZOrNSku/tBoYs/diW+VSfI9lBeWu6s+eCwgDltP
 biEDVWzps5nRlNLkY+QOukluy05SnU7O+PLYhimts+/6X+a8ellwsPJ0P4CTuZ0tdo25SQf6qtg
 dj2y4LyicYxFGiwAtuQ==
X-Authority-Analysis: v=2.4 cv=bcdmkePB c=1 sm=1 tr=0 ts=69c0e89a cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=wBkCwaD4edhj46uzH8YA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: iAg93xxTXeUjumI1S7kcRdfkfXXnO024
X-Proofpoint-GUID: iAg93xxTXeUjumI1S7kcRdfkfXXnO024
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001539_791736_C71B6CAD 
X-CRM114-Status: GOOD (  17.28  )
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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA28ACD4F54
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8rljQ/3fUwaNA2ZQf0xWzV8TUCa73YAtg90hjoqgcU=; b=lAkehG8iMRwMh4
	jr0g6IvDbJkeLYvTsOC6yyW91CJipBCB1+UDghXzUPPkg7bw8LMsgLtZGcrr4FXqxN0jtXkytHvU1
	flNk7teCb7GgBaaSTB69ZrwXJjeOZzic6oQVLW2ygHpkallSIDX+UVZj4OP1ce3p3iD0BT7TWT0tB
	ZSH9c/OYr8p6DCoo+ogWsRrPB2CyDPKzk8fJdvPDlgVoIagjZgDGz+1D/DMQgLZchJ9K9i5s/9UF3
	K2Lm2IeSXXxa4vuf8fO+5hH45bsLlPCfMx5vivTyJvFHVes3KLg4djaigjtQXjaqlAiur7jb80Ec6
	w36cmFRYhNiiXk0fmfEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIi-00000000EQK-2THu;
	Tue, 19 May 2026 05:47:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDId-00000000EKv-2cUo
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:30 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IJukrM2700947
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bXD+NQxxyPWJVbCY8I4Rhkosv+1Pgs7F7zwEdLEgcoE=; b=QvXClfaBABmKWE3/
	Lq7dGdJNMK6MGeXW0FJvxYLmagvNayTVcmHyp9gcazdKWlxh0je57mewKbVEB8Eg
	7WDagzFUHoZcScCc58tdMxE1knO4f7up+yniuUL1okl95zB7XmOMmYEpHfzE18yS
	zE9Lw7SO8wnGzyZMSpl2qQnBPnl9+bnU3HXSNTQiXIWK7sbOskwxWHCoDVsYjiBH
	IraKxVrjIg79OMKCgK0QtKWESdKRBgLZ55xN9+woc2GCyWvK+otmUmHDaKTEVUVF
	geYC6d+gc95aM3TAsM8hDe/WDFYwUU9rw119PQRyCy+wMyULpL8pWOaH2Kif7+qI
	chJ5pA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e82mekc53-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:26 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-135916eefa0so14544159c88.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169646; x=1779774446; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bXD+NQxxyPWJVbCY8I4Rhkosv+1Pgs7F7zwEdLEgcoE=;
        b=KDQwQJMz/NADZ5QOy7FNF5sHNs1bL0E3L9RQSumtwF1OlLotarfapSRL/n1l+yvCV/
         qenZ+77F2hOcyDS1Fu/9ZZTv4d2adp6JSvbbG6qwlY6iDch2c7bwSzMEeThNQjmdLb9+
         cBrgmx9Y19aYEhrNCtvyEpmpRgXe34iXpFg+5E6Np/U/ZtCEG/WtZPr0bVxquhwnOUe4
         61Mnox9u4ad41BLGBsWWqMNuQa3J1y3l5zzJhsr3lp3yMKQemepdp+AvsHJjIyVmc9dD
         /4Ybq87lrPCcNTJpFIH5i7MLfmQ8QzsK3g9iTEir8q4E1q0dSQYFabPsnNT9ArR0zri7
         qe1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169646; x=1779774446;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bXD+NQxxyPWJVbCY8I4Rhkosv+1Pgs7F7zwEdLEgcoE=;
        b=BmwjNxlVGFXCqgXBTiaixNZMXatzRFCXOyg44QljfyIBDbQgJUfUznJk08RtPU4VQl
         hFxPxquCgw404uRR7zdoG6eGLk45dQtJzdSjNVVSCOgdoQe0kHRQjd82klLZDi8sXOxY
         +0yvMA+6H7MP1jM/tbqIPk+APYHfDRJ2BmKl1lWezOUKai+cO+G5mHQyuMRnIhBoA3Ce
         u/hL4rnCFGdYE1Jai6eJZ5F9PdVCEsg45b1TN9R65o0GoBOcGt21fKLFTtEGJ5nq16MU
         7oJrrcIg1j1swAGA1RMPndYWZ6SMx59THWihe8+yMIDxk5AegTjt35FuomC5a6l75Y6r
         tJsg==
X-Forwarded-Encrypted: i=1; AFNElJ+XarwfCe/T7P6CKcLwsQpWE3/Z2Y3CB5mJ+E5fAe7FVK15Sl4WtrABnNM5Ln8DiU99td9jRatnkpA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDA52mZjWDx6Fxqvq/7FbeiKubO/dSDPipRbVQND3PcX1W41Yb
	5aCWG1uEvDnQW7FrLAPCfxKJv+UgkPzhP3zcAiYygqIE6hG6CuDnL4ddKDQoDBqNhNrjRpLhr+U
	ywBAGg44oVeRW9UToIngtwzSI+Shj2fivBktgsDFZ3QtZ0iNCDz1gZgAdmyKfp2fTzknC
X-Gm-Gg: Acq92OEADzQN5FqVt6hpQkbYJDCLQ+8DHm03JBj3hOKfrds/9qbP+fu+n5KN24r6DK8
	vXQteqrg29kgGxwWPm9BIjW0ptl5epO/DVEfa7jUaTJM2amiqqfgHtHWhyfPADiFAbTQvFjn+s2
	a3lv6Xg6O8V0Xhf/ha80yUvu6m7e6Fmy9SHYox4ts/E5p4FouULhd+OHYLlxHZGmz1kztuNHJ33
	rSn8KV+LfGFZafvQ+n6Xdf3gKIM3aMzswCT0h9zrweRKGKAU7PF9QauUGaf/R329iCVimd8vI56
	VzkQ/nPBeiWsxTFm0S8SitX7ROAVC5/kA/06wypezWKRFG+3N8oIpED506R2+YWk7eCwLad3EJF
	0LVz1j8Th+WuNWlqx2tp0sTfr6UKuYOo3TvlUoleiu9otEUCstcfEp70RFKJ2+ZeL8D1h
X-Received: by 2002:a05:7300:a907:b0:2e6:e868:4f38 with SMTP id 5a478bee46e88-3039818b054mr8291907eec.3.1779169645394;
        Mon, 18 May 2026 22:47:25 -0700 (PDT)
X-Received: by 2002:a05:7300:a907:b0:2e6:e868:4f38 with SMTP id 5a478bee46e88-3039818b054mr8291880eec.3.1779169644881;
        Mon, 18 May 2026 22:47:24 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:24 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:15 -0700
Subject: [PATCH RFC v4 4/9] phy: qcom: qmp-pcie: Support multiple nocsr
 resets
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-4-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=10082;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=rk+0s7fYFGz4ada/2dzRBhZiTmhHIS5lzExg1uX5PS0=;
 b=26BdTMWY7fz/sE3b8rb3BJd8aqky6O1gF5pALIKz3QIKrqO3mtLnVY/QXn/nOKpHnVXKW3yHT
 OUgcf8fg436BhnZTemT60Jc7puONiAcVv0innmyAR7ZyS8tcCYSU+IX
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=Tr7WQjXh c=1 sm=1 tr=0 ts=6a0bf96e cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=wBkCwaD4edhj46uzH8YA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: nIAvSsWe_L6xw6j6-Lnwf5-TnxADi00Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfX9swb5sFthrlV
 S5Yrj871p/II1l7UopfVLNzZHXhBAl2JnRYomE6Vb4mKDUaznBLDKYIMlihZBiCiozw7NMvrrm2
 3W+qre9jAUgD1vydRcgu6E9yzErPjPJB5CpIEy2CPN8WvRzdnTA4s741w9K3FQ/Q9HV0GiUMynn
 cf9nlCIEgGL2hyZhSqsvHAXh1GVT58l2/CmGE+noP1svsCHvPcjGUNRhiM4PprIbMd6zdJrV4zd
 7ZZjm4w08UcZy33j0gge+tpvEPW3t7RI8FP6Nc2/kOgyhlsxgAO2ZwyKTNMqx/oChwzs9TfK/Ye
 nhawTjbcJjcNZKbSj8kvnw3cLHq+oF9j0Jxqx0DesiKjCxl4yQUePj4WIlnvHuuU5fMEzyFrdkO
 eM+mTvBOT7E3RCvu3tCvuC2As6E3RIKwoyvy72GE3QrVDyl569J8anXEPzlPqve8riBYpdD/+YD
 80umEWpupDyKffPg1Aw==
X-Proofpoint-ORIG-GUID: nIAvSsWe_L6xw6j6-Lnwf5-TnxADi00Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224727_794042_17B4143A 
X-CRM114-Status: GOOD (  16.56  )
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
index 832b5d93105b..1dee4733d4f2 100644
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

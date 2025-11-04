Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B194BCCFA07
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 07:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Z+krdDFvE/aVbOyFei8vC2mkn7O0RzrQebyOIZOi34=; b=IRyGb/YQdxUXg6
	iEX/598jjXYljP3gz+MNo2Xk3R8PNup41KOu4nmcb+t4C8IhSorCijbHeNLjTXoWdVYFiAykrKY6y
	wIpaT8ygO5ye4my1erDNf9oIB/PydCHxt0nDq80vXlBDsyriHxsQhKWlP6Vs06NU+PfEmmNS0dKbx
	e/bDz2AU97ppXNXcXivbuF41uJ+vKjUQkJ+Z0M1za1k3RGkINv6Tvf4mnU+HDcE+rQfZevZv8an2/
	j+hBTfmsJ8AHb11COAA8kUdIUcWFmzjA/oU1C5rlKik2UV+rdK0T682RzBYj8ZIK6hAPtO60rYgUd
	pFELbuwVTTavB3SnkSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu7-0000000BMoG-1kB0;
	Tue, 04 Nov 2025 07:56:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu5-0000000BMmU-0H0U
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 07:56:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A46QOoT1192035
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 07:56:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=; b=Ux5VKHrowjSzFGVd
	8RbnKGrH08ze39srzgQOVAcXVsirjiq6VDbXmFF2rqFkSGxt7MMo3BYnTpSFA4Sj
	FSeDGlzAAYALT6nxLzNV05F1TNs2Uim/sr0tEmVya9ZuQlL3Tx+For52DVUvl4I8
	ZRavsHyaC9O61y31OY3zNSRL/6y9ws0qMbOfO8XpCHXB0AN1WPGP9bJqMUgjiJTI
	l4VFumi09iGGPFK19wqLVjJcNvOCDVfXBdPENht9MF0KTMcz3sMiWhVrtqttxYKG
	0VnxJdvvfwFyUiPNizxTMMTt20zuUmIpzPTeZZCZL8cjg3ZtCJN7ZehgHjmXYZzS
	Dvz5nA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7c7jg890-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 07:56:32 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340be2e9c4bso2589605a91.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 23:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762242992; x=1762847792; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=;
        b=CszGtJSPY/AVutcv+yMqEwFjlxeLY3RPP675zF129Z/AsQO89k8fwuzWv3MzhAOpFe
         WUI0mbzFh2mfd9CGjyRfojZYBKtM2jYCiXIxY+oShNvo898+GJuyjSAYIPVVb8F3y52/
         0hYNh9Lwg7CijM+2JCNCeRxwuowgekRx1RL8hSfQmLSApRhvDRPdgBfelmErBeYXfAi4
         A7n+bC4eAmpipL60GErvznHH5LBCDj+g3oWm8IA/ny4S45DOozI6hiWK3J52k/2onaSW
         PikJ6KFsws3KEOJXj1xKNJ1zQxxMpbzuJQnxayIQM82BaBRvhYXXIijcb27uN70YHoX1
         eu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762242992; x=1762847792;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=;
        b=UPu6jDQAobRG2GYE8SgIaZRuge60ZPKZ8yGyc3/XvD94Or1Hfi60x5FmZw3s7JUa9E
         xLkEkrSw4ulI6iBwsQKpkeXRE03mdoIgQfAuqQ5l+kmnYAzJ+P3d6ZgvhpVKqHmDp0hS
         T4yy8gMRij/uW7rUuTm0k760kBcrRvszpZA/wG0Z317sG7xqVJOzFMU+k1Vg6YRSj6Hz
         v13VZuhZocj7Y3f3GxcI6EpG/tnpSCoh3/NtE3ZLTNAe4bqg+XJnJODzTzpi7cl1ka0m
         KFqceIbZNkbJ7C5OSGFj2cbriuCPkuyNdo3HyPuZjSfUF++P3lCUI/8vACjX9QoT1Tu/
         XP8w==
X-Forwarded-Encrypted: i=1; AJvYcCVJb92J/fJNCzM1Qwm0Tj5arXfyUaxHBwyz5b0YynUyyL3aCogCjnZm2j060P7rLu0JG03pzEIVpoQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzpVWaZ5EBaY6KE/4D7241a5Qgl1rLJceHqK8kp5L2fvcqcXUP8
	XaXaW6h9AK+XYaszA9ndnyg6Mg74s62HxcZ9/isbtXuRqTFr5gu7C+PVDDw3DVjuiqhmwF21eow
	3DBRCYtnk9I9YEYmOFMuF2njjB3PCBTLYOxL/cVoKlF6vjCWTRUfI0dApWGEReGHk4TJQ
X-Gm-Gg: ASbGnct+R2TopO+O9ycgHxzBP93jPbPU1CDLoEOP63YF3719AsFwedZGGogm4uDDDWa
	ZrUXeTsifJzpi20WitjrKloEPD/6QOlMiG3ZCgbUCvGOKyHvX91+TBi0fRe5sMg4/8gVruXqFzI
	/qLEcZgwWUTbKGPZCjlpJJvftfZWcraxC2uhTdiTKnytYVAvwPVN2lcWLEaZdZA6F6tzJ6XboIk
	7SDecXA64Dv6OWzI49kOBbdE2+8OAs5aexBs82JCfxaIGVIBXLB+acC1n0HBPQneBwAMOaKcTs/
	o7yEuKik7GuTr0wDQpIVS3Oy64S3KjTAtXXdwM2lxANmEUF6zO0TzojNYQj+6NcAVWF/AUD4gl1
	zLZdwwenRAyPtG2fRYh5+cQCU4ZtVWryqJee99HePUSJgrg==
X-Received: by 2002:a17:90b:3891:b0:340:c179:365a with SMTP id 98e67ed59e1d1-340c179451amr14114064a91.0.1762242991906;
        Mon, 03 Nov 2025 23:56:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETspjX1zfLO79dug+X80CLuKL5y0H5UZzcdJuKRXhbJn8V/01XyYLjgtnScFuA8LhmepwgcA==
X-Received: by 2002:a17:90b:3891:b0:340:c179:365a with SMTP id 98e67ed59e1d1-340c179451amr14114038a91.0.1762242991380;
        Mon, 03 Nov 2025 23:56:31 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a16652sm3627951a91.20.2025.11.03.23.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:56:31 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 23:56:26 -0800
Subject: [PATCH v6 3/3] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
MIME-Version: 1.0
Message-Id: <20251103-glymur-pcie-upstream-v6-3-18a5e0a538dc@oss.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762242987; l=2929;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=3I4+Hh02UK/6hCXFAJiGGjbIJsRvaSQpVywV9Q7zV1c=;
 b=Yy0wCNKoMhHH5+bQwNBM44G+N0KLCCONobdst6FmOH8rDTGtsbP9m10SSMTJLjzkyWK7f3zOv
 ljg3VAf21cLByVHntHv+oCK2C7W0VY280ExOKcxYAjx+vJ8KHssX0cZ
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NCBTYWx0ZWRfX5U72yfdFu/eZ
 U5znSz8eTeyr9KuQmKK4JGUEoC1vr/ykTyMdUuRUTN4Je/eGJxWSB0vNbj0zouftfRcH46cROfH
 YKE7ovE3EMROqjPgD237v2NheBkVgVD2r8ZukrdGFXi+bX5rxhkYrpntV4rZaE34mp1TggaEMXt
 7gOLRdL7BINw6idBOAlSXDQwFX7Gi5mEyqEP6wL7IG8K8gOonsAtQMgR58jW0R2WEWSiAgdB5DH
 Iv8S8wKId1vi1kACdn4008SfWeKwgrT0d5XgTmc7PfKcvpSqjXXdzILMBvy9MEIBp8zRbTzfvLa
 HfkQzDn2a12qZTfY9efd/Zhf7WnGnsw3oJPqGsWkOH4eu6adJbufgtdz1ndbVHUOFde+iHQUTfS
 eVDkK56aByT/dm6LkRsfMcA1gGFtAA==
X-Proofpoint-ORIG-GUID: _6pFhNeahnpREanj_afQIrWbPweyUMxs
X-Proofpoint-GUID: _6pFhNeahnpREanj_afQIrWbPweyUMxs
X-Authority-Analysis: v=2.4 cv=DvNbOW/+ c=1 sm=1 tr=0 ts=6909b1b0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=cXB1dxBGfnZZ65A63A0A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_235633_131909_155C70C1 
X-CRM114-Status: GOOD (  15.22  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 62b1c845b6275d924fa501ac64e69db5f58844aa..86b1b7e2da86a8675e3e48e90b782afb21cafd77 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -100,6 +100,12 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3072,6 +3078,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrxz;
 	u16 ln_shrd;
 };
 
@@ -3356,6 +3363,12 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
+	.serdes     = 0x8000,
+	.pcs        = 0x9000,
+	.txrxz      = 0xd000,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4412,6 +4425,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5163,6 +5192,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
+		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1C6FCCD199
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Z+krdDFvE/aVbOyFei8vC2mkn7O0RzrQebyOIZOi34=; b=HwM3jIwv41S8tO
	fFehxH5yuqvd893BJIJ8OjNRYU/YagaaSXi7aEAYE0tQm67e4cgWEx7IvuV99tQLuzvbgnDt1YNkR
	hakrr4E/r21UIwJ05eeIHmmakBW9wjaFfDpInAXwpd4/OmTZOQ0Zvuky9oIbipuM/qAVvr/UfqluJ
	zsx0/ZuksJxfFx4Oy5xPf4xDx4ILr3G0836CCgPQ5sZPXD0uY2yMhZpSWRc5E7DvMcWDpZ7XiZeTQ
	TtzEm3gf+KPW9z1gtKF/oPh5NcyHhq4lMctTNEOH3nVo0hL096Co/WThfvbvEM4VX9P+XNUB0i9GK
	Td8JZDtjJ3Wc+OKJMqDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpW-00000009KJa-2W9Q;
	Sat, 18 Oct 2025 01:33:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpS-00000009KGe-2EW2
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGGSV015777
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=; b=QSsKepWYbMMQ6FAi
	g7yl1X2c65Ec5QzyGBxMjSuwnc0ZRNY0y7wcNIL9IPQxNEG2sP8jpqECljDqWvZh
	V3lTFP7a0rGBdTpuS1hfre8xYjxJUThid9TE+I7Y0MrGxAbN9GErY7NnLS/lTWGm
	LgslG9XjABVRng26uDsB/ShpXgEIxpf6629ivvfL/BOElmvxDlvwat3aVoXpMrEE
	nhpJ5EhKxH93NidQgSXON5Vx1kRaOkHYAUwSuQxHkrrW+yewo1jibH5EojICGmbG
	LhpcxwB5O/+iMV6V1yVkjY7GnBFN8pKp9KtoNL7pZ8GWD1wJHmaGTU3GjxEC9AAF
	Wq3mGw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8vwys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:53 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33baf262850so2553558a91.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751232; x=1761356032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=;
        b=YiSli1XFfOfOQuq6kagd3dwUDJi2/qUjWpwHwItCwf3s1EgxAYmlzix8jstLRa0Bcd
         jM5GfpKoUV1rthOgwxvBvL1nU3jqF/mxASNcehYDB+hGOaF3j1em9YhnSAqw7ous/h4b
         Dp2Gnmj1sIl0ifgAhVYoap4C+22NFc1DYxvJy1SYYuXw+okqLLJ1SnKx5Y3IoA/U9fKz
         HOYYj2Sg9/NeGggVjp1Dyoy0afyGPbOqwp2fJqfGomCzf/gJdJZFIx/erRocktSLbTXL
         ZOUFmySvlFfX3Xq2nHG9rNsQAlvZybelmVCxtKnHtFqsOGR3NuzoYPVH7oiuCW2UGrzU
         tUjg==
X-Forwarded-Encrypted: i=1; AJvYcCXCIL/n6Lq6V47+KoDng3Rmkb831l+2pvhSCxcPtZsQHYbNgQus+bj2cgvraCuWIcLaoGm5TAOmHe4=@lists.infradead.org
X-Gm-Message-State: AOJu0YykCRG5ZlGnBvTR4SVEGkRzO/JSGAWvacatDePfiQCUH265GwXK
	/pPPtLRpwhWoini7E6hUD/6j1ZfPOhNOMmy5Ic65XSxThixAEePD+DGLiKyUw+RpS2xsG+qipIr
	ZYHcMzg013oB/g1ukNlLxsP+EW5WEmFApscFDKetWRU9LfLWMRyD7s6x/yBKCdsHJKUUlDy1PGJ
	+EvNLPlw==
X-Gm-Gg: ASbGncsDmBlcijVyhjzGIbX7Ix34xD1Bt2gydxKHFp3coYe+ZcGa1/DD5NT1Vf+6ZCR
	h2bKoGVoisUGh3FVW7cr2V1RRZi5ji0mi8/IgD3nLWuZRBqC+JbQ44Sox9003b+ps1TckUxoYzG
	LWB1FyNTDRWkbodMZnTfz3XgC9hl51xskkXs0lwH8mOEMXGuvzt6Wza22dTPAgo1E1jeOEv/sAr
	nFBkcB/pG/SBDLxhdN0faWX9PzN+kmOT97k/qiPY22OWOpdTUtq0kSfxxWhN/12CcjMkdIllO1K
	O8M9XsOL3tUL58Mf/AziKMNrlGHKTVuD/syWpxnS8sRgHUlsDcqwdAHUf59DjVfv+rAMMc3WKoC
	YGeM9p+BVfV2w3IsjKnBRGiFd0JJqwWdbTEHIQOZBEkj4iQ==
X-Received: by 2002:a17:90b:2686:b0:32e:e18a:3691 with SMTP id 98e67ed59e1d1-33bcf919f1fmr7485202a91.35.1760751232064;
        Fri, 17 Oct 2025 18:33:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2fgPD60Q0LounxiHKhoACGn2+QP/TkZujlOtJ/Rvipc7SJrKdnnGI+eNz+ntqIEijuewJXQ==
X-Received: by 2002:a17:90b:2686:b0:32e:e18a:3691 with SMTP id 98e67ed59e1d1-33bcf919f1fmr7485161a91.35.1760751231575;
        Fri, 17 Oct 2025 18:33:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:51 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:42 -0700
Subject: [PATCH v5 5/6] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
MIME-Version: 1.0
Message-Id: <20251017-glymur_pcie-v5-5-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=2929;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=3I4+Hh02UK/6hCXFAJiGGjbIJsRvaSQpVywV9Q7zV1c=;
 b=dKOgcVx4w6ztqfdIQRHnQOd2o6aFzRsanH60UTNwCy92Yge+jRnAAJ0SEKuR8G3sBjmBVOMKr
 rZ9zpNrUYtpD1fRGewkb2hmXQyRE7yq4vYg0tLfkiQp72LU7mZfM/u3
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: JQcS2tpwPiclR56H3S062YUEj9uGZYou
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f2ee81 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=cXB1dxBGfnZZ65A63A0A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX5CIGUR2BzltV
 5DWgkt15A2Y9wj5Q5qi73Ghqwq/keieucEyBjs+DBawH/YhPaksBEtO/7s9NXolZlyC7/pmU6oU
 6cxubMZ1mg4SdLr9vBblKndHT6WvWdVAFpDiyvu24LyJZu9v7KyzxWcnQHbXwiXxDEQXMaVKcPe
 bLABpNvfUpFAyFaViA+zzFNXvw/Xa+lzI/3wP8MiDlzeifIGIbH9jvL/cg81Ocfz8SD+KeT4+Qk
 sq6gQAvhgiuKhSbK6znDxfKL03UGDl+i53Qne3QZkSUhY6mvTEnLyIpur5T4UMXAvCxzpYxHAXJ
 iPk00iXNxI9sED3AywTIhSlxDrtIqt93Dfa1LyTex+0D4w1oXj09NmsdPOYAGNcY2siHEfshATL
 +rQhLF0t5R29/TLd4znOR7uN7CInLg==
X-Proofpoint-ORIG-GUID: JQcS2tpwPiclR56H3S062YUEj9uGZYou
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183354_690621_D2E8BD21 
X-CRM114-Status: GOOD (  13.81  )
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

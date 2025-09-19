Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BED7CAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQz2YS7eQrUXx0z/OUCFWFKmGKyRHvDaxCe/iC/6lFk=; b=l0nVcgBh2Bn12Q
	6/uTO8Tf62FlRqVu+9H8VwK0XSgp8EJUxlQouTyROqViH66ltCT6JL/vUPLgp+RjDjpJ3p7v6ikOH
	ivfJLI4AXuB5Mx0Keh/CG6UyU8b15tLxSyUl3O2aepBY4X3Lxxluw/8QP7WQEjZkCJJp4nNkpPjB5
	A0CzUZ9p7FDJvtWxG8uIX3OjKQKS6rlRBzgLpmN/hJxUXlYAEqTDhu1IdipEG3FEp3IKmHSgqrX1L
	LVC4P/Y+g5KpY57YYqJo/RQqyapU+Y4YVt4U3o4u3pC2BIuG4huXSPA4Ny//SSkyTewDBRmKg1mwd
	0+N8hUwBDJH1FjmRXfTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3M-000000038Ad-0H8X;
	Fri, 19 Sep 2025 14:25:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3K-000000038A6-0s9h
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:25:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J6oa3v010955
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ph7HUhaBaiRojkAD3JbT6dqDUnW8cPmN0abiXHdzjwk=; b=f9gPE8SD9OX8YF66
	O92Zjn5/G199P72cs82s1JD1BJ3PH4Ca3Vdc7+OibOshKUtQQZB13DWTGxNKGso3
	1hzbFhZWyZHCUsPe2VJd2tDHkLYEoTDWMAnLwrZ2mMTea2fJP3xXcGOOjc+cSvUm
	2A7mrh6FDM+LdEcqir4YxKcAEIBNuLXqJFvioXzatdj8KrXyDFbBjom/7u96e/Ak
	T/Yl/kwMMXbcfDoS2Al/ve34EDKwG7YV0TDHkMsep+S0q5h4Lw7uLWu6S8AVdL28
	OO2HjBvUH3CWvYIYlbdr/lAA3uD5eQW9lvyPL9QUytclkt3HteXB3+Xc6xQE/Uew
	4xpSlw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxy2nmp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244582e9d17so5122875ad.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:25:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291932; x=1758896732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ph7HUhaBaiRojkAD3JbT6dqDUnW8cPmN0abiXHdzjwk=;
        b=vWWhHUwwuLZ6ieivEmP6x+9yx3ev4viUYfljxlQgLpCCJ9/HgeUQQ2fToIrC2lD2iP
         CfXUomKCMSbKoRt+SB85HYxJMW0sFaJBgf8RfiL0uYTyVd9Z+EMPVr7ZeeoIRShC5fwy
         ORMk3cNLgLzW8rYYOzTcrynNnM9MTTIcJLaX6TXnMwopR7GIiyqERtCCjXC6PdEB+ZBP
         55yhajzsB3nHyM9Q5JcWWef7ZI4MJqlENOCBqRAf61vuOGlK4Amxg+MjtlDd+yVLdH70
         lgzqfksxH/jeCqnpFAujh5/DleTuwOmxb6F7hiD74n46j7EDRDe3VHjfRrLI+xWIfBqv
         1rkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNFvDFPEEnLZuflPIok7WYrUsf0OhO4ZDwKHQuahSqzETF06Q4LGwQ4DXf8KRSti0outW2S69FkFU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywu1jENby4kasZOpCEe65A1fkjzHP9zHhpKTdx5Z4FL3RzhBtSQ
	kD6fOVHK5BhE8Y7zE3bd6zZoP1+YToZYI1oE60Pe4oGCa03qRepO6m2BbB1X5vq4++UnIXUM0f4
	HC+ojWnj+XxddMQjxfKtnv4RZWLpUhPOCm/X1tUXM7eEHKttpfoSCDoRxsL3PrPbBeI15J9Gyx2
	zg4FY=
X-Gm-Gg: ASbGncv9NHvs5PMyVfrKJMKBikJzYXb0X1PG/FLTz+XMNeNNM8iFlhq5IHg4BfzxmD5
	dsPNgN2LFpYMz/4n918YcUZj5dV2Klw/yXinI4fHFsLB6lV+qB3glib4aHK/1wrpAc/BZAAcs1/
	MZVmjs6wZ8CsxrrCYvuKCSPCILEeOKdD0EKt1Vo06oXrGTLlZJP7veuX4DILiOhVDzOKJD5D79K
	jv02CC/Y4heDBmWk9S+mu3Z0xcoH7foqnRJ/W5faqvSxTLT++uLfdPjBxUJX/M4cMGUeXRMhBaI
	8htq93QpfgCCSsXwG/QC45CuoUAjRzqgCGr1WtMv0EuilJe+0FJSxXrvjjKhIJVmx4WaKF5tVTT
	BTeXxonre7hLJLA==
X-Received: by 2002:a17:902:d50a:b0:257:3283:b859 with SMTP id d9443c01a7336-269ba51e02amr28034985ad.9.1758291932319;
        Fri, 19 Sep 2025 07:25:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9k4V4LZwBj1bALmJjwm4mvgiiPZwxFTRvqIpmloNrIs+Hb4ymL2uQ5u+YSKVtkdkkR3g1AA==
X-Received: by 2002:a17:902:d50a:b0:257:3283:b859 with SMTP id d9443c01a7336-269ba51e02amr28034505ad.9.1758291931764;
        Fri, 19 Sep 2025 07:25:31 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:31 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:21 +0800
Subject: [PATCH v5 04/14] phy: qcom: qmp-usbc: Add regulator init_load
 support
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-4-eae6681f4002@oss.qualcomm.com>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291894; l=5441;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ScND5R19fNR4fxgqnX3CVdg+GNtnOHYJhlmcXMGybGg=;
 b=wIVCw4xJblRND34EU16CJTmhIw8JDc0MbkTUUnrROQg12ldbCsU5AI3GCnUxeFAB2KaokwrJH
 BcP3XpKuLGCCUc8PrxsNSVqnrt+tTEUsqjdyDcd3dFCyEhdcyxdUsPw
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+yRpaxE2SYPu
 ykyA8SAr7HPAwhcICsT08TP+1kuw+XePWPn9sv0tLsVodrAWVZOmRg3WAhmxo9jvmO9+L05EfE2
 CBRXksM4ctL/YyayZhyA2L6eq790h33NADM5tdXOL9CbGzKEEMw5y3eWWdFKP6+72hFItv2BiDs
 TlXh0+UR6ZGtpMk91RF64alomejWLM2hrJXJZDxvkGL8dThk0k8cTIzBDEmKQORJgmAkjA9Wxyx
 RgpT+wFvXrSm/Zrmk2ozwkB0L/906l+ltk7f61Ii3ZFwplBqOgstHuQ7YYp1LyT/8SfoVdRJkFc
 QRdzJcMh7ti7dqeUwA0h1Iwv410ZHF3h+8z1h9x1mLQYO/cdZ10WZ3H7/x239eeiDh8hIwi9/AC
 lmLLZhqC
X-Proofpoint-ORIG-GUID: QLALVgrKY2DWXER7TZSDkVqF37QnLk-a
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68cd67dd cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6BFfyeCpfu5Dl7vuC9UA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: QLALVgrKY2DWXER7TZSDkVqF37QnLk-a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072534_253979_CF3B28A0 
X-CRM114-Status: GOOD (  19.24  )
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

QMP USBC PHY drivers previously did not set init_load_uA for regulators,
which could result in incorrect vote levels. This patch introduces
regulator definitions with proper init_load_uA values based on each
chip's power grid design.

QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
regulator requirements differ. A new qcs615_usb3phy_cfg is added to
reflect the correct settings.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 68 ++++++++++++++++++--------------
 1 file changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index de28c3464a40ea97740e16fe78cba4b927911d92..3b48c69f9c3cb7daec495ebc281b83fe34e56881 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -336,7 +336,7 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
 	/* regulators to be requested */
-	const char * const *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -428,9 +428,19 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
-/* list of regulators */
-static const char * const qmp_phy_vreg_l[] = {
-	"vdda-phy", "vdda-pll",
+static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 68600 },
+	{ .supply = "vdda-pll", .init_load_uA = 14200 },
+};
+
+static const struct regulator_bulk_data qmp_phy_sm2290_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 66100 },
+	{ .supply = "vdda-pll", .init_load_uA = 13300 },
+};
+
+static const struct regulator_bulk_data qmp_phy_qcs615_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 50000 },
+	{ .supply = "vdda-pll", .init_load_uA = 20000 },
 };
 
 static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
@@ -454,8 +464,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list              = qmp_phy_msm8998_vreg_l,
+	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
 };
 
@@ -470,8 +480,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_sm2290_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -486,8 +496,24 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_msm8998_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+};
+
+static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
+	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -773,23 +799,6 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
 			   qmp_usbc_runtime_resume, NULL)
 };
 
-static int qmp_usbc_vreg_init(struct qmp_usbc *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
-	int num = cfg->num_vregs;
-	int i;
-
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
-
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i];
-
-	return devm_regulator_bulk_get(dev, num, qmp->vregs);
-}
-
 static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
 			      const char *const *reset_list,
 			      int num_resets)
@@ -1097,7 +1106,8 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_usbc_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(qmp->dev, qmp->cfg->num_vregs,
+					 qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
@@ -1163,7 +1173,7 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

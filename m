Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB2ECAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQ93JsQ7d71bioX9mFmiPw4JyOt2i/VuSqdkdYiP+20=; b=oGmfZn85tnrsja
	xSW8LG80p+inHrN45o/ZgzseZzdyNPS1rl//9fVtL1QTYQJVOBb7ntgfMIBKClbMwt6LTzAHCvoV5
	TYSPY2Grdz0cyEQdyEFekGD45naxpVl2fiilFHY46rOoguQ49bIm7HzUEvceDaZszZY/8KQ3qbdM4
	Qr5P08QcjWcalR0V0jpcpReVOH/b/vKUgTEifvkunjmCTz55X7MdoozybaVHHgli74o7IoJtYPLo1
	2saoT+/g0itCbkOgszmJcmnHE3ohVPqpzE3E0KBQvIqpjqYwx8jr6jhbVNj3e+VT4hMcnyEL5ja69
	M9sEl7JA4bQ1nyJVVHHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwij1-00000003htm-1ZzK;
	Thu, 11 Sep 2025 14:56:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiiz-00000003hri-0AyH
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:56:38 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BCtP2i019103
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZNQeat9pvNbPTog67roy6KckIEGxAOnd4dbWmMxr+og=; b=g8jl3gUWF+B7wb/t
	Y57wnvQ5U4L4AugZpZa+RZfiGF0E7U+eY+fEk8nF+CCnuwVhspCB9b/KsrWbHAeQ
	NunepMkLfx37O5rjegq0gVYaK98s6ymDUPhnCDof8usvT8jFGNSPxcjoXCuJoDCy
	R/c04/vRlJGTdNfJCZPHQuiMtAISC5wbJOPhayat+lBDP+4zDgdUn9KqxtNLs4JZ
	Su7kpuHs7Etl+a9HxHzaOxk3ELc0eNEAkouLIi26VVXRfav4k26MoQaubnpsJ8iY
	ZIw1lN27ZtcFgl2r4Ta2HmArpNKBehf77ei+JN0zeNNdyXAGAw6Tvisq93dUv8Mi
	91y53w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphswf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:36 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-329cb15c316so221878a91.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602595; x=1758207395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNQeat9pvNbPTog67roy6KckIEGxAOnd4dbWmMxr+og=;
        b=JlRo6bTVrNiITPbPlJBcxvDR7Obg8aYwa3kP8lGUYpbs5jeCTyIXvFCa7sP7SNkhPM
         fcEICRFs+Eh1TwPT8+xyfjXbrmR8Dlf1Cm8nodq6N7CEvABa79s6wozswx6brIYb20C2
         NW+Iu1iFnFcxaY2+r1ycXDJ9Px3aPxfBBqu5hD8MV1ya9mH80aUh1EUAova1W03Q+nEQ
         iEo2JC6zUoEsyo/tvhTMMJa+8ERCBGtzWYagl+/Mz5JaPjC1M5kdfRjGUYL/E1EO0unA
         20qEeZQe2u/jGwTlJ5hQRC2j9mUx8DPiSpduUnONykyRCob8O861FA6Cpi3ESe17F+2E
         bMdA==
X-Forwarded-Encrypted: i=1; AJvYcCUzvf7tJuNU0vqMAlFWblahXDlRjsYFXkg2FrlmhUP8Ptj+smgfwuJ0z/MyuJeMxbIC0sc+NSPzB9k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/NwxvknahJZVZl4SWxz1bmilRwQydXNUl36kP//KzPvC1IHXl
	iJzR4I+ncDH/IASpfyE/Uexrdvm8P8skQufeEymxHK9UuXQpr9zGOx+xL+l/cbgylrskEyyXOPZ
	D/WSZ2OzXxz6MGwt6pJ2oOGVWWR2e1alDUBjWfleOxdmmzhMtM6xuGGTM+sUr4HPaSXu/
X-Gm-Gg: ASbGncurdhDx8FtAIGALgc/wek/guV41QUxcbOHnjoaSFLeLkEJLqBXezFhbmIKvByE
	LvJfBNsow8HnUXhJxmq+giRztHv5lsEvfh4J2yfmAc3PH9CmJcCoBUxZ4n8SczwptA3xqesAwT6
	xXkH5Ni5d9tHgBMf88pddscPhsEYE5BLTQ1d3O2aKJcArs/C2geQLMboAyJKd/AhQ9nOSfQnQOU
	uZViXpUajgGnQ8A/gXV6e6YnMG30qkbMCVHJZJiunLV0IPVo19+YUUtbpdDHHA/WoSCswAUIKIm
	8Y85iaz2f1CgaNywJxCgis6jSiaY7UwEr5SPLKJBR4atHu3aT2fovZPbTyR3XQ0YqCig0XtsjFC
	gDrtgBThbu2tiNyVklKuvDCsoWthrge3ercdcqi6T7hGxzdfguQgKoiwY
X-Received: by 2002:a17:90b:1e53:b0:32b:7082:b4 with SMTP id 98e67ed59e1d1-32d43eff842mr15045434a91.1.1757602594609;
        Thu, 11 Sep 2025 07:56:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvB0n9NMJS1ssPh6TYrlAyonIfVRXAMxAbAlgyzpNBDjSW1xB+NeJwGODHWLYzvOXf9ftkFw==
X-Received: by 2002:a17:90b:1e53:b0:32b:7082:b4 with SMTP id 98e67ed59e1d1-32d43eff842mr15045398a91.1.1757602594070;
        Thu, 11 Sep 2025 07:56:34 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:33 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:06 +0800
Subject: [PATCH v4 09/13] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602528; l=4233;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=mc60fbGnoAVEo5yG+c12CgJyqEsRxFDHJbOqeLy8ArY=;
 b=SBS1/8HrXVaD6s2hujd4K482pOZYmdQ76wxvNB8nYNvez9CiGfPDcHnXCpjF5aCAf5pHlWsYG
 VudOVMF1sUvD28zAAEmVHwrpU/l47Mo4Xn3Ozy2hOioRZYXiYluCkkq
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c2e324 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ADjXBmbmjA5MTMSrQwQA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: aKoPiplM7Tds7HwTCJUR1P-o0A_kPHrE
X-Proofpoint-ORIG-GUID: aKoPiplM7Tds7HwTCJUR1P-o0A_kPHrE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfX2UxSR0jXnUcM
 sTUHPQLsNGYw+VM4XmCTyREQi/VgR9ji2JVWhN0oO+k1FnPM2L+ZlGFSl/rmu+ZqlanX5zlQfCm
 Zs+/PA1swz0UylLXalpKNnC+KyEgu4A2KpBT0ITWpwIgLSISd/gIeawTxSAfMnqol2l1CYS31d2
 t5jIeaSs0g9/6iAQYcr8NHzkFN5pZupXHV7325RZvCjHKP/iRisbv+6uo83Bd+0PmefkxZg5pZh
 sHvLUYRxnUYvt4j1rEoXqA4iQoINkYzwiYRgiYAlbre2BrqM1MfEVD8oR0HcFCRZTUU/E+bybTU
 MsQVuEDEQjNFwi4z46vPG7dtR+N5B/TdDenffSeLnQfURjg56HVRuOCMEudjLc4KWdjZH6SjoNu
 o6NjkVR6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075637_205151_D022E8B3 
X-CRM114-Status: GOOD (  19.81  )
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

Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
Move USB PHY-only register configuration from com_init to
qmp_usbc_usb_power_on.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 47 ++++++++++++++++++++------------
 1 file changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 95a099de908e7f3478eb1e18326b21d4014d8da6..c57596fe0d5cd5c15105ad8183ccdc047953e4d5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -33,6 +33,8 @@
 #include "phy-qcom-qmp-dp-phy-v2.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
@@ -686,12 +688,16 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
 
+static void qmp_usbc_set_phy_mode(struct qmp_usbc *qmp, bool is_dp)
+{
+	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
+		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);
+}
+
 static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -716,16 +722,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
-#define SW_PORTSELECT_VAL			BIT(0)
-#define SW_PORTSELECT_MUX			BIT(1)
-	/* Use software based port select and switch on typec orientation */
-	val = SW_PORTSELECT_MUX;
-	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
-		val |= SW_PORTSELECT_VAL;
-	writel(val, qmp->pcs_misc);
-
 	return 0;
 
 err_assert_reset:
@@ -996,6 +992,14 @@ static int qmp_usbc_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
+	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, qmp->pcs_misc);
+
 	qmp_configure(qmp->dev, qmp->serdes, cfg->serdes_tbl,
 		      cfg->serdes_tbl_num);
 
@@ -1068,6 +1072,8 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 	if (ret)
 		goto out_unlock;
 
+	qmp_usbc_set_phy_mode(qmp, false);
+
 	ret = qmp_usbc_usb_power_on(phy);
 	if (ret) {
 		qmp_usbc_com_exit(phy);
@@ -1493,6 +1499,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 		qmp_usbc_com_exit(qmp->usb_phy);
 
 		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_set_phy_mode(qmp, false);
 		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
@@ -1634,15 +1641,16 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 {
 	struct of_phandle_args tcsr_args;
 	struct device *dev = qmp->dev;
-	int ret;
+	int ret, args_count;
 
-	/*  for backwards compatibility ignore if there is no property */
-	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
-					       &tcsr_args);
+	args_count = of_property_count_u32_elems(dev->of_node, "qcom,tcsr-reg");
+	args_count = args_count - 1;
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg",
+					       args_count, 0, &tcsr_args);
 	if (ret == -ENOENT)
 		return 0;
 	else if (ret < 0)
@@ -1655,6 +1663,9 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
 
 	qmp->vls_clamp_reg = tcsr_args.args[0];
 
+	if (args_count > 1)
+		qmp->dp_phy_mode_reg = tcsr_args.args[1];
+
 	return 0;
 }
 
@@ -1694,7 +1705,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_usbc_parse_vls_clamp(qmp);
+	ret = qmp_usbc_parse_tcsr(qmp);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

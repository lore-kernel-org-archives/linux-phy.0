Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ABF3CAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I86euAbg0jkriKeNL0StNO4zkb0ZNp9vfhb/RxQoHr0=; b=rPC7N6cWs70DTQ
	UNQBrGZhx4zb/uP2aAyIzBUfCpxNtJZyJwVKzIfmHusEoLNVlFAT8Hl+lt+AXBIDjOFvzmvu5p/TE
	e6WQ1cjPm+RacD/ADIr/6GtqZ81ckPly8YWUYJd+IGusG//Q5DXdY/8wmuFptRGDtN6pRFoeVPXs+
	z9YUMVyXK2oPcZ+YDo1gy5xegBI/aIQ+RuL/L9993dfgFo/iACzz5Duo9fbE43/mleRfZav2Dfhf7
	ETijb1FtLM8Sc8CyA+XVPbW+hvZa9IuSY9K8GBjD1Lq3RSEB4U7EWEkezyepSPbD2z7tCrI0EatKX
	8o3A4LRxNeNXN/8tOsfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2r-00000006Y5Y-1AmH;
	Thu, 25 Sep 2025 07:05:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2p-00000006Y3t-07vX
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:05:36 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0JS4w017434
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=; b=MbSAvS0zVow1g8SB
	dCD6Wrj/Dj5ZxBSmTELjFC/o5KzQhH2WtjOTiIZKZ4G7NIZdClV6gLwGegD+zWn0
	sxp0o6F1KAhLhwpUrAdp6ozvt5L5xlF9qrottp9K+NDde1Kow3GrcE8R9wwnwCdj
	fzBH6az/dJGa9KCbVQqxrZDLGTdU814+fG6ledNKuD/E+tXULF/XJeXVkj1iE/l3
	eoYRXJQuLItZTrPYbEw5BTADCVvPSy5Cg/EBwpuOrFeAjJFuYqNxyZHHWEl1AKsE
	8F5ooTNACu2Zx8bz1koetcEW24rB+52219cszzzSZRQQKNjq/XVoERn1XA26Auib
	0nVCnw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk0f56-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:34 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3308c669152so189285a91.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783934; x=1759388734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=;
        b=R8YyrerXzCyWDkCLHkPHVBpQTU5kSUhbOgqjnAyZm8BHJIu79bc0TsfApCogqLd360
         2f75s/x0UzqNOVGz6vCgEuwUT4DczRl+QY7u3JkQjVScwb/zEbXlhXWWrJovRd2O4sGZ
         UL2WoSP1WKkHEpcXlreMgmBp7BQm5JcIKoIYn8UAyLLK9maJqQm4MMbGTOYlr67ogFH0
         kYA6/7eu9LVKKJCqck4Nk0UVnj63lPxq/68glkkUAS543KNj9cDybR1uHBCeTKPhdF0x
         xf6MJnNuBTnSFizZJnU5EAzJwsdqUQT7M4+s4/AGXZ30cK06rFdo5B2QeNDwZ236LYNa
         vF1g==
X-Forwarded-Encrypted: i=1; AJvYcCWHVexKjKk4gOYHOM6Yb67as7rhqvVAyN0zCI2G+Y1friKRJkpehw6AWpBhtWx3XH3nApCvOoGVUSQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZjodojtzlHOJ3XWxhY9b6FX6O6GhbU+jKvIYWSymkPHE4kx5e
	hQFhmOz6YioQI6aMjIUniDX6Oncuj9ebV4OsMAnUvpOg6RDhMFzfL+EVyO5wSOa6JaUuutM5xiF
	RhmWpeW2qMsyVoyY60CzSL3h+tqKItvmISlVDxhwYM+iApXOU4merOK7W+n11D+GLKgeN
X-Gm-Gg: ASbGncsrj3K+so1EliTA6WrXPXNU357SR8PVc6s3CqvmEByzTeNmb5Xb/C4qpzpcE8k
	PevjzmzuObhgf42ivfZDs9wrJ7AnXVu/RhJBmYfv6EBQyeFIIq1Rcv+hzXK7s/s+EayMFtGf7R/
	YU0wioFNPWrz3VovX0XMyux3Y26u6Vbg8oQMSrtLdQaHv2zIR6DvJCfrutm/L5orD7UkuHSABRc
	SwJm7wPVh3zNErtSSwwFG2yNq/MqjNx5WYN+qr3CohutGph5dJ1+N16mHpbuGf7MV78BZ141WQ/
	VepKNO00KrXA3uAYnDR9G0FZriqJWuNMm0q9EzSy6/q0lgGzDmGRkuRxfk8QDYOyscleVpeoQaz
	pU1ZftWxOQR3ejKR4mwervFu8HlFzG7+yVTCf2CFbfpRpi6U3EuKNZ43t
X-Received: by 2002:a17:90b:1b49:b0:330:7fd8:9b05 with SMTP id 98e67ed59e1d1-3342a2bee5dmr1274994a91.3.1758783933531;
        Thu, 25 Sep 2025 00:05:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWbAjdQBZAiMN45xOAnu1O/0Q8fViQcyqxGMQuVG8YuznXTgHuRwo+qEPfxecpoHWl6BhETA==
X-Received: by 2002:a17:90b:1b49:b0:330:7fd8:9b05 with SMTP id 98e67ed59e1d1-3342a2bee5dmr1274965a91.3.1758783933042;
        Thu, 25 Sep 2025 00:05:33 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:32 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:48 +0800
Subject: [PATCH v6 02/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-2-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783909; l=5530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=0c1kjfygm3Igs/lmvv1odqP5mBi6xk6AIpYhTadaHr0=;
 b=wjTAycCdmjCTAguPTqc6Notc4zGTXomRPrew/tBieAdqXwRnNKdGtVpPuk0UiYEdeneXzM1yR
 HEzTzE9wDx+BM9J+pO2UIylegwy/x80LQvDKR6wDwGY77jRPxD3osBq
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: e_Mun-f83QPHe6JWsQsvxyS2-8O3RSQ4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX3+Flovy7wK3A
 6wHxw2qkD0/tc7qKU9cjnAMlXyGpru2bJ3pV4hNwDt5sMysgdJA88uO6y7n5cRmg2ekt28uzV6Y
 0hJ8RfCRfSwT5t+Z7d/0RvvHlgXGPOufAVT5R17JU0Pt9O8icg1+mXUfKZP/idg4QE4XkfAB/Jg
 KbYJ6i1MkQ7+/5CQ9JXt9ia+DhDOHxK6XZvCUJBiS75BTjsHwO550ZOCX7tmsh3onALoexBStXk
 LaoPtYkUwX6qrrgaskkIwvGQDnxD39lFnHWMgSzQWdA7Y/HoxRQBFKyKys48Mfp++ufq+FZWLET
 p8cH/YyDMBrImdwtg0fOTIHIwQzqNrmfIeiiIvU4bcfr+QesNCPUppAE0jYete3qfp4okXt41X1
 6L9yG7M4
X-Proofpoint-GUID: e_Mun-f83QPHe6JWsQsvxyS2-8O3RSQ4
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d4e9be cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TrVKeqC-PG4e-vJ_ulQA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000535_084178_FF40C016 
X-CRM114-Status: GOOD (  17.42  )
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

To support following DisplayPort (DP) mode over the Type-C PHY, rename
USB-specific functions and ops to clearly separate them from common or
DP-related logic.

This is a preparatory cleanup to enable USB + DP dual mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 55 ++++++++++++++++----------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a4401c3076960df9c0dcbec7fdef7..62920dd2aed39bbfddd54ba2682e3d45d65a09c8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -342,11 +342,10 @@ struct qmp_usbc {
 
 	struct mutex phy_mutex;
 
+	struct phy *usb_phy;
 	enum phy_mode mode;
 	unsigned int usb_init_count;
 
-	struct phy *phy;
-
 	struct clk_fixed_rate pipe_clk_fixed;
 
 	struct typec_switch_dev *sw;
@@ -454,7 +453,7 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
-static int qmp_usbc_init(struct phy *phy)
+static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -504,7 +503,7 @@ static int qmp_usbc_init(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_exit(struct phy *phy)
+static int qmp_usbc_com_exit(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -518,7 +517,7 @@ static int qmp_usbc_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_usbc_power_on(struct phy *phy)
+static int qmp_usbc_usb_power_on(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -566,7 +565,7 @@ static int qmp_usbc_power_on(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_power_off(struct phy *phy)
+static int qmp_usbc_usb_power_off(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -587,20 +586,20 @@ static int qmp_usbc_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qmp_usbc_enable(struct phy *phy)
+static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
 
-	ret = qmp_usbc_init(phy);
+	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
 
-	ret = qmp_usbc_power_on(phy);
+	ret = qmp_usbc_usb_power_on(phy);
 	if (ret) {
-		qmp_usbc_exit(phy);
+		qmp_usbc_com_exit(phy);
 		goto out_unlock;
 	}
 
@@ -611,19 +610,19 @@ static int qmp_usbc_enable(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_disable(struct phy *phy)
+static int qmp_usbc_usb_disable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	qmp->usb_init_count--;
-	ret = qmp_usbc_power_off(phy);
+	ret = qmp_usbc_usb_power_off(phy);
 	if (ret)
 		return ret;
-	return qmp_usbc_exit(phy);
+	return qmp_usbc_com_exit(phy);
 }
 
-static int qmp_usbc_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+static int qmp_usbc_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 
@@ -632,10 +631,10 @@ static int qmp_usbc_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
-static const struct phy_ops qmp_usbc_phy_ops = {
-	.init		= qmp_usbc_enable,
-	.exit		= qmp_usbc_disable,
-	.set_mode	= qmp_usbc_set_mode,
+static const struct phy_ops qmp_usbc_usb_phy_ops = {
+	.init		= qmp_usbc_usb_enable,
+	.exit		= qmp_usbc_usb_disable,
+	.set_mode	= qmp_usbc_usb_set_mode,
 	.owner		= THIS_MODULE,
 };
 
@@ -690,7 +689,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -710,7 +709,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -865,11 +864,11 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->usb_init_count) {
-		qmp_usbc_power_off(qmp->phy);
-		qmp_usbc_exit(qmp->phy);
+		qmp_usbc_usb_power_off(qmp->usb_phy);
+		qmp_usbc_com_exit(qmp->usb_phy);
 
-		qmp_usbc_init(qmp->phy);
-		qmp_usbc_power_on(qmp->phy);
+		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
 	mutex_unlock(&qmp->phy_mutex);
@@ -1097,14 +1096,14 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_phy_ops);
-	if (IS_ERR(qmp->phy)) {
-		ret = PTR_ERR(qmp->phy);
+	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
+	if (IS_ERR(qmp->usb_phy)) {
+		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
 		goto err_node_put;
 	}
 
-	phy_set_drvdata(qmp->phy, qmp);
+	phy_set_drvdata(qmp->usb_phy, qmp);
 
 	of_node_put(np);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

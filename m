Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58C39CA0EED
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXv+Ukd4lQ7UK/IYk78EZzEFFOfWA46HQ2YgLeIfYgs=; b=QRRMqhSFLD7Q1I
	AoklzQQ6r8kbKM4God2mV+dVkGiV+nF5xiQ0MuJHWdmVh+XlK8cdC6B9peaP7i7++u7JVOIfIZ6Kg
	M6lBLV62DHmR0lSDgFjhVqW8O83htcD9NMMTq1xuPdXyYochlYKBoL25EJkQSLaTw2B0gKeiYSApQ
	3IZSilfNe4Ssku49psOPKmylb8Mto1hm/AKieSutTaZacePFjew9c3HxLA2yIWDkaGc1NJyEnKriw
	hVnprCFT8THmM4pxAVNOUuOA8MlPSRl1lunDh6mVkrJjyEWjTAgQhjuAvK3xqQmYdskBBXOsa5cdZ
	KZZRnHe+NLJ8rSrWm80A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhG-0000000D5Do-0Pvb;
	Wed, 20 Aug 2025 10:05:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofEb-0000000Cx6I-3PEN
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:35:59 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1p2px028580
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KremxR/fdj+4yZkCD6l4YcPqvbUwj0XC7MX02usfcFo=; b=OEBx/f7dojKoO2YA
	fmETBW6HDsxPTnSI5c8CEK+WT7o0wm5viNrzr6Ehf3a8l1wYK+wzVe2eeN4XwGhd
	Qvu4ynm8XgYRBzCZxjBkmS44On+f05EtFlvsnV4sanvVwqkY50BCvEAL+JLi0xHF
	Jt7HSMyonQOikejr028W1jcwBKNBkHi3eKRJvaFJPYDLQOFRxEwaK/GMJG9YF9TF
	Aj54tGShz0o2ueJplP3P4OtF2ahP77Js5RTgdOhnvpVexEwF4YkHPDQhu5ZvcXeC
	XCbYXQdD0cQIfyXFnIeI30meBW0a9tY3scpsdQtdPRifHPj9RqRLkRZ/aM9YmJiZ
	i+VA1A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52as6cc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:35:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2445806a6e3so16536675ad.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682555; x=1756287355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KremxR/fdj+4yZkCD6l4YcPqvbUwj0XC7MX02usfcFo=;
        b=nQmPo8EzBFosax2/KYAcgaSw4JZuyvnv1cHkYRCMOOjEslZrCwkuACZPS0ELX9aILq
         jN/WPRyDqHotfswq65hdnabKS3HQ2taRIHggYS5MsyNnVDX5V3m+SFoblkgH+BqGK37S
         wfl6OO97/IggRMRATWsTSV+p66mxmHHL0xsdZKcU8hTJzci2PbyE8fNwnXq5e+Fk3bXi
         KdPzhTUnptkwbpnuqACVZne6pxRwucBKqS2ULrhpW3+RS3tHUYrT1oVbpuCr5BEgrUMb
         43vk7U7D6gautPZ1a4PLnU+8skYX7VDUx16TYOzxxQpZRqiC2HVRA30W0Qx/9A7CLzv/
         6k5A==
X-Forwarded-Encrypted: i=1; AJvYcCVJTN86ONtPJgb6h188l4Tle6vdOe6H/dDy+pMTYbDtRyu+XVatfKVYFnorfBskeC0BRe67WsOf0yw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKUlVaV+So9Jr52aRr2jBlXQC53Zz8igGjUrt3/E0YYmjZrdNF
	bpxnh7mF7D1nZyVUzmeeRbvaJoETRPfp7bNKsjrd2bBD4MxTKAM0SAFobuGvO39TheQKsjbTHur
	4N0gayo2EWPILTguxkFu5OoWxxArm9EVykfGOLXOKLrBaMXLF7GsJrhMG3FigUlUHvcVd
X-Gm-Gg: ASbGncu7V5ilEpMh9kO+wZ1wqAnN6TnIISOQSrAQ8IW1hJEH/g3W+pQJ0U3l9k2DzLo
	KP9BcrNRztoVy55vGRSDx4/6dnrAaknr6gBqX0cvklwWu3zHGR9ktK6SBh3FIRp+I3fFba9SZ2L
	5HdrxIyRV+oP+f5rikcaAbztKgTAWLzTQxZhmPkleyiB1Co0tXyc69uN4rSnsuXF4RYv9OHbq+6
	6mVt65JbcZjWlQsKbGic6J3b99x4+FXn9VjQvi0tZArqEkU4r6YyCWI54uTWFvEEHFwWcp5exSt
	MCGBYAZzOXFwVDoaCc0tNKLqJgDA+SymUXGRLVo5ArhFkXydtIK/M753XgNqtdYuCwXMf3qmjgh
	hZ4y2NVHdEi5YLcIXFlcU/kJXLmcyeP2Lv2hjhz18uty/ywkStU0Qg3aX
X-Received: by 2002:a17:902:db07:b0:240:8717:e393 with SMTP id d9443c01a7336-245ef1b11a1mr13338195ad.5.1755682555508;
        Wed, 20 Aug 2025 02:35:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOuhWktbrcrDHeFOfst5iEN/rJ7sUVUpNSLrTofNGaNjn7vDoRdUzbp4Tc22bjyNQhKT6XXg==
X-Received: by 2002:a17:902:db07:b0:240:8717:e393 with SMTP id d9443c01a7336-245ef1b11a1mr13338105ad.5.1755682554931;
        Wed, 20 Aug 2025 02:35:54 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:35:54 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:45 +0800
Subject: [PATCH v3 03/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
MIME-Version: 1.0
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-3-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682520; l=5566;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=iBT4igeHspL9hgxnK6l3In281lZLVL/IRtCY/kLzQbg=;
 b=npOAsieBjEiQjezC1X2f6X8bACFkJXRiMeuFJLH8HY8b6LNRqTa6PRVHCn+z6BVwkY4ctBsbv
 BsHOfwvagVbA+x4hKtNIaBpCuXSlDN+5OWBQwrJgCCyMKqJZp20g46A
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXwWT3iUCigweW
 9UBZte8vjJIBt/hn/VsBSyG1Ed6w0vlzq3U7bVl2tuazQWACvrLobZjOz5+PyB28BgLgCzAkxWT
 Un4Is7Fh8oYlkVBDBxq/BQPmwpFYQDAQHgnWxGuCyTwzy30clkz6yhOYvarREQmUUkR/r22jZpR
 PS0BvKg6TRYykItG9+pIg8Azbj7taE7n+Y7rNPo5ua/yZYjBCVSUA01ZwEkOFKATVAJ+/IzsWbu
 3fLgbwUL776UQrk5BKg9E7TSqF6lErsUN+O23QGwusTBSb1rSWWjx/LSX3GY1GFQCQvfDn1fUHB
 3k3y6CDq2Z+4OsXZjaYa6VQU+Y5kQJYRohca+DzKq4FH1fBfkoMwLsSpbuKowNYnvOur1axOUg7
 0OvoPWDjVgIKgM95pCWP4NQu++gVCw==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a596fc cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=1G2GM3MvUDnZ3pEch4IA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: sIt14KP8TEDZcJDzjH4oaw3T7oNNwj_N
X-Proofpoint-GUID: sIt14KP8TEDZcJDzjH4oaw3T7oNNwj_N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_023557_984178_92E31359 
X-CRM114-Status: GOOD (  17.14  )
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

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 50 ++++++++++++++++----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a4401c3076960df9c0dcbec7fdef7..e484caec2be20121cfe287c507b17af28fb9f211 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -454,7 +454,7 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
-static int qmp_usbc_init(struct phy *phy)
+static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -504,7 +504,7 @@ static int qmp_usbc_init(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_exit(struct phy *phy)
+static int qmp_usbc_com_exit(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -518,7 +518,7 @@ static int qmp_usbc_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_usbc_power_on(struct phy *phy)
+static int qmp_usbc_usb_power_on(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -566,7 +566,7 @@ static int qmp_usbc_power_on(struct phy *phy)
 	return ret;
 }
 
-static int qmp_usbc_power_off(struct phy *phy)
+static int qmp_usbc_usb_power_off(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -587,20 +587,20 @@ static int qmp_usbc_power_off(struct phy *phy)
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
 
@@ -611,19 +611,19 @@ static int qmp_usbc_enable(struct phy *phy)
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
 
@@ -632,10 +632,10 @@ static int qmp_usbc_set_mode(struct phy *phy, enum phy_mode mode, int submode)
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
 
@@ -865,11 +865,11 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->usb_init_count) {
-		qmp_usbc_power_off(qmp->phy);
-		qmp_usbc_exit(qmp->phy);
+		qmp_usbc_usb_power_off(qmp->phy);
+		qmp_usbc_com_exit(qmp->phy);
 
-		qmp_usbc_init(qmp->phy);
-		qmp_usbc_power_on(qmp->phy);
+		qmp_usbc_com_init(qmp->phy);
+		qmp_usbc_usb_power_on(qmp->phy);
 	}
 
 	mutex_unlock(&qmp->phy_mutex);
@@ -907,7 +907,7 @@ static int qmp_usbc_typec_switch_register(struct qmp_usbc *qmp)
 }
 #endif
 
-static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np)
+static int qmp_usbc_parse_usb_dt_legacy(struct qmp_usbc *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
 	struct device *dev = qmp->dev;
@@ -969,7 +969,7 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
 	return 0;
 }
 
-static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_usb_dt(struct qmp_usbc *qmp)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1075,10 +1075,10 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	/* Check for legacy binding with child node. */
 	np = of_get_child_by_name(dev->of_node, "phy");
 	if (np) {
-		ret = qmp_usbc_parse_dt_legacy(qmp, np);
+		ret = qmp_usbc_parse_usb_dt_legacy(qmp, np);
 	} else {
 		np = of_node_get(dev->of_node);
-		ret = qmp_usbc_parse_dt(qmp);
+		ret = qmp_usbc_parse_usb_dt(qmp);
 	}
 	if (ret)
 		goto err_node_put;
@@ -1097,7 +1097,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_phy_ops);
+	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
 	if (IS_ERR(qmp->phy)) {
 		ret = PTR_ERR(qmp->phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD3ECAC5AC
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I86euAbg0jkriKeNL0StNO4zkb0ZNp9vfhb/RxQoHr0=; b=a2BuBW80INlyxf
	tH4dXzn1HjnkDUlGvYC5AbxWrwoAZW9O1Zx6Ng7O14uweyF+uwvyKwq5bhUEZ3rbIqHNN/OljX1ED
	EIbQfIfS1jQDKiWX6CFCFBYTZOk1hLmaof707l96+n3YF9PvqCknOr3kZWaaPKVy/KxualzZ3uXQH
	IHpOyG11X+QMQNBOlC8Zz2jUZB2efutox5u+qG5jAcOXKjcCQOOc6anMQ+AkqfRJ6fg8IvECgbesB
	O6woKg5Pfj8yqxTwdyuL3/LrzgaMMi9fM7hHYaoT5YBcngpZEMSZ/BHA33429Is0AZZ7XVsKIL9vQ
	RxJa70dD4Ax7iv79rB7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qb-0000000Gl05-2TKb;
	Fri, 26 Sep 2025 07:26:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qZ-0000000Gkyb-3KBa
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:26:28 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q71Lmc014304
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=; b=Z/jniJ1UlsTGZWrO
	xj+uKz2uTEQNJjyzrJiGfEbVZuEuJWPfjxN6jDFYEBeNP1KXZnw9tqdwQCc7yPEF
	40a50zUys8wnEzXH73q1TLF3kA8K6nzYMaDWQF3Vv1dsduj+UcYLCk0wrgXPD4ki
	LhSMj31/ZoSpv6TIzjSQzjaJilM3Rv2gZh0tYgV+fer73L4RD6Jr40Be6g5i7VIq
	fjOo4H2wqHJPiKpPyHv8ppYAvEPLV1YfdGEb0wLsbMAnY4DfqcI83Ok4yjlUZGIB
	5P4N+ELCDxb0r4xxx7r5/PyWrUh52GDvimwhrBqujjSlOFh1DhIZinuDue74Ybg0
	KWZL/g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rhvwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:27 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26970768df5so4238295ad.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:26:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871586; x=1759476386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDnnPZbDY0CeogNvXqz1T50BX7PocujidnNTMym7C0k=;
        b=p6MSUprgQVPLoT8nRicbynB47oZAGYpBi6pCO3Y+l/+i/BqtjIKrMl1blRKgq/BsO3
         gzbC+j1EqT2UndZO8vT5P6vvsVYeu00gIl3JPM5uD9MdJ/8YZM8jJftPnfsic6OfC77p
         04oppSphsU4yNiXmHeVrSiC/9qeb10Z9Lxiiw/Jje7HtkLmeHx3wKKM9H6fNL7j8G3eB
         wdJEkQ9Y9fFygF+2Kz64kmVIGuYEjYZk9U0DcCJkKp21keQVyypaqMKy7r+zLWb2v8zt
         J+qI8awLHG0kGLk8i0mduQ+/psgbnU9lAO2agNV7h5/97HwJGVSUEWO8RxiC9odAIZnN
         4TlA==
X-Forwarded-Encrypted: i=1; AJvYcCWcOpIeqT5P8OFzpz27IzTP6OB/A4w/BMMljIkc6qs5VL/FU0pOVvg9+u74n3ITgEhRgy5qUnGjKWU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywo9cBQ4uJCdNUl17KapwQfDk/n8FGk27FjrrcJMLojyLyPmSdv
	gKjH/juFhVErS+EvLhXvUzVc1rLtwlwRHP4GBcvAxRMFFi9ruR8WIG9DBcUPWGlWuQ/r0jxaPDE
	MvdeOrM7qnVdpDBY94PU1x8ToXIdkqjlcy7w6vqvZgEZ9Z4z7/dib/wqHerS2f/mojt28
X-Gm-Gg: ASbGncsPiCyTtlVxh8nPhF5IVrZPOHpBhdkwGRxwoTd6NiKKULFv79nDlQ66zzSjYXk
	lzXR5UavCg8+7uzvnZ6PpEjJCgcIzG3bjAgdE10m8mgO7UBXv+dPEBt0/MNqD0nItAQYRK5LHsm
	bMdHhilXI3igsnzE2esP75i57P52uSrOwm7i+4oNBilZS6E8Ju4/dqTwN15Wo0AEOxj3wGrLvrX
	i0JhW9Mwsh/Xl/qqXAGop/kmemsLhyDxiVkR0Njj+40FQLF8atp3pyHiw9/yI9a+zGDkTW5o+Z0
	Gvdz7P4BxVNFg6WVT40XYI/g6sQ5MTI0mm0Qw7e35Sz8UBPmxh9eSVgZSdhBc7bDYdmwtge17Hu
	jE2akbDP+HoEEuUnZUR5gx1Q1VJ7qb0QicIcEP93x8VtXyS4ycSwiFpxO
X-Received: by 2002:a17:902:cf08:b0:27e:da7d:32d2 with SMTP id d9443c01a7336-27eda7d3793mr30320325ad.7.1758871586513;
        Fri, 26 Sep 2025 00:26:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxiFddbFAngGf1XM+qgqpfj3JT8h9WNMtP7aQ5DBj35K+y1oPgxXc4iPIr97dhjyeNzhgjAA==
X-Received: by 2002:a17:902:cf08:b0:27e:da7d:32d2 with SMTP id d9443c01a7336-27eda7d3793mr30320095ad.7.1758871586029;
        Fri, 26 Sep 2025 00:26:26 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:25 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:38 +0800
Subject: [PATCH v7 02/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
MIME-Version: 1.0
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-2-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871562; l=5530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=0c1kjfygm3Igs/lmvv1odqP5mBi6xk6AIpYhTadaHr0=;
 b=qzNO1eXnVdxmYW9uDiezxYD8k/slxmAUVRfxGy3B4wOLxnYujakXy1F8v2+t8hWqAXzQFDyoW
 DjiJhnc58wnBVLu//Pw8A81pvwNsrdPc2y40t6ch5tRkC8FZ069J7mS
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d64023 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TrVKeqC-PG4e-vJ_ulQA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: cFaswksD6k4WFbBHKYkCnEsZdb6kEGNP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX6RiIDUvgqw0u
 DIrWAdND8YZLr3x5Dbr1ZWz/tsJjh0E2By0RQpRF+ZRUEkZg5B3jOaLmMIgmsWCu3mCof2883X1
 XWQ48FnfFcZy59yRJIPyYywJ2WoILO7L2OzDPQAo1lK/fOmGbS3SA/V/j4gsgQ39slE6zkL4yEC
 QTUJXfxTUGRnsleAGgZNrOEX1Jte6U+JjNnQHAgU5sqLLzINot/KV8t9cwIOPRHuRR/HV0soCCb
 ZtYa0fXRw1819z2JLgv3ze7uKFVeRktjEj5qkv06AAR/lR6htmk648XWgOLgb9Gr3FIxEgM2wsa
 dZavRC5gnaF586Avw4Xb6O3hbKV6F8gCUJZY73C578zM5vyt4b8qFP64Z8b0e6HBRBHoNqGp7/c
 B9S2LG8OcpBsPakOISnalMwuPNTuuA==
X-Proofpoint-GUID: cFaswksD6k4WFbBHKYkCnEsZdb6kEGNP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002627_829162_AE467E85 
X-CRM114-Status: GOOD (  16.30  )
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

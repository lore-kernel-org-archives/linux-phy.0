Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F929CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 13:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gGYG2+oa7Ccd3pTA91icFGaiq2ZY+hBWIk7LdTi7rFk=; b=lvYe7e3SCTYPeR
	mdg7zqdnN0zfPT/GPSv86Bsmk3mk/D7ofSMILEbjnWgWxO0r/qFYWI6kxZ2FnIpxp4zCiSSfYSfEi
	ewERO+Zn9nKbS5aXh9wxWXPKCqtVNjJZWighKypJFMpt57dUsy8C18hR/hcDw0ANkobADjk0lqawZ
	SlzeIK4g0XEiDITE/7WeXmAN8emzSWWaAnM69Vw9pRHVV1g7ULFH8VYV79Je/dW3LO/21fcDtT06/
	/R434k9gLbw0Gieowk9PG3tZXVsVZf9CT9rbOcgk/M474stO9iNwJxYYM8XLA9jkTCyoXgskA5jke
	NwV6s8xs7ALT+qbvf6GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0h4W-0000000AazO-19Ie;
	Mon, 22 Sep 2025 13:59:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0h4U-0000000AayZ-0TYZ
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 13:59:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M7pE8N006016
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 13:59:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=IpgB3zPzcPe6
	ZDiYXLYhy9/xVWLJ7IMcJUiL6titr3U=; b=NcG1WwbQKT5c/kFiX2ggTjLYarv/
	WJhPCF98UZabopI8zIer+08xeiB16DEaSQMApiEhEdHhuMrlgBFY0fKZ0ajZSqLj
	aVgQMAzkk1XMTJpVDSnvTRWd/MzPtzeD3ZLXWqwIWmaTnan5951w7XsQ7Uo05ned
	3YQ9RonBValJV20uabY1+2MUFySK2G4Hq+X21JcjlT3i54rqbRm6JNky2hs8cEwQ
	T4yZ95gi+Xo8R6xkXaTZK2w5E01MdwuXwci1XUDHNTSxba3b4vBzP6eeNNomTmsi
	2Y6dBSxgsriIXHZLJzDnsibELdAjeLAWXM4r3BXpDMy7gMHwCBvE4Fl3zg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b2e114ha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 13:59:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2681642efd9so38189905ad.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 06:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758549551; x=1759154351;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IpgB3zPzcPe6ZDiYXLYhy9/xVWLJ7IMcJUiL6titr3U=;
        b=D1lS4s36GY9r1uhuaIvR/xqJ/wWxA32Hhsm94sUQsLKaXjDtCpL0pAdYU48RKmB8gv
         fkgGyJidC5S4x4Q1caBjHSgxhfxkr65OnXeL/kyhBFv2xSvDgCDu26dpGvk4SXyJItkZ
         HlcVi163qksGC1Wm4gQffxZioPF118TAq1eBr5pQkf763Wr+qzKiYJJeID0uhklIA0Rw
         1E+Hz1TP2Kzc5tL1jJzz7/TbNSJ2wjzDMjCQS+ZDJ7J5rQFGKe34bSyK1svDDl9NmPmH
         nzcN6hmHRUQC/xFaNKyNEDgWk4qGmBZwsiO0/TW5ul1e5iQPaIfRBAIer3Oo8sUuavLO
         ArUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO4ZCemeJG0JXLXS7BmGpMmrIwOxVHxFQ1QUeTH1DaCS63bsow1mg8kOBP4oaMlOnbj5cbJIpdozw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5nkvjmOp+wNvBdSFLThfdJnB3Xjb9u7rixOBoD6DpxQNJylx3
	GGBk/f1aB8ysaEFASCn8Fbvuauqkme1aHai7fEtLga46gUXGr6a9E6xbTy3aXBAp+k6L5PafshX
	uPQZ5GRL15aG/8KeusHIpXEuCduEZmpihviIPubmEmBb3FwBSf6Kju/ChNRM59rruRmoHuCZ6+z
	5k
X-Gm-Gg: ASbGncs6YwSxsXOqXgqglXKXz2FVxPmtYXyJXNNuu8f7YkpLfq/iHFES7qZR2YSQRm9
	WwqMPOfwxSsJTSq4+FrkUQqtl3iDwFvie+RPy4PXPZ8SpkHvmpoeEc+TcOjFo4NxeMlCuX3khbC
	dDn1dEo64vShCEa96D1w0/SAR+GMkG/CF88jFHsFG0N2byPvV1n4piLfugsoKP9m0+7atxM3EBN
	1CWWXOQegV8PJ0bQAlSPMBieLgpkI7c8d3MJCbiuSlS142Ay1TYy7NOmpE/tQAZgwZijRWqivhu
	qrVYs9WVGxOZSep9xfecOeSHiH+Q0Ad/j0azjf6kE5PNcjiMsgSpGs54Issv5OJDhhKEK22Q
X-Received: by 2002:a17:903:2284:b0:269:9adf:839 with SMTP id d9443c01a7336-269ba427cb8mr164728085ad.19.1758549550899;
        Mon, 22 Sep 2025 06:59:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7luoA89guXrr9ub3Zh3LgeWzUbhEuNH6u8kg2V5EoIg9JrZytByOaIZkx6xOS635HoUdItA==
X-Received: by 2002:a17:903:2284:b0:269:9adf:839 with SMTP id d9443c01a7336-269ba427cb8mr164727545ad.19.1758549550262;
        Mon, 22 Sep 2025 06:59:10 -0700 (PDT)
Received: from hu-faisalh-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980368fe3sm130638805ad.151.2025.09.22.06.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:59:09 -0700 (PDT)
From: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Konrad Dybcio <quic_kdybcio@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
Subject: [PATCH] phy: qcom-qmp-combo: Use regulator_bulk_data with init_load_uA for regulator setup
Date: Mon, 22 Sep 2025 19:29:01 +0530
Message-Id: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA3NiBTYWx0ZWRfX1eY6ZXRDbrHN
 UGZaYz76aq343WRJmQ8vdbzH8WOSQpZJuMdOzhhxyei+n+pxxFq8XGj4Xd5AQSw9AbHkN/rLuhS
 EcWwcQWPSzSBfHJk4P5R8nXlC8B/jT/DUAQ6I3YsTJFNUOaI6zcrlTht5e1tPJpP54yYp8wpQ3b
 3TpBZaELPI7l53qg7f8vtYTsMBgfd7X+bHgHYv7KZb9kC8criy1K43dF8Chf+jMT+h8NtVMdfzs
 JTlT2nLB43Qql3pzIt4QLlu6EqHIL74+Ekcr3ltxlhkZVhLJ59hr0BbAuhXAjmhwNruI76Cfu/8
 5vh6sDC3GjGWH3z9yXOiiscKCjfG8YKZIg2PDcKAeYN6cQjeVcH1SSYjT3pQ/JBLVmbtpYiDhXA
 BSJaggEJ
X-Proofpoint-ORIG-GUID: IRxkrThBiW5PeQgKro0y7lWZdQXwdBNB
X-Authority-Analysis: v=2.4 cv=HM7DFptv c=1 sm=1 tr=0 ts=68d15630 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=L7zAn2INS1o54O8sslIA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: IRxkrThBiW5PeQgKro0y7lWZdQXwdBNB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_065914_157433_2F6F7311 
X-CRM114-Status: GOOD (  20.05  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Replace the custom qmp_regulator_data structure with the standard
regulator_bulk_data and use the init_load_uA field to set regulator
load during initialization.

This change simplifies the regulator setup by removing manual
allocation and load configuration logic, and leverages
devm_regulator_bulk_get_const() to automatically apply load settings
before enabling regulators.

Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++--------------------
 1 file changed, 6 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f07d097b129f..97262ed63700 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1636,14 +1636,9 @@ static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_usb_tbl[] = {
 };
 
 /* list of regulators */
-struct qmp_regulator_data {
-	const char *name;
-	unsigned int enable_load;
-};
-
-static struct qmp_regulator_data qmp_phy_vreg_l[] = {
-	{ .name = "vdda-phy", .enable_load = 21800 },
-	{ .name = "vdda-pll", .enable_load = 36000 },
+static struct regulator_bulk_data qmp_phy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 21800, },
+	{ .supply = "vdda-pll", .init_load_uA = 36000, },
 };
 
 static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
@@ -1801,7 +1796,7 @@ struct qmp_phy_cfg {
 	const char * const *reset_list;
 	int num_resets;
 	/* regulators to be requested */
-	const struct qmp_regulator_data *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -3403,39 +3398,6 @@ static const struct dev_pm_ops qmp_combo_pm_ops = {
 			   qmp_combo_runtime_resume, NULL)
 };
 
-static int qmp_combo_vreg_init(struct qmp_combo *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
-	int num = cfg->num_vregs;
-	int ret, i;
-
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
-
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i].name;
-
-	ret = devm_regulator_bulk_get(dev, num, qmp->vregs);
-	if (ret) {
-		dev_err(dev, "failed at devm_regulator_bulk_get\n");
-		return ret;
-	}
-
-	for (i = 0; i < num; i++) {
-		ret = regulator_set_load(qmp->vregs[i].consumer,
-					cfg->vreg_list[i].enable_load);
-		if (ret) {
-			dev_err(dev, "failed to set load at %s\n",
-				qmp->vregs[i].supply);
-			return ret;
-		}
-	}
-
-	return 0;
-}
-
 static int qmp_combo_reset_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -4003,7 +3965,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(dev, qmp->cfg->num_vregs,
+					qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

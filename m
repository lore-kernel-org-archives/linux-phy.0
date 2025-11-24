Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D0DFCFD31D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNPkVILmmGjJyBOwFzx1SKasc42wypllcMBUOUC9jFM=; b=TyG6donglcl3a6
	bLYKTyFzq8DX6bQCCQj4uBquUsrtE6wGtGHJLedO7vFGz7x+ruXcsWhcrud+teC6O1s02puTAeSkx
	8QWzi/cbQgOD1B7zOiZqnWrT9ftu/gm7MM/b2bthZKArkkRfkz+s6r1qF5C4pyc0kdFSSqCTuTdnQ
	ysmVTd37PVP687Wq7xI/k0U0/Wo1OAVCpqpu8+P6XMODhyc8OJPccfsow1WWgMJELWLp0wL7aqQP/
	JEI/e5gltFwPVLs9BdS+OXXsggEEQiaEOPxh7hF+VFouPvCmxNlcGZnFSf9MnJTVBP2qHCkPGBwUt
	vVBXLur9JyB3x9PcCLUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSqp-0000000BLM1-2XNa;
	Mon, 24 Nov 2025 09:27:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSq0-0000000BLI8-1faT
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO82rlJ2340719
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OJY7Rj8zcXCk0C9xSYbel9jvd/INPXaMfmQIQcX+9wY=; b=gE9SZfelrcOABPcy
	bPc9JgjFFoyHzhtrBHSuKkjdeZXYEUlPKxARjW91ALOsu+7vA9KgGavU8MRprr+K
	SJb0z5eO7f8qQmdeG40Osk8ZPYsT+r02NzvElnNincKe+VZoqH54cuBnen0e02KG
	heE37+IWWv2uzqTJtJIha+F3RD8hbpYxR4HigA5EssR5PbPvYBXI/IJyhMXZvoSg
	AAcDu/KhVDpaUqXXfwDd5hrD+IbT9jYZyOzKrica/LViaTxn6IEAL4/c+2xeWndc
	3Z9j8oIjL+WtJCqc9LhigVDg9hPQ29k9dAKUezvIXc+Z2ZDzW6qVMrVOm1lop+oL
	HGaG6g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69evdfy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297dde580c8so153557085ad.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976383; x=1764581183; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OJY7Rj8zcXCk0C9xSYbel9jvd/INPXaMfmQIQcX+9wY=;
        b=dLtnEc6KVb3wmWcKyQA9kvAPCKKoMFYezIjAE59agn9xWNg1qkbhtT9fP1FpoyPkLR
         TRw+8CdMx9MonXnSDIz3GfGN/EKFj0E/q1eFYDACfgY8c0T75I6Xzyk1m4y4z/tQTGmW
         TA6SjHLgACzxdkT07WAU7MFCPOzkATMVCLtD7aIeibUG63fVI46HW5cHjHU+ozk7A2Cy
         qR1j498eShf++w/EE/vjIx5rDZpO7UBKpkhSgTp/q7ItExNO91zKoYS53UxNEZGhtfCI
         DlZ2+/P0dEtsUfBljV+lON9eJQfytVjSRdr7rOaX+sXFY7fmG8voBHQ+8lgb7b/auuFH
         RzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976383; x=1764581183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OJY7Rj8zcXCk0C9xSYbel9jvd/INPXaMfmQIQcX+9wY=;
        b=lQkq683IsSzZgIDePS32oZEnCqh+L0UoUHQ4qLq1qD73qc6sHFnnvJJ2D4HSltoXLf
         YU5UgZFgq+BT52nE9uwjvHCjBjC/lUb+LflY4ZMkuiyYlCOGz4fk0e4UVgA1FcFKCuTN
         wHzADLtZR7ySZPTv4f/7usokfEEPQxE992wH/FAmxoUAS7lXCnKpfhrRqWE/1QRNNFXu
         BBbSg+5JxqoxWaFpbfWXeahYsTdCuP4HD0nOhSLSSOpIHxRVDmrZZJz9jFa7oJA6sW6P
         dMjhf/c+iJC2V7MbBdGZgclrtxEtmOORLHw2pK8wMcy4fM+96e1j9gbzHvUI5mvYOe8J
         5bWw==
X-Forwarded-Encrypted: i=1; AJvYcCVsQ8jPTN98uW+jO6uE+sIIphO3khNi/ukTWPXQup9OWb7VgdG90BmEzTTTgBnPCipEd4/i5QSpldc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAkqg3dt7ItigCG+EuyMuSg007PL2HNi1qXXzKWClDD1GV8vHa
	Xh7AtaiAoU7R9zTpW9aSl2UG+HCj6yMcn0DU5NyR5+Mx8itfVzePxUpC7Xc5EKkphCgD+6mQ1Hc
	FQL5cOtwI+mDV/vEnWEXULjcRlaTiIhwtp1FioHzlBMz0rTXVpghwhBketuOukErHO2EjUO4RmS
	d1
X-Gm-Gg: ASbGncvs3KBFLG/rdCX2KaGKu+dFP/NRAoSWOgJ3kpAUDJngG7DQCwwVePPFW3U9K2D
	XvlbnDstoHb1S4GAtwE76BqUBQUqSyRWdMYhnEWzHIijIUCe19fs4yQ1pNJGM+ytf5tHuY1v+Qg
	fiZVRTsxZbbpZOtT8/hEsB1+b2rei98siZfjWuP9F7sD5GknXD+5fOAInj83a6pwgbXtWoCbogs
	XgJEAqUrU1sMpwaEKqOLhAgupSIP7A77zh8HoAGxwX6Ypzx6IiMZm8txMFddUJQ2BVDq2dDD8JL
	kfsaQ8kKsq556LPDUn4XoX1x8VicY0S0dpaO73fI6+Nw9IR/W/xvMQ/BHYeCbd7uAktOaToEOhY
	RVC2u8pH5fW3ZjTWV6cOKtrxlb2U20RbRlSlnXkE=
X-Received: by 2002:a17:903:1a83:b0:295:888e:d204 with SMTP id d9443c01a7336-29b6bf73815mr117612075ad.57.1763976383059;
        Mon, 24 Nov 2025 01:26:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFXiu4X8k99lPstiKTSh++HZ+UDc77Vx174r918bKFVvRjzwR5/PL/BIK0pJ0dX100a60NL+w==
X-Received: by 2002:a17:903:1a83:b0:295:888e:d204 with SMTP id d9443c01a7336-29b6bf73815mr117611775ad.57.1763976382548;
        Mon, 24 Nov 2025 01:26:22 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:22 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:22 +0530
Subject: [PATCH 6/6] phy: qcom: sgmii-eth: add second regulator support
MIME-Version: 1.0
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-6-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=2606;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=DR9ZshB3tCF8ot5jNA0cLJbKXckeVnTyWsQbBdZAI5k=;
 b=mPop2tXPQ4qQaO+f9OHG/yKFpsjo/voNre3K2+Bs/qAos4xoq4jMK5gCGTip9ybAh9MIaJ0vA
 zdvPDtZF5TeDG7YyEdJX+dBP3UlB2SulMGGj0pQ4JPaQQ9NtBb73QFa
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfX7N2OVQ0SXx5S
 FZjRC4LxQdv686xM7RwfdbgJXdMSUnsEd93Rj3bZAkIHRVKTf4Osvphzr8JQbm+x3fC5BJQZvj5
 dfcCWQattKsQQUp+ludesUxZ98jTYbc8goEfadWTG8tmfqtcd2aYTi+mxotKC4opfYR5OA/tLnS
 F8klEiG/FaTxJdiA5MAIRs0VemeuxV6wBcSwTwPoqo1Y4gOGZ1+PdUGI3VrJlNwpB7qSGvKQm/j
 4TSrPV5MA2lFaeZD3DPIYCm7pbvuHVnPxLRhPS40UcVdMFx9PXJiDRtLHUoDegZjCsKFhXCwtLf
 PwqiN8j00Go9iqhlaXZgtgjPrNz9aY1Bn2b5O8V/3t2haMRcS2XBLEQ0Soyy7otmpConaBSNypN
 wdZ1JXEkcNyRtfN745N1eTxGomvnVg==
X-Authority-Analysis: v=2.4 cv=cMjtc1eN c=1 sm=1 tr=0 ts=692424bf cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gIf8zwsM_d9Eo6wCimYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: epvNUgizRwlVMFrXdcMwtIyMOfOh77WM
X-Proofpoint-GUID: epvNUgizRwlVMFrXdcMwtIyMOfOh77WM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0
 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012624_540896_C686C9D9 
X-CRM114-Status: GOOD (  17.97  )
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

The Qualcomm SGMII SerDes PHY requires two regulators to function
properly. If both of these are not enabled, the following error is
observed:
[   77.105651] qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
[   77.113447] qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed

Therefore, add support for handling the additional regulator in the
driver.

Fixes: 601d06277007 ("phy: qcom: add the SGMII SerDes PHY driver")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 5b1c82459c126fe3a046a89601483d8c73090fd3..5044f244762f4bb2318618b83bd94324d445b62d 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -10,6 +10,7 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #include "phy-qcom-qmp-pcs-sgmii.h"
 #include "phy-qcom-qmp-qserdes-com-v5.h"
@@ -26,6 +27,7 @@
 #define QSERDES_COM_C_PLL_LOCKED			BIT(1)
 
 struct qcom_dwmac_sgmii_phy_data {
+	struct regulator *vdda_0p9;
 	struct regmap *regmap;
 	struct clk *refclk;
 	int speed;
@@ -266,9 +268,23 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 
 static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
 {
+	int ret;
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
 
-	return clk_prepare_enable(data->refclk);
+	ret = regulator_enable(data->vdda_0p9);
+	if (ret)
+		goto out_ret;
+
+	ret = clk_prepare_enable(data->refclk);
+	if (ret)
+		goto out_reg_disable;
+
+	return 0;
+
+out_reg_disable:
+	regulator_disable(data->vdda_0p9);
+out_ret:
+	return ret;
 }
 
 static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
@@ -283,6 +299,8 @@ static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
 
 	clk_disable_unprepare(data->refclk);
 
+	regulator_disable(data->vdda_0p9);
+
 	return 0;
 }
 
@@ -343,6 +361,10 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(data->refclk))
 		return PTR_ERR(data->refclk);
 
+	data->vdda_0p9 = devm_regulator_get(dev, "vdda-0p9");
+	if (IS_ERR(data->vdda_0p9))
+		return PTR_ERR(data->vdda_0p9);
+
 	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(provider))
 		return PTR_ERR(provider);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB7CC55196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbGI2xPtiPzKjw4njh7s1J2LBvU80S1SvPRVnyF6ZMA=; b=2MoygsDL3QSYP2
	NuzyNfzXNRSAFaZVP449rrL3B+6ZGTeAdkAn4jMFG1DR4V5jmzBFng5EA5J+HsOtPXc3CzaQN9hHk
	p2znMaM5xDzjLud25Th1FqXD/vQ2tsCZB+SuQSTZjpcTNnNYJjox/jVaadoRTgBiVxFPZJgXqmoWA
	Uute/NqRTLZtdp5TPjFEFJ8DmiaBPPYy54VRo7apnzJBxfV6V5/ngxx+okJmLlG2JP068EtkKeHmh
	27scKL0QWisB/5Vgy6sJ0e0XKrS5OEGjP+0DWrKCtL5Eez0ualHXII8FC8fF7X0i68X8vTREZaP1c
	rYvtZs2xA/PN+Zeb2U9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyL2-00000000RDY-0Rqj;
	Mon, 03 Aug 2026 19:28:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyKz-00000000RDB-3X9H
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:28:39 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673Gw3QP1017660
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JqQJwuVP7Napr8UYEGu1mAZ0Py+bW1mmUtywwgwTT8g=; b=fLddI5L+TJSBGq5J
	zZEO21RN82G8WcgxJAFLh0jY71/7rRv8o2JKuguSPVP2o8/cwmHyEfQ6etD7YtBf
	lieoNJiZPV3tYLdOXBVOf4MYokDGU52tNP1qgCiEORoDgqcn8ea7/kd1igWGnAVy
	6mwLvaiGJUyiqZ8rbwok1uHAGZcbMilogJ40mexkZowY6qDrBzFAebL04iMmJZ6q
	zcRnNnCeWUl4zJ0ZqsMTEiTJzUpQ6laK3Hv9A8/OU5A1sriH9eMtj97iBCznsKI5
	83fZViyntkmr5hUr+pronaOY4ZarzNVGSJl0X7X8fZ8sSF7zD9o/n3P2im9JpuAt
	HGvL4w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftp4r3828-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:28:36 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cab041eced3so5965999a12.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785316; x=1786390116; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JqQJwuVP7Napr8UYEGu1mAZ0Py+bW1mmUtywwgwTT8g=;
        b=ko5294Y5P/K5S9tyj1pbNgonXuZdz532I1UUx1VBeJ3NxwD+v8/SWhQfa+/qdjJt7I
         bNk+u8tx1okGgJeVVKSKq13yFD64/ryLBtaeSIWca6MFfr1Tmi6v3JPDvU+UluDZ73aO
         8QHmtVp+W8ucr5m01V2XUGMwbYrLC340p3ETbgOT4mlOszUj8YF7nUh0F+dGjK4yp3da
         1HXL3lSotU6PYKE6/gucfo7SDnqJNHxtaYKd99R9mGHmIu1XK2WBHdUQ9AYvlAhjSeKO
         8/1zDRsqFK+FmbQmd8dttPt4wCwvRfNLdJKhNHkixzZd2WW5SJ1mx56JTSrUp3DR2VL8
         qEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785316; x=1786390116;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JqQJwuVP7Napr8UYEGu1mAZ0Py+bW1mmUtywwgwTT8g=;
        b=bMfV0xKmEX88VOo3WgynUyc0Z7QWvCy3GsdhUPMsAlMr1/coM51BK4dPpuxx5b4FCl
         jw3zFHBGxJL2ZAAf1/4TtyHq0imGUJ3ilzWInw09dn8t4eSbEs4+md2y6Kh+Jj9YTNJE
         KR+VrVl4AnEussyueFH3XxBX6SKHYk3QTiL8o3jlowBH0iP6zCwZE94WuoHzUHfkt+iS
         gG97d61V5/rzBJLoxzph5M+h/G3+t5xAw31frFgLExubdgrl7DfnPbr+QHtOqb6dx051
         NXzKDLsnpXMktJ9KYUX4IqToF3tVdqYpgU+WI1sWOAxEzwQ4vw72U7XytmT0VrBS0p1t
         m4hw==
X-Forwarded-Encrypted: i=1; AHgh+RoFW1jReRcSzgqYhFaEDuOVPDAY4YT4fwE4q+mzdiiy0ql7a2OeGB2szkJeYGrMK+EeX5XLBzkg5yA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxC20jhuMfDF0brIaRdO4aOEFp4UJk7SZsaAPmDmLjSGcACcf4e
	SfHFY91rZSvJUf8EEqHsWbPjPjqtSvjohOZNYwKCdVdRBDUTi+IsH7bP/PDlX3j8bl8xlZjw/mI
	UmgU79n8W1TLvPV+0roVT6wialNaUf0sZb7wQeiRbuHwpjIfepYpD6+T60bYk+K64HlSy
X-Gm-Gg: AR+sD122DB6GKA/uHFrBdPtInPMPay1bi13GJ8uyb5bY73X6cS1BHLaV4gcKkr7KGAo
	WKkzDRV/OLHYMtcjAnz6F1a5DGVC6g2a9tPs2bv8Hl3fLcsikHWJ0x8XEwqVyBog+ZshSn+M3ce
	C7hj4qG7i0kKgxYNE968rbjZOpc5xWsU/5vNQmc6Woh9bL74dxj9OuzXzAfSmUiZkvxRIq6rg9N
	wU9PmjYJ40wwtlFiG5NUGuiAZnisCl2BGT7AsMHA20r3FxMFZwtnWnLM1b0onlvvY4m5apjKRWZ
	Sexuy3hVsrS49bvNzjefGpHk4DXcxeXYotrhur1UgP9e/9G8NVufQzVoEasx1sVXD6JGlIaOx5C
	JD+1wGHRsgE4bODF80HiMet9QGbkChg==
X-Received: by 2002:a05:6a21:3381:b0:3c3:cc3e:a9 with SMTP id adf61e73a8af0-3c92a4c4143mr12647936637.4.1785785315749;
        Mon, 03 Aug 2026 12:28:35 -0700 (PDT)
X-Received: by 2002:a05:6a21:3381:b0:3c3:cc3e:a9 with SMTP id adf61e73a8af0-3c92a4c4143mr12647904637.4.1785785315347;
        Mon, 03 Aug 2026 12:28:35 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:35 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 00:57:58 +0530
Subject: [PATCH v2 2/6] phy: qcom: sgmii-eth: vote for both voltage rails
 with correct current loads
MIME-Version: 1.0
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-2-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=3607;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=qhtVBX4/vzH6MAbufHtQj060ZOVQJk/k4kNtYtAfTO0=;
 b=aRYO0/dt0yIlbXQkeAfD/ICL46OpEGS8d45uiAcXqSioG2+blgh8ZUMcI3VV9prDFE/7Wfmxr
 Vp2zx8+iMlTDrI7f3ypoUR/Y2iRcx2pTVezE411n3s2FwxZ/COdqXmk
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Authority-Analysis: v=2.4 cv=X9Ri7mTe c=1 sm=1 tr=0 ts=6a70ebe4 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=25a2QmDRLaibZUvL8hIA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: 6hKSoPAZCgpV4Rfaj5Uy1j3uWpTRnoVw
X-Proofpoint-GUID: 6hKSoPAZCgpV4Rfaj5Uy1j3uWpTRnoVw
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX99koYZ6UGaQn
 S60j7qoupAixl9KWw2lvE4yXBX/qvi5u58Mu6mI1SLXUn2zkD2mQ5dGDTOnfoNjPTRHrVh/CMwQ
 p2Kyzh9g0dVxu5xRP+i5pmP0VYkzuXY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX5uPAFNVhttkO
 hK1LrnBpta1/YaA8ezxxqbYK8fH2xMfQGGcAPp2CoemNmoI5co3clpl6NxqylvE326+Oe2ZPm/g
 yAqEfyb51J12OEuBarXjLIpw3fMYtv+KVplpipdnIwXCDfw/Zr0Qc0wZfcuIsp8PCpGIcKNAU3+
 oPTDoLGCM2Xd5TACZ1GmzWNjwOWQ301em2gpyJCEMDVrgcz6MfSf6l7U43USITPO6fKuQcVzQ30
 /0iSyWVrnrkjcf43AF+GIKb2GSaPcCeHaGSy1eOezzHuhTLszibpJkj2vzjs7/liOYfygZFfeQt
 rRGw1q6zEYcAZB+ziQMRfrGHvS4tiH+FXb2FfXwLuzGSVcWM/54OLUqBivXpYwQu/K/rT8aASk/
 RRYYqDRVHKcOa8iFWzHg+ZXv8KbqQLsBYOIZXwF5VWkqJE3T7bjgEoMchUJtpjNYkQCC16gYt16
 yM46ObfpSoiabVyLwkw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122838_006575_D15669AE 
X-CRM114-Status: GOOD (  18.14  )
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

The SerDes PHY has two voltage supply rails, vdda-0p9 and vdda-1p2,
that must both be enabled for calibration to succeed. Without them:

  qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
  qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed

The driver relied solely on the PHY framework's implicit enable of
'phy-supply', which only voted for a single rail and set no current
load. Use devm_regulator_bulk_get_const() to acquire both supplies and
set the peak current loads (46 mA for vdda-0p9, 15 mA for vdda-1p2)
as required by the hardware.

Fixes: 601d06277007 ("phy: qcom: add the SGMII SerDes PHY driver")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 37 +++++++++++++++++++++++++++----
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index f48faa2929a682be6024ee349fac6fd1b6464cb3..7137200c3f310a4d2642bb9bdbe3adb7589b2241 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -11,6 +11,7 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #include "phy-qcom-qmp-pcs-sgmii.h"
 #include "phy-qcom-qmp-qserdes-com-v5.h"
@@ -26,7 +27,15 @@
 #define QSERDES_PCS_SGMIIPHY_READY			BIT(7)
 #define QSERDES_COM_C_PLL_LOCKED			BIT(1)
 
+static const struct regulator_bulk_data qcom_dwmac_sgmii_phy_vregs[] = {
+	{ .supply = "vdda-0p9", .init_load_uA = 46000 },
+	{ .supply = "vdda-1p2", .init_load_uA = 15000 },
+};
+
+#define QCOM_SGMII_NUM_SUPPLIES		ARRAY_SIZE(qcom_dwmac_sgmii_phy_vregs)
+
 struct qcom_dwmac_sgmii_phy_data {
+	struct regulator_bulk_data *vregs;
 	struct regmap *regmap;
 	struct clk *refclk;
 	phy_interface_t interface;
@@ -273,13 +282,24 @@ static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
 	int ret;
 
-	ret = clk_prepare_enable(data->refclk);
-	if (ret < 0)
+	ret = regulator_bulk_enable(QCOM_SGMII_NUM_SUPPLIES, data->vregs);
+	if (ret)
 		return ret;
 
+	ret = clk_prepare_enable(data->refclk);
+	if (ret)
+		goto err_disable_regulators;
+
 	ret = qcom_dwmac_sgmii_phy_calibrate(phy);
-	if (ret < 0)
-		clk_disable_unprepare(data->refclk);
+	if (ret)
+		goto err_disable_clk;
+
+	return 0;
+
+err_disable_clk:
+	clk_disable_unprepare(data->refclk);
+err_disable_regulators:
+	regulator_bulk_disable(QCOM_SGMII_NUM_SUPPLIES, data->vregs);
 
 	return ret;
 }
@@ -296,6 +316,8 @@ static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
 
 	clk_disable_unprepare(data->refclk);
 
+	regulator_bulk_disable(QCOM_SGMII_NUM_SUPPLIES, data->vregs);
+
 	return 0;
 }
 
@@ -357,6 +379,7 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	void __iomem *base;
 	struct phy *phy;
+	int ret;
 
 	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
@@ -381,6 +404,12 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(data->refclk))
 		return PTR_ERR(data->refclk);
 
+	ret = devm_regulator_bulk_get_const(dev, QCOM_SGMII_NUM_SUPPLIES,
+					    qcom_dwmac_sgmii_phy_vregs,
+					    &data->vregs);
+	if (ret)
+		return ret;
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

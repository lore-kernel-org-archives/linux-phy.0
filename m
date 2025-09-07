Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAFABCA1017
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 14:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+34gwm2pzn/c4X6nJi+N4Dc1r8JpqFQjrs0DgXq+Bw=; b=i+Q626FKw0UWLc
	pLw+pci2g/jjsdcZgmSIR5/4+w5q/mViVzLrRrexKfCqqHZPsZ4zv/B4UjMQmHAz9FMPgsrD7q0OE
	ACXcByL+d1jr2ynS12fycP6VypU7AOQX5LeKAmwyJW2x2DYqVpvRj8txzG+zCEvF7ke56ue5aSloN
	fag7X8N/Eu5M7msKITO2c+i04C0kFnY6adX2qiX+kiyPSwB19xuYrjfyV+QUUOtlpi2OSqUvITdzO
	eubtColmATtt+ifZEYRIfH7j95YnbHlwII1WYjHdcC33gUNxIms/Q2i4BwvrYQbOE1LZygQ0qMWBL
	HHHdg6Ek0nwYHMDCeSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkk-0000000BYxP-1rJf;
	Sun, 07 Sep 2025 14:52:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkh-0000000BYvF-3kFx
	for linux-phy@lists.infradead.org;
	Sun, 07 Sep 2025 14:52:25 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587CShsb024658
	for <linux-phy@lists.infradead.org>; Sun, 7 Sep 2025 14:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/XIqAkAydaF2HysR2i0jalHW8uI70wZ4L0rHiq97FcI=; b=WQ0JhCdl+4P26S18
	FL2Q3orsNqAvmDMv4MtfZYaeosQ+UqdW4pYqzlSLU25kqM1PNKUfaRWwx72VLMAg
	xWQruyu+dHb4vyRuNcvxDMO1L6vn/poo7IrZT6FR7Y77RgyzKjj0tZP7w/Rvo3rt
	Dp7NKsmarixj55fVIP9/PybRU4j7DUh83zxs1XngHT2Hp3qzGAPya45hyWYL+8St
	3pvOktQ1hIKoSq2zH4lCRblivAoti5+Dp/qzuWOd4edx7gvKncVG+ilCiP1QwIaD
	sV+aAuDRJSGqx9pDTtJpYf7lFN9zJAVefV8LldnAWCvRABtY/xVoa1AYOZeKMe64
	wYHCRg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a23x8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 14:52:23 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7296c012ec9so36639006d6.2
        for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 07:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757256741; x=1757861541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/XIqAkAydaF2HysR2i0jalHW8uI70wZ4L0rHiq97FcI=;
        b=NHGOhB9fqmYTbm1f7M7pQF4I6pUVFHBHh3zA/DDS29U9MXJNYvJAPhnrR7vLDBRb4V
         yRhUlNJJyfH8JONM+TcugKn54ZrbC9umLMIbpzUOHNDQWaJk+0JHm2JL0DtL7KAkIBou
         7p5pbeIAeoAmBV8r4DzweBsF9sz8RaHkcPS4F0a7e95kV36wy/7/PraPv4Ztpg+nIZ4i
         0w0FjHrSQR0hID32Ec8sRNfg5Jhas6P/cxVv1m0sE9m5z2Kxu4HNS08ftrz2hxxpAdo7
         2p6j+H906DvR+Rpk0BQz2vGLTzaxlkeSeOAqlx5OBT5Ed7T6xgKxQREKERNRhxjqRhsi
         Ul4w==
X-Forwarded-Encrypted: i=1; AJvYcCW+TmgPm6Y9Ki42bOxT1gn+lQYnc9x2w9M9XwR77UlgPVErPuQjw1vfp5CF7IPcrL+O+WdtDioGLQ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwiTCDBuBZcLV/fEE1HXQGu/SKTSX5RrRbbb1UdbN4p5TCI2G/T
	ovQQatLH5HzNpfo66mNWx7Qt8xRNoDeXCe/P0ixXxtvt6szb5AXuE4iZ2WGChPH3pDQ0xdYA7Sw
	04NzfQW7OFPMVU+wpfJDRr5ofTiMCeAKEY6P1Sh2UE0qdsdwtVyZrJdZxIf3iWLXTfh79
X-Gm-Gg: ASbGnctq85H52NhfRdhmzEHWkxSzZO9lYJ3/JELRO7nLflQwvC+D+DK1jUrxGKx56IA
	4vwV6aDCPgRaOUgOzP7RNlCaJ1iTIdp7UvXWg3PatSlQzSulbUAy3Xm+tpMy5baEqwZdJB3FS5x
	DQsSRN++40MXGIQ+q5LNhUJfb97OgmkyJxfBKD8TBaAjLjJ/V5WDmEoizA2u1bSoUxARkS8b9Z4
	33psnlNsW1jVznEzokSflgXZ50e8ucHgghncIb5SgYvLqquSRHtgV51nNx0c5fKikv9zYrK87kF
	VOS7wJmvgGZRot0rT4Krt4WqodnlSCiCGFYGI67qJWTwNmZ2J0tE+d0D4fP2ozFrnrobnTAlvpz
	n1N12MxmIfTQ/oq/y6byj2IE6ZGxuLb5zf9+3a5l5wAOXeLBquXgY
X-Received: by 2002:a05:6214:acf:b0:720:b2a:adf0 with SMTP id 6a1803df08f44-739336399cfmr57253526d6.30.1757256741015;
        Sun, 07 Sep 2025 07:52:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ7BpzdmfRxSJ4iPWNPxFzR24KLl0eNrbDfQ7kNZIkt44v3QFEXN+68rqb20Oo4OxU0W8Rgw==
X-Received: by 2002:a05:6214:acf:b0:720:b2a:adf0 with SMTP id 6a1803df08f44-739336399cfmr57253366d6.30.1757256740346;
        Sun, 07 Sep 2025 07:52:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab939d5sm2936738e87.46.2025.09.07.07.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 07:52:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 07 Sep 2025 17:52:11 +0300
Subject: [PATCH 2/4] phy: qcom: qmp: extract common PIPE clock helpers
MIME-Version: 1.0
Message-Id: <20250907-qcom-dp-phy-v1-2-46634a6a980b@oss.qualcomm.com>
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=23326;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Nf1s/PhEXHXo8aFyYDttuLdpXnvksenJa+qmRK/vJes=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBovZwfCkHF28rSlsLQ9CGbnty7aFu3iBXCT7agh
 5GE3rqn3y2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaL2cHwAKCRCLPIo+Aiko
 1S2YCACsds6BQnyNj7TiVUIHaLJTe9q9ddmYeb++/PKSAKx23+PgtgXweKl8wAmQFB4OO3GnWvq
 CTu/RTyKQ/+cc592NWgEGDff7a8GJItTr7XEwcRcT+0zFlT3R4pIB6ZRkQcb/ukqo0X3Rz++aOi
 Mo5R8h/OIJFD1j6k6lunEFmId5M9MUcXc8AKy9FktOHh+fUZYRTtA7awDcLG5M2ptqLfTMzD3+X
 08YoUfYyoEGAE4U12Pwf3ehyomoIN1BCxA27hYUXmC6amd/bOnca+VLceqk4rG4xN7+EweAxInl
 QRTrsV6piFqWn2H80jWxszrjVvNYtWilYRRCanOU/39KYkeZ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68bd9c27 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=o8b8T06iM2j7pLjo7BIA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 8qU-zaPRA-BjfaxSkd5HZKk46ShEjGwS
X-Proofpoint-ORIG-GUID: 8qU-zaPRA-BjfaxSkd5HZKk46ShEjGwS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX+CZWz7qTm7+c
 ABTqq4HEfNLpvkyz5bkzC3JTRuryiLRJK/3Z1zGcjncP8EO+mRKDPeXagimA05uwUOnJsW/6763
 vJ/gMUv7cDPIHIZe7W/2d67AVMBPurTA2caRnCrDK/G7rIpLNL5eTC+xwu7LTWRsZCYw4ls38l7
 kg1Z7wvrfG9CMxX2d0UJ4VF5r8XoteZYuAFTF26eFFnDXv/kLufhm1G9Qqhpolo3/ECGN4fYKG2
 9xB8C/084mlljahDc1qbIQKmG2yxVmpL1BemtXJyx34sV/JcPWuqSNfFSx8zx7LsjpnyZe5vTi5
 7QF3v1RW5hUt0WVvB6to2dI0tp1FXJ5S4jzVnkvX2gwvapWXskHK0BRVVVF+LQkh0t3Iv36lKJh
 NDA5DvRU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_075223_959387_CBC6666C 
X-CRM114-Status: GOOD (  22.18  )
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

Extract the code common to (almost) all QMP PHY drivers, which handles
the 125 MHz PIPE clock. Drop unused pipe_clk_fixed fields from the QMP
PHY structures, using pipe_clk_hw instead (where required).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 56 +++-----------------
 drivers/phy/qualcomm/phy-qcom-qmp-common.h       | 67 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 62 +---------------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 67 +++---------------------
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c   | 60 +--------------------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 60 +--------------------
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         | 60 +--------------------
 7 files changed, 87 insertions(+), 345 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d028c592500e723ecd27b54ed554709..baf25ae442478ac01a5428fa4268470e6b5211e3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1863,7 +1863,7 @@ struct qmp_combo {
 	unsigned int dp_init_count;
 	bool dp_powered_on;
 
-	struct clk_fixed_rate pipe_clk_fixed;
+	struct clk_hw *pipe_clk_hw;
 	struct clk_hw dp_link_hw;
 	struct clk_hw dp_pixel_hw;
 
@@ -3512,46 +3512,6 @@ static int qmp_combo_clk_init(struct qmp_combo *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
-/*
- * Register a fixed rate pipe clock.
- *
- * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
- * controls it. The <s>_pipe_clk coming out of the GCC is requested
- * by the PHY driver for its operations.
- * We register the <s>_pipe_clksrc here. The gcc driver takes care
- * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
- * Below picture shows this relationship.
- *
- *         +---------------+
- *         |   PHY block   |<<---------------------------------------+
- *         |               |                                         |
- *         |   +-------+   |                   +-----+               |
- *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
- *    clk  |   +-------+   |                   +-----+
- *         +---------------+
- */
-static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
-{
-	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
-	struct clk_init_data init = { };
-	char name[64];
-
-	snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
-	init.name = name;
-	init.ops = &clk_fixed_rate_ops;
-
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
-	fixed->hw.init = &init;
-
-	return devm_clk_hw_register(qmp->dev, &fixed->hw);
-}
-
 /*
  * Display Port PLL driver block diagram for branch clocks
  *
@@ -3724,7 +3684,7 @@ static struct clk_hw *qmp_combo_clk_hw_get(struct of_phandle_args *clkspec, void
 
 	switch (clkspec->args[0]) {
 	case QMP_USB43DP_USB3_PIPE_CLK:
-		return &qmp->pipe_clk_fixed.hw;
+		return qmp->pipe_clk_hw;
 	case QMP_USB43DP_DP_LINK_CLK:
 		return &qmp->dp_link_hw;
 	case QMP_USB43DP_DP_VCO_DIV_CLK:
@@ -3739,9 +3699,9 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 {
 	int ret;
 
-	ret = phy_pipe_clk_register(qmp, usb_np);
-	if (ret)
-		return ret;
+	qmp->pipe_clk_hw = devm_qmp_register_pipe_clock(qmp->dev, usb_np);
+	if (IS_ERR(qmp->pipe_clk_hw))
+		return PTR_ERR(qmp->pipe_clk_hw);
 
 	ret = phy_dp_clks_register(qmp, dp_np);
 	if (ret)
@@ -3757,7 +3717,7 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 	 * Register multiple providers for legacy bindings with child nodes.
 	 */
 	ret = of_clk_add_hw_provider(usb_np, of_clk_hw_simple_get,
-					&qmp->pipe_clk_fixed.hw);
+				     qmp->pipe_clk_hw);
 	if (ret)
 		return ret;
 
@@ -3765,7 +3725,7 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 	 * Roll a devm action because the clock provider is the child node, but
 	 * the child node is not actually a device.
 	 */
-	ret = devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, usb_np);
+	ret = devm_add_action_or_reset(qmp->dev, qmp_clk_release_provider, usb_np);
 	if (ret)
 		return ret;
 
@@ -3773,7 +3733,7 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 	if (ret)
 		return ret;
 
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, dp_np);
+	return devm_add_action_or_reset(qmp->dev, qmp_clk_release_provider, dp_np);
 }
 
 #if IS_ENABLED(CONFIG_TYPEC)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
index b945fc14cecec4ef00143e144cea4e10225d5947..00041892d9ec7a45e21b0b15301ab65ed996bd45 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
@@ -6,6 +6,10 @@
 #ifndef QCOM_PHY_QMP_COMMON_H_
 #define QCOM_PHY_QMP_COMMON_H_
 
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/of.h>
+
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
@@ -59,4 +63,67 @@ static inline void qmp_configure(struct device *dev, void __iomem *base,
 	qmp_configure_lane(dev, base, tbl, num, 0xff);
 }
 
+/*
+ * Register a fixed rate pipe clock.
+ *
+ * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
+ * controls it. The <s>_pipe_clk coming out of the GCC is requested
+ * by the PHY driver for its operations.
+ * We register the <s>_pipe_clksrc here. The gcc driver takes care
+ * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
+ * Below picture shows this relationship.
+ *
+ *         +---------------+
+ *         |   PHY block   |<<---------------------------------------+
+ *         |               |                                         |
+ *         |   +-------+   |                   +-----+               |
+ *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
+ *    clk  |   +-------+   |                   +-----+
+ *         +---------------+
+ */
+static inline struct clk_hw *devm_qmp_register_pipe_clock(struct device *dev,
+							  struct device_node *np)
+{
+	const char *pname = NULL;
+	char name[64];
+
+	/* ignore if the property is not present */
+	if (np)
+		of_property_read_string(np, "clock-output-names", &pname);
+
+	if (!pname) {
+		snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(dev));
+		pname = name;
+	}
+
+	/* controllers using QMP phys use 125MHz pipe clock interface */
+	return devm_clk_hw_register_fixed_rate(dev, pname, NULL, 0, 125000000);
+}
+
+static inline void qmp_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+static inline int devm_qmp_register_pipe_clock_provider(struct device *dev,
+							struct device_node *np)
+{
+	struct clk_hw *fixed;
+	int ret;
+
+	fixed = devm_qmp_register_pipe_clock(dev, np);
+	if (IS_ERR(fixed))
+		return PTR_ERR(fixed);
+
+	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, fixed);
+	if (ret)
+		return ret;
+
+	/*
+	 * Roll a devm action because the clock provider is the child node, but
+	 * the child node is not actually a device.
+	 */
+	return devm_add_action_or_reset(dev, qmp_clk_release_provider, np);
+}
+
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index a7c65cfe31dfb80d8b1058d3c519a324a309d1c2..226d893c198bdce0ecd3d7d31ed65199fc360ecf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -579,66 +579,6 @@ static int qmp_pcie_msm8996_clk_init(struct device *dev, const struct qmp_phy_cf
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
-/*
- * Register a fixed rate pipe clock.
- *
- * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
- * controls it. The <s>_pipe_clk coming out of the GCC is requested
- * by the PHY driver for its operations.
- * We register the <s>_pipe_clksrc here. The gcc driver takes care
- * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
- * Below picture shows this relationship.
- *
- *         +---------------+
- *         |   PHY block   |<<---------------------------------------+
- *         |               |                                         |
- *         |   +-------+   |                   +-----+               |
- *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
- *    clk  |   +-------+   |                   +-----+
- *         +---------------+
- */
-static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
-{
-	struct clk_fixed_rate *fixed;
-	struct clk_init_data init = { };
-	int ret;
-
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
-	}
-
-	fixed = devm_kzalloc(qmp->dev, sizeof(*fixed), GFP_KERNEL);
-	if (!fixed)
-		return -ENOMEM;
-
-	init.ops = &clk_fixed_rate_ops;
-
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
-	fixed->hw.init = &init;
-
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
-}
-
 static const struct phy_ops qmp_pcie_msm8996_ops = {
 	.power_on	= qmp_pcie_msm8996_enable,
 	.power_off	= qmp_pcie_msm8996_disable,
@@ -785,7 +725,7 @@ static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
 		 * Register the pipe clock provided by phy.
 		 * See function description to see details of this pipe clock.
 		 */
-		ret = phy_pipe_clk_register(qmp, child);
+		ret = devm_qmp_register_pipe_clock_provider(dev, child);
 		if (ret) {
 			dev_err(qmp->dev,
 				"failed to register pipe clock source\n");
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 62b1c845b6275d924fa501ac64e69db5f58844aa..dad44cc0648355fc1533c9afd176b7d37cfa9018 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3172,7 +3172,7 @@ struct qmp_pcie {
 	struct phy *phy;
 	int mode;
 
-	struct clk_fixed_rate pipe_clk_fixed;
+	struct clk_hw *pipe_clk_hw;
 	struct clk_fixed_rate aux_clk_fixed;
 };
 
@@ -4789,57 +4789,6 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
-/*
- * Register a fixed rate pipe clock.
- *
- * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
- * controls it. The <s>_pipe_clk coming out of the GCC is requested
- * by the PHY driver for its operations.
- * We register the <s>_pipe_clksrc here. The gcc driver takes care
- * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
- * Below picture shows this relationship.
- *
- *         +---------------+
- *         |   PHY block   |<<---------------------------------------+
- *         |               |                                         |
- *         |   +-------+   |                   +-----+               |
- *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
- *    clk  |   +-------+   |                   +-----+
- *         +---------------+
- */
-static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
-{
-	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
-	struct clk_init_data init = { };
-	int ret;
-
-	ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
-	}
-
-	init.ops = &clk_fixed_rate_ops;
-
-	/*
-	 * Controllers using QMP PHY-s use 125MHz pipe clock interface
-	 * unless other frequency is specified in the PHY config.
-	 */
-	if (qmp->cfg->pipe_clock_rate)
-		fixed->fixed_rate = qmp->cfg->pipe_clock_rate;
-	else
-		fixed->fixed_rate = 125000000;
-
-	fixed->hw.init = &init;
-
-	return devm_clk_hw_register(qmp->dev, &fixed->hw);
-}
-
 /*
  * Register a fixed rate PHY aux clock.
  *
@@ -4881,11 +4830,11 @@ static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void
 
 	/* Support legacy bindings */
 	if (!clkspec->args_count)
-		return &qmp->pipe_clk_fixed.hw;
+		return qmp->pipe_clk_hw;
 
 	switch (clkspec->args[0]) {
 	case QMP_PCIE_PIPE_CLK:
-		return &qmp->pipe_clk_fixed.hw;
+		return qmp->pipe_clk_hw;
 	case QMP_PCIE_PHY_AUX_CLK:
 		return &qmp->aux_clk_fixed.hw;
 	}
@@ -4897,9 +4846,9 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
 {
 	int ret;
 
-	ret = phy_pipe_clk_register(qmp, np);
-	if (ret)
-		return ret;
+	qmp->pipe_clk_hw = devm_qmp_register_pipe_clock(qmp->dev, np);
+	if (IS_ERR(qmp->pipe_clk_hw))
+		return PTR_ERR(qmp->pipe_clk_hw);
 
 	if (qmp->cfg->aux_clock_rate) {
 		ret = phy_aux_clk_register(qmp, np);
@@ -4910,7 +4859,7 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
 		if (ret)
 			return ret;
 	} else {
-		ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
+		ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, qmp->pipe_clk_hw);
 		if (ret)
 			return ret;
 	}
@@ -4919,7 +4868,7 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
 	 * Roll a devm action because the clock provider is the child node, but
 	 * the child node is not actually a device.
 	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+	return devm_add_action_or_reset(qmp->dev, qmp_clk_release_provider, np);
 }
 
 static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index ddb52c1812dd02e15a840deee934c849405c2a98..0e775671054ed02024d01e3a11c6d3e2f973a097 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -521,8 +521,6 @@ struct qmp_usb {
 	enum phy_mode mode;
 
 	struct phy *phy;
-
-	struct clk_fixed_rate pipe_clk_fixed;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -1043,62 +1041,6 @@ static int qmp_usb_legacy_clk_init(struct qmp_usb *qmp)
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
-/*
- * Register a fixed rate pipe clock.
- *
- * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
- * controls it. The <s>_pipe_clk coming out of the GCC is requested
- * by the PHY driver for its operations.
- * We register the <s>_pipe_clksrc here. The gcc driver takes care
- * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
- * Below picture shows this relationship.
- *
- *         +---------------+
- *         |   PHY block   |<<---------------------------------------+
- *         |               |                                         |
- *         |   +-------+   |                   +-----+               |
- *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
- *    clk  |   +-------+   |                   +-----+
- *         +---------------+
- */
-static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
-{
-	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
-	struct clk_init_data init = { };
-	int ret;
-
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
-	}
-
-	init.ops = &clk_fixed_rate_ops;
-
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
-	fixed->hw.init = &init;
-
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
-}
-
 static int qmp_usb_legacy_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
@@ -1239,7 +1181,7 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = devm_qmp_register_pipe_clock_provider(dev, np);
 	if (ret)
 		goto err_node_put;
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ed646a7e705ba3259708775ed5fedbbbada13735..7040b53e482d667f90eef09e3c4a93cb6c01f934 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1301,8 +1301,6 @@ struct qmp_usb {
 	enum phy_mode mode;
 
 	struct phy *phy;
-
-	struct clk_fixed_rate pipe_clk_fixed;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -2046,62 +2044,6 @@ static int qmp_usb_clk_init(struct qmp_usb *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
-/*
- * Register a fixed rate pipe clock.
- *
- * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
- * controls it. The <s>_pipe_clk coming out of the GCC is requested
- * by the PHY driver for its operations.
- * We register the <s>_pipe_clksrc here. The gcc driver takes care
- * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
- * Below picture shows this relationship.
- *
- *         +---------------+
- *         |   PHY block   |<<---------------------------------------+
- *         |               |                                         |
- *         |   +-------+   |                   +-----+               |
- *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
- *    clk  |   +-------+   |                   +-----+
- *         +---------------+
- */
-static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
-{
-	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
-	struct clk_init_data init = { };
-	int ret;
-
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
-	}
-
-	init.ops = &clk_fixed_rate_ops;
-
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
-	fixed->hw.init = &init;
-
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
-}
-
 static void __iomem *qmp_usb_iomap(struct device *dev, struct device_node *np,
 					int index, bool exclusive)
 {
@@ -2276,7 +2218,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = devm_qmp_register_pipe_clock_provider(dev, np);
 	if (ret)
 		goto err_node_put;
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a4401c3076960df9c0dcbec7fdef7..83f3011a93c0cd53f59a1a45406bf4d9107e7ea9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -347,8 +347,6 @@ struct qmp_usbc {
 
 	struct phy *phy;
 
-	struct clk_fixed_rate pipe_clk_fixed;
-
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
@@ -796,62 +794,6 @@ static int qmp_usbc_clk_init(struct qmp_usbc *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
-/*
- * Register a fixed rate pipe clock.
- *
- * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
- * controls it. The <s>_pipe_clk coming out of the GCC is requested
- * by the PHY driver for its operations.
- * We register the <s>_pipe_clksrc here. The gcc driver takes care
- * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
- * Below picture shows this relationship.
- *
- *         +---------------+
- *         |   PHY block   |<<---------------------------------------+
- *         |               |                                         |
- *         |   +-------+   |                   +-----+               |
- *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
- *    clk  |   +-------+   |                   +-----+
- *         +---------------+
- */
-static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
-{
-	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
-	struct clk_init_data init = { };
-	int ret;
-
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
-	}
-
-	init.ops = &clk_fixed_rate_ops;
-
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
-	fixed->hw.init = &init;
-
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
-}
-
 #if IS_ENABLED(CONFIG_TYPEC)
 static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 				      enum typec_orientation orientation)
@@ -1093,7 +1035,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = devm_qmp_register_pipe_clock_provider(dev, np);
 	if (ret)
 		goto err_node_put;
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

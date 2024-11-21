Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BB80D75BCE
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 07:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=19Kkz0YDtT4xIjf50b2jiKJwutWUJOKn0lgXhFvJ9wo=; b=ifbLnan0CjFXiD
	4RdWDdRRm8Py8FRVlpnKt9Kl1RKEHfoY2cCeL9mxXdiTlolix4K8eGQMX1AuV0pphz4VaseD+5/Sa
	vkUopW5VIf4NnJnTkKniSVsVVN3l4rUmrykhx7x2HG2iShP/ZAV/ERmUwqEdGwqi1wJpLrl70R0w+
	KKVtAj2r0wX6WCXo8fMW9IP+liHwPRrGeOtFi9R25q/DQb/rVtFEwqZ2mhijCAOPqDg9xTazfQQj+
	py3FWBCCBlDLLfkCONL4ifeNEnlUBmBGN5Fz9UsiOsy0EA+PQCRcWnWWdO0jtAwWvRZaL6dG2wJTA
	7wajLGgjFa7OUuJve+CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE25i-0000000H3Cd-0GJw;
	Thu, 21 Nov 2024 07:59:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE25f-0000000H3C6-0bgX
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 07:59:04 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AKKJ5jJ027894;
	Thu, 21 Nov 2024 07:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I8FCDuix0GwE2yWfMlFAyq
	YgP9OxlIbYKv3b2drAJEM=; b=XOJu3lr+qt7u+T8MJdi0U2ZJ1pZhZ3scd0zmMK
	7eFz9avUxEw7y69bfSDFHQxF50yE3pwjDY4aZ2vJ0V+L6j/2FvP51GCPYKZwrLPE
	3U1/8kNan5gOCs7q9hynEyM9ybfPzavUG80gRnvt9/xvOT1PS0qnzISdCjJYEtGv
	GyInvthz8oT0EIGnFNerz9m9C89AZNWSzjPfnHrX/5eURlXfXaFgaf50eVbzQLBO
	su6rWposSDK6tuEGnVrWc+9oghRC+IMEcEn84lXyuvMRShsgQqUptfQg+vX4jzlG
	oovoz0IjtsVHoD/wIESBCetyOFonJeB7+uOOijHPBK/GOfRg==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 431bv7b875-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 07:58:30 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AL7wUxB011784
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 07:58:30 GMT
Received: from songxue-gv.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 20 Nov 2024 23:58:25 -0800
From: Song Xue <quic_songxue@quicinc.com>
Date: Thu, 21 Nov 2024 15:58:01 +0800
Subject: [PATCH] phy: qcom-qusb2: Add regulator_set_load to Qualcomm usb
 phy
MIME-Version: 1.0
Message-ID: <20241121-add_set_load_to_qusb_phy-v1-1-0f44f3a3290e@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAAjoPmcC/x3M0QqDMAxA0V+RPK9gOqHor4wROpPOgFjXuLEh/
 rtlj+fh3h1MiorB0OxQ5KOmeanASwPjFJenOOVq8K3vED26yEwmG805Mm2ZXm970Dr9HOPVhzH
 0ISWBmq9Fkn7/69v9OE69lulpagAAAA==
X-Change-ID: 20241121-add_set_load_to_qusb_phy-d1327c797ffe
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Vivek Gautam
	<vivek.gautam@codeaurora.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Song Xue
	<quic_songxue@quicinc.com>
X-Mailer: b4 0.15-dev-88a27
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732175905; l=2218;
 i=quic_songxue@quicinc.com; s=20240911; h=from:subject:message-id;
 bh=fRiQA/tdBCCPMAtcDZ1TAD60Fufb2UnSDty8EVB3r2Q=;
 b=QE4xzVkomZGKYuoOvVbN4ZmgmkPzvYRRe9E06Z/wcBYy/MjzHUKJbKOKY1B3IY+mKA1C1llYJ
 Q9xf/PTQNapD18L8K77QnA91ABfN++yNCLbLPwDubp3uXwF9p6hkCZi
X-Developer-Key: i=quic_songxue@quicinc.com; a=ed25519;
 pk=Z6tjs+BBbyg1kYqhBq0EfW2Pl/yZdOPXutG9TOVA1yc=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: LCYw176aD29ioRy7rscdDA94CEEIechv
X-Proofpoint-GUID: LCYw176aD29ioRy7rscdDA94CEEIechv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 mlxscore=0 spamscore=0 mlxlogscore=999 impostorscore=0 phishscore=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411210061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_235903_197551_0AAA7868 
X-CRM114-Status: GOOD (  15.94  )
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

Set the current load before enable regulator supplies at QUSB phy.

Encountered one issue where the board powered down instantly once the UVC
camera was attached to USB port while adding host mode on usb port and
testing a UVC camera with the driver on QCS615 platform. The extensible
boot loader mentioned that OCP(Over Current Protection) occurred at LDO12
from regulators-0 upon powered on board again. That indicates that the
current load set for QUSB phy, which use the regulator supply, is lower
than expected.

As per QUSB spec, set the maximum current load at 30mA to avoid overcurrent
load when attach a device to the USB port.

---
Fixes: 937e17f36a32 ("phy: qcom-qusb2: Power-on PHY before initialization")
Signed-off-by: Song Xue <quic_songxue@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index c52655a383cef008552ed4533b9f31d1cbf34a13..80f0d17c42717e843937255a9a780bbae5998535 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -722,16 +722,27 @@ static int __maybe_unused qusb2_phy_runtime_resume(struct device *dev)
 	return ret;
 }
 
+#define QUSB2PHY_HPM_LOAD 30000 /*uA*/
+
 static int qusb2_phy_init(struct phy *phy)
 {
 	struct qusb2_phy *qphy = phy_get_drvdata(phy);
 	const struct qusb2_phy_cfg *cfg = qphy->cfg;
 	unsigned int val = 0;
 	unsigned int clk_scheme;
-	int ret;
+	int ret, i;
 
 	dev_vdbg(&phy->dev, "%s(): Initializing QUSB2 phy\n", __func__);
 
+	/* set the current load */
+	for (i = 0; i < ARRAY_SIZE(qphy->vregs); i++) {
+		ret = regulator_set_load(qphy->vregs[i].consumer, QUSB2PHY_HPM_LOAD);
+		if (ret) {
+			dev_err(&phy->dev, "failed to set load at %s\n", qphy->vregs[i].supply);
+			return ret;
+		}
+	}
+
 	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
 	if (ret)

---
base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
change-id: 20241121-add_set_load_to_qusb_phy-d1327c797ffe

Best regards,
-- 
Song Xue <quic_songxue@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

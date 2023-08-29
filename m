Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03499C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 13:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kklb+cToXlRFPKRnEXOAfXcnYPshX/hKPfOL+MGhOLc=; b=zc3alV9GpTCKK0
	z6s1jvCNTdD0rH55yXA5XIDwrlFV13AgKVnzOOrV57k6MFWI+RcvyrNgnVXtefi7NmPyZm0mRcR7y
	Mms7h9FZTXGM95oWGCHS4RrvcRup27Ss7+YqKzpww9Rxzzrv+/vdvPpH/Zx7OEbFwQ1u6rbwqQ7nS
	VsapgDNkEdedHN+21U4YwJEbLca99OJsS7T/Z+9dbKuVp8tQYlbfkib1kkabDqYvv/EnefV1Tn2EW
	kk6+w1E9e2/q5kJZMFcI2hH8YkC1YUKNGn7/PzGFTawhXj0Z8YSusHyszAhKr/7+l24DkcjLCnQoi
	h8w/GEqwY0Uh6Qd60XKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFO-00BecG-2I;
	Tue, 29 Aug 2023 13:59:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFJ-00BebO-2q;
	Tue, 29 Aug 2023 13:59:07 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37TBvbRQ009117;
	Tue, 29 Aug 2023 13:58:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=h6LCmQBCZjYiUZTFKUb5sVImFewIAym44AztjmzSBYw=;
 b=VEZuhekY3A7olexkjpPob2/b7VKY0q1TdBD+TWahZZbzPCk2ENCg5NfJtzSV9uFEbjOx
 v+OADOmNkhhYcn7Qvk/oGGdHaT8fDD/wsCZgPqJMrIx30PD3tnUaQJfkDlQiIgGMY7gY
 8Ts03ESPBWKA5eK11yptmaN7F9biIzmYBqXDbDXZQStz1iTdU43crrSmoREO6bybrs5G
 PKiKft+de7whVH8lBH5ytkrQI+wtDxJQwMSVtF7qIcqXcBw0N0TLzElVtZ3wP2sUo4YC
 Q98/4FgaSwow84HTGxZrLIyxXx4M9WMaRrc+6fw6BDr1sZ0saMp9QYYlNtDFaxFJGudt bg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss4wq1k32-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:58:54 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37TDwqFV001896
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:58:52 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 29 Aug 2023 06:58:45 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <quic_ipkumar@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
Subject: [PATCH 2/9] phy: qcom: uniphy: Rename ipq4019 USB phy driver to UNIPHY driver
Date: Tue, 29 Aug 2023 19:28:11 +0530
Message-ID: <20230829135818.2219438-3-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: SqdI_HzsLN3j1btFwZkiniH7JqPuL-Rl
X-Proofpoint-ORIG-GUID: SqdI_HzsLN3j1btFwZkiniH7JqPuL-Rl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_11,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0 adultscore=0
 mlxlogscore=927 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308290120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_065906_034761_AB95B8A3 
X-CRM114-Status: GOOD (  16.94  )
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

UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
ipq4019 PHY. Hence renaming this driver to uniphy driver and can be
used for other SoC's which are having the similar UNIPHY.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
 MAINTAINERS                                                | 7 ++++---
 drivers/phy/qualcomm/Kconfig                               | 7 ++++---
 drivers/phy/qualcomm/Makefile                              | 2 +-
 .../qualcomm/{phy-qcom-ipq4019-usb.c => phy-qcom-uniphy.c} | 0
 4 files changed, 9 insertions(+), 7 deletions(-)
 rename drivers/phy/qualcomm/{phy-qcom-ipq4019-usb.c => phy-qcom-uniphy.c} (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index ff1f273b4f36..7f4553c1a69a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17774,13 +17774,14 @@ F:	Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
 F:	drivers/mailbox/qcom-ipcc.c
 F:	include/dt-bindings/mailbox/qcom-ipcc.h
 
-QUALCOMM IPQ4019 USB PHY DRIVER
+QUALCOMM UNIPHY DRIVER
 M:	Robert Marko <robert.marko@sartura.hr>
 M:	Luka Perkov <luka.perkov@sartura.hr>
+M:	Praveenkumar I <quic_ipkumar@quicinc.com>
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
-F:	drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
+F:	Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
+F:	drivers/phy/qualcomm/phy-qcom-uniphy.c
 
 QUALCOMM IPQ4019 VQMMC REGULATOR DRIVER
 M:	Robert Marko <robert.marko@sartura.hr>
diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index d891058b7c39..e6981bc212b3 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -28,12 +28,13 @@ config PHY_QCOM_EDP
 	  Enable this driver to support the Qualcomm eDP PHY found in various
 	  Qualcomm chipsets.
 
-config PHY_QCOM_IPQ4019_USB
-	tristate "Qualcomm IPQ4019 USB PHY driver"
+config PHY_QCOM_UNIPHY
+	tristate "Qualcomm UNIPHY driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
 	select GENERIC_PHY
 	help
-	  Support for the USB PHY-s on Qualcomm IPQ40xx SoC-s.
+	  Enable this driver to support the Qualcomm UNIPHY found in various
+	  Qualcomm chipsets.
 
 config PHY_QCOM_IPQ806X_SATA
 	tristate "Qualcomm IPQ806x SATA SerDes/PHY driver"
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index ffd609ac6233..7460e1a427d2 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -2,7 +2,7 @@
 obj-$(CONFIG_PHY_ATH79_USB)		+= phy-ath79-usb.o
 obj-$(CONFIG_PHY_QCOM_APQ8064_SATA)	+= phy-qcom-apq8064-sata.o
 obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
-obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
+obj-$(CONFIG_PHY_QCOM_UNIPHY)		+= phy-qcom-uniphy.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_M31_USB)		+= phy-qcom-m31.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
diff --git a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c b/drivers/phy/qualcomm/phy-qcom-uniphy.c
similarity index 100%
rename from drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
rename to drivers/phy/qualcomm/phy-qcom-uniphy.c
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

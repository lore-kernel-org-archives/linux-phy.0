Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36CDBCCA47B
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 02:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YiSOty0meDaSxeGapUXBltnLYEJq9UUGP75vlttQc/I=; b=yJgJlan1K1DOmV
	tJbg8ro7GZCkYy8oHkGVFwoBK3vMKn4KiuVHpA2cUwgIP0x7f/G4pGm6H6lHKwrlwuJuW3UbYSGBY
	P/f5MQRG0XIMGELQsfIkkWed6PlQqJASr0lkuso4W6poqudyfXpHdKhXTltKmfou7wwhnaJwF257O
	95NVxC4k29pZf3onc4A+IKbsjcw2vmwKZBs9GbV6GCpZRUR0mp2HBJZfgmrxcLYASI5V45vWKpCA1
	NUBnjtm86B/RVgy/JeePTaifw8DlkJoPRXlIH8pNk5EIGjMFckVxncebCYC8s+5aYcSYQbJAkOuRX
	r3NcPWLE5Ap/4XuG9enw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwwpz-005Tnx-Fb; Fri, 03 Jun 2022 02:14:55 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwwpw-005Tmy-Cf
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 02:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1654222492; x=1685758492;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=qSqyxUGSBvwO+iIfAgD4DbrPTpHhtxYDB+NXlueOkUk=;
  b=vRYSCot7jF8BT3gU72B3h9NsMzOzk4TAauGYgIX25871WcwfRFL7DfMu
   lMjxi+ucP0cZHxyK/pT3J4cnjUP2VTwRiYbRfBT2lybz4M9ZJ3uhpOhTg
   4HtmzsGEKi0pkcbW+uxw0BBLYtwig/klZY9NcHgrBoj5JTEASU+GMgZY6
   A=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 02 Jun 2022 19:14:45 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2022 19:14:45 -0700
Received: from nalasex01b.na.qualcomm.com (10.47.209.197) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 2 Jun 2022 19:14:44 -0700
Received: from hu-wcheng-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 2 Jun 2022 19:14:44 -0700
From: Wesley Cheng <quic_wcheng@quicinc.com>
To: <krzysztof.kozlowski+dt@linaro.org>, <lgirdwood@gmail.com>,
	<broonie@kernel.org>, <gregkh@linuxfoundation.org>,
	<bjorn.andersson@linaro.org>, <kishon@ti.com>, <robh+dt@kernel.org>,
	<agross@kernel.org>, <vkoul@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <quic_jackp@quicinc.com>, Wesley Cheng
	<quic_wcheng@quicinc.com>
Subject: [PATCH] dt-bindings: Update QCOM USB subsystem maintainer information
Date: Thu, 2 Jun 2022 19:14:32 -0700
Message-ID: <20220603021432.13365-1-quic_wcheng@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_191452_497176_F14B8D80 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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

Update devicetree binding files with the proper maintainer, and updated
contact email.

Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 2 +-
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml       | 2 +-
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml         | 2 +-
 .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml  | 2 +-
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml            | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 60dc27834e1d..b078009ed509 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Qualcomm QMP USB3 DP PHY controller
 
 maintainers:
-  - Manu Gautam <mgautam@codeaurora.org>
+  - Wesley Cheng <quic_wcheng@quicinc.com>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 0ab3dad3f121..d68ab49345b8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Qualcomm QUSB2 phy controller
 
 maintainers:
-  - Manu Gautam <mgautam@codeaurora.org>
+  - Wesley Cheng <quic_wcheng@quicinc.com>
 
 description:
   QUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 1ce251de0855..7a0e6a9854da 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -7,7 +7,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Qualcomm Synopsys Femto High-Speed USB PHY V2
 
 maintainers:
-  - Wesley Cheng <wcheng@codeaurora.org>
+  - Wesley Cheng <quic_wcheng@quicinc.com>
 
 description: |
   Qualcomm High-Speed USB PHY
diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
index 12ed98c28aaa..dbe78cd4adba 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: The Qualcomm PMIC VBUS output regulator driver
 
 maintainers:
-  - Wesley Cheng <wcheng@codeaurora.org>
+  - Wesley Cheng <quic_wcheng@quicinc.com>
 
 description: |
   This regulator driver controls the VBUS output by the Qualcomm PMIC.  This
diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index e336fe2e03cc..749e1963ddbb 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm SuperSpeed DWC3 USB SoC controller
 
 maintainers:
-  - Manu Gautam <mgautam@codeaurora.org>
+  - Wesley Cheng <quic_wcheng@quicinc.com>
 
 properties:
   compatible:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

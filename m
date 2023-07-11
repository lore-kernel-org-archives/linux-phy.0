Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DBADEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 08:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=er+C0cuHwy2NV+2B1TPY2obNntIFnTfPJZfPfX2xk30=; b=gFXZuuEUUGpjbV
	3/BmdlS4v2so3sRQUAEvsdNjW/HyXfCVvKsXvJkvsfQ1hu3kTohVBw5fm8YQtdIYkxzi6tSrUUzbh
	gigAJvRRlYT4PZ2bEBcbVCtq8HrIN/vbOnEpr/WanOj5DG5xJZJeqcy8XXwLFhW0rXhVzOm2aoEjR
	Y+lfzguYUEKSESdPEKZD536Jpy8yG2mFIY1Jqx1jVHQ/VYQDF+ikdNyE0qy2qTvulLOZelnMuFDh4
	JcI4ZxFKGXoBvdkVlm6l2W77pDL40Wr0fd1NfCyxb2LOfrZCQmntIQNtu1mKXv41iglZkvCP8IN0w
	29EDdUg1nczTZddpUcKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ96d-00EAu7-2A;
	Tue, 11 Jul 2023 08:52:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ96a-00EAtG-33;
	Tue, 11 Jul 2023 08:52:22 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36B6VlHp014648;
	Tue, 11 Jul 2023 08:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=+8b57zQ4pEjMUHDbw5SDvUkRPp3ZddnuAnUlZFYVFOM=;
 b=pTVoJgyBs0wnRF5h2ogCGcjYxzBY/3f5jdwNS8GQw7InzgAtnnk2o7tlCiWoVibvAedh
 K/vIGWM2mqQ6iW3l7hhMQLTly2PTC6pfnUBlIHZbQ9tFRpVGpptn8gSmA/iCXpf9Oakc
 0MJ+jO/hYhRo/cITwkCmIwPZs3PBu6JouR18xsUMZwNUIvzYhNtIopM64RXvjKvD4Nq0
 PdGJihEnw1qeOo8fguCb2Dbhi1NPHHjsnEkt7aSE7TRpt1haLl4ZEBlbrU0cFzBvgXLq
 sg2oSQt0sXRqR2tlyG99vCHO2qx6Rbw0zYbG/t+7OjrIPMKvoK4+5cB8I/iLwCnyomkA aQ== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rs1mnra5u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Jul 2023 08:52:08 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 36B8q7Uk017497
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Jul 2023 08:52:07 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 11 Jul 2023 01:51:59 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <broonie@kernel.org>, <rafal@milecki.pl>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v3 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
Date: Tue, 11 Jul 2023 14:21:08 +0530
Message-ID: <77fe66271044a18871e1dfb80bbb481617197d18.1689065318.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1689065318.git.quic_varada@quicinc.com>
References: <cover.1689065318.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: OpErZ2xAMTxhGd1g04IXjDs-bbZMLqVP
X-Proofpoint-GUID: OpErZ2xAMTxhGd1g04IXjDs-bbZMLqVP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-11_04,2023-07-06_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307110078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_015221_099642_8B52B8C4 
X-CRM114-Status: GOOD (  17.45  )
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

Document the M31 USB2 phy present in IPQ5332.

Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v3:
	Incorporate review comments. Will bring in ipq5018 compatible
	string while posting ipq5018 usb patchset.

v1:
	Rename qcom,m31.yaml -> qcom,ipq5332-usb-hsphy.yaml
	Drop default binding "m31,usb-hsphy"
	Add clock
	Remove 'oneOf' from compatible
	Remove 'qscratch' region from register space as it is not needed
	Remove reset-names
	Fix the example definition
---
 .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
new file mode 100644
index 0000000..2cfdd73
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: M31 (https://www.m31tech.com) USB PHY
+
+maintainers:
+  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
+  - Varadarajan Narayanan <quic_varada@quicinc.org>
+
+description:
+  USB M31 PHY found in Qualcomm IPQ5018, IPQ5332 SoCs.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq5332-usb-hsphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    maxItems: 1
+    contains:
+      items:
+        - const: cfg_ahb
+
+  resets:
+    maxItems: 1
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
+    usbphy0: ipq5332-hsphy@7b000 {
+        compatible = "qcom,ipq5332-usb-hsphy";
+        reg = <0x0007b000 0x12c>;
+
+        clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
+        clock-names = "cfg_ahb";
+
+        resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
+    };
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFFB8C77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 03:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXYCYxQh2q39kP5xA7sBp5XjtIQdMjOY1+fKH6VO4GY=; b=z958GNlteipEX2
	QIbdWTsnlONwVCYSOSExjoIEWb8nwd/qp0SaDx5Yg3bDAWxs/gMWATLq3BNqbSSDcrX5cODRIx2Og
	s2618D94hUAP+W8VNdIkHVJmSDV9BB76vPpnwmXYzaRy9yOj0Rd3Zk7Cn+UcL07vTA6JBRXYth0VI
	cyttLIZZcPv6SBt1HbCmaty+ee+LlphyG4TrL6K6DTq7LlprJUiQLfdT9HWY9Q4YY9UZ2lKoO9mIX
	XL+PNogBW77AMHHUDypNr0qyJa8O7tfosSQCYOszkYSlZ/GMPVoEiGIUmZFPgo4ZK754re5w9oxWP
	yQIkaESqUJMb/DIzBEZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMi-004rJ5-0l;
	Wed, 10 May 2023 03:19:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMf-004rHr-0W
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 03:19:42 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34A2vFKs012262;
	Wed, 10 May 2023 03:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=nRGREVXaO73ZMvjqHywCfhfQdvFNCjsc7JjZEI2wqJs=;
 b=a7wAsT0Eg1BdWDXVpG5HaL64kdNHN6v8lRHgIcoOlnFxt4Qu+e9oFNY3vweREuv5NCZG
 Cu46FSxmMxPN3mIMZK736TIOjK+lzHP7VfJ8dscE9jqA0CrXVouL+g1fi5bKJXQcxesJ
 WRNEXfI7O1I3S78Jmp2mSSaZXWOUSr3rZRimD4LcDAtGfdTkI1wpc3mkylb1PyYggfXB
 5J5FGnW29Z9kYpU6StXbISAP6qXvG6h7fnQyjsP1ufn+jFYf/Wjd9nvk403SanG/1fJY
 ywzOR5m7TLahxUaIgk5ckt+bTPZEqfrrqNLQd24EpkUDI6n17iZq6vpcTLPhb4wruj/O fg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qg29v02t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:36 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34A3JZxl004282
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:35 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 9 May 2023 20:19:35 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Johan Hovold <johan@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, Steev
 Klimaszewski <steev@kali.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 1/8] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and orientation-switch
Date: Tue, 9 May 2023 20:19:23 -0700
Message-ID: <20230510031930.1996020-2-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: MD8vQBlTLGoxGYRb5n7EixPVSZB6eA9Z
X-Proofpoint-ORIG-GUID: MD8vQBlTLGoxGYRb5n7EixPVSZB6eA9Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_16,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 suspectscore=0
 mlxscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_201941_311869_75AA95A0 
X-CRM114-Status: GOOD (  15.90  )
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

The QMP combo phy can be connected to a TCPM, a USB controller and a
DisplayPort controller for handling USB Type-C orientation switching
and propagating HPD signals.

Extend the binding to allow these connections to be described.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
---

Changes since v1:
- Corrected port $ref

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3cd5fc3e8fab..ef1c02d8ac88 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -60,6 +60,26 @@ properties:
     description:
       See include/dt-bindings/dt-bindings/phy/phy-qcom-qmp.h
 
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the PHY
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the DisplayPort controller
+
 required:
   - compatible
   - reg
@@ -98,6 +118,37 @@ examples:
       vdda-phy-supply = <&vreg_l9d>;
       vdda-pll-supply = <&vreg_l4d>;
 
+      orientation-switch;
+
       #clock-cells = <1>;
       #phy-cells = <1>;
+
+      ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+              reg = <0>;
+
+              endpoint {
+                  remote-endpoint = <&typec_connector_ss>;
+              };
+          };
+
+          port@1 {
+              reg = <1>;
+
+              endpoint {
+                  remote-endpoint = <&dwc3_ss_out>;
+              };
+          };
+
+          port@2 {
+              reg = <2>;
+
+              endpoint {
+                  remote-endpoint = <&mdss_dp_out>;
+              };
+          };
+      };
     };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

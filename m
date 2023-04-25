Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 902C2C77B61
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 03:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvkTd7NrfGoRQRCzarCLkjXIiYt3FJi18bqO1/i2b4A=; b=mj1Gf+/96u064V
	yfNWXn6Q2Ux/T6n0mQvn4YRAtnfIjgJAIIY8gFhUDML5hwRJ+UDQqddHaxzMahZoOopDHjETWuSOE
	Z4XtQ7bH+jiZq+B/8kA6Lp9M4Gu+DT2qax7wYIgoXQqdwXzHlTZiOtfElOxiDw/d2xo7OqqbGSi7h
	PznItB6G8X/ES57xLCF5RPs4eKFLguu+EsDtvC4Elg6Axthcq8zohaCOevhw94S+qEMw2EzCiuHir
	PqsjNH7dcZHLFLuUBQRRmCfY+iio9cOgyXuONu26jWL52OllpwU9YFJBdG6bWmP+tLXq0p9W/KHBb
	kSu/qF3xY4yYsLQoEQRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr9XV-0006nE-0j;
	Tue, 25 Apr 2023 03:40:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr9XS-0006kY-09
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 03:40:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33P2ZbWk000480;
	Tue, 25 Apr 2023 03:40:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=1uCI1WRD5ZWI7y5++Czr1aheM4K2SXx+MDDZzECfDqs=;
 b=SRbC0HFlhovQpQgd+bQZMiizFDgv2Mi7gPbuoQzw3EDmjXRSCK7GJQTaUOpV/G/MoS83
 3f26ClLfxs61orPBBlPS2dBhL7XIX4U1VgAxGfuZJUii93jRfuA7J2kCQPvrGBgHdWn6
 Gof9KIVoq3o1m4gXVThzDYfLhL3i9APGe8oW77yzBS7qSJ5EfPTs6bZV6hgj3BHnqvWb
 m33AMl4F4Ay8AgGlsrRlhLZe94i8mrAqMxQDkVpDOYqoyMfLyXFO5ZA9j/GK4GVqh/Ss
 BP+BtFLI9llI0lJ0IEYjzqqDa0oKxd7JIDoe28aQQDmhIzYpGY375KavcDAaPFW6v+oJ Jg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q61jdrjh7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Apr 2023 03:40:16 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33P3eG77015592
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Apr 2023 03:40:16 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 24 Apr 2023 20:40:15 -0700
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
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and orientation-switch
Date: Mon, 24 Apr 2023 20:40:04 -0700
Message-ID: <20230425034010.3789376-2-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Pbo0dmwlaXtmsGjCbQZ8I5MCJuHxNB2j
X-Proofpoint-GUID: Pbo0dmwlaXtmsGjCbQZ8I5MCJuHxNB2j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-25_03,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 clxscore=1015 mlxlogscore=999 malwarescore=0 phishscore=0
 adultscore=0 mlxscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304250032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_204022_085342_72931441 
X-CRM114-Status: GOOD (  15.33  )
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
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3cd5fc3e8fab..c037ac90ce7f 100644
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
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Incoming endpoint from the USB controller
+
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
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

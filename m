Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EEE5C5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45tTnXvSwMCfZk8p0D9gskytoY+CNfVCANHAfUjGtME=; b=ohqL2qYak9RK5W
	d5i5lylurdbsz6W/lOahG7AnPQH7GXAEU+feGsSYKbMFrQtzKRr/ki4O8c/d5XjniH8oG7Fwb4vqF
	zp8w78EKkYVm/cDt5SAnfRIsQrVrbc3nscPr8GZGTCZrQPPDY4ISiogmnHxcALcdrAQ0K9kP4ZuJh
	jJ/L0EXMs7b2MQspC2b/0DwAUg1fiq3epfS0pIcm2kcBVKSOEkWFKmRe39EtORPIdoqGk4DUPHrMA
	4tctsgSRlCtLrJ/TDxo6qqS9iadtlbJUOe6MpCHIZtjYlh2N2G+oItbKzg5Vv7PTkDTmfRudD09a+
	hGU2pHG5EYGibq6Nl55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp9-0000000A2eg-0PWP;
	Tue, 27 Aug 2024 06:37:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp4-0000000A2cD-2fkh
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:37:00 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47QJGPKs007081;
	Tue, 27 Aug 2024 06:36:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lo10NXhlnHG
	kwKF871JZ2ObkWdDWb+Nf4R44B3p2PsM=; b=e4aGYZiKLG6m9MkRtc0hgHF+eMP
	6gUIF0cUXCiyfTRMtJvq567u4td6CUIY+2DnRkBi/H5OHU+UySraNX08o3U8d7zG
	XRX55TCV8UG1lQ90Wh8FL7c6BFCnGz6oa6w/veks3ZGL7iVJvHhbN9VQURgxZttX
	xavqB0t7+ODhxgIrBu+CzSpdvsnX5IDqqPqGV0wu8HrrOgJuZ0+AmoA1jqDa5glR
	2j+ylDvY0QOnSj+TbcolXcSBt8g3UuQbXsfKJtd6wPFxOIkq4krG+nW/8qwYeGK1
	w5dzXo35Zdi1hRy1x8L2TxhQ0ji1qPZuJgfzPZe/Tr6WYnxVK2hsh9cpyPw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 417976wxdx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:51 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 47R6YfXP032163;
	Tue, 27 Aug 2024 06:36:50 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 4197aaj4nw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:50 +0000
Received: from NALASPPMTA02.qualcomm.com (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 47R6O8j8006702;
	Tue, 27 Aug 2024 06:36:50 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 47R6aoOc004679
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:50 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 34B8264E; Mon, 26 Aug 2024 23:36:50 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH 5/8] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x8
Date: Mon, 26 Aug 2024 23:36:28 -0700
Message-Id: <20240827063631.3932971-6-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: iENBN_DSSh1sGc5bvHUKUstSMIzIPcS6
X-Proofpoint-GUID: iENBN_DSSh1sGc5bvHUKUstSMIzIPcS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_04,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408270048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_233658_823273_785C4B84 
X-CRM114-Status: UNSURE (   7.99  )
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

PCIe 3rd instance of X1E80100 support Gen 4x8 which needs different 8 lane
capable QMP PCIe PHY. Document Gen 4x8 PHY as separate module.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 03dbd02cf9e7..e122657490b1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8650-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x8-pcie-phy
 
   reg:
     minItems: 1
@@ -47,7 +48,7 @@ properties:
 
   clocks:
     minItems: 5
-    maxItems: 7
+    maxItems: 8
 
   clock-names:
     minItems: 5
@@ -59,6 +60,7 @@ properties:
       - const: pipe
       - const: pipediv2
       - const: phy_aux
+      - const: clkref_en
 
   power-domains:
     maxItems: 1
@@ -190,6 +192,19 @@ allOf:
         clock-names:
           minItems: 7
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,x1e80100-qmp-gen4x8-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 8
+        clock-names:
+          minItems: 8
+
   - if:
       properties:
         compatible:
@@ -198,6 +213,7 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x8-pcie-phy
     then:
       properties:
         resets:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

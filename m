Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2E5BCF9C74
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 10:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AFgQT0g+BAZhpV7/RCgRF7/tD7z5iW2cmO+ESTmUd8=; b=Um1aYJeFh/Hjp9
	lyqY5jB1/laIjQAL38aZ032SbuGWDxkytqf6fQ3LEdbCjrbr2h3uUC1Q/lyx6+MCl5z89GZujxqH5
	Hc3ZD88Fnp3UH0zB1t4vheDIJ1x48z/WDNwILF6zDcAtP/zWgGpAL/ILUm+8Hm5nu3RwVrFVo893+
	3V2IiwfP+mEfm7drWMMzgdubVNgrXO2JFlodrkBDBf7NTcbuoGhEzex/G4x+uPzqZjKoZUzEepJic
	WxQyvr1SjqIKJylVlRZMA7GjsFNhldSFMRzZxyQILTGQ4xKS5+yNRanqligwrwin5zBUF3hV5VSrq
	97kfPFF/U4Grifc8/sxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st2Zf-00000001xng-1sfl;
	Tue, 24 Sep 2024 10:15:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st2ZM-00000001xjT-3ZLX
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 10:14:58 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48O9B8YZ028334;
	Tue, 24 Sep 2024 10:14:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I8CZGeKB6Ei
	3Hjn7KKaCNB88yx0+HLYTKE26/lVSvLs=; b=ZuhANWiv0lU56ynFQW/zDH8FEex
	vGPG8t3jvEMdVKQoM3rOT9mu54JzVa71pGDOpfgu4Zh1UM6zQjGb7AOP7ZcnU3wR
	GxIlG+lZP2FkpOqAVVQidVuWVTJGcaYIrXu2s8T7jqWWE80iujjdSskO6FZSztl8
	SIp7vNG9LSEA8wncQpkLASleTR15IBI3GdpWEzbEfHCojbSHTwEz2IuQyN0m2aZx
	h/F6XSdnBvp++B/g9BajbtJBs5ofnV1Oxw4LxbN6n5auIcEBraBI8GQDN8UiscjZ
	LLpFvQSV+8V1wvg5evILwmew/C1PXKf5/yqydWYKkKG9fcRXV/UUHctYhYA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sph6ra4s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 10:14:49 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48OA6sIU004988;
	Tue, 24 Sep 2024 10:14:48 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 41urrvhyc6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 10:14:48 +0000
Received: from NALASPPMTA05.qualcomm.com (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48OABHml013439;
	Tue, 24 Sep 2024 10:14:48 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 48OAElZs018433
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 10:14:48 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id E469865F; Tue, 24 Sep 2024 03:14:47 -0700 (PDT)
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
Subject: [PATCH v4 2/6] dt-bindings: PCI: qcom: Move OPP table to qcom,pcie-common.yaml
Date: Tue, 24 Sep 2024 03:14:40 -0700
Message-Id: <20240924101444.3933828-3-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Heubj3XqA0xIvqhxhmhaS8Pt3qRsYzem
X-Proofpoint-ORIG-GUID: Heubj3XqA0xIvqhxhmhaS8Pt3qRsYzem
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxlogscore=999
 mlxscore=0 adultscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409240071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_031457_044810_6001DDD4 
X-CRM114-Status: GOOD (  11.05  )
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

OPP table is a generic property that is also required by other qcom
platforms. Hence move this property to qcom,pcie-common.yaml so that PCIe
on other qcom platforms is able to adjust power domain performance state
and ICC peak bw according to PCIe gen speed and link width.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml | 4 ++++
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
index 704c0f58eea5..3c6430fe9331 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
@@ -78,6 +78,10 @@ properties:
     description: GPIO controlled connection to WAKE# signal
     maxItems: 1
 
+  operating-points-v2: true
+  opp-table:
+    type: object
+
 required:
   - reg
   - reg-names
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
index 46bd59eefadb..6e0a6d8f0ed0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
@@ -70,10 +70,6 @@ properties:
       - const: msi7
       - const: global
 
-  operating-points-v2: true
-  opp-table:
-    type: object
-
   resets:
     maxItems: 1
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA09BC7EE30
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMU3ZMWh9nfBC5QpfS+3LCcjYeCO2gQDarYJ+oEM3qs=; b=xjuBGb+LEhjsib
	vg1RbKAf1DJbUa/11+Mw9JwUiWlQtbMkYMc9zuFIcOLuFCazNEkxt+1Tv7DVa8b/A9XMNDHBsU43/
	RvUdpRmqcW1UQ0ys0cLIEh23nPwK2XTd3xkN4jCQs3WI+mm0z1pE0/ugkebHjQFbBDL0CCUBgVWZm
	yN463AdUGkj57qoV7pVuvU4dDTf249JpFQ1vRjlEBH22j1n4kwPUoMMRerXNPA/uDlwdREV4ojpVS
	2r42188Fax1Ev1xOvEEc822F7sX/S+3tJOeHdG5W+dg0P4sF3nHrBQv9e0K0+VQsIXtNrGNsgV0ER
	jTpPFTsrwgBQJg3VUtMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMqK-00000008DuT-1TJc;
	Wed, 25 Jun 2025 09:55:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUM0E-000000083Xn-2HHE
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:01:11 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P3E4Dm020990;
	Wed, 25 Jun 2025 09:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2Y3fLjQxvcf
	dz+Bz8+1BKSIzyNs6jvU7ldj+FRaUfB0=; b=C2hRbufTNUiPhzSyVFKR/hE4Xmu
	1RnfWCJzzKPvG2e8AfoG6THf2ug10nVCLKhHipW6h/Ya/SwWqI66BwEvQhp+qvHS
	kp+SveVhXbRtPKQqtDrJG/yB0TrCfJPjOfRvoqPwldUJY36FdPIu0APnjLJfr5+b
	X4gSMFcoVxq7qb88Ieah01Qjz2zfWMNn8uzTlm5tmh+5Up5A0lCFvNqvVoIsKmt2
	pXAf2FnIE694nMI4QhcGWJRc67KW9RFcbqpPfTpe5GpdJavrnAd0XIvSiPHI9F6G
	wwitsGv3nNsyGZWzRi+RV1/bzGRdD9iX1Lr0V5BgER+uQA9vVQQUy2rfsyg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3y1hd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:01:02 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P910Un019616;
	Wed, 25 Jun 2025 09:01:00 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47dntmas9h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:01:00 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P90xIE019590;
	Wed, 25 Jun 2025 09:00:59 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55P90xpi019582
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:00:59 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 1A8063834; Wed, 25 Jun 2025 17:00:58 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v3 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document link_down reset
Date: Wed, 25 Jun 2025 17:00:46 +0800
Message-Id: <20250625090048.624399-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NyBTYWx0ZWRfX5QF+O+0c6tLH
 YV3hNDqN/twjVd/iW9TTuhxuiqBapUcHMZTknd8KQZ8oMMr+xz1xgG5gWjDP4YbkWRA2ycBjg5H
 S/EHM5ah6zaNjVeFqOstOzhwnNNTrO2mALbu44mOAdTCFYoEdGXjWD5dOyNN+N/A3Tc/j5oS1X2
 AY/Y9osZlmOMDYLzhd91Dsacx/RddEbxCVq+K90zo2680YWJe6018Nlw1ngnpkNEkvI582CO6iE
 i7tGXyDgH/05PMCfzjCvHo4hVdhvRbzyOSg1wCUihJeVScx8FBKFh12yu40yMRADkZafA4e/Oxd
 NKkPUpnAOTcUvIKfwuqP7kRqjta9QjGsEj4smNT4tlZAfjRS1g0o9mHMprlwoPgdqKbGjeX/8De
 dRkFKm7stDfpDpEE+2RkeJdn6SIwlRYDdyqyUjyvWfYdUmdggyojRGBlYOg5+zsFPfJOC1OB
X-Proofpoint-ORIG-GUID: QFSDLVqRs3J1QuwIa6scvtJpEpU1KnAx
X-Proofpoint-GUID: QFSDLVqRs3J1QuwIa6scvtJpEpU1KnAx
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685bbace cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=afJgxSc9SFXapUhESZAA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_020110_582931_B68F7FEE 
X-CRM114-Status: UNSURE (   9.67  )
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

Each PCIe controller on sa8775p includes 'link_down'reset on hardware,
document it.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 4b91b5608013..510c9e1c28e1 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -66,11 +66,14 @@ properties:
       - const: global
 
   resets:
-    maxItems: 1
+    items:
+      - description: PCIe controller reset
+      - description: PCIe link down reset
 
   reset-names:
     items:
-      - const: pci
+      - const: pci # PCIe core reset
+      - const: link_down # PCIe link down reset
 
 required:
   - interconnects
@@ -166,8 +169,10 @@ examples:
 
             power-domains = <&gcc PCIE_0_GDSC>;
 
-            resets = <&gcc GCC_PCIE_0_BCR>;
-            reset-names = "pci";
+            resets = <&gcc GCC_PCIE_0_BCR>,
+                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
+            reset-names = "pci",
+                          "link_down";
 
             perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
             wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

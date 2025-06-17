Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF626C7115D
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 02:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrDavwxipj2D6I9b8qA11L0rIlkL68ljnXeyxqag7bA=; b=BUZExiNTfoU+8I
	1ElPnxRUmowkPjm1x4iDIxPNT1K+fBF31IRAbjMvhNqewTLuC12W1pu5+N7GXHXjbfT+LJ34BOe0f
	GTWG0OcfUIU5VRsZUOqah9zl5DxvthWKZSiEzXa6gbMB7rMfl717c29cOJj6uA7rOrQi9Q9OmdK9g
	W4Rzx9pqE4+BpdhNMLWs6urGi5mHEziDfTSgvm6GX10Mf+Vx8K3k7TDfQCQ4OAjNyZ30HnzmrI1NJ
	6eMdQqU8zCjG00Hj4MkJp1mRzbmQ56MpXQNzW5HmderyjjQfZE7BcXyZao3J+pPG+HawT7TVOoPcX
	kIHHE2HYJ7WAxoeDQcFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRLuW-000000060oJ-31Oe;
	Tue, 17 Jun 2025 02:18:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRLsO-000000060SB-0NIj
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 02:16:41 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55GGN3aw012463;
	Tue, 17 Jun 2025 02:16:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=C/Iq/efdjQJ
	JINm2z4PhK5sLyFfyBU+UjfckONtT0Ek=; b=ktb5o+1Ixko+10srkS5wMegeoNn
	TghqOAzzhgR+n6uCGXFCT1MQHToyoxW7gS8Szb7OSHfrp8ZjsBZmWD/jRJUF5gu+
	Zwmh5P5ZLp/GdJfIopZi/1FEd4/zcj/2XUH9Lpz76FwXfYI7G6nNrsjdV8+m32Gs
	CWObB8Hh72spgnOJpGTMq9/PSHiXOomY0bxgvu0HP2NHoOhMrQWh5lJ1wyE+NicD
	SWsAlZd+RUuSoCjzTxfFkbfLYVAl1LuGAqxJIthzcPg0eDcc9Y/1N6TtGlARe1dT
	wEYJxqgYSYZLPKF9OUIJ5xpXyy3n+kqqN4Ahg6/+8b0cVJtSknzkKmvYpQQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hfehty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:31 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55H2GTBM019654;
	Tue, 17 Jun 2025 02:16:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 479jku8cvn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:29 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55H2GToA019645;
	Tue, 17 Jun 2025 02:16:29 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55H2GSHC019639
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:29 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D1ADC3657; Tue, 17 Jun 2025 10:16:26 +0800 (CST)
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
Subject: [PATCH v2 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document link_down reset
Date: Tue, 17 Jun 2025 10:16:15 +0800
Message-Id: <20250617021617.2793902-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
References: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDAxOSBTYWx0ZWRfX6gDD1TRiajMK
 xFYaQCBqkZCXmnLjJYj+xpyCTJufOpOjU6up1WoLUR2gKeL9rGd4huxB6fhYjH9U3DTLG3xCqKk
 rHLhAPI98hRrPkrnCvgZY8GLPzShbzvot5uzZmZKvnGWHM2ZVkvEKUNpN4GaW9OJnmyl/IehsF0
 Egjfvm9KllQTQRQ0sqGjUcIZQhtwI9r6y/EuNso9eqP4I/JZhEKJTYb6VydVAT+MkfUiq/k8Ivx
 Vm4HM4UJtJ/ajLLDgX7ppT0JE2UNoVWhDbdWpC1C2OaKu9GE9HH2MHyw7V2K/PCZaZPb0X2kaBj
 GBc2QWAXYhsOul274I0EnYyBUe6aKzZEfwcPjQCtxSGgFY85Uzh76fyGSSvT+MbBhAXDUppJ9Xm
 AsDRjAnPktjPlTurDbrFEvjfW9KnyvE49ySqiXif+DgfH6Sz+4NI4BWhe5RnYIdSqpqXCZ22
X-Authority-Analysis: v=2.4 cv=VvEjA/2n c=1 sm=1 tr=0 ts=6850d000 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=afJgxSc9SFXapUhESZAA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -QP4tQuZMycQBdzqEwdqRSOrpBkkt5pC
X-Proofpoint-ORIG-GUID: -QP4tQuZMycQBdzqEwdqRSOrpBkkt5pC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_01,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_191640_131069_4B35ED08 
X-CRM114-Status: UNSURE (   8.96  )
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
index e3fa232da2ca..b7cae2e556e3 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -61,11 +61,14 @@ properties:
       - const: global
 
   resets:
-    maxItems: 1
+    items:
+      - description: PCIe controller reset
+      - description: link_down reset
 
   reset-names:
     items:
-      - const: pci
+      - const: pci # PCIe core reset
+      - const: link_down # PCIe link down reset
 
 required:
   - interconnects
@@ -161,8 +164,10 @@ examples:
 
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

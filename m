Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D228BC5B549
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 03:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGgnWAZ26FL7y24QjBhTzAtm6Ha5J2oltNFqMT+g74s=; b=EoOlluHK/OwOZN
	A4ROwjr7qMsc+yDcM3j+FaLLGY2zpjEv6LOLd7RELg6ah2Cl1mRgKnZ9zXXjXKZOpJtlhqpvOLrNn
	gVA+Jn8jAGCHRQk539pJKEwI4DAGhtUBeIkiSMrS19FoEN8b7ft6yDHhQiMP2fKpOgz3jYSyPT/cT
	O5U/R4yw58XwGx2FDz/d0NyY43LJ8y3F/SUB0ITxDA5n7+jMv+KSxRF1qk3ZIw6tl6g7uRctXgDX7
	ifZFCPcCG2Eefb/JlP1sz7krg/1k/NYJKrCelGTZGCHkQiQ6xLGOt1dmEHzM4zFiPZYdhiyAkO+YJ
	b/fqiFDLUdYr5H3kSSRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULi-0000000ErNk-2Wqo;
	Thu, 29 May 2025 03:54:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULf-0000000ErLu-0W2I
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 03:54:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SFgLUl028888;
	Thu, 29 May 2025 03:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/R/EBXAw31I
	xFWwXtbALfcX5seLh4eTYZkmNDh+v3os=; b=X+qgxuSK5InvE0+fKTMvVH5KdN5
	R/uz2gq/Lpg3OYOkz6IBvtPFcBSBXSes+W8TPrdGFDZbS7f5uRcZzYjjS4LyRWQQ
	ZFL8NxI8CpfubX2rC9Em1dAQWZGH5MqKd2FYt36v1aGuE78QvhyGDadGFmZmv+4f
	Z2zUxT34wXlI0xCTNBTTCmIsEi8+N/gGFZ9BvhxBBT1zUcDhzbffzZQ2VFTuEmVY
	ZLzh8sjuJXarTx2YgxXF3NNpqcnXgME4T9HXHU3vMjzX9aRjsLd1mkOE62TurY5R
	rKLNkNhWvSMlCMxH+EuFJXpW+HBlj1GGK4cC52VLZrMhUrzkr7pDnzZud/A==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whuf4r2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:22 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54T3sKLf011608;
	Thu, 29 May 2025 03:54:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76mdp1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54T3sKgq011594;
	Thu, 29 May 2025 03:54:20 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 54T3sJaK011586
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 66E123159; Thu, 29 May 2025 11:54:18 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document link_down reset
Date: Thu, 29 May 2025 11:54:14 +0800
Message-Id: <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=6837da6e cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=afJgxSc9SFXapUhESZAA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: jQUEhMTJdG9bUZnzFkPj5cQoaWaDfDAU
X-Proofpoint-GUID: jQUEhMTJdG9bUZnzFkPj5cQoaWaDfDAU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDAzNSBTYWx0ZWRfXzpdFdX61IE5p
 a/+gNL2LxTQudIOGkcoRobb4AhQCL9yO6wJUknTFoLg4aLtejOu1Fwgto3FdYZkSF8YeWKsG/YE
 HHJe7cnSJmYOEySD7fX9SSyB/laJiSxP9h90150PL5RtF8bAph9WFpksucmKsKEoMq6f041fAia
 o/oQHwTgxCJ0EQeQglclvEWVOt0AiMW2HSEt2HaJzPmLNOUypqszCP9eG5SskGtRPzoryXWNB2Z
 8bng5lbfWWDMNmC5u8e2rbMknw2vYqlmqzipZuUfOMobN3SoBBBpJb5OuJ8CeEG+JNESpUpTcx9
 bpcXk1x+CS7ZdVUREZmpWt+MXB0YQ/1SNuMy+or9dWJ6irIgfZkEqs+5aUBjvVgP9KV1+aWAztk
 yf415symEGy1HET61hdqpDEDYMdy7hg52pUQ2G2A64gHdUPsB4hVwuiVa6gOSqxu6rGm4FMf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_01,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_205431_177331_6F476CB6 
X-CRM114-Status: UNSURE (   8.59  )
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

Each PCIe controller on sa8775p supports 'link_down'reset on hardware,
document it.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index e3fa232da2ca..805258cbcf2f 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -61,11 +61,14 @@ properties:
       - const: global
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
+    minItems: 1
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

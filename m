Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27658C54F30
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 07:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru2Bu2a1snVjzjdSKWzy4H7U6TBOOGT+3cFNIJEk4TI=; b=IWyvEzuOUSEpo4
	o7E+hTzRIm/UkQ772ZpwnsR1GcvZOoNHF6YpkhxhTOQ/yugOtT6XYyQX/s316hGbW+RiX3yV+ekOQ
	lyx4Vvwc28en7onYnJDaAPzgrPPCxBpGi5lc1sfUTmXNfq5+uNZ6qAE2t+q8T0SjysNs7Xh92UJ0s
	s45l/VVBeHntPFEAcrpTKw2YDPPGwXWmvomLWGhHFabXTpHmwFI+ZP5v5/+oAmQ5r40l+j49+YlXd
	tuK1Mq0FE78hyIDKrA9ax5dM8dfznFfq7GYC8w05F2loVhB0G/kISiX5gYyR/FuiD/AjXCt1fqG3f
	oPOrUBiFTgVON7JdNXyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJokK-0000000A9kD-3jIJ;
	Tue, 27 May 2025 07:29:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJocG-0000000A914-3O2L
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 07:20:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R2o2YF003591;
	Tue, 27 May 2025 07:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=13qF7ZLOMAO
	9XoWt8DDGVjNGLqSpYPjsO3tOVtrFstg=; b=IJIU7FfX65l2tBqxFWn1s5n2IuO
	j0Y5WX8mzjjEyTneqBAdPDqbrnllndBdKp4Exuu4NVbA4WaUkVjkwOJhsLx7JU/o
	I9o9iyQruw2+Y4ZGCmHbPn/ZHkH3y6shJ6JGToxme5UBi8+szAdLB1mcroojxXIu
	+ivkxMxFNODVDp6Mpb6xjNMddZg8KpPEvS6WhRUO1pm/Qn6rwDhefqEqF9zyFoW/
	OERCPALQo5TojRNL1iZcYQdhuayL3mdiehxDyFwLPI2VgKUx10Y5lf3sG0foPZsk
	lvMQuBDi+KE97B80wEXokSqsOU6bFZfrBssuWH/U0a4FCvhf6/KEgwwlGvQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u66we6d2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:44 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54R7KfLh031390;
	Tue, 27 May 2025 07:20:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 46u76kypst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:41 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54R7KfgN031377;
	Tue, 27 May 2025 07:20:41 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 54R7KekC031367
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:41 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 722683502; Tue, 27 May 2025 15:20:39 +0800 (CST)
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
Subject: [PATCH v5 2/4] dt-bindings: PCI: qcom,pcie-sm8150: document qcs615
Date: Tue, 27 May 2025 15:20:34 +0800
Message-Id: <20250527072036.3599076-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=aYJhnQot c=1 sm=1 tr=0 ts=683567cc cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=HC48MwHpPFP3ZpptyjwA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: d8Wkmteai1lqEl-rSpSPUd9-6vGR48wi
X-Proofpoint-GUID: d8Wkmteai1lqEl-rSpSPUd9-6vGR48wi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA1OCBTYWx0ZWRfX8TgHIIC7UnnV
 FBcEu1sAm5DFu1E/81eSsgBTYBwjBaUUADie+pxAguwjMYw7nnWaFLGediRwlgVmf1WMXepIdFt
 0ejrARWUuCJbPIRXmG+LJCrWTNldr1CnKUQl8eJDlgIGazSjZRY1iS436CFEfnExfVqZY441/Ld
 0790F57AfZgbKrj9GSpufsI5V1A4kAHGsj4mI4rozFIczWvEHYpzUYWJE695Aqd7+oNa6fSwok/
 t3giC/JlTTX8KMhgLlPqckNPu/y186ImJ2FHOD26Ksa+g/CNMg8NTo6wdwA4o12aH1tMsSjv9Ay
 Qq0Qx+/DM6nSQn95HeC4sy1vIaJ8K+fR4KjFQB1VevZK8FeIvReHmesLtqt9Zly+3+ARPN7Zb4U
 6Uw6Vxs8N7aJyscEK7KaSQNxDhK3w2UAEnk9TC0r+UhcsjCD3T4Ltd8X/eMMK4pWqCi/qpGf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_03,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=999 lowpriorityscore=0 malwarescore=0 mlxscore=0 spamscore=0
 clxscore=1011 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_002052_965339_D0D61017 
X-CRM114-Status: UNSURE (   8.49  )
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

Add compatible for qcs615 platform, with sm8150 as the fallback.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sm8150.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
index 434448cd816a..26b247a41785 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8150.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-sm8150
+    oneOf:
+      - const: qcom,pcie-sm8150
+      - items:
+          - enum:
+              - qcom,pcie-qcs615
+          - const: qcom,pcie-sm8150
 
   reg:
     minItems: 5
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

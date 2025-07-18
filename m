Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3114C83F1A
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 07:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWLN4ykvYu5iqSYjhSwGGHL0Z8YO1K+XBqgMN+iIc3M=; b=e8AnydKhZI5Wu3
	jX06ngyTZK/0r9RJowuZ2MGUh7COh9/QpCPM1liI/L+O1rlzFqc5ZU6lrXkbZ0lYcNoB+gcu3dQWd
	0L8wiwzadIc7CKw/lr3vGDreoi9ZqoVY8wjeBUH4V4cBQ0e5ioyLr6ggrHUifmgtL/57utFvW3TG6
	LDlucMHK/1c++O+bDNMqDinQfs8NjfgXM0pEMW5ya+HSMvi6Gf1FS5l8VdmGR0o1X4K2Iy/Hd2NMc
	EvKnnNG4Wu8xPrefcgx/jHXfGSdAQ2XgEI9j/alkB0AFfAYPDqfALyEL23ymm60dxshT6ELp3LopQ
	9FC6i5SOWyCAiTZUCK2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucfI2-0000000BrEY-1Jrn;
	Fri, 18 Jul 2025 07:13:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucfGZ-0000000Bqtj-0CRI
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 07:12:24 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I669X2022240;
	Fri, 18 Jul 2025 07:12:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zVcXn+xouwm
	9M08R+gXXqzI0UC+BcJoS5cp4Pak5RCg=; b=LH/dj1xrEt38k7RrIWwclrbklPu
	Dh+hCfBGof3RDjcEb4O7eBy0c6LtS1kjaranW9rv1+DWs+J/MnczEvtfkyl7Qdx/
	nGcsKFkIbvzfNsKXcpZmGsyF54T3nAJoFVw4CM+JnH2Z0m5moYIFSTx4S26YFjN5
	j+GShp4kcGIlMOBhrGMqcRE8m9Tk3Zmxp/Xv9lUyijo8/vfqM9XCJ+jTS8wTwYv2
	hAqib8hv16zq2bAnYezEmxuX+/bv839BlAZtMJn8v8ANxrC9bBJ7xCS5e3oY282M
	/gBZBbPdI+OCX6kxybao7K1rb/d2xVi2dAALSVznoxLpSZornzdWzWydyWA==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsyagj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 07:12:14 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7CC3v023132;
	Fri, 18 Jul 2025 07:12:12 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47ugsn0pq5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 07:12:12 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56I7CCVV023123;
	Fri, 18 Jul 2025 07:12:12 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 56I7CBb4023115
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Jul 2025 07:12:12 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 0035020F1D; Fri, 18 Jul 2025 15:12:09 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v4 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document link_down reset
Date: Fri, 18 Jul 2025 15:12:05 +0800
Message-Id: <20250718071207.160988-3-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250718071207.160988-1-ziyue.zhang@oss.qualcomm.com>
References: <20250718071207.160988-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA1NSBTYWx0ZWRfX9ICvh5VfJcgM
 7gJRT/ZaSHPUvNsxiNrGD0Nm8ky6+52l18noIws6SB9aTBYbXDG1C+1ysxEnJKoUqSXq/sE/14g
 SV3qvzw/eMXd1lTNnzCmmaQnuh7qUn+n44qGWrYxnI8nOv/sa9uVq8jI1MCrBiCWG3odOiRsW99
 /lkhdXX8p5i0FDaq0YiUncl1q1KUgQ6i9eux5i1gwKsxWuE8GTDFo44gzlzxJmp+R5hUhrW6xaL
 KrCFmtvuCV3rza0iZpwdVQmS7TL73csZI6X4i1wHVkHvXaJ+fHmIni91ftNeelA0JTEO+nJz34b
 BEVSU7eKemhvnnM/d8Ha7hNx4xBp3wM5JB6XkPaHjtgusVRkk67XI1ZNJt+xw5CDEoWPXTexgYc
 HsUTXsF7gX549v1oFdicllxm2v5CaUKjXqlZVbxWUoAT3ugUEzBdOFJ6ooOePYVchWgwMxto
X-Proofpoint-GUID: VVjllUy0HmZqRksZg4edSU1KiWeF0kZC
X-Proofpoint-ORIG-GUID: VVjllUy0HmZqRksZg4edSU1KiWeF0kZC
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=6879f3ce cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=pGOvZgHL2iAvQvMqjSkA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_001223_113255_F7D0F777 
X-CRM114-Status: GOOD (  10.83  )
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

Each PCIe controller on SA8775P includes a 'link_down' reset line in
hardware. This patch documents the reset in the device tree binding.

The 'link_down' reset is used to forcefully bring down the PCIe link
layer, which is useful in scenarios such as link recovery after errors,
power management transitions, and hotplug events. Including this reset
line improves robustness and provides finer control over PCIe controller
behavior.

As the 'link_down' reset was omitted in the initial submission, it is now
being documented. While this reset is not required for most of the block's
basic functionality, and device trees lacking it will continue to function
correctly in most cases, it is necessary to ensure maximum robustness when
shutting down or recovering the PCIe core. Therefore, its inclusion is
justified despite the minor ABI change.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml    | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 4b91b5608013..19afe2a03409 100644
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
       - const: pci
+      - const: link_down
 
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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1030BE6749A
	for <linux-phy@archiver.kernel.org>; Fri,  1 Nov 2024 03:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMcCKFlhSUs1DDCbBobDYAuB1GDajt1kgkz42g+EYZQ=; b=Ly47lZJtMoop6r
	nldL4uPFJV+F0kxp0i1F5uSPFQ19ZsRIqzrAAcGmkGN4/dIMzZEHmbK2L7KnSjpgnPg0vSP7QDr57
	XrxEA6+bUYFqzUWe1UOUlkNhJN7UGP3jRsxg16oC97WErySCjXNo4smyvZ6P0sCF4cgAZrV4kTxPs
	6c/bv7HU2GzhIwUX2Q6UqEvkKPnlEwzcHc91b5C8tVQIx4NHbUF/Q5lg4Y153CEL310NNTBQ0Zdf7
	qnGD9KDZV2gPUVxD6LFcrxxuXGLlVgtn1k/B9bURAzXAEVEvcszwGeT0iHrOLHurGTCPAVRaMEuai
	2+CwCxmbuifNh2nUnHWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6i2N-00000005cQO-37Dm;
	Fri, 01 Nov 2024 03:09:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6i2I-00000005cND-1syx
	for linux-phy@lists.infradead.org;
	Fri, 01 Nov 2024 03:09:19 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A11e8Bp012744;
	Fri, 1 Nov 2024 03:09:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UOHTyGZa+eo
	608qUKhdcko5np486moOnyYb1Kbxj0T0=; b=g3wJQjOYD+Y5qoGY4VPNJVzTmMx
	ytkUOFPxLx5VGIV6yl+KI6maEUSA9HMLUOtj9JM62KqMrH7V+QmGN3CwhYn9l+kz
	JBzlIvneXWMACw2C4g7fZ7eJVBGDK+MXEnAIdRvTP0M6IbM4ASKboocvJfMgiMcH
	r3fPHZy3FJeuqzbkBkmZGX/Ud+SZtiNwFkoKEVw/x9yFdJCrJzMnRk1vpO+UL8jo
	ixWYFa7lDQw1qpEhPg4vYhOU3HVxFojXJnR/MGj7hl/Cab1UlUMjY9ouFw7vRdEr
	NRuUlcMPRsZYDhMybex/GPU8AuqghvP8VjFG91ajHQyK7SQGjhr8g9PNfDA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ky6rbv7v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 03:09:08 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA04.qualcomm.com [127.0.0.1])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4A1397wb027124;
	Fri, 1 Nov 2024 03:09:07 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA04.qualcomm.com (PPS) with ESMTPS id 42khveqwb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 03:09:07 +0000
Received: from NALASPPMTA04.qualcomm.com (NALASPPMTA04.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4A1397vU027114;
	Fri, 1 Nov 2024 03:09:07 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA04.qualcomm.com (PPS) with ESMTPS id 4A1397kb027105
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 03:09:07 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id E660565D; Thu, 31 Oct 2024 20:09:06 -0700 (PDT)
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
        linux-clk@vger.kernel.org, johan+linaro@kernel.org,
        Qiang Yu <quic_qianyu@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 2/5] dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global' interrupt
Date: Thu, 31 Oct 2024 20:08:59 -0700
Message-Id: <20241101030902.579789-3-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101030902.579789-1-quic_qianyu@quicinc.com>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hOS9GHrS7yHM0dnBBoKbxCPW6kLEhstj
X-Proofpoint-ORIG-GUID: hOS9GHrS7yHM0dnBBoKbxCPW6kLEhstj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 clxscore=1011 phishscore=0 mlxscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411010021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_200918_667064_31220700 
X-CRM114-Status: GOOD (  13.19  )
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

Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
to the host CPU. This interrupt can be used by the device driver to handle
PCIe link specific events such as Link up and Link down, which give the
driver a chance to start bus enumeration on its own when link is up and
initiate link training if link goes to a bad state. The PCIe driver can
still work without this interrupt but it will provide a nice user
experience when device gets plugged and removed.

Hence, document it in the binding along with the existing MSI interrupts.
Global interrupt is parsed as optional in driver, so adding it in bindings
will not break the ABI.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie-x1e80100.yaml      | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index a9db0a231563..257068a18264 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -47,9 +47,10 @@ properties:
 
   interrupts:
     minItems: 8
-    maxItems: 8
+    maxItems: 9
 
   interrupt-names:
+    minItems: 8
     items:
       - const: msi0
       - const: msi1
@@ -59,6 +60,7 @@ properties:
       - const: msi5
       - const: msi6
       - const: msi7
+      - const: global
 
   resets:
     minItems: 1
@@ -130,9 +132,10 @@ examples:
                          <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+                         <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-names = "msi0", "msi1", "msi2", "msi3",
-                              "msi4", "msi5", "msi6", "msi7";
+                              "msi4", "msi5", "msi6", "msi7", "global";
             #interrupt-cells = <1>;
             interrupt-map-mask = <0 0 0 0x7>;
             interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

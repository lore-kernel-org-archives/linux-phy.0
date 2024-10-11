Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52119CFD35C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 12:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9P9Llo4aCB+ZUUvOcGQCWxPzBrwnGuHoXkuO4GGI0zI=; b=l4emkhIuvakBwt
	2+ZVMCupDzRRdc+Od2EqNjdQ9zP8Rq3k4J+iKmLP1+cutaR9bxyVWi4J/g7raSKmBCkHb26yKKZFU
	cCytmMH8XBxYID15YU3hzK0z+LSSS44TTckWTYot9jDepN1PgnoHHIuupaAjXYPSfRRGk36UdTq8P
	7lRhtTTUIxiFQddhnlSYE+pQDZ8QGpqkfg2ryDCg1+8e7kmGHS+Y71nncOQ21+5WXvbPENi0DZTTB
	cr1gw7sVu3iMY1gy3FvJtu3gMKYt3K0m9lMdBEmp4t4Z3ZxYP8sq3uvXWW2HfLZCBUzhQPSCaVUcs
	h+FPRl17FxTPE5XaSuDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEKr-0000000GCgD-45Vb;
	Fri, 11 Oct 2024 12:01:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szD65-0000000G1EU-3qFW
	for linux-phy@bombadil.infradead.org;
	Fri, 11 Oct 2024 10:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZVvER7EKYdpjeO0na97gVqB32JSVRkCRFXsP1e7yaf4=; b=AYOjepXWintD4Gs+DqetzNGpWz
	EcoCaJjRXgwkLbrw5LEpM5c35/XiJuQ+8P8gW/Jru2XucHQKNqEH5TIJZP+dNbuRSUZLcBQAXFXzL
	EyCcA2Wfn2Bdg4j+LesaJu3yaTTxsqwdEWFGHrVd0igMlekoDUaVEHXbEd6Fjoo/KQwdazuXD/hmX
	B3cbPvfSj4DA+pJ9CHAUPhIfEiZCFZrrPSbI/Dgeq4P5q/N16ssL8C6hdV1k5aegZwWECJOCLVgOD
	eA+I/ThOnQ72/4qFt3BzVml0GT+/mWYpKIQIznfUY/xdd0cNz7qIyN1Z+rJBRp7e8PCG4sDNLQ8Pa
	uaB9LuNg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szD60-00000005rJu-3p9z
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 10:42:12 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49BAJx6O022616;
	Fri, 11 Oct 2024 10:41:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZVvER7EKYdp
	jeO0na97gVqB32JSVRkCRFXsP1e7yaf4=; b=gf0b1P6JQZqqSPwOETuBT/2h3l+
	vpAoawOJHVncNIvlbDTic7+MeBVkoDew6VqYPmfkJEqEpQN3ecU7TX/vQCVdZSmA
	kU6fsmbR7j/sJYHujZN3WNX9nZJTlUFhIfy0mfTCKnPa6/2mq7T20MGPtJtT5giF
	ZYW/1V2fpQ04n/upL4w9XUGcLcgdGUgwn3tf8dqk779VFaFCOMo8wEW+Mr9H/xvd
	NK94GKFtFo8qi+WLUyU4kBnsBv0ktwtY/8osmmd4DuLICarugYAZhy5kY2J62tEn
	n/rMRLo3iKBALsUzzcKr4yjfHtjWHIsl1Bce1n5tfb+kQXYPcHhlTtiIjsg==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 426db7kfnh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:46 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA04.qualcomm.com [127.0.0.1])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 49BAUB8v006873;
	Fri, 11 Oct 2024 10:41:46 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA04.qualcomm.com (PPS) with ESMTPS id 426s8y488n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:46 +0000
Received: from NALASPPMTA04.qualcomm.com (NALASPPMTA04.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 49BAbDGc015180;
	Fri, 11 Oct 2024 10:41:46 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA04.qualcomm.com (PPS) with ESMTPS id 49BAfjrW022417
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:45 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 9AD02651; Fri, 11 Oct 2024 03:41:45 -0700 (PDT)
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
Subject: [PATCH v6 3/8] dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global' interrupt
Date: Fri, 11 Oct 2024 03:41:37 -0700
Message-Id: <20241011104142.1181773-4-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: f8uoAnd4mtInaiCenSKSbvqwnx4jF_kj
X-Proofpoint-GUID: f8uoAnd4mtInaiCenSKSbvqwnx4jF_kj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 bulkscore=0
 malwarescore=0 mlxscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410110073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_114209_382429_AA135D7E 
X-CRM114-Status: UNSURE (   9.99  )
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

Document 'global' SPI interrupt along with the existing MSI interrupts so
that QCOM PCIe RC driver can make use of it to get events such as PCIe
link specific events, safety events, etc.

Though adding a new interrupt will break the ABI, it is required to
accurately describe the hardware.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie-x1e80100.yaml    | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index a9db0a231563..2c0e01fc0ab8 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -46,8 +46,8 @@ properties:
       - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
 
   interrupts:
-    minItems: 8
-    maxItems: 8
+    minItems: 9
+    maxItems: 9
 
   interrupt-names:
     items:
@@ -59,6 +59,7 @@ properties:
       - const: msi5
       - const: msi6
       - const: msi7
+      - const: global
 
   resets:
     minItems: 1
@@ -130,9 +131,10 @@ examples:
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

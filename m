Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385FBFA3730
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 08:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAqa09WwFr5acZZr58Loe+IM+uU5NbJq08alek6LNi4=; b=MyFoE41/sEm4yn
	K/y0jtmPU7gi6hD46AB+Ng0zuRYPRi/Z09+VZNylIm+RvaYNA6d9A8ZRLPD5g2USmwiWDuG6JGtZP
	ZxJ5f3H8KmgIFMaiDQ5vgup7qxEKGzDyoZ1FL4n8GPqQsjOrTn56k2PfMpPhOv7YSmCuZIr/4MW1T
	vTNGhi7Ufgm7fXHh8rUtd81d/NEDQ7v0RRTIOA1hMunR2wfp6eFTzgh17kiU8Re2lR+gPdQTqz0pe
	gTXhmJ4fv0rbN4TLy/3LeC/P8l1zcvErRVyHGeIWkTsySPcfLwaBoxvZ31mnqEG7rWTCVITpt9q4j
	RvAlQgCpBdTi+vB7c4Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1oO-0000000FMoy-36H4;
	Fri, 13 Sep 2024 08:37:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1oB-0000000FMl4-1Z8c
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 08:37:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48CMBNi1025957;
	Fri, 13 Sep 2024 08:37:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ySFDvOWx6bn
	oC8M4HiNhC6v9DvafTD/OqgmgZYdikLE=; b=IrAab1YlopPKUZsWSlw55D+62lZ
	ZSxlTGmcyMsKbhjThjQcs00Q+2f14WX8DXqukigiY3a22m7kjPwNsAP/6eM2K4RW
	rnZDxemMrMDbuonVRMDagXm7o12Xu2lWJBVc16+YB3qNetW7U23fE6YzcTeSJkB1
	7tLk0GWawM7ubrIISrzovo+Gvg09hiS2YFMIWatFnx3mKEh6OF+R03UP9x2aPHDG
	yHba+4P9VcY1SCHov+YzZMwJSc+HfbrvDiHShtA5emrDomJgo/BR0Ey74ZBUrOGl
	UfBfKeCYCzt5g2nLQkE6+bmPkUNQez8Q4NPMy5cO4Az7o5EexV7Pl/vkwQA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41gy8p84x4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2024 08:37:30 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48D8WZMd007733;
	Fri, 13 Sep 2024 08:37:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 41kufwspkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2024 08:37:29 +0000
Received: from NALASPPMTA05.qualcomm.com (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48D8b2dW013615;
	Fri, 13 Sep 2024 08:37:29 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 48D8bSSS013827
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2024 08:37:28 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 966B654F; Fri, 13 Sep 2024 01:37:28 -0700 (PDT)
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
Subject: [PATCH v2 2/5] dt-bindings: PCI: qcom: Add OPP table for X1E80100
Date: Fri, 13 Sep 2024 01:37:21 -0700
Message-Id: <20240913083724.1217691-3-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: FZPNW10Rzr_-6wz16rW0flUtr6QP0MMA
X-Proofpoint-ORIG-GUID: FZPNW10Rzr_-6wz16rW0flUtr6QP0MMA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409130059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_013739_547617_912D0705 
X-CRM114-Status: UNSURE (   9.16  )
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

Add OPP table so that PCIe is able to adjust power domain performance
state and ICC peak bw according to PCIe gen speed and link width.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index a9db0a231563..e2d6719ca54d 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -70,6 +70,10 @@ properties:
       - const: pci # PCIe core reset
       - const: link_down # PCIe link down reset
 
+  operating-points-v2: true
+  opp-table:
+    type: object
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

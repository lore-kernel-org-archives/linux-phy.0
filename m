Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DFF7C5B552
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 03:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuKPEr0ocPq6Ir1PDl0KhNHzdSxWJP0tvpFxXslmdhI=; b=bdNEzIxYycP31G
	EY5AZl2Pjkr+FKTITE/Q8KPzMiyB9Nvi5pjcmnp6/kjdtEw+jsx9xtL7tYrdjbdkMMjzr6JMWgXtZ
	5mZknw728LcyrF0LZB8bN/icnSz+6iABJozQwJm8aUZLHjO/0a8zBhnesHY/L+vRgB8JY/dAJz/Jp
	PzefbXJG2ozjobZeL3JUrj6SiI1pX0vTIqRp8lguMtUdGJo5fubWTN2BxQIRGicNw/FI+cp8SOdFh
	zutCagFIhQcdg8GBQihs9N0AaBwwXrb3AYWudWRCkIiJaIIgBSkhlZpva6P7hgNVFUFup0ZKjzAgP
	oByqWxgNJFcljF20ZrgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKUOE-0000000Ernv-1K5b;
	Thu, 29 May 2025 03:57:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKUNt-0000000Eriw-2WGm
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 03:56:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SKVUjO009425;
	Thu, 29 May 2025 03:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GvTxz3Z4D3a
	LRnzzNQ4lYHjXXC24JvHhufSVlNc6BlU=; b=BU57s/Nahf+kpOYKm7t7xBcuhwQ
	UJ1iI/Cie4s9ofY1iDbGXBu2gF1ruJ6s5h11dPlxQ7UzQaAvr/WGABteMXejhndY
	zUCeAKXskrD6p3h4EUC4SOPz5otyWKi2M3T7TPvzi778qK3s0XGcyAEWXupsBYZL
	RVlFAk7jpSDfNGSg3jPqaz8AevfEP9b2hZsVzL9FhTGLjtl2jbrvwmssD1G1Opbd
	tItTvi5lH16pLtykgEnSxRkQ7BaJjSweC9kV9nFNdGG87qyNjMMo3A5Ec/0JiVZt
	C4/1+i5XDEqjoSetiEKRNN8NlzGbW4qqYCHxvOVUKqf7sx44fjvkvdWfJHg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46x03mtkmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:56:42 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54T3sLP8011620;
	Thu, 29 May 2025 03:56:39 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76mdpe3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:56:39 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54T3udkP013251;
	Thu, 29 May 2025 03:56:39 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 54T3ucuV013241
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:56:39 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 7ED563159; Thu, 29 May 2025 11:56:37 +0800 (CST)
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
Subject: [PATCH v6 2/6] dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
Date: Thu, 29 May 2025 11:56:31 +0800
Message-Id: <20250529035635.4162149-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: SJA3BLb2cEP5ApnslAUV_SFTfLUssDuT
X-Authority-Analysis: v=2.4 cv=FuAF/3rq c=1 sm=1 tr=0 ts=6837dafa cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=XaXDgpzvQ4r-6u6QFCwA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: SJA3BLb2cEP5ApnslAUV_SFTfLUssDuT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDAzNSBTYWx0ZWRfXxUsK54SLnM02
 bczgfdiFwG/AggBdlI+dCF7vyagkKyzK2vKNdGHGXOp6peC6ruLd6Z2NkbNkme1bmZ8xk12nMBs
 yPZdVWq1vnlyE0/GRwX6JAYequsLAc4fgCu4S5vDNW7eV+TcWDTQegritHKmsds3+eb3GYXav5+
 oenxpHsdpttpmyVO2y7P69je/lEp2PJsWfsWUzh3opJlL0QazcfctI8MtfSuuyOQ8Fou+Lx9XkG
 7wMndFBWewoF8BOpGagHMmAJwoeA3UNNMyRI5mRLhKuj0i1ym36aXfrgmnqcw1IBQlckrKHiVoR
 WLz26CNKFigeF7BE1BnfPXrgRPvrdgmrBjIZFgp5ZlXsG/5QoUQGGm487O2/GkQgKVJT0lO8Iqk
 d9J+usRHWDAWuwdgpeij8iA+1pkP1mRqSKzRNMWm1FQK+KvVvwMcX6cq78y8MvHY0btCtT0m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_01,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_205649_754027_ADED9160 
X-CRM114-Status: UNSURE (   8.43  )
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

Add compatible for qcs8300 platform, with sa8775p as the fallback.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml         | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index eaae4195fe43..bca41ae72e6a 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-sa8775p
+    oneOf:
+      - const: qcom,pcie-sa8775p
+      - items:
+          - enum:
+              - qcom,pcie-qcs8300
+          - const: qcom,pcie-sa8775p
 
   reg:
     minItems: 6
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

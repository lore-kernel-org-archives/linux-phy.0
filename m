Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62305C7EE33
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 10:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXaUs8CKOMQ8W1/hTZ6Zx7eCJnvBWW/vxUfrqqMHvLU=; b=OROhIfto2MU4Fa
	/hzyi/EuCOVd2zkEuanPDniBe9+eKbG4iC4QYeEtoHc/4mpIlcmrDhgC5yfNYUVgHbIlHEFLO77DR
	a7f1ELF1BQnrn1XEU4ZZe6zJPMUqwC3jGllShVBFXWIOE8VJ4mETIORa5vgwqKsvp7I5XZ9FvxEBI
	MO1vuSPEJt0v63jXrd6BtQDnQD0FIu8kfSgFBX2j93eI+UVVq0xnv7VIkaihDLWRNpuSPuXtAJhln
	nDgJXAf2SZC3/Xk1oLQ+qHN93m0PGZXqf2en9yFWHMN87MhPqVarPzgcA2IePlJ9RpkfXTFPu78iN
	V9BPr+lPqXkhbsP1GLVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNl4-00000008NMO-0ef3;
	Wed, 25 Jun 2025 10:53:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMOI-000000087lC-0WHt
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:26:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HT+W3hHXggqMsxj4FRlNxiV9sn9N6L38pEYArve70j0=; b=aFBuJXCcJdF6EJbe7dmACIsB+h
	3gMuA1X5LQhnW8LcxM03pZ9WQrbqUHk9dOj++VfOQBBWruPHZzvVnxcj+CKtS9dcfH762X5wA29RH
	RX0e8nwdPI0V2pTDUYVhyUZPWNKjk/sIvGvi6lPoav6alY+erVdffZN06ldUYIiYPPa1/1beSyigL
	QPopoPFjlx3W6OtuAZ/Gl1rA0ni/7J3pS6uSVaiQJCu4S6Sw4cBQoZpJcvbwB9ng4ThzpcbeAvYOY
	MVwprVdF4NJfRglRtoIZBT7jlJBezgvN93tbDYnRCxClFNkCmN0EwVWohxT/KVCgV+0fOZSICNpqW
	wQvko3kg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMOD-00000005jVf-48RY
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:26:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P3w36k014571;
	Wed, 25 Jun 2025 09:25:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=HT+W3hHXggq
	Msxj4FRlNxiV9sn9N6L38pEYArve70j0=; b=oawJQbr9hgvkCr1q8+pn+zvejBy
	JmGKXCy8czCwpA5Nho1xISvVCXShwSbd0T9ouR8MjA1esoz0QYAWtCsaLwAvybCg
	Is6LCi2tW1l3D7EqMN4Dqz2YKi8QzxJSNNkGXw8kte3UFdlGdcrHLFmdLsl/LaMx
	6kh0yZbtE2bNGYTlO4kQ8Ub1jxGCOEtfwj6PdgWHozqgNgJmTtWor/hugB5k5Zpa
	i+8+NNtyyucZQSWPs4X2inEWCy7+bQ0TubIEgee66tdHhHszNa/PralFhWnyeHCK
	7ggXasSNEFSEQRDCH0S3t0Sp8/3IidMrwq6Svq3cFHtyzJsCY33l0ZsNyHg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpyjfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:25:47 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P9Pi9f012470;
	Wed, 25 Jun 2025 09:25:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47dntmavvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:25:44 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P9PiGZ012461;
	Wed, 25 Jun 2025 09:25:44 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55P9PhHu012457
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:25:44 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id BCF7F3832; Wed, 25 Jun 2025 17:25:42 +0800 (CST)
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
Subject: [PATCH v7 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
Date: Wed, 25 Jun 2025 17:25:35 +0800
Message-Id: <20250625092539.762075-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
References: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685bc09c cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=pixhw7HmqKTquG-jXeMA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA3MCBTYWx0ZWRfXw7FEjFEM5S/x
 Kvty3DCcUTq2Z0cbdD7Pzt/b5rCJNv3tXJwTTRIES/yTRR5jS3cC3WJHb0ufXb4g+e5Yba2MV4x
 QaQMI7fp5DrvSqLYpObBpRFcYhLbE+3/JCYB5PCnM5em9aOczR618JOzysbayldTuSbVFlLtZEU
 oJvLnKd93THVbANTZEDrO3QsPvj37Q7KNhQzK4V9uPRwcAQgyLAtogM8X81wFYNdqmxtKBlD4Zu
 J80QTZ3Wv1x2Ocq2V2y4HfBtnfm4VqEKy2LXZYDgavTfV3jlC8ME9pkmV7Aavg3HWCL0qMruBn/
 +kgIWqEiokUwu9+XfUOWdO7vTsFjCrnkz5Oiye1s7sDB+v4eC0hh9CV6mdQxr2+r/82ujzCCrsg
 1Tbr/Y8vlpSHImO32+HyXrdxcWCJQkWgeStG088gRa6EcIv+jrYu/qciFdtWYuDRX+1GJt94
X-Proofpoint-ORIG-GUID: vkPkjJkKW-u3VEJwY4CN_ad0Kaq1riws
X-Proofpoint-GUID: vkPkjJkKW-u3VEJwY4CN_ad0Kaq1riws
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_102558_374358_8CC8C9C7 
X-CRM114-Status: UNSURE (   9.97  )
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

The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
specified in the device tree node. Hence, move the qcs8300 phy
compatibility entry into the list of PHYs that require six clocks.

As no compatible need the entry which require seven clocks, delete it.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 57b16444eb0e..10c03831f9e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -175,6 +175,7 @@ allOf:
           contains:
             enum:
               - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -192,19 +193,6 @@ allOf:
         clock-names:
           minItems: 6
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qcs8300-qmp-gen4x2-pcie-phy
-    then:
-      properties:
-        clocks:
-          minItems: 7
-        clock-names:
-          minItems: 7
-
   - if:
       properties:
         compatible:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB7DC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 06:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WWLjyzoIjJK3psm6ktrf8TMal9uIqlp9Q9bsp6UGaA=; b=PVR0KrfrWvB9Hx
	tB0Z3kk0ELUwkYj3NokDTgCXD2G72sjNJsprKkVIqrTUtjfKT2Vp7bt9q4TInyE0D8DFySh1tD6QU
	srB3UdHfLVcMGvUOR0Tn5Grh6JDZblZsQ8UIc4+/MbYf6oFYzyXfWZADAwQQ900AgX0h7zl1zeteG
	9FOp/xnXwrWQE0Ey1UJwjSqETtonzXvPBksVCgum1KdQJtYIRirQ38SoSlC2WtuDY0iYsJhLT+SWb
	/CDEB5takOxcXtZSEu7HYHvGuWUVURgi1Plat4UZgqmbJdWZdLP72TmdVUemxg6JCamUlDoc3gbC4
	Kc9/+n0Hyy/dcWiY6gVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trWfn-00000001eDc-2EQB;
	Mon, 10 Mar 2025 06:31:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trWfk-00000001eBs-0G8G
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 06:31:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529NA1ib004317;
	Mon, 10 Mar 2025 06:31:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/tPURO5081F
	PrICQmIFKGSCKgrs8xAYOFhkCWL0fi38=; b=NoWBRg5QlydBzan78xgM9haUEPE
	2r3XZvZkgQZivmqQLoWaF6d74hyCx60t4kiNWpWSY3rCsTH8VLXf7xCwDLhVMbaZ
	zD98jw7QvvwDH47lFXLrClCvF5qpQj5KAsf4Vo6WB+Guy88HZxWvWJyruiFx840W
	iOGqkbX7JazhGVXUEXSAthGX4k/zo6hnN1sl0E815fRz4g3jvfv3hBrWwl6JS+yc
	Wq5udXr5zjawi08AcghLeHpqAbLME9uJ3imj9BhbxGxRWqdZKMp/BywDVJFs/zmJ
	bc8CIKp2UgpUJtJMI2ncWTHMOD8dPnUMpfeLJ8rfam3J5LbeXTe0ZzZYVCg==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0w3q7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:31:12 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52A6V922026010;
	Mon, 10 Mar 2025 06:31:10 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 45900hqg74-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:31:10 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52A6VAa8026016;
	Mon, 10 Mar 2025 06:31:10 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 52A6V9gs026012
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:31:10 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id C267727C6; Mon, 10 Mar 2025 14:31:08 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org
Cc: quic_ziyuzhan@quicinc.com, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v4 3/8] dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
Date: Mon, 10 Mar 2025 14:30:58 +0800
Message-Id: <20250310063103.3924525-4-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZtiAWucc4JKCMPcf2Mx3zbszAkaqK-ou
X-Proofpoint-GUID: ZtiAWucc4JKCMPcf2Mx3zbszAkaqK-ou
X-Authority-Analysis: v=2.4 cv=MICamNZl c=1 sm=1 tr=0 ts=67ce8730 cx=c_pps a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=3es8PCumvwSiiIMzMyoA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_02,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_233132_110817_10DB31CA 
X-CRM114-Status: UNSURE (   8.97  )
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

Add compatible for qcs8300 platform.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml         | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index efde49d1bef8..19e3ee1b380d 100644
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

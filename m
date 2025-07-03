Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7F6C83F0A
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxvU7Eyk9/7ypl2oUcNrixgRhkNppYV4cNyQvpM9acc=; b=cEtM/BWhDoLNev
	GsyTZfHezr/AeVLgevAcFPswltVqSo0c++c9GxDVr0DFpX1cof6Vw3ex8Nyc2I/Vbck5O3gkkMfBF
	TH/qDBMgF1bPYd8wFP61Qw5x9+3S6g6HyK2sYbsPkhmTMtoBXoCIJVbQKbMjRnImUnTOJ8NkjdNps
	2eEeXvJO1tLyPo/3TdNJzMc+AeaH0jNOesnMwS4ifMMEy1f6FaKOU0JtFFAwmdZQcbT2q1Gk5TsQr
	UQw/255SNVpgIFldYjh96PvpKqA7cSxlvmR2r46z8o0neGcjaDqaMVZ3/hElbS0WCFvlsgmYnn5Dw
	gMLdTIstH3/VB3w9jGUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGjR-0000000AuzI-1yGh;
	Thu, 03 Jul 2025 09:59:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGgY-0000000AuSI-1zUS
	for linux-phy@bombadil.infradead.org;
	Thu, 03 Jul 2025 09:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SJMDT8sO/+t0vRjgdS8FeHIWnbhJdOjjMvbyFEGG72k=; b=beSBgzKuhzRrQDsVdmB1brnbjV
	TjZNuTX95ftGKF8LJAHK2noKAWo1revlANKqMRKqIWh41h5VZ+jWrHi7M8YqS/a8A/2o4P99WHVpK
	Eakt4S6xYMpYjISZvPchfAoWXAS/sDhWzndhP1ee6MAtaw3wq5WjHXDd/2IRM770ZozfgxyMrCnr2
	MD5aGb5YrdNHKtebKaeDf5035umMV/OHuNq8QexZwAav4uS4EFswdIZfSmTBypgEMxoySjJeLUnTD
	KJCz2EOJi3RDqFVvsAbwoKNBziTfKXniR03Vw+T2CFHJu+Ll1pJndpfS+caJtIHrSHfDo2FK7njl6
	ZlvP6tVA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGgU-00000007f54-2BbY
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 09:56:53 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5636Rips006675;
	Thu, 3 Jul 2025 09:56:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SJMDT8sO/+t
	0vRjgdS8FeHIWnbhJdOjjMvbyFEGG72k=; b=oK7kLlI26v1tiSkD2WN6OcqBwxn
	47PDZWH3QIwROAO5+T1N5EM3BLebq40N7KrW9X8kjYnn5xGa+tU7lIjNJRNpP04I
	Fv/XNRK5pK1Gc1N+ygXMkzP9spn5smjAz+LnxniZhr0UXdX3lYZbLMwPzNCcQhvR
	7bTSTt9J7++HcPeyq0I8bWbFe9ongHnStMa+Q/CNbBpPKstBUC9hTsCcvRuWDg79
	mKV5yQ9jJdIMpo0lo+x7SllK95YWLYotavTccM9ZExTkGiVDqzDs9SO8Agg7qVkw
	f6hUlj5opOaBxTcEc+BczBFTbVJQosvMg28m8prnRKNk+/Kq2Loueh1aGQQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47napw269m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:36 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5639uaUi018811;
	Thu, 3 Jul 2025 09:56:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 47nesbvtkp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:36 +0000
Received: from NALASPPMTA02.qualcomm.com (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5639tBEX016576;
	Thu, 3 Jul 2025 09:56:35 GMT
Received: from hu-devc-lv-u22-a.qualcomm.com (hu-ziyuzhan-lv.qualcomm.com [10.81.25.41])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 5639uZon018798
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:35 +0000
Received: by hu-devc-lv-u22-a.qualcomm.com (Postfix, from userid 4438065)
	id 84EDB3D4; Thu,  3 Jul 2025 02:56:35 -0700 (PDT)
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
Subject: [PATCH v8 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for QCS615
Date: Thu,  3 Jul 2025 02:56:28 -0700
Message-Id: <20250703095630.669044-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
References: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=dIKmmPZb c=1 sm=1 tr=0 ts=686653d4 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Nl32kd9seVdqoUsaBaIA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDA4MSBTYWx0ZWRfX+X1pXjkVMjaT
 luEdIpSjRDLk7PdZC3AFmoaV1XJk9cV7LzSfwQoR06J877AKVBK5MHGSpqAlWq7kcBwzXAMGFvK
 VFaeQ0KDQkDcx2C3+8tzTLkFL8y0sFEjotrsgVslsVnQ6pGspNTsSZvmznhDcRy121iG9F3nyQu
 FUHYTNLzSEbYKySvMVYCSSL+D2KKD7f3t9AHBAyAvewB9UGSTR3T+myeXFiO1vGi9WtI/bKtUHO
 XlU50ioAEllp87TXS2o7B6qb8j3jJJTcAAD5YQX1RQvq/jbK3iZhtwhexCvTd9yGObpaPh7uIBt
 XfGrb/IbSwJDb+VQjYNYgUPBEOCYdMTkTOXXLl/qfvhSunxxxJX2EsvrUcsyNtQagi0djjgTrEJ
 rRKN89daJvH1qWx4QDdWMdRm+jxFYS0h7LJgeLpL+4elIfyv56sdkqjZYxoNRtNX6GzZ1tFn
X-Proofpoint-GUID: bX9_C_F_NhKufWCV3xUGzOmg9P51LH61
X-Proofpoint-ORIG-GUID: bX9_C_F_NhKufWCV3xUGzOmg9P51LH61
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_105651_038421_5D77F41D 
X-CRM114-Status: GOOD (  10.92  )
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

QCS615 pcie phy only use 5 clocks, which are aux, cfg_ahb, ref,
ref_gen, pipe. So move "qcom,qcs615-qmp-gen3x1-pcie-phy" compatible
from 6 clocks' list to 5 clocks' list.

Fixes: 1e889f2bd837 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS615 QMP PCIe PHY Gen3 x1")
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..a1ae8c7988c8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -145,6 +145,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
               - qcom,sdm845-qhp-pcie-phy
@@ -175,7 +176,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

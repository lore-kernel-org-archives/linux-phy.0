Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE06E77183
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 09:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3Z4IE71qSJbWUq/BqiNHfTeDnCzEyJk+D2e/O+b3g8=; b=oHXn7w3peaPCE1
	hJgrbT6JBDNikMyTchxBlh20mrq1kzjuthC2zoBQGmyqY1dY59nMLhleC7l/SCkm6IlcHRxdrwkVK
	8MH/kIc/14ov70D+8ueW6p/6kiYxSNxL5FTTDTvFfRpxCBNj+LbuLRadS4IR7O48VktAjEk4nVm/0
	slQfz54akBNBk1x7u2zgCECxOVj9v8MHMlHL74WlqaxlKns1rk38UW1r3bq2j+TCq8945cP75WOM/
	S/HVF8jCsVywybPKJSZVISWqwRvHThDkWrLcVTImCpsOq3WH6eP48nkK8sgG4QQN0LJ5P3un/I/eI
	zadzLAJnzjscnTr4xBJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7p6-00000009bD2-1uBg;
	Mon, 16 Dec 2024 09:55:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7p4-00000009bBl-1fcR
	for linux-phy@lists.infradead.org;
	Mon, 16 Dec 2024 09:55:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG5Rhte017398;
	Mon, 16 Dec 2024 09:55:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uUE3tRB9XophDfLLN1/bhuNeRGbIsPz+qQHLVwmY5oU=; b=pxZL/8jnRDCqJ6KH
	qA/kxR3Hp5mJDpH6c0y5VQFU+YgKaJ7cN+qWK4EXTZewhSy4ya+5LnHstacXH8vQ
	jg4MZzCtoD2/1JFggGP4OLuT+M0aMd+v3wV3ejSHrrtWzNjTY62XQ6nDrcZb8suA
	cfj4Etfeic0zOaaVpCxcvlUkT+4oq8fXW0NfAp01xQxe2djZHcPa5YVBNkpgXd/L
	Lb+bMVULJbyAxRf7mTJlTqg1lLPMFOULZ0DdU6lgIHkqzonaKY71Y1gk7v2XmMEy
	HaPRIuQ0eWcGstSFl/7JMZip8Op5BblSQXMogzIlOT+Uvm8yCkcKACAqvCbutpqF
	oAaHGw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43je300t5e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Dec 2024 09:55:13 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BG9tCGe012101
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Dec 2024 09:55:12 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 16 Dec 2024 01:55:06 -0800
From: Xin Liu <quic_liuxin@quicinc.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller for QCS615
Date: Mon, 16 Dec 2024 17:54:37 +0800
Message-ID: <20241216095439.531357-2-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241216095439.531357-1-quic_liuxin@quicinc.com>
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: QAoNSTYPXuyvy4FujDjU82gM-olcaWFA
X-Proofpoint-GUID: QAoNSTYPXuyvy4FujDjU82gM-olcaWFA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1015 mlxlogscore=942
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412160082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_015530_558370_134CFE2E 
X-CRM114-Status: UNSURE (   9.46  )
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

From: Sayali Lokhande <quic_sayalil@quicinc.com>

Document the Universal Flash Storage(UFS) Host Controller on the Qualcomm
QCS615 Platform.

Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index cde334e3206b..a03fff5df5ef 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8994-ufshc
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
+          - qcom,qcs615-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc
           - qcom,sc7180-ufshc
@@ -243,6 +244,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs615-ufshc
               - qcom,sm6115-ufshc
               - qcom,sm6125-ufshc
     then:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

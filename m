Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E972D60D09
	for <linux-phy@archiver.kernel.org>; Tue, 19 Nov 2024 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HSYxZU/9b3yP4Xulz3VgAI2aLA5E1YdV1h/Ioe5/uA=; b=05/9WylgG2hfPs
	mtRvzNcg4Qtv5Lvzt+oBO/Cpg4JOH/8lUWoSq0DJO2mc+rMeMKmx5pfFv+pnKAJBvSgTRnRjTaXWv
	hwC+zDBJIBL4gmwYb7lRLqJ7krI1cVizcCSwO0Gc4jZKlDj0DsnX1UWKlB2GV3Iu1jrx2MNBHCPmH
	FiesSrQ/U+K7Jh8HCpX9gMGFZR79g7oqe4Nw/GivLYrWQ2tGe6OSgb2hNMBsSz5bfXVgwW7Hbjuj6
	DCYztR9LL1gnjqXmbl8wjWcgIj5dQusuLGKyMY4Rr0oSgVHvTgopq9omAJ45ZcIGKXJVdYeH8wNSq
	7AhOj7l/QlkQ+6rZ1www==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDDsG-0000000BAgM-3PyL;
	Tue, 19 Nov 2024 02:21:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDDsE-0000000BAfc-3V9o
	for linux-phy@lists.infradead.org;
	Tue, 19 Nov 2024 02:21:51 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AIGGkeG027540;
	Tue, 19 Nov 2024 02:21:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wLnUWhEzMYKQHfZldv0gxMyidQoyepYsN6CD8gEt6R0=; b=U4LATvQp4bMnx6zi
	Dp9pGYPIdBEVFI9kIzxVYbU6X+0OtOjeyiwp/x1GvJo4/0YNVxoTl6K9Fe672NkL
	7QaqbPrxpE4czjCPGidofjXSQQGZ3hOjUVqiZkAkVvoapE82LNBEfiwCAS2maaJM
	2tTVAjL/L/IhBUOjQSlEn54OS5UW+mhtEIs2mYizkTuSxMh2YdbPmqO5ydeVEWe7
	ZNz+RrV5IUlO/to8AspTPhHfxxknkGzLN45uOjK2v15d2gRkd3q8ERSgssEdwjnv
	yAYvD6IiLyeiJXBejhMjmTOhUkuMGi/OTPXakCxfjmk3cmCW3h+cmmTqK0eFz0pl
	Lo2THA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4308y6s58m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Nov 2024 02:21:34 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AJ2LXeF022419
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Nov 2024 02:21:33 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 18 Nov 2024 18:21:27 -0800
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
Subject: [PATCH v2 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller for QCS615
Date: Tue, 19 Nov 2024 10:20:48 +0800
Message-ID: <20241119022050.2995511-2-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: l0qKuuhfDERJyyltXSScfmoDtMplNT-g
X-Proofpoint-GUID: l0qKuuhfDERJyyltXSScfmoDtMplNT-g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 impostorscore=0 bulkscore=0 mlxscore=0 malwarescore=0 mlxlogscore=957
 phishscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411190019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_182150_877226_CD85EFA4 
X-CRM114-Status: GOOD (  10.24  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
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

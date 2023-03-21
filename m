Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31768C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 08:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHEFWhK+1Xqym9i5cG4htf8FhXwztQ4xRsoGrd9yXTE=; b=2sRh59QDDnrY/O
	F4mhFQkfzmAQTrlE6DrxH2k5bcyF1jQul9sgfUCl/6ixDLdPNg+CCo6iaRUOyu6lwxjicy4GiLyJL
	FHdffv/C/gPb6CvX9wRthOPRn7BR1qIxDvcQ7WB3/tAcMJHoOrP1ajst8l2p5zmBrfzU8g5N91JxV
	46WdBjA6nJXkDW2PWvawwu+ajTT5NniQTPz93P3WeSe9mYCRMs2cU9xDhnPX7ib2lsJS5nTiANBuX
	wIOuCkfRIPi4toUCuX8Inr8FxHfNgofsDt+CTOkhWJEpnGtKOj2jk5a701WgVI4XL6OPaytLtmnvk
	g1OKXFHginuzBAgXohtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXmL-00BnjK-2a;
	Tue, 21 Mar 2023 08:55:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXmG-00Bnff-0m
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 08:55:33 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32L7pFVQ014258;
	Tue, 21 Mar 2023 08:55:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=1MeQRV6HcNTZEnZ+Y7i+R+bzZzqvY12suehpZJn/G0c=;
 b=XjP3GkIY20T76T25kENKTDxoj3kqOLaKuDQnXwPH7cua0Ald3bu+aPZsNVsFXY3Xd0zF
 C+iVBAH1JJfVHWd6jKRfUsdvsUQLWBw4QTmydED5h/T53nGq38cTWNL9Yokj4iWP0CFg
 LNenZC/dwya89Uw6qdFwbCwRu/+ppn9MiC3bI+JgZUgsS788SkyYzPsd+8DLPEGTFfJX
 lE59DsoIx0+ZjV47hQ/HCrQIe8vGwFSQTBGmt06CpMNA1FOSAK/mlOhE3VyFOGeZiKqT
 d2GhjYh45xq3H+8GNKJIOdcNWs4a4bGQEgC0675HUz2XEJ6BRMUu/bCF0nz9sgvgKyE7 lQ== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pen6hu0nc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Mar 2023 08:55:21 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32L8tJcF008212
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Mar 2023 08:55:19 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Tue, 21 Mar 2023 01:55:14 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v2 1/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
Date: Tue, 21 Mar 2023 14:24:19 +0530
Message-ID: <ef5af2e581203e2101773863aa7e1667b4d1b705.1679388632.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1679388632.git.quic_varada@quicinc.com>
References: <cover.1677749625.git.quic_varada@quicinc.com> <cover.1679388632.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Pi-QUMrSmY3rMQ5QKtOmFLOXSCUifvF5
X-Proofpoint-GUID: Pi-QUMrSmY3rMQ5QKtOmFLOXSCUifvF5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-21_06,2023-03-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=922
 malwarescore=0 priorityscore=1501 mlxscore=0 bulkscore=0 adultscore=0
 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303210068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_015532_459169_0FBC1EBA 
X-CRM114-Status: GOOD (  14.74  )
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

Document the compatible string used for the qusb2 phy in IPQ9574.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

---
 Changes in v2:
	- Moved ipq6018 to the proper place and placed ipq9574
	  next to it as suggested by Dmitry
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 7f403e7..eaecf9b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -19,12 +19,13 @@ properties:
       - items:
           - enum:
               - qcom,ipq8074-qusb2-phy
+              - qcom,ipq6018-qusb2-phy
+              - qcom,ipq9574-qusb2-phy
               - qcom,msm8953-qusb2-phy
               - qcom,msm8996-qusb2-phy
               - qcom,msm8998-qusb2-phy
               - qcom,qcm2290-qusb2-phy
               - qcom,sdm660-qusb2-phy
-              - qcom,ipq6018-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

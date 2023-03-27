Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29E1C76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 09:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WZMUiWpMtvPG8Qb8cTHwZgBAIKD0yJxdhwFH6u5tDw=; b=RKXd5QrwqXTqPA
	GwvSFeQSladINkECMsja4JDyFgf5p28g7+mRvZcJMDZbkYO1S0WEqM9clBqKsM/PWRbeoBNpVAi3I
	TPp+uL9t1l51iH7BrUKtGOd/Eb7FHOaki2a1BW/RnP09f66U+gSCsfOea0e3U3q5pSu4MhFlWbbzF
	R5C33YXd5vafCzo9XYh7FkqyVUXMJmItPrtwS5wBH0NFvwbPB07RYQ1OkSbWWxkDtEt5jBhqkRno0
	8ZuBeNLkLVCkDWbjMnBiHj0IzpWOTHJCGd2ZefEbB8nfXiZs+52Zqc2g+3T0dHJj7bjijeRmnBVgG
	3y6RJvYVo3wYQ06wakiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjCZ-00ATsM-0k;
	Mon, 27 Mar 2023 09:31:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjCW-00ATr0-0W
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 09:31:41 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32R3N2Rg022860;
	Mon, 27 Mar 2023 09:31:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=OV8xFDH7RRsBPXz9XsNa4NI6cIavYqxCs6oaAp1Pq40=;
 b=jZjvJJi0il/Jv6e0S9Vr6/2AXBMifO8DzVV9elkK5Z4iCRJQQxtEwm3I8rfjZCyuEwEt
 1fN28s0NLe5WOLq4WO5FrOPxouJkyCTaN7cLlzXxz9t3/IfUnCwMx7bUMwp6fXR2xP+g
 MHkbdj+6vZcC9WyYyt82TG8da5k9eobrKdzCw/1HigrH7jAgng2fmuNNQHaD0ocy1S5/
 DxlhBjQXAd6VVWpRAPzqebWfCRadlQ+T1dnuiEYDIqKAMwN71HhPKPcQDpw5Nu345lif
 csLXj71yCCVm18suRn0OHpSHUROLwvR96IYSppAq0U97BSh7tcYgHmzEctrGK/rOxV3+ Iw== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3phsr340g6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:31:35 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32R9VYOo014090
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:31:34 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 27 Mar 2023 02:31:28 -0700
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
Subject: [PATCH v4 1/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
Date: Mon, 27 Mar 2023 15:00:53 +0530
Message-ID: <ed2abc0c260664c3039a4e7084ed9ebab1151a9a.1679909245.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1679909245.git.quic_varada@quicinc.com>
References: <cover.1679909245.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 5kXF3ll45sp7PLpoSr6dea4ZsIbTqBJd
X-Proofpoint-ORIG-GUID: 5kXF3ll45sp7PLpoSr6dea4ZsIbTqBJd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=956 mlxscore=0
 clxscore=1015 impostorscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303200000 definitions=main-2303270077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_023140_319228_7673BEA7 
X-CRM114-Status: GOOD (  14.53  )
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
 Changes in v4:
	- Remove constraints not applicable to IPQ9574
 Changes in v3:
	- Maintain the proper sorted order

 Changes in v2:
	- Moved ipq6018 to the proper place and placed ipq9574
	  next to it as suggested by Dmitry
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 7f403e7..3cb27da 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -18,13 +18,14 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,ipq6018-qusb2-phy
               - qcom,ipq8074-qusb2-phy
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
@@ -157,9 +158,6 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
-  - vdd-supply
-  - vdda-pll-supply
-  - vdda-phy-dpdm-supply
   - resets
 
 allOf:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

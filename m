Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665ECC77B61
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iL8EYP5SsiyT76f5Cd7pwCgmBRh2epXyVsLQYseioAI=; b=SZoLMaq9Mj+T/p
	53GxkzprzWjV5MgZPKqHWW3xT6hFw4EdUz+bVNPSwk1t8nw6u/KzJjtp3TOe6wF7mWPQgoJ+vReae
	goPmhO667pE7UzxmbCVJBpNB1t33XXgFFg8gtSHM5qpPJY/eHy/cATG83aPkNnRxMbSaGSO5rJuBH
	z0NHkZvhEsWZfJdyDK8UJu1QRobXGuPoTiq6MZ4lRXcUoOwspFhInnIZfx9DQCV8XnxC/tHpIBVzs
	2lSbdFtOuOjE9GYCFQBFn/8YM4hpZaU+SNvvIjK5ARWS4EIH3O/1KTwTyYQD7p9X7v2EmT1vft78a
	Uhcnw1w6mCjfW5LkleFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phnqZ-0037AU-06;
	Thu, 30 Mar 2023 08:41:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phnqR-00377b-2H
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 08:41:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32U3m27h004414;
	Thu, 30 Mar 2023 08:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=OBy+P70wE6KNfrZhs1H5i9/av+o4U7m+SpH4ysfBpa8=;
 b=MADKL9c2o01KKzW3v3Q3BBtANXsSejGmEUjwk5sPqua1m8vNYE2qHWQ+jCKsnIdfMQbN
 ggfuSH831LTSjouCAP67Gj4lObK4aSueaSTedRRYgsQqQVb2+oo4zCzW6nf1s+wY6K2l
 QV1Tkt1dAr0LK+FbqDkIpl8GyGvijqMA0+VZC6+NSF/mCU1QziPPEIDQkL/PodL31pCP
 FN/ywjR9xOqPG5Y4rWwRjwRprbhKWPs2yxByuIy9TCBjWFg/XU8u2mtoJGfxTJEDc267
 xe1zYsFCslEy7jyl5VZLkI//ElISiM9kwYqA8AcmHrIdkp3VAvGzfBbNhupXhTuG+Qeb 2A== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pmpbm2sca-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 08:41:15 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32U8fEtC024274
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 08:41:14 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 30 Mar 2023 01:41:08 -0700
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
Subject: [PATCH v5 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3 PHY
Date: Thu, 30 Mar 2023 14:10:44 +0530
Message-ID: <02c5869650f103fcc1ceeaf56fb542cccc66a80e.1680162377.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1680162377.git.quic_varada@quicinc.com>
References: <cover.1680162377.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: xI_BeSEiADn7aYcfl25mZNacLrd_5Mkp
X-Proofpoint-ORIG-GUID: xI_BeSEiADn7aYcfl25mZNacLrd_5Mkp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_04,2023-03-30_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=809 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_014119_860939_D6DEE9C5 
X-CRM114-Status: GOOD (  13.63  )
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

Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
Note: In the earlier patch sets, had used the (legacy)
specification available in qcom,msm8996-qmp-usb3-phy.yaml. Moved
to newer specification in qcom,sc8280xp-qmp-usb3-uni-phy.yaml
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 16fce10..9a18410 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,ipq9574-qmp-usb3-phy
 
   reg:
     maxItems: 1
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

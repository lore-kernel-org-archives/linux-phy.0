Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 654D7C4345F
	for <linux-phy@archiver.kernel.org>; Thu,  2 May 2024 08:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnIpN3pfGGdBY623P3GpwVMuRYGsfCrxi9PB9ZKQ9s8=; b=MBrhzPTl7UiZyo
	b8CbsCSp3L9bgFNd8RI7uzUzUVqJNkkxhN+79e1dnL2e6nXCPa8EBhUigdNhqujS7vv79agUDV/SZ
	d2dBGZDUWkrdgW4ypY8DjvQ28RDivHvV6SW3HXobQlH3YKt45H4uBotsSArvcvcRVgu7FoGl+xPbT
	8wzwHta11ELN3FgcV4/8KMetFSxvUc1E+ixpeATq/fQoXQM5K6dCv3Hv4W4uzrCXaec9gaRHcr58i
	WxM+9Yu6gy+B9tippLswpslenX20FyzyuXxuQHz08Oa/4aVE5WlFKERECfpWP5WpyvYuPFINjoSAy
	3c6Ta1VJ5XnGX7ZuzVVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2RgX-0000000Bxk3-3glq;
	Thu, 02 May 2024 08:20:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2RgV-0000000BxjB-1ChQ
	for linux-phy@lists.infradead.org;
	Thu, 02 May 2024 08:20:56 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4427irf3006689;
	Thu, 2 May 2024 08:20:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=o4hkC92p8NA7U4KA/mkcZp23z2aLgUW5upnNp3l5T3I=; b=Ab
	umnsxGnFeGN0NVxtIolReyuPW5KjyCTk+XMVQpOgs9saKs7vq276FcsJvbQQf0uk
	jtN8aVyFogKBrK063BfSCMMthwcn4NspIAn1AaTheS2mHldE4ZGW0FZJXJcGs7ZM
	GnIXZA6MYnOhS6U5eBYXNFCYCr42Ys80FeP74Bwv/T6IisZJHkr2zkqg1Sa6N9oa
	lx6n8OBtS8p4A983n1njfW1s4qX7c9PKh1YrPG8mpA9Jjs9V+aANyJ1Bvw7Sy/jC
	Y0jQoSU4p608TS2QUx+b39d3elr+0Ejo2VtNphl7oDK8xJj+jtpltZLPUZFNEhhX
	7tw0+O0rIbCoRE7ipfzQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xv6q0r28e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 May 2024 08:20:50 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4428KnCm007831
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 2 May 2024 08:20:49 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 2 May 2024 01:20:42 -0700
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Adrien Thierry <athierry@redhat.com>,
        Mantas Pucka <mantas@8devices.com>, Abel Vesa <abel.vesa@linaro.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>, <quic_ppratap@quicinc.com>,
        Jack Pham
	<quic_jackp@quicinc.com>,
        Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
        Komal Bajaj <quic_kbajaj@quicinc.com>
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
Date: Thu, 2 May 2024 13:50:14 +0530
Message-ID: <20240502082017.13777-2-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240502082017.13777-1-quic_kbajaj@quicinc.com>
References: <20240502082017.13777-1-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: YUWZChcqim8WdbQ2DDoqR7AKC6QjAZ4M
X-Proofpoint-GUID: YUWZChcqim8WdbQ2DDoqR7AKC6QjAZ4M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-01_16,2024-05-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 mlxlogscore=992 malwarescore=0 phishscore=0 adultscore=0 clxscore=1015
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2405020049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_012055_358545_20DCDFF8 
X-CRM114-Status: UNSURE (   9.82  )
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

Document the compatible string for USB phy found in Qualcomm
QDU/QRU1000 SoC.

Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0f200e3f97a9..48afcf6ed9df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -25,6 +25,7 @@ properties:
           - const: qcom,usb-snps-hs-5nm-phy
       - items:
           - enum:
+              - qcom,qdu1000-usb-hs-phy
               - qcom,sc7280-usb-hs-phy
               - qcom,sdx55-usb-hs-phy
               - qcom,sdx65-usb-hs-phy
--
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

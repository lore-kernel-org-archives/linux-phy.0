Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB8BC7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 09:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pb56K0U2AuMuOwfaZ7q4HUKKn66Rpmli9nvYSlcIqPY=; b=nvc9E/8rstBYFj
	lRFWIfiVWl7kkpzw4HITkdMzweTTy643bfhWPORjFJKZKlgtmE5zi9mX34DDuQW68DFfqD5vLkCGI
	72OOScJDs/DGgT22l8uEqrZFgJcT5TzTB/P6IvM+S8iMRMVIH4YKfCd/iAPcjNfXPrpP3Mz/nsYEn
	aucsuElGZgL9/L4pgjOgUkddhqQZuzvgfKF6tEF2i0A6YDXl2779lCjsBiRC2XmE2wVQUa2KR83rO
	LomcSoDUXCyS2IJZF0uXKMmikMRfX21yH2mMxh9Vu9f1YBtz/E7CAsL+TPnt2lQLbYxO7G7/GtO5X
	mRSG3aLiK/xWlG5jJoHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzrg-0041fm-07;
	Wed, 05 Apr 2023 09:55:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzrd-0041fA-1d
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 09:55:38 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3359cGt2030593;
	Wed, 5 Apr 2023 09:55:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=2u1bt7sISW7gYR56t/sEB8xayuIhGFjBWFB7FY5nIho=;
 b=SZy/eNBnBNciwwLKcZYqungWMQ7PMe18APjwdFfpE5KidHxoPwHS3LDor92+U3ZEhkb0
 q0IhAVTYGlhJjlXgC+SR1JeTOP/tTcqt/8WRWTDHlCp+k5ttK8U93rIA01PJqBqiM5BM
 PrR6KIYFY1F52loN6WuaiD26TBQ9fgH69EkeIHsIzCcQiTHhSY1SWrP6FI5LnHA48bmI
 0/FgBPtjhXrGV+S3nXzeZkC/+z5VyRYXdTBr3Wv5vRKuQuPaourqzPkg0egVrMnwF205
 2gJRMm8057FN0spNxBfhQNufMFt0CdO7HctnJUjAxL2jd05tOW7WAV6iWtToh9kQOATm Aw== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prg8wue2d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Apr 2023 09:55:33 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3359tXXd032481
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Apr 2023 09:55:33 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 5 Apr 2023 02:55:27 -0700
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
Subject: [PATCH v7 8/8] arm64: dts: qcom: ipq9574: Enable USB
Date: Wed, 5 Apr 2023 15:24:05 +0530
Message-ID: <2ba6141bff3dc2a29bfc7b7b6a05cc7a5e609c5b.1680688209.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1680688209.git.quic_varada@quicinc.com>
References: <cover.1680688209.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uFCq0-tFWVnwJHmEn-AsxVEMIAzBKkIH
X-Proofpoint-ORIG-GUID: uFCq0-tFWVnwJHmEn-AsxVEMIAzBKkIH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-05_05,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 mlxlogscore=668
 adultscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304050091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_025537_545845_EDA8DA98 
X-CRM114-Status: GOOD (  13.78  )
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

Turn on USB related nodes

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 Changes in v5:
	- Move "host" mode specification to board dts
	- Due to dependency with earlier patches board dts
	  filename changed ipq9574-al02-c7.dts -> ipq9574-rdp433.dts

 Changes in v2:
	- Fix node placement and coding style
	- "ok" -> "okay"
---
 arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
index 859973b..92ff7ee 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
@@ -44,6 +44,10 @@
 	};
 };
 
+&dwc_0 {
+	dr_mode = "host";
+};
+
 &pcie1_phy {
 	status = "okay";
 };
@@ -107,6 +111,14 @@
 	clock-frequency = <32000>;
 };
 
+&usb_0_qmpphy {
+	status = "okay";
+};
+
+&usb_0_qusbphy {
+	status = "okay";
+};
+
 &tlmm {
 
 	pcie_1_pin: pcie-1-state {
@@ -173,6 +185,10 @@
 	};
 };
 
+&usb3 {
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <24000000>;
 };
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

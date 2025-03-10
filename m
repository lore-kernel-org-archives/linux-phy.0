Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9602C35FF4
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 21:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOcw5/dwowZtGe/gv8qheiQfxrt/VKUGFDRioDyKflw=; b=M5Bo4rxSkH6vzP
	C68wML93lUTw3HeNbFaCEb5paWnWGVzOHIHuwci3Vf21Ie6em23e45M93z864gkZy40igxZQNzQQ4
	UfpZ0nU7dg5aWJcmtgSl9Y1fD0bIKKUg30bsJGyuLZEcppVQX6jA1ZQEPChZF8Ae0ZbsRvq8vzl3x
	zo958zKadiWFsUoba0p5zNg3Dz0SWlFZOjDwYTYB6n2nQMqAi1zJhaN9PIXlMXb/4DrfDxW20srco
	xBBch2LIYsAeC3DR21dfIHqMR92SEA624gOv6jnoKrkHliCJLcuDbAVAoBK2XYLCBxOeWHXvpBPil
	BfU7uem5kV31Sr0HqvBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trkUM-00000003ziN-1m4k;
	Mon, 10 Mar 2025 21:16:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trkRA-00000003yvZ-2fUX
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Mar 2025 21:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=CC:To:In-Reply-To:References:
	Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4GBzjcKHWukf6zhLpvItoGIImOhAJr9aLYlHFn+XiGk=; b=erCxc9NL0g8GPzYQjjdusxAnB5
	GVY/lPH5bQrgM3rQUibCxYofGNBMymm5pl6uELGTPI1Pgi0JZDbpfJdRc8TAnB1yOXR1Ah53xP2jC
	tWbuso2dgjfpJ1U3BLC6RG70b0c6QmOzoTDoBOlsMILqByqZT91DTFIDsHDTncPqFa9YmyRGjK/xC
	gSM8YqUwuD+Qak/W5h+Tuh05LRobOjQ1fWebhvCg93fjZYzqaNqhN8WN4SNy7rSs4YXmrKwMlhHaC
	SO77KSIsmTv8l9e8e3ru1am64fWIFuVoW4JiTNavIFh18jjyajaMYlmqslOl8xnfQhGOAJk9UJE1d
	aKmW42RA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trkQu-000000022hm-3QjJ
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 21:13:12 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52AKnRQk031779;
	Mon, 10 Mar 2025 21:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4GBzjcKHWukf6zhLpvItoGIImOhAJr9aLYlHFn+XiGk=; b=JPiXPI3PSDS+gSSI
	Iy4A++lHHAiESGNF5K22wtnpd9Q2aduLshQZdCJCgiaQ8Q9xpO3SvOJ4obdLgCWv
	Y58RaLp1l4oil3mS3CeSjSqygDhpI6sDaptkuCdbcmsAQH8zv7+lJqSsxznKDkSv
	TlyVGk21zOnxjKsWtGOzi4feDAuWd+8j8TQnhE4AnSQrTruTtVoyW2K0gpXWesJd
	BMJ5TzDnVUyz7K3vlC9K4JsPLcKNodGJv1Vt5Ijo2++LOq3aHk58Q8qx3qkxWmIo
	45C1MLje6bZYnIfY+OuZ6Ntufy5JmKaAtHIvCNqq1kS4uPyVntHoYJ9RNQ+QhgrM
	RG8wsg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0w65p7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 21:12:45 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52ALCiKg030315
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 21:12:44 GMT
Received: from hu-molvera-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 14:12:43 -0700
From: Melody Olvera <quic_molvera@quicinc.com>
Date: Mon, 10 Mar 2025 14:12:34 -0700
Subject: [PATCH v2 6/6] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 QRD board
MIME-Version: 1.0
Message-ID: <20250310-sm8750_ufs_master-v2-6-0dfdd6823161@quicinc.com>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
In-Reply-To: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>,
        Manish Pandey <quic_mapa@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741641161; l=1189;
 i=quic_molvera@quicinc.com; s=20241204; h=from:subject:message-id;
 bh=TjNnq0bo1snKIna/Dt9u/bFOfXNFpyIpmhE3rd5HC1c=;
 b=4k+nCLAbdsqebqMnWPZDYbLvx3CFQfOLk9X17+RY8D/Eb/Ji4bI/lQvzQgZYpYF0ljwy8KKAL
 eNguARQqkpgCZA4WRJ8Un/S220aucSaDpv6bwBVzzNAQA6G9zJGRB/d
X-Developer-Key: i=quic_molvera@quicinc.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: csiOHH4FMsuTJHyxewwws7iJj8ncP78O
X-Proofpoint-GUID: csiOHH4FMsuTJHyxewwws7iJj8ncP78O
X-Authority-Analysis: v=2.4 cv=MICamNZl c=1 sm=1 tr=0 ts=67cf55cd cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=3H110R4YSZwA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hrXLu3QTvXQGvIIKRjgA:9 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_08,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=882 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_211310_726290_66806F1D 
X-CRM114-Status: UNSURE (   9.77  )
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

From: Nitin Rawat <quic_nitirawa@quicinc.com>

Add UFS host controller and PHY nodes for SM8750 QRD board.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index f77efab0aef9bab751a947173bcdcc27df7295a8..8dd82494ba5aea6e6b5ddafc9299ec68dfb84bcd 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -790,3 +790,21 @@ &tlmm {
 &uart7 {
 	status = "okay";
 };
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1j_0p91>;
+	vdda-pll-supply = <&vreg_l3g_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 215 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_2p5>;
+	vcc-max-microamp = <1300000>;
+	vccq-supply = <&vreg_l1d_1p2>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};

-- 
2.46.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

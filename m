Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC0C0E7716D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 10:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOfR20aUnXblS+LQQqvWGgXAdcKKRhdv2848+tzrsWQ=; b=ilapBnOKNe0KmS
	/Mj/rx89SPaUY1hEomsLkvaV/YDHO4tPrO9fUAoBCmZsIzZkGv+awtEz5q7+TpJhoy4QDJTz6xBZy
	m+a2QoTZEFXrgliFZW4V9SxmqVg+ZpVv9eTv/KTtWurVN9hIy9BcpY1R46Ra6o27IRrW5jUfXxezH
	gGpM4WtfVRrVJPYvN7m5KHAXvv5U7XGr8uD5AtsY3Y/WlW0P8LLj5iCs3T1FjwPmbjj/pNAooq0VQ
	voRvtEe3YwmLWiTibFnhmXguyfJpZaxymbmJCekwt7FiAwc2oiqAiLmFKPVemjsnYTAIWkSo2UhV6
	HXGkTX2TY1PEXtXiQ3oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIn0D-0000000CHHv-295d;
	Wed, 04 Dec 2024 10:53:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIn0A-0000000CHG3-3HpV
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 10:53:03 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B46k3nr005923;
	Wed, 4 Dec 2024 10:52:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=27nhlilwqiE
	Waw/RZVDI8NiNZslOiFH8bwBpvz74TPc=; b=prFziFC7CUdI35/2zSQF1ufcHyi
	zSPSe58y5EXfsrsTsT00WJ2j76EAc8z1GY9Yuvl08BTBJ/zuNZhbCwdJUAiRLUMR
	+CUn9YEDSadLc65cDgyvONBTbYsv0apl1FX5oQ/qM/a7hXFyeDaydtAyN/new3dq
	uQyPeilvgs1JWCpqnN/VhUf5boOBEPkBewxv4ekeAxDNqgTNdmAEomHi5glsTUnM
	Zg0LDxSPyyvXJz8xb3XLWRM3l0DEiPRGzKncZWsSQmNAdCHfBym9n4m2rbQaaHak
	8NqiLrzVmxRZ8YQMZjjmmTqMy805xLn4dJzfUNO1GASpw4r54sw4COgxiWw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w3ekxmm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:58 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4AqupG009212;
	Wed, 4 Dec 2024 10:52:56 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 437uskmrtx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:56 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4B4Aquwg009146;
	Wed, 4 Dec 2024 10:52:56 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4B4Aqtag008997
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:56 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D84BB19E3; Wed,  4 Dec 2024 18:52:54 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH 3/3] arm64: dts: qcom: qcs615: add pcie phy max current property
Date: Wed,  4 Dec 2024 18:52:49 +0800
Message-Id: <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jIcWJVyQ7X0Wsb1_SJD_gOOtJWpwQOi2
X-Proofpoint-ORIG-GUID: jIcWJVyQ7X0Wsb1_SJD_gOOtJWpwQOi2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=954
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412040084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_025302_824630_E4685BA8 
X-CRM114-Status: GOOD (  10.70  )
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

Add vdda-pll-max-microamp for vdda-pll-supply. The value of this property
is from the power grid guide. It is the maximum current the regulator can
provide. The property will be parsed by PCIe PHY driver to set the current
load.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 18f131ae9e07..6d93ef0d886b 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -215,6 +215,7 @@ &pcie {
 &pcie_phy {
 	vdda-phy-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l12a>;
+	vdda-pll-max-microamp = <165000>;
 
 	status = "okay";
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

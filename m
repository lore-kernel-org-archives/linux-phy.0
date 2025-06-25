Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2054EC7EE30
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccCSHIh7NarI2psGyJJpcVJgjNpvDCNLhJWmDmlw928=; b=K3AZA47dnqL841
	qyq30ZdiBNpLhWcFgvMkksgakhrfqLNXjpU2HcAo6D6qz9BfEMiiWAqMUX3/cV9Ad/gyjMUIPLJOZ
	FrH0Xs2KgbdTCOEsPc5TkvE6Rey2OIHUDiflW+Ybvie/27tDZ6QH5G88YJmaAVdZW/mvC0X44ukVN
	3GBqpVsEJdzwAkgynd4lvOHgG7n/iigJO5O8ZNOjgWclu0ABBle7N/isQqxmHonznWy5gqgoGjyg3
	YVUxAkT07gSDov1bPmnudQ3/Pv6lUTcNYx9xtu8xWZBVObgp0wdxNiwJdhZtcVjwZtEraOUMjU/VR
	rQjqXft1TeA3xgEXPd/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMo2-00000008ChJ-34ra;
	Wed, 25 Jun 2025 09:52:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULxZ-000000082zC-0HxC
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 08:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=G1+lkP2gGBxhf/sz6pg4wT4ELrreQYXqFDPuhwZPnDA=; b=dWcvMSqfgc2YNyUsh+b4dif28/
	BCsjm1s8zrUPx0DeUML/iklbN6PYwJDOgV38/wOnv4rSWu/HcMHGqXDYWMy+5SRPxWW18dFxhyPFV
	fCwVNByEgP/XTCjNOw1ysleXpbTdxbQjKJvBEBpc/JDFr1re8cl6y7U7UdBqYTfbRF7WuNKY6c0Pl
	MCwKDmvp6m3DF7CjRq2klgtjm0ErtvdCSGMoK37viVHUG9ABrJpgBYkzzUwJg9cWWcSsLTphmSdKA
	fuc3SNcV2SAoK3khP8pllnRjzxL4DlVNn3INy6HQa1tlTjlaMox0+uXVc0dzT1iVo2WWixTySRzqA
	Z4g4cgqg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULxW-00000005i5E-07qT
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 08:58:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P62hg2027443;
	Wed, 25 Jun 2025 08:58:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=G1+lkP2gGBx
	hf/sz6pg4wT4ELrreQYXqFDPuhwZPnDA=; b=Nxp25/KUWHcgA+VP4rMxCrrbxec
	kzjSS11/jmV1EBr3rku7yufqSNxlw7u2T9Ii848+hws6XSZGaRyny3KZJ1V90Vkf
	rsMHlCCIiOjmyEcbWBXEejPgywjF8ovuY/NA7ZikAz6OMqfGYG/97RgvoqWFz4FQ
	z+1+H9kogOye8ETK/oeLlRn6q8CJ1rUGQEi/FurGagXAcqGV74SrpxifwxrbhIR3
	JhbU+kOHch1xGiePqSf6Pqpw1AOnnUPYB/6JepyXjoelaixQgBju0esxtLkUfqlM
	3Vf3dxVXaxIJL9JBRC8D89KkMX4oJA0kPIdaLcEYMRpMqAlsm7jjLBwuytQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4re8w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:07 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P8w4oa029382;
	Wed, 25 Jun 2025 08:58:04 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47dntmar3c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:04 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P8w4k8029376;
	Wed, 25 Jun 2025 08:58:04 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 55P8w37D029370
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:04 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id E3BB23834; Wed, 25 Jun 2025 16:58:02 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset properties
Date: Wed, 25 Jun 2025 16:58:01 +0800
Message-Id: <20250625085801.526669-4-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
References: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685bba1f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=XhQEiPrLEPsAcZFVs94A:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: j-5xmPzXLYCl-Ba9u4oLdWJCOk-fQ2Vu
X-Proofpoint-ORIG-GUID: j-5xmPzXLYCl-Ba9u4oLdWJCOk-fQ2Vu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NiBTYWx0ZWRfX2RH456irvrVB
 256toBcwNhm4bQCfsS0QwDyion+p0APjIE6E2SESQg9iiUYOEmEXaEcJgXBI8wsaDbO2Unyxasu
 9g1aRrZiOdJljx0l5lqjJzzmxzf0+7Kb6Jf7viuIdd/t1YY2j+ydHA0kiZl3iG3H/z8snLp5AbY
 /PrsdX8xS4l93ftQGZBJtuFWeHPRnFjlrdHGbf8Jxka0E32RJ97mIZvqtVKzrlUv255+uoexQ4I
 CrkAaJ2FZuVRO3V3bDNsvs9RWdS0Pzq07ViXoCg0LG7MyEBiDOO9uWK7QtBJJKK8xzHfUnQfrE7
 DVyH9TCurbi7Fo8iFOfs4k9jXEj36chf70tuGm111gqcGnHnpnc37xfq38cuzlKnQnvpdQsCy5R
 PHcOlTWi1r4LMpnf1xaLljb628sBpVTgdi2Iv3l14kIrRKvOed6latFcDWmQwG6ofo5cUjt4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=948
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_095822_419233_6270355A 
X-CRM114-Status: UNSURE (   8.93  )
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

Add PCIe lane equalization preset properties with all values set to 5 for
8.0 GT/s and 16.0 GT/s data rates to enhance link stability.

Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 45f536633f64..16caf1da0708 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7159,6 +7159,9 @@ pcie0: pcie@1c00000 {
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
 
+		eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+		eq-presets-16gts = /bits/ 8 <0x55 0x55>;
+
 		status = "disabled";
 
 		pcieport0: pcie@0 {
@@ -7317,6 +7320,9 @@ pcie1: pcie@1c10000 {
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
 
+		eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
+		eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55>;
+
 		status = "disabled";
 
 		pcie@0 {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

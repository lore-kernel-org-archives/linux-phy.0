Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 820D9C55196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZL8lwxRUmjnXofNRBUKDOxK+h7vRRV2DO1DNoVwuzQ=; b=WBXf2HlrOEZSTC
	QCSZsSzBfn47TOEqj7JjxzZ9NOn9H6H1lygYRSCj5DiGK67FiKBiRnS5pcbwb5AxXZk7xSZBr0ZY2
	KrMzQ7nBFEs1jXvP2zRfWNPOE4TtMXVnthr5NObf98QY4rA3fdfCQyd6TAu2XFqYkr+//JFWSJ1/Z
	/uOQrtDLGBNkbTyvqyXCrZOFQouL7RuZIc0FhSqQLxsqLufP5r4fAvPiswNzqL3I+MzbfLdcVQ/qO
	Jihjg7SAn4vShRSoCuhQPdOb4AhCNF4MI+Bv4+uv1jmmq/s4Aaa0gLaU8/zAyp6SbCdAcEg8tEMpA
	qF8qTMfgyyUpiIVTFW0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyLE-00000000RFW-0ysf;
	Mon, 03 Aug 2026 19:28:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyLC-00000000RF9-0nMM
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:28:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673GwHMD1302218
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:28:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6b56O3hExLavSIUEO+Tuv4eo6B8V4NFYJh9QW0T3V4k=; b=jKl2cRAQOSWSEX8H
	604Dk8bpE6Wi0Dvubie4QeKka79EEP+H38tiBcn+0QfvdSHaKC3houQFUDG/LXda
	aNDRaPp/4C7aNI/2fKajiy0dBoBBj4vbI3NNmmQS3R3iK7d5xvdqjbaJPjWyHBYJ
	XKf1sCz9ZRG8NPDsgLWAtSfZBfxmqtMmUz9vLwhaKw9kxBJ+tiyYOu03uW0I92++
	mtehm5icfKHnyWrHNpHHlnxjwWuNMm4A6j+KGxQex0yohflSO3YVQ3Z32UiMI35H
	S3HQUYI7zYck9XI5joaugJstlP4i8wqZubwVcrfoTn1a+ch7nOhizqxVSG4p3eMw
	tjCkzA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnrtbcnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:28:49 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cb835525b10so5042732a12.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785328; x=1786390128; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6b56O3hExLavSIUEO+Tuv4eo6B8V4NFYJh9QW0T3V4k=;
        b=aHNPyM9w+7+a4HKHgxtk/wepSgsv19lKIIbiO00gAa+JqO3htaLhhTADYudToLVqoF
         KOJs4iZkcbI132j8sSL1jyWLsbz35sDvh06XJAQp72vnm5AaWoQUziXYGVOzYuBr9OaL
         dT2F3CfeoU5SmiA2YH4s2Oxo0Yxio2KtuSbTXf7ioPTFEL96h/xaoN7GIcA3JXOk3GuD
         h3cPsddCp5hYk+RJw+kFminwORb3G5Z3WjWD/AWuAcG0+pCtCsUgqQer0SrFByjJUWWH
         0voRbc/TjgAW/YPVlywbWMGOhKyDXH06w3NK9gnR4Dpf3lRQP/MuZ+1mZg415wVttJV+
         sICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785328; x=1786390128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6b56O3hExLavSIUEO+Tuv4eo6B8V4NFYJh9QW0T3V4k=;
        b=JDJqH32zZVUNGTFZPLXzanJhClmtwwFhA+/JcJd55B3Uuod/0Nx6ZC5PDuZlrSM4gP
         c3YDG3GZK4gUbie/mcOiKGYjUwEqm7qtHZkFTkQXooZmV0VP7u3Dzr8p+92e7ZnZN+rD
         1+BiMsmAtsX4w6P75sCARs0fSMJ9eU7H41cMm+iVT2gwPWTX4Ny/Kg3Pw/C1eYO40aR2
         DZf5x5HxpbK059rCmVvQQ9gb7yLYkx9vT/NpKjaj7zvPk/hDROSG0YbOfuy5TjZXYGFK
         rwxFor+a5o60S00M0L+h43WD1imvZerVHgFf3ZkFpIziHiaWvsHfJqb3+LUY0sa0Z0gU
         zc0w==
X-Forwarded-Encrypted: i=1; AHgh+RqOmRsdOFzsub7nFXh2Ykdft12bF/wLie3hVGl1IQ+H3xgRs8XM5UpyeRd9mCyuUtNMD9Nj/FE3I7M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+639fB3f9oJtjtimPqpOg3qKGih8zNS21i0B2DQfitjNZQrcI
	VtYkcn3KEXHK9QjSNebH5Tk5KVnQXqy6b/BP2xvL7JL0Y+if/c/IbcjNyp1Rvk741OPnNVeEAG/
	5L0jyvhbNC3/g7NS6YRlkUOXor8oSizsfGP33Z0gYs/IsL/KTAf9xuQaPZon4zX9qirN0
X-Gm-Gg: AR+sD11MAGGq6hvCq2s7Qs3qX6OnOsxiW/66XXDN6iaaHxoA0TGffxISWkQNuRPOnN8
	ccvBAs1IVBM+vX6cogfqprBV0jnoooWZmx3dhryEUlR3nDSvAjsdjhiygLTAG48vovKzLO+2pkE
	DTrYhKXOyixjSOAr+ykvVxhPobaRIjU+PGmzv9p26a5DMKLY1P0W0ZfI59c3zYg2b5AymoRZECg
	M98WujWlGk0AbciBmXslt/A2271l/j4MU4fMp2Ujk/apIsQH1FrGlDKV2fPU6C4GDPFXfeou5pI
	GWpBKCVi92xgX79gXkbC7qgz0598QrjUrBICnMtSSfpeqMK8j8ZDz+TdqRTU8XE+O4M//wC5CYL
	WyQI3wl0NxBqbLFMkhPiDq3pE83nyCw==
X-Received: by 2002:a05:6a20:d80f:b0:3ba:cd5b:3dc8 with SMTP id adf61e73a8af0-3c92a5f1c89mr10958854637.31.1785785328074;
        Mon, 03 Aug 2026 12:28:48 -0700 (PDT)
X-Received: by 2002:a05:6a20:d80f:b0:3ba:cd5b:3dc8 with SMTP id adf61e73a8af0-3c92a5f1c89mr10958829637.31.1785785327611;
        Mon, 03 Aug 2026 12:28:47 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:47 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 00:58:00 +0530
Subject: [PATCH v2 4/6] arm64: dts: qcom: lemans-ride-common: fix SerDes
 PHY regulator supplies
MIME-Version: 1.0
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-4-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=1293;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=wN7EnvVz79rBaErrpDbknCUjIlKRTgAhcfR9ZiqhdnM=;
 b=mc4Qxcim7cpfZcq/vHaJ6rhRe2m50OR1wGF7K/e5Kh6fBL7VRKbtQc64BR2nETvTO/AHAXifF
 lCXbrv5JUSnD6Woig6Yu2Tdl6BEQJyMJ3mL/4FGIjpUWf2sRHOd1V/u
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX3HhkMY3XRRzV
 DQD6ULTW4ON+WLMge1WjPxHVxTPhfZelk5uWo3/7TV6PWhfUEVHEalReLyVfKhVFtGroSEtq/0x
 iaS0oPS4X90ssnX88oDdEwyYqjocNbU2C/xa2UI5eP9JV/yhR3816sfWOZVFRNtLMnU6sX+tlaB
 ynZ8CgYJ5Im1KO1vQWxPjt2h6i8E6m+OQXsbHdqV+K6sEotWIg6vkvOmZN6sxFRH55pBcG28M8u
 46lCAVFkFyWH/FfR4H8EL737kIEaTz4B830sbeR5RtXGdbM/IJw6CGGM2qGnmxwII9b5ZFXwPn3
 lCalDJh9urQB/ot8TDZvzRky5FdpPpHIzY0bkR1GJp0TZ7kEryUWHHaa0B6yo1rGVik0F7Xi8bX
 XPXkh97hUMWWVC/wdtZ1BZyshTDpEqeoevoI8kwZ6wSigG1sKs/oGr6HN688psHZA2enYotp3mI
 KCwDT4709bzllvFGZxg==
X-Proofpoint-GUID: T4Wo2EudeWCX3L1ivb2_hp8oONvQYjeZ
X-Proofpoint-ORIG-GUID: T4Wo2EudeWCX3L1ivb2_hp8oONvQYjeZ
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX5gGH0bps5rgR
 lQcJ6L/tpZ2rVK0fWf0R+6Cn1qVlptKxsEUEwWeMIWpAoKB1xP7HX6sNRYCs1TlCy+X1RWSHl2i
 vD0XparjjkVFlf/8FT0zyLVpDF3okWQ=
X-Authority-Analysis: v=2.4 cv=Ft81OWrq c=1 sm=1 tr=0 ts=6a70ebf1 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=0PZ1-FZOml_IEO0701oA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 phishscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122850_351888_A82393E2 
X-CRM114-Status: GOOD (  12.65  )
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

Both SerDes PHY nodes were configured with 'phy-supply = <&vreg_l5a>',
which was incorrect on two counts: vreg_l5a is not a supply the PHY
requires, and only one rail was described where the hardware needs two.

The PHY requires vdda-0p9 (vreg_l4a) and vdda-1p2 (vreg_l1c). Replace
the incorrect phy-supply with these two named properties on both nodes.

Fixes: 5ef26fb8b3ed ("arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index cefb8ff0080631e25e9dd3a05cd810c6955bf1fe..923fd8736f31df2eb5198b27ddf52c171f7b2943 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -856,12 +856,16 @@ &qup_uart17_rx {
 };
 
 &serdes0 {
-	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+	vdda-1p2-supply = <&vreg_l1c>;
+
 	status = "okay";
 };
 
 &serdes1 {
-	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+	vdda-1p2-supply = <&vreg_l1c>;
+
 	status = "okay";
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

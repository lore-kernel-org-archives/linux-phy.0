Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E87606A338
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hPXlMJ9N;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=fZSxltaM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=W/32iUb9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4IvAIwlwZXdcFXfuxFy2tPdSmsvYJvVMVnbEsibaEgQ=; b=hPXlMJ9NhuEgA5jQSED87Nko84
	g+628rcbELH4E3oYpdCbaaYQ2ZwS0J0X2IAZz3mUMNG0IU/dZwazNAuZCLcC0syL5VtKEemf45+m2
	6QXcIlQvMAEqvopVtApPTBjDDIf7E8BdTXLQevO3PCvig+WFr4YfI/zZGjQ005npjPXBbZwdJZpeb
	kkYKiOMYpqcoESPoK/zGpHCitaV3RwU6xCDqp7MneMrlOoUSeb+VVrf/xnkYBXOKmyhJrs+rOCnmK
	nPsJdNQbGFKsQaVbjLjG/GI/vXZbMLxA01mIDfPcb+Slvkr+7On3MW70OVWBFboUJRsPA7ZLsD2yK
	02N+z/aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzu-0000000Fu6H-1rDw;
	Sat, 14 Nov 2026 11:32:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzs-0000000Fu5a-0cKs
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wC8f3379147
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iZaxRG29RknVY817FNbwaOahUHm9TuG+4UXX0Im9FiI=; b=fZSxltaMWxOlvyTS
	liBP5q85uM10hLNJeD31jrQCHp6gV1qA/C7DG5cjszv5tzV9pj1Vw8eYOSM5V9TY
	Kv+L2XhXff2mIOWokOSCXvqf6FnQXbQPwOy0h+Gj1u14xGTq+hr5BxHqKUYCptK8
	roYv/rt8Y19/mfYqF6C8oHKmuHFmybj5nyNQGmc8yrZ6d7/8mIE0MXPOs9GA63Q+
	eYt93MUxC/FUe8Yvh8gvaAdfJb98axB4e+EOdJ6+NEaVqNELulsAs5rYpbZNMijS
	3vld7CQQgfmpT1u0MerfOz/LqaQm1nJ/BIm2E8qIXXdDN3xp5GHqSwomAv6a9cMm
	vNF+qg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhnx0n8w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:39 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91f16230f03so35704066d6.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655958; x=1795260758; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iZaxRG29RknVY817FNbwaOahUHm9TuG+4UXX0Im9FiI=;
        b=W/32iUb9z/Krj/XjTc/VduDTqKyvRueiyxyJ6cbeiHj+UkPBFiHLX2tK3Oe2oSl6Zj
         ICAAAyltAWdCceRdFV5kdh6zSM1KTVL2fRBUOurBKcmbuz9vqq6Fa8aQsHus48QVSfF0
         jmM9EN7oqYxHkcTl3AUOkmgOzT4kvLg9uBzpzUF0qjNqZcJdDvHaOUJTlGAHsEc+vsSi
         Iwu0Zg8jI/T2vNA5RhANWsOme8BQZnXHaHJBjiNr27u+1iQD4RFeK1EAIN/IDXaikypH
         dc6sW8sjzGj0VFFTnQH2nUB0h7KfKqaKsjAZm+MFvl92bZMfVWwA/opnRZFRPiKZ8Wkq
         5yqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655958; x=1795260758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iZaxRG29RknVY817FNbwaOahUHm9TuG+4UXX0Im9FiI=;
        b=jV242EvzQ2VMSEw9pf71Ex9FMBfFT9f9JCt07F7lFZagJ7gXc1yGArJHXibrxUVP9K
         hn8DzJT1XT53IiO9Kl7E20zhOx8B//jE3X3sV0dYms4r6xEKEGc5KkOYZfxcXqCw6CfD
         q+U5cqbifBMDK+ppum5OTwZIrEQFeI3q9+ROFLvzZ4IVE9SO14BU04sqVSuDIXz8sCgv
         UIP+snCgKxTQDnLiWY9g+4/Vk5v5yV+RjxPva8kwYKQ4jEm/Cp1Lc663v6CjyUrY59/+
         XrHAYZNymox2pgjbj3zLn3/J2iTTH7xoSVqb4unVVLICnQWSFaiNt2N4NpRFgY0oS6iX
         T+RQ==
X-Gm-Message-State: APuU4Z+A1bTiGLm1+e+MF90zyu0X36Xe5IYSfxdZrEqvxinBAkVGS8ZM
	2X5rO0N5xwTAa4vGFLwy2kgkFoWi5exjNxj/S4EK3lVBpC8ZOxdPEx+klMuD1ml8IyDzoqUsIfF
	dImXt912/TnWWi6ESKYAYT5Vw9FdAZmHLCqqmFJjwU2eAHEyUmKKHDj4CRQoEO2mspzH/
X-Gm-Gg: AYBFou0tHn9vXFXbFIumUIjTm3ypyY35GULa53NLOo1Q1S3kFBYzaFf++9qhjEglb88
	HPhRHn91uJda/Vl1hTdZUoW5Ty/8j6NOhcqe0YJFXY5t9RM047VYEazS0YniC8cqRNIX4BBYokc
	nF8mpvTAelNel3RfaMY7u78tPP9BMVvCq0KCqW0srdrZvi7TK519tmNzwD7B22d7v9D/Q9x0Dm9
	Ij0MERGR22yIKAC4+UvkcRTvAAlcmG36mx+6Y5e+p32DisqJ5QZ15V5Z3yChIlu3amkC6XWHh5x
	2O84mOCJ5NoXJqfe2YTfT0nZ9gUDHLHw+/mQJJEZvREIfLDW9DNeVHQ4HwCTAYUHTZEpM8Eudru
	6DbAkA3Mf4Cx0QA574vwJoVaV1/WlYu6xk6xGnBcWgA5YDZ8Ru9nLRr8CRLE4pdMklDuT6V2/DK
	PBYpnbJlTQUcDeQ5EQhwHcYmyH/MjfnjJ/6EyA8s+0
X-Received: by 2002:a05:6214:2469:b0:91c:52f2:b469 with SMTP id 6a1803df08f44-91f24110424mr82260906d6.15.1794655958405;
        Sat, 14 Nov 2026 03:32:38 -0800 (PST)
X-Received: by 2002:a05:6214:2469:b0:91c:52f2:b469 with SMTP id 6a1803df08f44-91f24110424mr82260566d6.15.1794655957882;
        Sat, 14 Nov 2026 03:32:37 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:37 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:36 +0800
Subject: [PATCH v7 19/23] arm64: dts: qcom: eliza: Add CCI definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-19-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=5423;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=2F/1hz8EqW+dxa4z4ZGC8nIylMjGJ1qkPeQTQ26Wm2M=;
 b=o44pkLOF5gJic5FJlKeOE7d0Xu1/qC2Eksnos8KlJAINoSwL56OWNSnoCDj5/eeRt8XOgZh1/
 VnJ3UIBkC/vCbE6nJuuvnCfjTrDsVbM5vQcRwyMQo10T29oovCpSDfl
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxg7/m+Xm8MOC
 TpbRD6zkuBdpeYilgE/MHvYsIeQ/37vHTcPBe+JnSiauCylC6x34tteFJs+8RAwR95zJoFN7NNM
 wQJrbf9M/4cgJXsgB4gcVsrNhOQI6iNbWtdzKSHnqqpGVlSLeWt8dVH0GFynDVC8wO5TBX0zsW5
 AIgpcDhI5VT6stZ2RPScRm8v+LV9+NTiciagNOLnOZHVLGHgDz9tO8c2qlTPSMcMz/vYlRNk2Nl
 G9LbtRWX7jCcOzZazues4pyxGXk68xihc2E54vHTfh+a3ItbBv4LZtuEMC+k3EZb9iaVqpd8Dud
 jMV7YxXkmlggU3CKH7Lv+SFTfZitnhMNFwI42c+mbpIw2Yei/VfMRNrK3EuIVQKMlE9o8ErOJ0K
 +ozRzqWifNlxUPklGqX15Gj1y11Hf8P5iALihOsrJk7stUC4vVN+YSvb12kWaro274W287wd8wf
 n2uCh7GLSAyuAYfJiMQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXwLrVX7RYJLK4
 T30aVnlRpu/vuBsx2uKD6PDJm1KJi65pnfQ0mnoeeR3Ox2r36erMioWcdcv9foWi4I2I8hu7cG2
 ANTbLBJROKJlpsA6f7iEA7PVlmvurHc=
X-Proofpoint-ORIG-GUID: vU4FWw_CVLlaoEpwtXwSqnA7jpE2qlL1
X-Proofpoint-GUID: vU4FWw_CVLlaoEpwtXwSqnA7jpE2qlL1
X-Authority-Analysis: v=2.4 cv=Jr5kP84C c=1 sm=1 tr=0 ts=6af846d7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=hcSdZqVZxIdZ69JYko0A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033240_313377_6A61DBA3 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Eliza has two Camera Control Interface (CCI) controllers, each with two
I2C hosts. Add the CCI nodes and their pinctrl states. The nodes are
left disabled; boards enable the CCI instances their camera sensors are
attached to.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/eliza.dtsi | 188 ++++++++++++++++++++++++++++++++++++
 1 file changed, 188 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qcom/eliza.dtsi
index dd21cc4d267787db3d8741f8a8970629bd20d0c4..0b759bf5b91e412743c12982b79ab4506b9a50b9 100644
--- a/arch/arm64/boot/dts/qcom/eliza.dtsi
+++ b/arch/arm64/boot/dts/qcom/eliza.dtsi
@@ -3592,6 +3592,66 @@ camss_csiphy3_in_port: port@3 {
 			};
 		};
 
+		cci0: cci@ac7b000 {
+			compatible = "qcom,eliza-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0ac7b000 0x0 0x1000>;
+			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "ahb", "cci";
+			pinctrl-0 = <&cci0_0_default &cci0_1_default>;
+			pinctrl-1 = <&cci0_0_sleep &cci0_1_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cci0_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci0_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci1: cci@ac7c000 {
+			compatible = "qcom,eliza-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0ac7c000 0x0 0x1000>;
+			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "ahb", "cci";
+			pinctrl-0 = <&cci1_0_default &cci1_1_default>;
+			pinctrl-1 = <&cci1_0_sleep &cci1_1_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cci1_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci1_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		csiphy0: phy@ada9000 {
 			compatible = "qcom,eliza-csi2-phy", "qcom,x1e80100-csi2-phy";
 			reg = <0x0 0x0ada9000 0x0 0x2000>;
@@ -3953,6 +4013,134 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 186>;
 			wakeup-parent = <&pdc>;
 
+			cci0_0_default: cci0-0-default-state {
+				sda-pins {
+					pins = "gpio70";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio71";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_0_sleep: cci0-0-sleep-state {
+				sda-pins {
+					pins = "gpio70";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio71";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci0_1_default: cci0-1-default-state {
+				sda-pins {
+					pins = "gpio72";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio73";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_1_sleep: cci0-1-sleep-state {
+				sda-pins {
+					pins = "gpio72";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio73";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_0_default: cci1-0-default-state {
+				sda-pins {
+					pins = "gpio74";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio75";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_0_sleep: cci1-0-sleep-state {
+				sda-pins {
+					pins = "gpio74";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio75";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_1_default: cci1-1-default-state {
+				sda-pins {
+					pins = "gpio76";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio77";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_1_sleep: cci1-1-sleep-state {
+				sda-pins {
+					pins = "gpio76";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio77";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			pcie0_default_state: pcie0-default-state {
 				perst-pins {
 					pins = "gpio78";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

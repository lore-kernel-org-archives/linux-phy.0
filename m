Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10EC1CA9ED6
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcRWWz1OErptAawTyBVyU0e4GiQ804FTuSoFSFMaZrk=; b=M/c+/T+EbCbv1R
	OjRd0HGTd2nqKDNOmNI5/dDBTBk0GxEeKQxMylIBnQm9G8CxUt+/3nMdUrJs/cEza+H8NFUnuQMJ8
	+qE93YpLME066r5X492jMjCbCNJ/lCRrSJ1HjtYS5Tjl+aEvQnPEwoBWwXAzubK9JUcw3W4DEe5NQ
	q44jAA0LBhlgtGqgbFiZWVs2Jf79aS7V+XnmQ4uogzjdcQS6PpAGoSeO99aSoGhnMbHRjt6cVogSo
	mFuihlPzIvQ6xWLus5rhGBu6ucXRpQvJHRyxeIbu+C1i21PN3WXULnsVgi95XhVs8I8+dmW14cOrq
	xKqRElaZ0hV4b9dkrEUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n8-00000009llQ-39ec;
	Mon, 12 Oct 2026 06:45:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n5-00000009lic-45Qz
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:45 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55dqi1314467
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aB7HIxGBOwgAfi43a2agTiC1H63IqRhV4118dz4m73U=; b=Ql0H7s88wbD4ISAm
	+F3aY+cx3EwR4CqOeYlTjzNzPNGboKZfiu1t5HxMZ1IcaWqXtxkouhnIOqznGs9b
	esuFusMo6QWuTadAZysjGpuLwwNhFFEhlj51EtqYG7drOz8fwMqCRn5oSwEJ+q0W
	HlPf4imJ8Mox09FFptRr2XfZzX+Q9T2ahRxkoTTJp7p6Bqkv59JDqyF0/wt3Y1vt
	tzqpjZ+/zbjuaQBJoRbLj3hGjISmVqUFnrpzdcngN96wvAJ/f4xPc81mgPLdyclr
	PNu/VqhOuVBjk5SRpuS8PpsNLXmdNEjD6JC4gjE5vHOLle5k3ggEwXuJD4me53Dd
	Qa5m1Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8j711d1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:42 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-868db1b2c64so963427b3a.3
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787542; x=1792392342; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aB7HIxGBOwgAfi43a2agTiC1H63IqRhV4118dz4m73U=;
        b=EUV6Sil1hiyuRs9iA6qBAsTKMeJwjr1776jgqlTb+mOK6e1LcJ/y2cUo1AkOyZHoj9
         natqDzdU/hfuUMfG0YsFgLYHePNOgWRxRENkcbxmyv/eRlMdVCiz2rqAKx8WL8Mbd82a
         ZM40aYGMMc6LNd5Pr2DekNgrptvTeA89UAlVrviyC/6Ds9AN3C/N/jyzIo23DwVPhtuP
         k50OIoIHrbETtgZ9SqjZ5WgUp09/KHtzFtSwVn/swrI+gCZwXDk5kUrhNesMREOFfQ7r
         hISZaCycoD3mli72mr/SnFI0GgsW6L5DbU6jxggx8zGUN9BS32HUhbYbBJLdTiK8Ftio
         DHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787542; x=1792392342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aB7HIxGBOwgAfi43a2agTiC1H63IqRhV4118dz4m73U=;
        b=ZvZsn7LHY06hZ0OYgC4HZzeoqidPghWhdquN2qEnot+7Q55LKXs5C9KICUnwp1Ap2R
         TdAlmcPq6FYzf9oJB9EJ9o0oqeALHCWmMuysoV5FMBt9yjzEhdyWVq2L0JQsFLUGC4XO
         X94xpb5X2RBjdEoJSucrAT+5IATnJS+i21VPUwg81upmn60Zk2kl5JJ6yj2L3u9TbQQQ
         hRbD+RCUgVUIWzLrzn8ZzsoPcIBEOhYtDhoiAi8Xw4tXbm8qAB23tG2QcmflFsfAJ77M
         Ghd4bRtmary6aIoZYx9wNIC5SdYoKzPYQs5VhkfPiS2RzHhBchr6ObPR5ktK1kZbuJY0
         zqxA==
X-Gm-Message-State: AFq9FYJOJlwmJ/3P+fO+Kbw01M53ROtESZEKpNdwO7x20GOmbEHXrUkV
	xrRUI+h0TTx7XQkhMD/5w1oqoTxCvKgxW7bwi3+yaY6OxD1UDmaiZyY+vue5ELB5bzpx02fKsM1
	D5F7+SKmdq4FaN37GcgzIscv3sn3qrKGQsDfQQAZjVI3yb6cfPdaqdr/XAksJKV4KYmeu
X-Gm-Gg: AYBFou3WTwB6tU/AvxUvdJBCHVsCwYkNbovfrXpCPqyafhf6rnFrM16qUwo6KEoIpbN
	VEdY5u5ga/rh75U6i7iR2U6D740QqGIefaByyJCJIfXV01Pa3j5w6/djfxa1+Z3DnVhmLNlsJnH
	ynUE/2TV7PO4eAM6h2LdR4JheactREcgQ4JfPZqESlqqFoIkSH15W7w3nZVKEvFH0h2WygP2sAg
	t/vNH+0WYQQOEoDARsz/X2K7F7IKU1kUGBr4KnHP6NpIXt5jNtRKKtj4IDRApvbKx+VVgzy9ro8
	Ptdv6AQgBpQdPVU/qZqMCaFfXwf21xykKvF7W7VAzV0E/Ggcibfe/ERoA78vIsoBEfQ4Ti6PFnM
	R79j6501YfwESZXStzg6PDM+WGqpYN93pIcfqabMynwmkStNfzvGqaPKbdrDka5KimyG+heL6GI
	3sUTUXCUR3fQ==
X-Received: by 2002:a05:6a20:2d14:b0:3e1:5858:36c4 with SMTP id adf61e73a8af0-3e16be4eafbmr6675271637.34.1791787541896;
        Sun, 11 Oct 2026 23:45:41 -0700 (PDT)
X-Received: by 2002:a05:6a20:2d14:b0:3e1:5858:36c4 with SMTP id adf61e73a8af0-3e16be4eafbmr6675260637.34.1791787541420;
        Sun, 11 Oct 2026 23:45:41 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:41 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:14 -0700
Subject: [PATCH v21 12/14] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-12-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX8Ur0Z6Mg3Nxw
 Jj3OHeSLC56g9SBl5/aFQoSXfe466sFD03huPYdi1f6tP+cgoTCUhEqCYRCmszUfknXpZngqvf5
 DJ8MDlhEhMdfc6RUOh5SWww7tkDivt8=
X-Proofpoint-GUID: 0WDYSY3Hdx9wi1saNVSM5CbFOTAzyT41
X-Proofpoint-ORIG-GUID: 0WDYSY3Hdx9wi1saNVSM5CbFOTAzyT41
X-Authority-Analysis: v=2.4 cv=ePGGH3p1 c=1 sm=1 tr=0 ts=6acc8216 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6uyy3mKblwRlHw_pSasA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfXy4Qq5grclHZ7
 auTEelTJyWILLNuZQyv2cxpyhEEceJLnqZaeUwjsobL/yyLz4gbGDYqkmKpyPqglo0qXxlh6gQb
 eipslhjHRiYlNaJKd8VjK5V8BOyCeM65+4oYx9nxXlK8VIvzdoDk6GQ/S8fgnNJxvZbNDjDP69Y
 /yRkQrYlnQSzrvvbKal2xvF/UPWp9YO9FaXLCIL4jOmUp/+Vs/rKUhscZkBdR0iWSLAc9mAZOBD
 FU/kFexXjRzXTSUkc7mBehI+4pdjCXXYRQPuAUlukY9UMWvXNcysuHe+4PqFuunsAJBGFQqraIq
 Xr4lF1rG6An0Eplw1H24pC4vFfAiE+4qldUjRN7wCtP30L6OORoYPAeVVOUGJSG5a+Hb3jSbzf3
 ZJa17ZiLnTnrR4P+Nrjht5cQv/gi6FP480c2zPvUP5JkDSCz/TpE75uTuSv83b0Uqyc72sOLxcS
 co/4kszLsQTBXRMnk3A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234544_129805_41CC1E2B 
X-CRM114-Status: GOOD (  10.84  )
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

Add the three Camera Control Interface (CCI) controllers present on the
Kaanapali SoC. Each controller provides two I2C hosts used for camera
sensor control, so define the controller nodes and their pinctrl states.

The first bus has two CCI bus master pinouts:
cci_i2c_sda0 = gpio109
cci_i2c_scl0 = gpio110

cci_i2c_sda1 = gpio111
cci_i2c_scl1 = gpio112

The second bus has two CCI bus master pinouts:
cci_i2c_sda3 = gpio113
cci_i2c_scl3 = gpio114

cci_i2c_sda4 = gpio107
cci_i2c_scl4 = gpio160

The third bus has two CCI bus master pinouts:
cci_i2c_sda5 = gpio108
cci_i2c_scl5 = gpio149

cci_i2c_sda6 = gpio115
cci_i2c_scl6 = gpio116

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 303 ++++++++++++++++++++++++++++++++
 1 file changed, 303 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index fb282be07e07..62f02bff0227 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -3749,6 +3749,117 @@ camss_csiphy5_in_port: port@5 {
 			};
 		};
 
+		cci0: cci@941b000 {
+			compatible = "qcom,kaanapali-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0941b000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_i2c0_default &cci0_i2c1_default>;
+			pinctrl-1 = <&cci0_i2c0_sleep &cci0_i2c1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
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
+		cci1: cci@941c000 {
+			compatible = "qcom,kaanapali-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0941c000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci1_i2c0_default &cci1_i2c1_default>;
+			pinctrl-1 = <&cci1_i2c0_sleep &cci1_i2c1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
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
+		cci2: cci@941d000 {
+			compatible = "qcom,kaanapali-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0941d000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 428 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_2_CLK>;
+			clock-names = "ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci2_i2c0_default &cci2_i2c1_default>;
+			pinctrl-1 = <&cci2_i2c0_sleep &cci2_i2c1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci2_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci2_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		csiphy0: phy@9523000 {
 			compatible = "qcom,kaanapali-csi2-phy";
 			reg = <0x0 0x09523000 0x0 0x2000>;
@@ -4537,6 +4648,198 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cci0_i2c0_default: cci0-i2c0-default-state {
+				scl-pins {
+					pins = "gpio110";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio109";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci0_i2c0_sleep: cci0-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio110";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio109";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci0_i2c1_default: cci0-i2c1-default-state {
+				scl-pins {
+					pins = "gpio112";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci0_i2c1_sleep: cci0-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio112";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c0_default: cci1-i2c0-default-state {
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c0_sleep: cci1-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c1_default: cci1-i2c1-default-state {
+				scl-pins {
+					pins = "gpio160";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio107";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c1_sleep: cci1-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio160";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio107";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c0_default: cci2-i2c0-default-state {
+				scl-pins {
+					pins = "gpio149";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio108";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c0_sleep: cci2-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio149";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio108";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c1_default: cci2-i2c1-default-state {
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c1_sleep: cci2-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
 			hub_i2c0_data_clk: hub-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio66", "gpio67";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

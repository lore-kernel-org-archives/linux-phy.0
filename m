Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 333DFCA9ED6
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/KJ43+haU7ff+aOZTW3+z1l00qZWyqPLhbNd6R1Qw0=; b=tK7eJwZlctaK79
	8JHhHztcbgw7GyNo2OZc/Q/jYo+UoUpUm1/WYD0xWqI2xjanBiDZMnIbFz+p6xElAU3Los6UiemhX
	J1H399jeL8drzzZR0k//yqd87ZI64IFTfJd2jy2kC6QFoi4ESZXq4ck170AjcxA35vzXQOH1Bse9q
	fjAkaqbmolRNZrJqa1VFnm6oSNrQZuQqfreix9womURer+Vh4GqmrkWPq3KJCFYMgyezP96fvkClb
	a0nWUwnGvGM5J/f2QeKiPIqlwxx6eJ69BXm4KdgzeKJhgVlKfkn7hkJXAyyP6E9Y6G/FKcgyjdzXw
	vkW0hPfNVvE6laWqDNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9nC-00000009lna-3knw;
	Mon, 12 Oct 2026 06:45:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n8-00000009llI-3Xzx
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:48 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C5Y8Wm1216063
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Doir+caiLoYGVhQW2yiSNYU7k/m4JLDAkXb8nVsZvlY=; b=DgaJkYoLZryqTrJf
	viObZygMMVxU0C6TbKCeimBw6xFg8J3FW+z/68MsEC3z56BRwJ6fDLTkyGcZ9XBm
	FI1UQoWYlbe3EZMOlXmJyQrBCzJEoIF88RalC9pDoik1dDP6AbGNcL3gf+mVLi69
	hxH2vStUoYEEWNQJZe57ag3EXaIFn3pW3udtGRF/whuHrMFxFaJOoCyfW0y5Rw8R
	O1vMFmjxrGumINo1gDZIT1Qa92PTWY1481LHaMnXG8M6qi5C7yOny64GKDPnXgRX
	XNEqMRkuJgJec2JVTeD0FiNiPC8LvSfyuugN/h/6BSkBJjB9FdH5/tet1Fyp0lxm
	XtTBRw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8sgu0ad2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:45 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc42a07d04aso889374a12.1
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787545; x=1792392345; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Doir+caiLoYGVhQW2yiSNYU7k/m4JLDAkXb8nVsZvlY=;
        b=Ld692dH23G78VctMRFVINWk8Ys9amjl2BOmKm7A4PP5GUumN2TQ04WIET4F3piPJQw
         ABTxfP9Ny4JhrCa62fzbly4lryMVa7/cq9tkzhdoum0nAmCCE/xI+9tUF5NMZdJMBaID
         rmRfVctRQaQEuPH7Ng5w7kPezZUyWPrxRkxY8PgTd11MuveF3EFEUR73055Oh2hoIN5m
         OyV7qs8rwPpV82ObJknHtU93Gfw0+D/otqDswNtSGi/Kb8ydXUpI9Bsf0HDh5tqmn4VL
         EWS1FWu1QwYMvyCTxRXdj9s51eRp2xtQVLHOOK2jtY3SMC5l1jCxMo/MIJ3BhuFg4QQn
         Rq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787545; x=1792392345;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Doir+caiLoYGVhQW2yiSNYU7k/m4JLDAkXb8nVsZvlY=;
        b=SrJeLR7dzDiOyHIDIUVidv1InO6YMKnkJ/3jNMR+VSBQd91uJGeV0Sv9poiF8Madds
         DVWoYETLNC7MgKDpVWoY3SW5SrHE6aAXGrvc/cZcYwqORsEApnSG5cca7HB7afZj+5E8
         +AAmLk3HOcsdXCj3xuSKPmd5+rsTmXsrnTk55yAB/0S0VQIhpr5xyPj4P4ZQyrCkVnSd
         /5BZlHY5lpggehSpeojeXZe9sS8WHP+0+cPK3GT9v+J8kSALRbnXJcHBVyDv7+GTKFe0
         6B2IgMyzp3k6+9IqOjtPXrqWf9P3mJdTT+OFpCk/wIcztDdQtnarxBiudTiqtsmIWIpq
         Ru5A==
X-Gm-Message-State: AFq9FYIP/MU/GA2M/3YtWN6JFaPpfl1YBrvx+TYvXoVsnGDOtn4V505q
	Ve2Dpq/OB2vWmTie9tB08eGGF0aU/SuP5M4dxg1bNgGQeTgGXxQBYRWRnDwFGyJPZBU4dsmCXRS
	80MujsZL2bB6KAsJZjN/WtUJ9ilvaNIx31OMSQoS8l/izZ1/vC+eo6UMEeGf0o9JbakbF
X-Gm-Gg: AYBFou1nSQZa8iNXQS3ShuupDZcghPUy6Nvtd2/MeZJkNCMv0DSwLZyp2TfDQKLZDHv
	1Ig7QWPPPTFryxgQz+E/38m5r5SikppPQN22OofuIxMgcOQu2snIGp14vVs9Su6zWRRxXKE13ZR
	a8F3bPtQ8KJ8YJ6dzO1aeuDd26AOiUVD8Rs4bLdKCacxhb9sdw71LxGivXU/o2f3A+hq0ez0C3g
	R0nLhkYcFz8gsDheY33EIhG1PTtGEEsgsuFI1m3gbtDfuu7uJRhY7UUR6kJzpqL0uO1yZJ22Hr9
	yzjkJmIi/cKBdIN9nYuGz84+Ekfwn/8v4N/kVehOLxMw2yODcbaNxtrnvh+tDpgVlPWLCYgxH2p
	ChxEwldjVR8xAQQfkvRsgF2K28c3f6ktJ9pjNyF7xY4/wlbEa/HuU9Qp6rGqpimTNJ/gKtDj/Zv
	et5ygJitgyyg==
X-Received: by 2002:a05:6a20:2587:b0:3e1:1b11:15c5 with SMTP id adf61e73a8af0-3e16bfce3dfmr6825846637.34.1791787544824;
        Sun, 11 Oct 2026 23:45:44 -0700 (PDT)
X-Received: by 2002:a05:6a20:2587:b0:3e1:1b11:15c5 with SMTP id adf61e73a8af0-3e16bfce3dfmr6825824637.34.1791787544330;
        Sun, 11 Oct 2026 23:45:44 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:43 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:16 -0700
Subject: [PATCH v21 14/14] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=QdzzLcbv c=1 sm=1 tr=0 ts=6acc8219 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=ZJyx6tJpJz6uHbTMGDIA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX8DRneLUXGluB
 VZgDsTZZp/Sqc2nqvax+Q2GkBD5y3WsG8vPEnhnKSju9HqbMhzx0Ctida+D4QXBe8InWuI3XxbH
 LkkR9+V9R7WtBxJSnNqpK/xJHivBFlh66cygENYn/Ifqarx9Pj6bXIKARjMRBs1EEDO5mx/wLcb
 HukOM/NUe/C2V3H9M1BG7MYl/HuXlb/K84bHxK05/sDvXKLa1XcP36k61GXrFxSav87ldJ49yIr
 9VFRMeKQomiBnUBkzD0QcxXmDXcKoUEzBqMrsSf8Esgm8fv2Efom4JEKy5mDf0eVzvUfGjuBPBM
 MCU5oF+Ajg94cMmOIvfz7F509tudM3ONNc+3Rp4h+HnDDLtkth8PRlhLib1x4+ADJGxs7tdzrNk
 41bQ64IIJ5ezkPutThKpRfMisOMoyNs1uy+E071fJxv/jL8maSB6niJj5EHmHm6TNPeTMK4f7Tu
 sF0IRXpMtraka7s6LlQ==
X-Proofpoint-ORIG-GUID: 3OnnJytAc1-LV5S1SM1q4r2iyIaBX5p-
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX9afF1TCd18w5
 j1Fkj1vDTVamG5mfFcu/yBWmFjpfB+LDhj0/rBQy180WR6mU4Tq3tOgsYJ2jRKJqCGSlbwtE/2t
 9Wa+ALT3zn2WsuBi0Qjpjmu9cY6WryU=
X-Proofpoint-GUID: 3OnnJytAc1-LV5S1SM1q4r2iyIaBX5p-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234547_008942_3793275A 
X-CRM114-Status: GOOD (  14.30  )
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

Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.

The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
lane mode on a rework camera module.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile                  |  5 ++
 .../boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso | 81 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts         |  7 ++
 3 files changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 88230c4e00ea..84b244d43e9e 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -48,6 +48,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9650-rdp488.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-mtp-camera-s5kjn5.dtbo
+
+kaanapali-mtp-camera-s5kjn5-dtbs	:= kaanapali-mtp.dtb kaanapali-mtp-camera-s5kjn5.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-mtp-camera-s5kjn5.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso b/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso
new file mode 100644
index 000000000000..d0e39855e0e6
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h>
+#include <dt-bindings/clock/qcom,kaanapali-camcc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/media/video-interfaces.h>
+
+&camss {
+	status = "okay";
+};
+
+&camss_csiphy2_in_port {
+	camss_csiphy2_inep: endpoint {
+		data-lanes = <1 2 3 4>;
+		remote-endpoint = <&csiphy2_out_ep>;
+	};
+};
+
+&cci0 {
+	status = "okay";
+};
+
+&cci0_i2c1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	camera@10 {
+		compatible = "samsung,s5kjn5";
+		reg = <0x10>;
+
+		reset-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam_mclk2_default &cam_reset2_default>;
+
+		clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK2_CLK>;
+		assigned-clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK2_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		vddio-supply = <&vreg_l4n_1p8>;
+		vddd-supply = <&vreg_l1m_1p0>;
+		vdda-supply = <&vreg_l4m_2p2>;
+		vddio1p2-supply = <&vreg_l2n_1p2>;
+		afvdd-supply = <&vreg_l7m_2p8>;
+
+		port {
+			s5kjn5_out_ep: endpoint {
+				data-lanes = <1 2 3 4>;
+				link-frequencies = /bits/ 64 <1248000000>;
+				remote-endpoint = <&csiphy2_in_ep>;
+			};
+		};
+	};
+};
+
+&csiphy2 {
+	vdda-0p9-supply = <&vreg_l3d_0p8>;
+	vdda-1p2-supply = <&vreg_l1d_1p2>;
+
+	status = "okay";
+};
+
+&csiphy2_in_port {
+	csiphy2_in_ep: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+		clock-lanes = <0>;
+		data-lanes = <1 2 3 4>;
+		remote-endpoint = <&s5kjn5_out_ep>;
+	};
+};
+
+&csiphy2_out_port {
+	csiphy2_out_ep: endpoint {
+		remote-endpoint = <&camss_csiphy2_inep>;
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index 9eb02fd09dab..c70cd39bcb75 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -1243,6 +1243,13 @@ &tlmm {
 			       <119 2>, /* SoCCP */
 			       <144 4>; /* CXM UART */
 
+	cam_reset2_default: cam-reset2-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	wlan_en: wlan-en-state {
 		pins = "gpio16";
 		function = "gpio";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

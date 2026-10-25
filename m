Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2700606AB5D
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2x9bg/rl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Gqf5Wgt7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=McUFmM5H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NtrsDjx3Bpx5ApX9vSj4XjkARrY3oMW0b0/2ln5KxTk=; b=2x9bg/rlY+C+wuB5boOsT4uuG7
	etAeh8r/lRpz+iiPXYTGJeh3t6GarYRdtm4r6nLwvg/qF2PggF1W0tbXKApQjcK1YbHbWDxyKXmLk
	+vmOhpzIToXF4wrrLOxZ17nm/e6zlIQ1frFcxEIQmaIOvMqg5WXjdf6ppF7KE1TNSd3FiPfIEUT0B
	z0akueI4WVXvYGhn598OL402FHuSO3G/CinKL6rJmwE0wtEyKiGbfeEt++t2O+k5UEgEDY+HTwGyd
	TLFxWuX5Kn7s7vPVZgMVGxMkVbpeBPI+ARQ+Fp7g7T1avpzB28A6IgLJ4PTj2b3k4mO+hQpCMez21
	17h3Iq0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojz-00000000gtU-21sa;
	Sun, 25 Oct 2026 03:17:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKoju-00000000gqM-0BaB
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:43 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P17G4A2778726
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4y4vPJgEmDpbRegYbIU8W9VPxzKIFsK6cvaBySnJ4cQ=; b=Gqf5Wgt7FLstbzJC
	lki7X6yL4yu9ukVAl6Y42L6ZfGb0Gw41DEKwlOe5obCT/uvG2fWHSAzSAZN/AFZr
	Zj+F8+1fLxasf9qPF3OUAndrVjl90mQx6ivyFaoBQbPWEYNNca5NQrKMhSPWk4vQ
	xSFuhzu0vR2Z/gIJlL9RuGstdEbVusKLN7nw8NxLIUymaqgQDBTepNNhZe5VNjf7
	DRhVpI3ZzLy+BV8wQKiWj8rFfLIzBstTk1yI2nPckvarCnPf/a/VkDGuDCQGPMgI
	38qx4l7cNZi9K77XL0uCaARoF5KoTh9AqSoIm/OaflfyJ1kPTFi1rZcB2tzizg3x
	4+rzGw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgm0gjdjf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:41 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3662e7a9299so10033668eec.1
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898260; x=1793503060; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4y4vPJgEmDpbRegYbIU8W9VPxzKIFsK6cvaBySnJ4cQ=;
        b=McUFmM5HfLrEUS5wFVmZcrXpAsKGF34u9dzH2SK1v0YC5PaMCarDYqyEprWwBRa1Xr
         TRVhW0VCpFNlcwJkfuwflnDI2TywzjSIuruo88GPDz0bo1KsAnRRtS+8HU17omcaE6qq
         L1ko64T56v19ugM0Gg00GCMKlcvwiVAi7Lk6Dq6IYS0m+6L9SabSRIa9TZpnxxo3SP7Y
         fz7ieTfvgVRyASdPMPbMYdIFSB6x23s+EZce0bUhZ4VgtDW813BhlpwT0+CsKTjTAxRI
         6jhMfTpVWzDDZ+Zg9qfnTD9NBRYIRw5NQxFbijwvxBK1p/WDNTBv31LUtl6w7CIR1chI
         pwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898260; x=1793503060;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4y4vPJgEmDpbRegYbIU8W9VPxzKIFsK6cvaBySnJ4cQ=;
        b=WvfTYhtO0BkJD7p8Zm04KOo4/5cUoHRiXdf6ZnZ4R76Qrap/cnFJjfRxKpl5W6bAR6
         wDbgKI8lhKbSCa+vAXnXjmAI/VweW4KNLMqNxWHJ2Xok9qyvBF+cWUoBvhGLIgKybyjF
         6uhZfvbRGhiU1sWIoStpIfvBzX2ZtxDrOfwt42WByuKV+xhzcSyj2SmpKE0wPCk49P/p
         Ur6Hf59EBJPIJ5yfemQRw5XyCOS4/FyJ3ygO+O1xuUxycmKvKI2Hl0C56JByhLMgtsOa
         AksbEbh8hlU8UXCw/XeXHy308HUeby8fgbokkEjw/GyYX5n+K7ZgC4GFGBmjal4Tm3LU
         p+Ow==
X-Gm-Message-State: AFq9FYKn5ZmyTSWgKSUtWBMMlEWCnyvAvcjDVvTSBSxExGVl1AQ4pL8q
	S7gm1EWHrtw8EF1LAis5zBD39Oh5YaKwvx9GOEH6/UGESqUOjSch8vNZHpCehcrfUQJVDN/0D7J
	5DY47oI2kMKQWMHuGvHBblZq+6UAMnceOSxgmvbs0GAMnRs0P0CLZw4WjFslHOhX5iHT2
X-Gm-Gg: AYBFou2voHVdzW/gPwX82sPmO9uI/ft+xjzYgwXRvvgjt8AAnq2zesDcvQcLI8kslKz
	h+IOeCQXqy8A+v3sTuN4JvEQxgvS+AiXE0TIJWxByJo6TsV8PGQvVrRGuEnBjupkZOj/BIZZbsC
	fzV3crt1gcwoOejwF8mx8LVybWGR7tONI1A0vb6PEtoXGz2Q/rPx+65ArnVUlcKtaRyYTsCvrF8
	ZkC9jgy2ve2rj1ifsu7150ggC0iJsbdsD7XxeUIPFWrEmUurjtkG+ubdF3njMBl5vcxG7ubbfeG
	cIRhhnb6mk2c1BRzEiERGK87jOWPL3mt156iFYsv5bKt9LGCkFKSK4jqRruOOXDzPH8Lipn4ysb
	pXth5X8Qzu5uHUoneWmTdVuJ3Rj+9S0nsW6X6oO324wi8TM1HgVLdaRbwG5dgrcLT6EDMc3KPdn
	BlPTftl9GT4w==
X-Received: by 2002:a05:7301:4615:b0:369:2505:380 with SMTP id 5a478bee46e88-369e84e80d5mr5202318eec.24.1792898260064;
        Sat, 24 Oct 2026 20:17:40 -0700 (PDT)
X-Received: by 2002:a05:7301:4615:b0:369:2505:380 with SMTP id 5a478bee46e88-369e84e80d5mr5202289eec.24.1792898259504;
        Sat, 24 Oct 2026 20:17:39 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:39 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:33 -0700
Subject: [PATCH v22 14/14] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-14-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: I4af0MfX_WRfXnQuYJkTXCT71W38tF_Z
X-Authority-Analysis: v=2.4 cv=UfTE26SN c=1 sm=1 tr=0 ts=6add74d5 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ZJyx6tJpJz6uHbTMGDIA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: I4af0MfX_WRfXnQuYJkTXCT71W38tF_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX8F2kJmr8MRjw
 7rWzZx0btaFO5PM/g4akpyqJloBhblPc8aOc3AVCNEefSw8tdHwAtIMNXRSOSqpNNot/QtGpTrd
 YioCAuotOQeX8kwHIngp18Bl3+e75f7ZqQC0Rq9PZxVEnyJqFRmf0evEh3kYZv0rIbalanhPUXj
 2wjMATytrqBQ09X8IB33gWoSoPFHYGPKrB1EcBRaMmrBFG5DqDVvUVxCVXsgr2+ciePoPLnPPuM
 QzOFSQSrfH2PzUr3LeS2fzKeVDDu6Ri7lUadKRxMHlknu05+zEb94JhN3twO4+Zc0LpEbETFYjC
 M0mBVsO5gWncrdFqE/ldUHOOLn0vv7bxvU/jL8XgDtA9hLV5g+0r841SoxRFUQL2+/bSrDrMLXb
 LjBBFJ+PQ2d7soQAWO1H8Fw+i1hRz2ixvNBhTRYPWjaZuNDj8Emqkqc/SefdIIUa6FiKnmCaQB7
 xIEsHXaxFqSXanu5jwg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX8TIq7Fo+HwMK
 CCtMz5K9JNZteSteVq8HNkcqoasXM3KnJ0Le5Ono3ySOQkfkTX2T3UouROvFQPI3zZRQN0hd6cb
 DE68MS3f96bZMOo8KZ2xmkSdmS5K0zY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201742_203147_D964224C 
X-CRM114-Status: GOOD (  14.55  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.

The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
lane mode on a rework camera module.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00215606A896
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HmnBg2Xh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=gARnTJM9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WaxRFTWe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+PyAa0ylgsjjSxK779Itpwu2D73Hf9xxP1H+BUpe6Fo=; b=HmnBg2XhekxjJqZlIfE9s99/xV
	65ysP44l7WK+puP6+c2z+rkEqZGyi/kj+KwueV5/rtfagbGJYh7phX3B9p+BDOFM0wPv13zgW0osF
	iOxpLlyDOPg607eQdz4mUSPT1nUv4j51WtKjN6jdKBRQleE9JFnAc631xukeeD/TM0TTBNUNqr/hu
	SuUQbGv11e9AeEo2OPUSwycwBCvH6bG1ZR4j6TX/xB9My/b7qKvOgHemEn6qLqh3CWHyArEt4fPBR
	H+oqxEG6b4TTtloymXN4m0hUTLblArxvIsKQ5QYIbWiW+KwfJf98Z66qG/O9JEoY18uZrLt7TjrMj
	1+DLFV0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC0S-0000000FuBK-33pk;
	Sat, 14 Nov 2026 11:33:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC0Q-0000000FuAP-0lb1
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:33:15 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wRBi3276452
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:33:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	srBCbyMfwdy4wkpUlf47oeNrRB80fK5jRYSwk4ab/ls=; b=gARnTJM9q9kebp/l
	YdsQQ1a4otBoicdDIRA4J/GJ4Bm7SQr+8r7n7wQhmrSwk9XI1pQ142zvK+XyRRqy
	/L4LV4XcFNGoMa246C8/mTrkbM/G62gIimf9PNd4RiSSoG8RbVjlsm9tmfcvR5oJ
	/HSM0IQ8pc4nEmaAVggoihA6g1HY1I1BoYGyhS8eisJgi9ULBR6Folq7UX46QkZM
	AGSVl+1cXW/+HlHjlixEVrdBNU61VWR3kltokJrNEsU/6MPZwJ5iOJ7em9petx8j
	ANNzCEksI26UeG0XUGKzgqizyMz+6uuT9c8orcg3LKf8gO0nJCBF4ZJPULKad9mZ
	ZYx6aQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhjqgrp9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:33:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91ebc622dc8so8157386d6.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655992; x=1795260792; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=srBCbyMfwdy4wkpUlf47oeNrRB80fK5jRYSwk4ab/ls=;
        b=WaxRFTWeBFeOamsuGszYjlhKgQtTe8ZPqBHXMQh5+tPFCezFGaOpjUDl3rFlOz+nyn
         G5QxJYD9XydZP7W6Jld5TFafO3mxUv7TB4u08zlymjfMt7eQxiiHhDtWuTF+pDrHD1dG
         BrpZsv8tdjCHU0hoTprg9ANOvNCQNBHvFCXH66qjrYkuHYD4tzCdyvuvQq6dFIRH3Q1z
         1QBNYC653hnVy878wN0W/E9YB8v56njW1BXu01H9hcwBoi8gMr1pobCq1WyGhit7O7dF
         6XzOnsvuHyCajOdvOvkj4K7SL70tyAcraAfg8WhxM3XKwJohDPWA++/5kgL3RGgWiqA3
         DJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655992; x=1795260792;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=srBCbyMfwdy4wkpUlf47oeNrRB80fK5jRYSwk4ab/ls=;
        b=usKfqgOivTI+0eI7ZIXPZ4m4R4IxdcJJC62GQR9ACJgJ5jDeBf6AWI7RdNm6oswhTW
         HElfOdgptFzgrc7j5VAPh1r80BdFnsFnDd60sLI35Noe3ieAoQC2jf4rH6aFWWT09DRu
         K36AcoJFZ4AfsNfXWheJQxQ0yTbta9JbItCbbRtQ0dzlye1biUdAroli8IhcAQgKfstW
         lSS1MaWn9/lX+7VrbZnMnUJjU4a0MNcqz5bmoZ+OUi6+kpcQfHsLbs8h15kQSGR6KM27
         6aj5825TtYWGLpUn6TLbLfP2pH/NLbbY8qwkCH1hi8He7ccbDV0p2QVjJciGRUT+SyZw
         ICgg==
X-Gm-Message-State: APuU4Z/BXcQVpZmfclK8NH1qZ+sWCMmbQ65VGVt7c/mZVMIKZZGC6KyG
	PCVP0UxjTXsgeMPLOfqaidkUdpq0u+gYidjM7JaYST1s3Dbz5HmSyoGT2fFZ9zCEsaL/+LmNekO
	EvfAig19F38yAHDOa06H4QhAbDxcW08ys1s11wahIPZXtTYj9hNj9+kbail9ILgA6tLti
X-Gm-Gg: AYBFou0fQ9mZra0MA09BC2rLaWZ05ElyBdA7wmVDN5sXWyL/IFai3lnJDLBzgcTSvvN
	ENbTB4IuV6LsNgoUNk5/1ei9ZbYk0jSWA5JbCaS93nQmDM74Ya+nz9qDmlHefw8oHEOfWuYx26G
	7ZxdUY7xZeZwe5s0b+0ik6/tWZszZaxawJ7Oo6T+Bj3FmAyWAVhQ68dUibdzeNhBzv/aZnqUbB5
	JxdR15acWUxcZPPuA9G73U/+DOU332lc1oM9X7x2MefxjVrl19Z1sPlUQ8dUZQ4H6GKF98mXNjP
	wtosv5ES6k/zmnGpYKWBSRUQcUhqP5L2/JNSQxM/Rb8K0vT02NH44HN2IFEWxVQzdpZ91iXyx76
	jQeulhYa07av5pAo2KkIsWlNfrXqEC/aArYWIfXgBTe5B1VlNSV4cTOBjRXzw8goCJgVqo7QReu
	s/fTzPB4rdmKGQUDYDnK00nkSAug0EOlLuusQNcUXG
X-Received: by 2002:a0c:e01c:0:b0:91f:2b32:d8b0 with SMTP id 6a1803df08f44-91f2b32d922mr47536136d6.48.1794655992367;
        Sat, 14 Nov 2026 03:33:12 -0800 (PST)
X-Received: by 2002:a0c:e01c:0:b0:91f:2b32:d8b0 with SMTP id 6a1803df08f44-91f2b32d922mr47535756d6.48.1794655991922;
        Sat, 14 Nov 2026 03:33:11 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:33:11 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:40 +0800
Subject: [PATCH v7 23/23] arm64: dts: qcom: eliza-evk-imx577-camera: Add DT
 overlay
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-23-8ff2a11835f6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=3593;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=R7REMZKBzgoQAsBHnV/bfBXJwjhaDjD5eJBKNy2F1R4=;
 b=wDLImcnj8scTBdHanFpRiYbT1nq0rOCtfd5wIaavK+DM05XCEbDUOimJA/y2e1T9jgIjSGGwW
 MVQN6NYMfBxC211qy67EYM1C3tWaDMOlZTKPWA7+c03nr3dMUSjja8l
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=KelHIgYD c=1 sm=1 tr=0 ts=6af846f8 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=mAyPl-DPwURhq-uS1GcA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX9mfiPvgywF0C
 x4DZKPmmFST2c+MdxNFC8eFTNvEFEU7TYCfeOLU41VL93/aU/tZxxQ04fW6iQEV0Iz9gYU8Afr3
 D3Gc9xwV3tG3NhScMHyBRLyzg1SpXgk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX72zW6UJi+ekR
 whIxXJhkxMByxHtrH8Z4dbWZzEB8b3XKjYhejDjMU+NNbc2ctS+JiDJ04iVgqhPahShNfOxcMhA
 JihxYdt0n29KUFB3lY9DN6Zzso4DySUtLoxD4aOyy5cO73ZslyZv+LZgLmaAlQc4hYBMioFWwbi
 FrFT9ttiJA/aFq11HCGq/GT8iwVAmgipbfAX8xyoF7TDvZXZSVPraazY6zZkSEBeFarCRq/uZz7
 4NoIo/wKROlwHzdVg07RyCtgDxo807SrAlM42ZXOGlBfvgdNOYDp5aWK/I+0T4YJ+c4hUD6x9RG
 Qbl91Jau8OAsPerlMT/hK5YNVa9Jc6AtXGUxJ13cvp36KsFreCMwdbDGR+IOpQ+SHPv74HzqjTR
 1nYIN/3CUO+XIvc2qc9awHIMXPviZRLsCflXkF/FB2ojbJsqbpEWnQztxBr/MTiP3/mCqbfF1re
 6HAtjiyCSdoXDRX/fcA==
X-Proofpoint-GUID: HCBqhw2w5gNzjONYgzyRFY-49ddMR-QO
X-Proofpoint-ORIG-GUID: HCBqhw2w5gNzjONYgzyRFY-49ddMR-QO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033314_346710_AB9CA2FD 
X-CRM114-Status: GOOD (  13.76  )
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

Add an overlay for optional IMX577 integration on the Eliza CQS EVK,
shared by the eMMC and UFS variants. The sensor is on CCI0 I2C bus 0,
uses MCLK0 with its reset on GPIO8 and connects to CSIPHY0 over CSI-2.
The overlay enables CAMSS, CSIPHY0 and CCI0.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile                  |  4 +
 .../boot/dts/qcom/eliza-evk-imx577-camera.dtso     | 85 ++++++++++++++++++++++
 2 files changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 64d2cfdb89c89f1c6eb0085e2bf5877ff980dbc4..a9374c54dd514f53b7aa97f5581c99cb6e75697d 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -16,6 +16,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8096sg-db820c.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-emmc.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-ufs.dtb
+eliza-cqs-evk-emmc-imx577-camera-dtbs := eliza-cqs-evk-emmc.dtb eliza-evk-imx577-camera.dtbo
+eliza-cqs-evk-ufs-imx577-camera-dtbs := eliza-cqs-evk-ufs.dtb eliza-evk-imx577-camera.dtbo
+dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-emmc-imx577-camera.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= eliza-cqs-evk-ufs-imx577-camera.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= eliza-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= glymur-asus-zenbook-a14-ux3407na.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= glymur-asus-zenbook-a16-ux3607oa.dtb
diff --git a/arch/arm64/boot/dts/qcom/eliza-evk-imx577-camera.dtso b/arch/arm64/boot/dts/qcom/eliza-evk-imx577-camera.dtso
new file mode 100644
index 0000000000000000000000000000000000000000..08f2e3c62dbdaf23a2f6ca69a5c392054cb1c225
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/eliza-evk-imx577-camera.dtso
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/qcom,eliza-cambistmclkcc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/media/video-interfaces.h>
+
+&camss {
+	status = "okay";
+};
+
+&camss_csiphy0_in_port {
+	camss_csiphy0_inep: endpoint {
+		data-lanes = <1 2 3 4>;
+		remote-endpoint = <&csiphy0_out_ep>;
+	};
+};
+
+&cci0 {
+	status = "okay";
+};
+
+&cci0_i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	camera@1a {
+		compatible = "sony,imx577";
+		reg = <0x1a>;
+
+		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam_mclk0_default &cam0_reset_default>;
+		pinctrl-names = "default";
+
+		clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK0_CLK>;
+		assigned-clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK0_CLK>;
+		assigned-clock-rates = <24000000>;
+
+		dovdd-supply = <&vreg_l7b>;
+
+		port {
+			imx577_out_ep: endpoint {
+				data-lanes = <1 2 3 4>;
+				link-frequencies = /bits/ 64 <600000000>;
+				remote-endpoint = <&csiphy0_in_ep>;
+			};
+		};
+	};
+};
+
+&csiphy0 {
+	vdda-0p9-supply = <&vreg_l2b>;
+	vdda-1p2-supply = <&vreg_l4b>;
+
+	status = "okay";
+};
+
+&csiphy0_in_port {
+	csiphy0_in_ep: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+		clock-lanes = <0>;
+		data-lanes = <1 2 3 4>;
+		remote-endpoint = <&imx577_out_ep>;
+	};
+};
+
+&csiphy0_out_port {
+	csiphy0_out_ep: endpoint {
+		remote-endpoint = <&camss_csiphy0_inep>;
+	};
+};
+
+&tlmm {
+	cam0_reset_default: cam0-reset-default-state {
+		pins = "gpio8";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

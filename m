Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A55CA9ECA
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u4Swl1mi3s847jju27EMDbWDHBMT8D6hZMCB2IMOeM=; b=R7cOQxL1kzJRcR
	PjbZlk9BvHxGk90i9kOPIlNoH6W2iQF6jkB46xwAp0SmJCE2pt6YgqjgOsteBR/gdWL/ORtAWx0Gh
	/oHvp4eAe5XK7qkqkVO/iEUjkTU6+BRIlSPyV3cqQ3Whp/O9rfzMdMMCd7/u6RKvR8V0BKeLagZmK
	4QvoxEByhsBQiLIMVPjaNjRpypIMTc1PVzUqgt6Z6t3beJs712wSHTyKS4uhF5g5v41125W/43746
	Py1yQfjqmixjcEDExz1md+MW1QbEnkKnOvT0aniwqdqtNL6N04qllnqJuUKXNIjcL8e83DJOR6Uy2
	mGOmomUYbBm6jdhBeBaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZW2-00000008FGW-1yKq;
	Sat, 10 Oct 2026 16:01:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVy-00000008FCb-1oKn
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:39 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFPBqF956943
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KeRubGyRWf68+TZx5tYzkJxFlgm3yd8fS1Sy0YmfLNU=; b=gFW0ikIpREoo3Xsf
	IJbtoVrY/gK5nAQ26cFNEXxDMsVzkehuZI2DJt/fn1MjgDu/Zt0D3wYJbiHBTGx0
	QrKZeReWneipKmOgg0fgguDYt5n6dM0XIHJN9QBVblsanWW/KbfUQaDBT0eVYr8X
	owXvpFDg1O8aS5HHB7RVRwGgtkXKZ78TjTY34Al5OwRkt6iqFjiwTVG/2LjM7HoC
	YKSYnsrmeayo54SkhoDWqMD+NrFsUn+zUBSRDNp+9N1K8UdIsOjx7GTpZwy+8aUj
	K0LF1EE+RLEGqB2rQpX2oIic+vqeOkVBUrOjB0GwlB/lEeR0GcsFMqEUNXG1syTW
	MSuk/g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7deuhb5c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:37 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-35158d674e1so3056090eec.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648096; x=1792252896; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KeRubGyRWf68+TZx5tYzkJxFlgm3yd8fS1Sy0YmfLNU=;
        b=PD2NloEwGbKS+HnQ4M/bZ4EkfqWgs4ZJnXWJZHpHmWWBZgODEHe5UuJ+Ag9Gkewaco
         1/Mv1IZS8QX0XGZA2K5H3aljgdIDdad32dI1xcssF9neIinz1TXJfgZy2bxUPOdDgPQO
         cJO3Msm7vUnXwd1fCL/XxEP98ZHPYXs3JZVmuqhKzmMgZQntK3MGjqzAxPI6gTLtMz+1
         2QuNzyYPbJM9uzqmzqu77cTi6Q5cs5URMZCqmuANERw5pTSEBFTfynoihCsEca0UqLNT
         /5nqdUOMJBWzezmQlOeSnSU4Cw2r6a1AnV38NtKwRs9+G15EqLMxuSdc30tRiBAHvnCL
         QSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648096; x=1792252896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KeRubGyRWf68+TZx5tYzkJxFlgm3yd8fS1Sy0YmfLNU=;
        b=mY7XstFFewi67TeWNjOYCh17lP3MNygI9y2xUgYM6mLjpvWQ7WFvmXtetidhetEWU0
         /MNTneIaqqUMLZ4JpjWUeiN2fCP+8pX4DDJanBYYyvTlkz/A8jGB1fDPK9co2/Q4EBjU
         BryNhVxQvquTw3gUoa1gCM3KTlGF6kEBEZwtpbZmmouPxb5J3EHT64A0yiO9bVIACiYE
         MKS59RcYBhwzwBMq64IsoBwOVaI4je8BUt7VNjNOS13HlxnGFAxHRP5Ij8YDScQnc8+j
         ayL8fcOkffPizq5zYvDiNFuxWgBs+y8Qg93tmRYxdCdm7+m9rdc8YqGUYjdP77pM0iVC
         J3xg==
X-Gm-Message-State: AFq9FYIYmLZ52JjJbULFkK2Vm2xsY/FAZgVIEde6xk2gl8JutNdrTO2c
	M28ziLnjKjizJus9wftx2qdafEkf6nal20ptPcI/hE3yndh1SaAJdeWS6uFnvk6QjViQxNXvS4f
	suHr871frtXNX43KNmlrNWMNGrsy8Rok4V7bMQv/5ywTcQVLiKrGa6a+Ib+FG4WfvSIuOnDcH+d
	b6DP8=
X-Gm-Gg: AYBFou1dsZd83sUB40mbPOChzj5gTY4HplvLdMotZ1/OVU8JipK4qdSdIt2Z1167RTR
	5kq0NBxXF+VhmI8Sk47DMCPv2rQYwkyg5s2X9xFZ8FYB37jHaeox7/fM4cNM+CFrS0Ja6XBcDkW
	bBhq6U/8kb4H4sKErM5s2DtgmPmoQYjK8a1/ds6oXE+ZuZrNZ5zsVzZwl1Twrih5ovBQlUl4krW
	Er7cZd6+kCN/aVvx+lkYi5X9EkXRysmo3RfWofnS3szEE/cHjOUPSx4zyVqpmbk7vCXJofkzaQP
	39ZYEmw8VTOwtd12l77Xf5Hy+AKjj8OmVJoWv9A4/73BHmdY5J7BIeQWM7HEirpjDEGfzKo0DO9
	h9Ojinblii4ukWeMypdsDLD5YgWeRBJi53CzeyLzl5m02vmmXK4PfPwFMcUgca34zurs7vK5Svv
	P9HF2KIlRfDA==
X-Received: by 2002:a05:701b:4541:20b0:143:296a:3ed with SMTP id a92af1059eb24-16a5ef2853dmr6701361c88.24.1791648096217;
        Sat, 10 Oct 2026 09:01:36 -0700 (PDT)
X-Received: by 2002:a05:701b:4541:20b0:143:296a:3ed with SMTP id a92af1059eb24-16a5ef2853dmr6701314c88.24.1791648095519;
        Sat, 10 Oct 2026 09:01:35 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:35 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:18 -0700
Subject: [PATCH v20 13/13] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-13-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
In-Reply-To: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
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
X-Proofpoint-GUID: m_73LbhbqnFX5z2Cj8CzhoybYuAqHS4v
X-Authority-Analysis: v=2.4 cv=Aud7T+9P c=1 sm=1 tr=0 ts=6aca6161 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ZJyx6tJpJz6uHbTMGDIA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfXyCIfMQ3aWExh
 G6uKvrjckG2n/Qo9gMJrQdCrKApsTMe3vAeapW/8Nd5LiQ1dWuEWVxPgsWj+c1QLaDDaBWImAfD
 TbaXVUMZXIvE4EtGMAhN2vluKa3/6kw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX5eVvMkcSc+Z0
 MZ4UhkBO4RrrDeJBFdKXyXg7czj8ZALFGDgqx1iAdXaE5d9uyvaAzTKKVFROprFp4VJyARXeTH/
 NukPK2JoX45g0KmKqKV9MEhaoxtA5qtyANlfSpATH2dUtYXisTKc33dhO/R4s8PMeAnC6lVVSBa
 YYHwA9easM2BPm++dBFXo6SV7Xy7bMTkl6i/qjHmi3DPlYlEb7OIsvaFG0q8y57q7JQ9Ly1EiS3
 ph8T4P97c5o8okjFaLFQM252LtQdNrC/fRBSikwbriRfahkT5KG/fk1kx9LrdVuMORu4QyOwJGU
 8I0r8bU918elOIi4iO+Og5zM0q19NZF/MxHlxRXKyU5Wpy6KAlLujSuCBMZihyMeH5bk0nKfyC/
 w5kVeS6wDyiKxInaNszETQqQdphQSov4e5u7HCaExFScWUuVsIEcYNMYhM2Oks8PQ6Om2JDXs48
 hEfqy7sjUVs0LTyd4Bw==
X-Proofpoint-ORIG-GUID: m_73LbhbqnFX5z2Cj8CzhoybYuAqHS4v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090138_600835_9E585F44 
X-CRM114-Status: GOOD (  14.69  )
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
 .../boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso | 78 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts         |  7 ++
 3 files changed, 90 insertions(+)

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
index 000000000000..7b574e2ed373
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso
@@ -0,0 +1,78 @@
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

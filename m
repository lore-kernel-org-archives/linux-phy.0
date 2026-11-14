Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFC3606A884
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HOZ0jzWl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=A9MZNlLw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=CzGG4Y4P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EwzOKvvpQYo4JkRmGATzMh+PDQENwd0zWa1qJqusFFo=; b=HOZ0jzWlFeTwBeZ2l2OJIz7vvp
	tNW5jYby7mJB75sP55hBMgxEoz0kIRZwSJ6H2V1Yi5LRyLj/Cn5FRsXYAO0L+5P9cuyHmfo/LwHuL
	3oFfJiGJHGEzsmR9HTN5fh3VSaCQ24WFfI+dXxe/WbSrn3HGVrOQN5YXl8NRvWKMzOOLyHYq6f7Fh
	DBxQKobKL5dq1BJ+07MdPNemasB95hCPjT5fIjaqalt8jHByz9YEjsFJy3K4X22LJjQU/tTDNV2zB
	Vn2/Dwfk2A5dRJlVQqxvPs7CjS4eLqErU4HPp66wI44eFtxYIBV9pvY9gm+NBC+JDu6UbxMV27EgU
	Z6khs/JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBze-0000000Fu3i-0zI0;
	Sat, 14 Nov 2026 11:32:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzb-0000000Fu3N-1ZPl
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wPjF2710379
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iOVns0On8xHRpLBncT/ucc3Ts++fKWZVvwDmwZRoZmY=; b=A9MZNlLw1UQE6aUU
	yW0GWR8ycdBsliUATMPJ1369rv/R889JETKb94RjsiUW/bBYnTKl+qkhKZwr68w+
	ZKbAYQuaJMeCRQb2g6PQ8TMu4P04cn+hllJfMItruIE8cX+86V3H9gfSoBFk0bRa
	VL4v3Bo+3wcAfjVMkuC8/6Qtv2waq0zu4e/3+IL9yFjQzdNVViEY5Sj5Oe7KqnbK
	iOZ5JfhhZkEaYa+xVeHspdy4T7mbmuEE3BNgTuwOvODFfhZYOMQV3zdspkKGhxcq
	SVoXT8PDm+CS20PYctRMIE/lrKiWqcRyYRMmJaLWCg3IqSN1xOJhHMMqSLiAxDS1
	ezFIcA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhmhgmrk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91f0938c499so9300356d6.2
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655942; x=1795260742; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iOVns0On8xHRpLBncT/ucc3Ts++fKWZVvwDmwZRoZmY=;
        b=CzGG4Y4Ppsqdxeu8bkU9Ke0Tr08FKAio1RUA9P8GTJt1nAkLrdunLCjW2e+FzrmPZ+
         xXDS2RFyoOiFWBMY4teSYO6wVcjSZI6sWz6ecvfq/NgwEzooGMnhjsEtfocQTZ1N5BbS
         CvRWK6BddEMpsPjoW9e5J5w5too6oRSV+gP1634enJ9Z+fsz7NMCWic2PzH3hIqqeynJ
         DqzZ3MXTSkI3SsKZWm5IvVZOzzLfvto2rcNl/qpU0bgEwvLKRdXVxs1RwhnQvIKs/sZX
         6gRtcmOFwzmcOsT8GVXrV3do9yf8wfnpgFruYbzrnzbaeaiSSwmXj/cEDfD2Hq6idmnS
         9RXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655942; x=1795260742;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iOVns0On8xHRpLBncT/ucc3Ts++fKWZVvwDmwZRoZmY=;
        b=MuDaDDMk2c2jZFvU/sxhgkXF4fOy9voAe8Cnr0VUmXn9FK+gvffX3fhQuYdSzUnrzN
         FDQfNeQUYH/mnbVIUdOeILXK4ISagKY1nAtTGEdslMmk2eoDYJsjNdi7/PutuGeHtHZ4
         90JP1f3yVyuXArm+i2QKr3OggHUIW5nS7C6n62p/BjCdVUhBQ+B89Sbtok6zhsy8o90t
         F/8dhGz0N59V9t+CnqRt4ukmozbkAx7XXZxNMZ6JZtrCTLms0dvID/yz7O3CQeifFV51
         3sv5sfuatZEMIOYuRjRKeXjg7AjVl9mrYjjxHYyCbs5CQILqrMY2/YL3ih8dP7Gx3Dh6
         dhoQ==
X-Gm-Message-State: APuU4Z+cbVH57ztLb43WFjPlbVrD+PhD3ekH1FVvkC3aRD5qlKawnkcE
	iHZMvZ6jn0dcHMmziM6rLdbYqSoM4m9RVZpIspIAIPpJZQRSbPDB/o0RKMCmOsyrL4DKcxSpF7o
	lmJ2noK+lWPkUW83+gEUr0UFJI9ggHS4d5WyuxxTPxAYZhkOKhq2Gq0wu9vDH+nN0qZxn
X-Gm-Gg: AYBFou1bs5CRFXD6XTQpyONzbw6uh0qzSFMxc2/Pyn320o+r9xnlJBXltfi6R8Bvs6j
	jI+EKb5J9ku1w8fXLIT9D7n7fLM0Cimy3SaVUbXqDq9wzc+7ZJJm63SQUNNClSEHQC+7g9PLmLy
	/W3GC0WAyZGIwC1/MhICPxpf9xoNz6/0x9GERiYBNyOyccNm6rzBGSR1ZOWNwZROqrE+k6S71hA
	/cOxgWsDHJGGFu5NOO28CIvNXW3GEJf9ca7MFJ8oAnmHAgH9WrRPYW6Kmy9BkPkWF7Q3ig4dk3k
	5nPsQpkAV3rqx81H9KkYp5tynN9TZoQzlqr0mtpTjm4IaDePAY1+BDBnGOfDjGoaOWVcWIx8CiR
	sj/eI1uIAN6415KGOG9JPv0bo31TlT97qUO0Ev+8ZuzDqgFaRTKAW2HKIW0XeHgGdLZFGeVPWTT
	0b9jAbPwC1qvcsQfhSqdXrFTS+D5yTraNS2Vir1x2N
X-Received: by 2002:a05:6214:2c11:b0:91e:d612:a120 with SMTP id 6a1803df08f44-91f23f1757cmr84911166d6.0.1794655941832;
        Sat, 14 Nov 2026 03:32:21 -0800 (PST)
X-Received: by 2002:a05:6214:2c11:b0:91e:d612:a120 with SMTP id 6a1803df08f44-91f23f1757cmr84910806d6.0.1794655941400;
        Sat, 14 Nov 2026 03:32:21 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:20 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:34 +0800
Subject: [PATCH v7 17/23] arm64: dts: qcom: sm8750-qrd: Enable S5KJN1
 camera sensor
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-17-8ff2a11835f6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=2708;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=WcXr8K05MCivYBH7t55zgxmqvzswrk2NVxaQje+wUUE=;
 b=83dZyLdKRsTC9xpzwO8aD0RlXWspmyBIeBp19Rd28ihT0G+7H20crZ0mR5issY+uMIh84StPX
 5Gnt+iHD10iDNVT5nZBG3xVbirzR7Dn6giWZ3plWGxANoYXGtpVoPG0
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-GUID: hnvj7Er0FPF93OJwdDb1RKgqcQtT7po4
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX4dfGioaK5j14
 IEAw5VtY8vbfYhWk0xFpWyyYVDW+iWeol2ipY2UPT+Q3HHl8W7iMtvhj42LUoySs+lHovNopg4c
 rI/GVxFgop4aCXEoREYxceZzv08kHf8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX3mElzW+CEbp/
 C4b5OfVpha0+LArhnztazn7BHaWvkgKr6kJF3AAFNsquWCyVmzY0p0pBYC9rMTcYXM4rAempjpz
 i0bt0dqH6SInrmKKf0kIP0aoM95QanwZM+w8J0Jw+GLSyIiRbwq8uL4+0rsYrIj6eQQt6xT51cs
 z+OWgzNQ+FUIEVRnIl1LPiOyfid9DteOv2CeKob9TvrN5xeio17NsuMyvI7G1H2IupXAGe0bT2Z
 zCWkVGC7MRladd8vyC5aRD0iyOYMtXfPxrv3MxmSqK8Q/pQSMh4ZkAXP3dMgYiY0GX79t3GXont
 6hD/4uyIM/0o4vkoX0FpSOURO8OcKQiMBcG/WE0EAK7SVTYnNEFVUbzq+6eqK/9sDTQS3/G3GpN
 lqxGRRI3RMEMagGri2OFZNyGywexr3pHHfxWAc3cKXbM0IZNSsXJqREWngtkAj689H8xDhnSzYY
 VmSsFLMn4OWXusKui6A==
X-Authority-Analysis: v=2.4 cv=e/2T2qp/ c=1 sm=1 tr=0 ts=6af846c6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=2P3Xd4wR9g5NvcxdGpwA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: hnvj7Er0FPF93OJwdDb1RKgqcQtT7po4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033223_447495_78928A53 
X-CRM114-Status: GOOD (  12.43  )
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

Enable CAMSS, CCI1 and CSIPHY3 on the SM8750 QRD board. The S5KJN1
camera sensor is connected to CCI1 I2C bus 0, uses MCLK3 at 24 MHz and
connects to CSIPHY3 over a 4-lane D-PHY link.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 72 +++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 75927e1f7b9ab0316781c64dbcc82d3394c414f6..c92a1f3c47bd5cbae26854614682c3bc7daa0398 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/media/video-interfaces.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sm8750.dtsi"
 #include "pm8010.dtsi"
@@ -858,6 +859,70 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&camss {
+	status = "okay";
+};
+
+&camss_csiphy3_in_port {
+	camss_csiphy3_inep: endpoint {
+		data-lanes = <1 2 3 4>;
+		remote-endpoint = <&csiphy3_out_ep>;
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c0 {
+	camera@56 {
+		compatible = "samsung,s5kjn1";
+		reg = <0x56>;
+
+		reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam_mclk3_default &cam3_reset_default>;
+		pinctrl-names = "default";
+
+		clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK3_CLK>;
+		assigned-clocks = <&cambistmclkcc CAM_BIST_MCLK_CC_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+
+		vdda-supply = <&vreg_l4m_2p8>;
+		vddd-supply = <&vreg_l2m_1p056>;
+		vddio-supply = <&vreg_l5m_1p8>;
+
+		port {
+			s5kjn1_out_ep: endpoint {
+				data-lanes = <1 2 3 4>;
+				link-frequencies = /bits/ 64 <700000000>;
+				remote-endpoint = <&csiphy3_in_ep>;
+			};
+		};
+	};
+};
+
+&csiphy3 {
+	vdda-0p9-supply = <&vreg_l1f_0p88>;
+	vdda-1p2-supply = <&vreg_l3g_1p2>;
+
+	status = "okay";
+};
+
+&csiphy3_in_port {
+	csiphy3_in_ep: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+		clock-lanes = <0>;
+		data-lanes = <1 2 3 4>;
+		remote-endpoint = <&s5kjn1_out_ep>;
+	};
+};
+
+&csiphy3_out_port {
+	csiphy3_out_ep: endpoint {
+		remote-endpoint = <&camss_csiphy3_inep>;
+	};
+};
+
 &gpu {
 	status = "okay";
 };
@@ -1081,6 +1146,13 @@ &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;
 
+	cam3_reset_default: cam3-reset-default-state {
+		pins = "gpio109";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	sdc2_card_det_n: sd-card-det-n-state {
 		pins = "gpio55";
 		function = "gpio";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

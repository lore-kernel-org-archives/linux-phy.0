Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCCC606B2A1
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z1YX2fAG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=kuqi/G3N;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=j9NMoj3n
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Cg1I+SkmMiPpxn2oZnCFvUgtN6/gUIMp6ZtgiWFANAk=; b=Z1YX2fAGqUGXYzH9SDXdWDuC9F
	XckOiTvATJgZz6nEISUzgrhQQvIdtjXrxgdBLiZlTyUkKnFh3dZ1Q1N21YthaSkTNQt9QhwmqfIHo
	dWaedjy4govURxWJKYej8PTir5roeVXlkvDbGdyO+cOZ/L35oENpA06AFXqE3xqs8u3sly5zrVCyl
	0dbgEh1mgCMFWrAF8YPjeyWGw/VyV1yjeWg+Arp3y/HS/y62Y7nJQyUigDeoAUwMn2VxZV+BaufkO
	tsnuCkhsX2pqjHGqiRLvlrdf9axyV+z5499ViUiiw4XTO4jGbtLz7opQsq8hyYUwQ199ZHoU3GmMA
	dORaJ1TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvh-0000000BhTq-0SDM;
	Fri, 13 Nov 2026 05:34:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjve-0000000BhT7-3Oot
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:28 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD5762b1631347
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4BLrYl5h4yMVFXBJ+rSB6i8v9tN+ezJoVhrSaE+41aI=; b=kuqi/G3Nvv+JxC2i
	TQcv752qreQ5+hjhHq5NAl4upMPDCb4T0eCLk2SI0rN2UKi2yFM3mNe4OcUi7Cv1
	hAyj0/ttaQxurAvaii+8e3VL+0SwR01Ayxw+07inhuV81HFJlS3/5nKgkHxQIHjG
	Y9clAcvk+pl3Q/e2HdUIPtEwpcqwe8nESL2ceuDmHFbhKzO5NdgtEB0UrUN3hhjJ
	I4k4rIP5GbMevVb/YIfiAm/yG0eurQZrYpKEViIiM2JdHXNKRGtZXvWqogc4cb8s
	216v6UHZz2CeKzGnkoJv7gR3wGnjhrZ1BWEVT5x1V1D8ALApbgFV85hiSub4INPj
	bRf1lw==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw9e1c8ka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:25 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4a72bcd6599so620647fac.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548065; x=1795152865; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4BLrYl5h4yMVFXBJ+rSB6i8v9tN+ezJoVhrSaE+41aI=;
        b=j9NMoj3nRBm5EWgeYeqpE9vN46DxXObU4XtSS5lmhbHpKxowlXyx7L6XNsfuQTMZ5Q
         wYffNhABlH0rv/jbkNS/WP+nL9iIHS4wgYPS6upVQf7mPh2zlzYYYr9rIHV1tS2zI2v6
         i+X13iZF9KSos45M/BU+LreOGpGldwzbRgkynAfuev0iQuwtTqo/vfCNB8WEXkEGJtP3
         yRu12pJOE5+SnH/ANrvlPf6mfGgMhmgbcApWw9izIZoSsXbkk+da5ogzhHbdBT9xttzk
         ON1IZVVFanqJl2uVDW8v8bP+0Vqu8UrFoo6opqmakG5jCPmlghnE0KPQ4Y6RLtvR8E53
         qPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548065; x=1795152865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4BLrYl5h4yMVFXBJ+rSB6i8v9tN+ezJoVhrSaE+41aI=;
        b=bRX2Ipo+JFo2q7TuW+TxR7rtnarKH/aFIgH76EglsB1Bjs5fpeBALgw55p78xMfbej
         w/DUwCS9uHqr2/hxa88SlURBcqgBhO9fKpSyl4CyhgNqXw7qKXjRVYt0eenKjhL6R8Eg
         q+cTWVCn4Ik/eZG+YIsLbc0uzxwTgkDfz4MoqlbZCDycsmGPdtTyeTaDk/io5bWnsdhE
         zCAy20ar1wnlJ09gSqTuEILQpe7oQWITpvlRF5qxEjSM7bqX/egvJc8vjKCwcCk6de6C
         j/jbo7Bp5NXp+YXblAyyPHAqw0TZMsNuzako+WbRnfjnEjb7Rn3KCgSr3SU9/MtwPtqe
         ZO4Q==
X-Gm-Message-State: APuU4Z/pmWGgOfbrA7fgFzjtfst7Vg0qpdjh4TAlBg6AJgLcT1FEUTGi
	pdeN8P6lqNYRJQ7Eztau4CsILcrDzfX4ZqhXoRSAlVJn6DNXuPZtgmbQvZf1byhtsKGq2+VX2Vi
	rpAjBadsBP+gLQCXz6l16Q7xw4A2jNHB2989yPH5hAQJLhn4XdjvjL4eVreEMOTbRZISyRFBk5Y
	ljT+Q=
X-Gm-Gg: AYBFou3uZe9yPdG1m9i2UIfIfI7gqgEOgT3wJtV37D+PxBMPkPNQgiHVmVb6AYMRvGk
	WAyvpTHL8wZuzciAuIVXpEUWGkr/f0ekOjP2ErXXezWF61bquXsK9p/i6oX10JXfB3gE5IdozV+
	TzVkuevohJ823rmrl4eLYarOpwzqKZqbWKnuRs1wWgWAb1vkhAYj1tMNhq9VqdNUjnP3dYQAx6o
	Su4GCI3QLPLPp7RzWLhEDfhj+l/BWBfBXM+pDOUJjtZ7GF6gib8IBIqjzOlf4bqFuoISDQDJ7+L
	FA9qCxfg3o0Pa9pS6WYPn/OLMvAjDzoXLkZu3GJdNoyk1VRdTxPba9ih/ETml2STQRxpDcaYA/6
	zO+B08neDvHwKv3u/CcD9HXsr6XmpSCWy+ogRTRYcbTfLI+sBc6IiD1/S/H6OaU4IjlMTF9pPnt
	p9I2qs2LkQevrCyfG5ZgGTnqvEFKeSN/us/1kCRcsEiC4oJO+abj1QSq7MR0Gj
X-Received: by 2002:a05:6871:c914:b0:490:f2cf:2977 with SMTP id 586e51a60fabf-4afdf77c4ffmr1844599fac.45.1794548065138;
        Thu, 12 Nov 2026 21:34:25 -0800 (PST)
X-Received: by 2002:a05:6871:c914:b0:490:f2cf:2977 with SMTP id 586e51a60fabf-4afdf77c4ffmr1844561fac.45.1794548064639;
        Thu, 12 Nov 2026 21:34:24 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:24 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:47 -0800
Subject: [PATCH v25 15/15] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-15-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX5a0lo5lUk6rc
 MHu+5dNnn4yhVAKcciPfrudcQChpgJhu/+TwUwXxOP6Aharh8ZsgLtAdaASJXBA95GfQx266Zmj
 lKCP0WgUXHih99080zFCISdOFzJdal5KgoNN1dZPceUU9zxAB+Uia8h4vABu+1vseXVTJHbKGoD
 PllmyFTgEPbYtcVaBlxbdplN8QFIyjhjNP9NOfK9cCXtJAAe6BQ7ti8mKdMfN27tXUzw1QRy75N
 WyYMQrVbt2KedwhcAfZnfPD1ZVdnTQd1tuhpOX+TRD4OnXVFZcv8jqyyS9AXkHa2GLQOUDfeVrM
 lVIB7OxIzoZjODBOZ+qH0SjkxakSN055FS1+QTbO3eZbZ8xAqutciMRkE7xfFcN3IXAHjSYwK9O
 iZGbBitAQCBtr6kSbMTgv0HohJ/6KyOfWrDVxdW8KsesuZhz4zBk6tJkh7Rt/CUc/2p8cwj5oOz
 CoeTFfJWKQP8DvJKHDg==
X-Proofpoint-GUID: iF_UUvaKGtKqXo6rUIqaxASRvPby3k89
X-Proofpoint-ORIG-GUID: iF_UUvaKGtKqXo6rUIqaxASRvPby3k89
X-Authority-Analysis: v=2.4 cv=F6fC5ahN c=1 sm=1 tr=0 ts=6af6a161 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=azXR8Rw6a_W_3m1MFLIA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX7+l/itvx0j5d
 wV/yQQairR0O9nU80+n8Gm7pkxpBUdWd5W1OvL5srSfHnJjZ7cZc5gc6i1Nt2ctme9MccqITUNP
 QXJPCq0di98l2PrdGbJiQqhf7B41TxM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213426_973428_49800BD0 
X-CRM114-Status: GOOD (  14.74  )
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

Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.

The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
lane mode on a rework camera module.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Tested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile                  |  5 ++
 .../boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso | 81 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts         |  7 ++
 3 files changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 8329c06b60a3..2e1a4cfa2505 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -57,6 +57,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
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
 dtb-$(CONFIG_ARCH_QCOM)	+= kalambo-crd.dtb
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

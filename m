Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77AB606A336
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kjGIMz1h;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pFAcekdb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jkb07HXY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NtrsDjx3Bpx5ApX9vSj4XjkARrY3oMW0b0/2ln5KxTk=; b=kjGIMz1hbHN0lRifFbWZlvhMjS
	RvlBhpT184aW1U66EA3u8AlWnrqwF4prOJC/ume+SIGPGu5XfTm6rQgUDI7iPIbM+xUqcxmHX8u/K
	NiR4FQKsyEsfbkjzUx78zVa89G02TsiqqY1KmQ5zijBxGqr8HZPogI6j88fKnZVTkh+OyhK5570Oy
	LUCrEgPaeFacTuRzj88NS9hhGuXnQM1/C0iTUv+wrQclbQpfW2XBHfpnMi8Ea40Evb1i54ApkLkRs
	CQIswI8Sn9E47yRZ+UPgUtIOLxG31oPtKbWOTKQY1u3atJcCQhepWUEsvDrtEdeHOASTaV+hkF3cK
	SgahqMbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5TD-00000007L4J-1twb;
	Wed, 28 Oct 2026 15:21:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5TA-00000007L2z-3cL1
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAjKM1517023
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4y4vPJgEmDpbRegYbIU8W9VPxzKIFsK6cvaBySnJ4cQ=; b=pFAcekdbJO0/E/fi
	vzeG2CEw5DMHakRWk+rWkpUZPeNOYmRoT4IyvxAu+bz/iKOlC8g2Mt9NXP/a3QPm
	Kw6iNpJcpn6s9v6bx8AgRSpg3DCEV35BZ2bfFvNWvWxVTojBnypLPMZqpuZ1bCw6
	4ZrJhU3ljGCzKXqFLmDrrjou3b+W9B6iEs2GblD5dfkohGVgccRKxxRZS5aOxF1W
	t2IAPbGfHwfON5rPh7+9uowdz1R7kDe5aCLeV2bn4KqvMzzZOFpWFKPE4l6cGl0H
	8wpOaVcrA7uwxdK3wD3MMCQb2haXXXRBxWZGvQZYBFgLND7AtS3egPQrt78CMLkx
	Ew5MvQ==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkbhwa3d8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:40 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-8b04ea2d440so16658527b3.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200899; x=1793805699; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4y4vPJgEmDpbRegYbIU8W9VPxzKIFsK6cvaBySnJ4cQ=;
        b=jkb07HXYS7UFl9zkCprbTr6KcM0nlHyzPNaEp3JvpVkIwp5G7zA0LOUpDbMxgxaLh/
         DBkcyoZiKe9KSjAWm4Bxo+MaoLFJXn7OobIfR94lMPJf/0NIvQbBUxOK3mtoOueUf5Js
         8glv2HeBCXQnpQT1XUCVFboUuJyVHlYaFPrAsEqWFrHjrfz7I9acMc4n3ATvQzZv5L5Q
         am7KD5hPJkknmh5NJy5DZIMjYh5hYRyooZzDvVtEqpXQJeTTJ8Q7+CTRN/cnp7wbxuRU
         kmQ9SeaYFKp2icY7Ym5K8utEf87OObt1hbpxzpXmNCBCBqGFdQvvuiN/X8A4tUyDIghH
         Gcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200899; x=1793805699;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4y4vPJgEmDpbRegYbIU8W9VPxzKIFsK6cvaBySnJ4cQ=;
        b=UTTUifoXOvjD4/QgzT8WUXlJYZLDqxLyuAnLyGTf6o1xZNnQfAQO6/c3P6fDP3B8aR
         +ZT6ssZh0bX4yABhlmOUZfzgF40g+Yr4VkQ3v+ahHWfV5Hy3JBpijrmF0jfUuxm949mP
         pKmeBAQE6KwuBaPTX0UF3WF8a60+MKPuFR+3fPvcMyxxQHDsn9GcjhpxxOezbTsdkYWq
         KfH9ngeZD6ad6cQFNccHbRSzqFuvfEQdcax1keWtUfoT5hOgZhd8FAGXxrrIH/Mr38uH
         gscbY2sRPLNfI5Fu6sTs5zvEv9844QEY9qtSQ48ovTsN0FzRS3fWxt/jQD1iyEEx+90a
         taEw==
X-Gm-Message-State: AFq9FYLg4ZQZcjOHr4BdK/JBxVC7o8jofzzfuozUTbU2iOAbemm8bni8
	4tBHx8N49Q49eJs1zz9pCrL5ec1vDaWek7NhUfBQuVtL/E3lGWicchhnYnP8BYozXln/PGzxME+
	rrM88x9NMtz0wCPfGydArQuXaeF2TDbr4TSYalBAsGlVYZXe3+WoRM4h53OwJoPKKRwr2
X-Gm-Gg: AYBFou1cEACHCxOJqLqq++bV09czD7B1wF9s8CvBGCId+nNNNqBQhljolPq79Wvi7V3
	SCwmIY3JNTNLomQ2zcqFMgNFtpgIjhgzJWEXqp4jK/cBj0g0HwfsCyCMNhPc+PYQ6W/gGOvV3+Y
	wZP3VsLFvXUdl5G0YQ66LrcBd9WJvXAGFZKWXzPpqHrBQij/USS730q81lt1efpqa/L63uvBkQ/
	b1LrH93WD+KLGMNveXE6w2sdV71YMh4a32yigInDVy5pM1l5DSGp6BmxSHrjYvMMpjVtUBdj6oN
	vLV8Qeg0CDhX60pUdvhaNK9KXzStogpOPR0V4ku6eX3DEMR9jdExivlzbWIh7VrG3gU9blLlyj1
	k2a4YmdKoZw8GbMXR6kLtI+5XRIglCA+Ut3Hcbfy/lum/BqkyTa3tbKGK4AhqadT3BD0GTy52eL
	yW3Bu1uKYiv/OJU1pzNPaJHoq1kHsVXE8EKpTl89G6YDU6OyyNLH0WflaavxpO
X-Received: by 2002:a53:c78c:0:b0:672:a678:da59 with SMTP id 956f58d0204a3-67a7bf245d2mr1555984d50.108.1793200898910;
        Wed, 28 Oct 2026 08:21:38 -0700 (PDT)
X-Received: by 2002:a53:c78c:0:b0:672:a678:da59 with SMTP id 956f58d0204a3-67a7bf245d2mr1555956d50.108.1793200898271;
        Wed, 28 Oct 2026 08:21:38 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:37 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:49 -0700
Subject: [PATCH v23 15/15] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-15-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
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
X-Proofpoint-GUID: PyzHJCAMNeCGIrgumlhZ_rqh1ivu8_8Q
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX3fTEnU48r3J9
 jqHRyUzXHxVxuV3tNcNK8g+QuU60a+TI36/ND4x6UDMSMkwNcWR+HSF51BblrPLIi8HFYRX9266
 8uGzRTukPCLs5gCqQlMg7uaNOjsE+dk=
X-Authority-Analysis: v=2.4 cv=V+joQuni c=1 sm=1 tr=0 ts=6ae21304 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ZJyx6tJpJz6uHbTMGDIA:9 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: PyzHJCAMNeCGIrgumlhZ_rqh1ivu8_8Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX6tcvc7Q/y997
 hA0gPeUl0UlSqSsxEtQUgj3W9toYeRgKd8c31fQ+Oqc52n/nelBdSkLvTqCCdZUXBb9vD7ddz5P
 G0LPgMK4Y8ZiJBqCsND5OQgNL8lW6ttyplSiNY4S/v6ea+OUHsAryBrpZ2xniOlEVwilsDjy8OA
 GC39mJBoBqDIFTAONp8X8vV14XTU/6ZxoPdqP4nEAL/njQaFKNYtYVQMg4y48/efsunQrb+RmlP
 aDpoApOF0QIYy3Zt5lFcRhmoL3iy4JAwJ2JofnDRS40PNiUGibQtH0zaG7rKfri8+vmpFVlIuca
 7ETxj6i9lu71farLrGEG9DIB4RdvwasynkN5M+POpql040f16ocPkdcvQ+xSBfqIu3yXVpniWVy
 LqIszkgdWeB4MB2rk9fGxB5eO0EI9TpOho2MaAYUikKacbkb2GoDgVcI+P8NuDo1Tlf6gNSUNZC
 xoxtVO2SjauhUdSj6zw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082140_910826_023236F4 
X-CRM114-Status: GOOD (  14.42  )
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

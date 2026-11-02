Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38E9606A87F
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NegP6bFU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cn5HKJch;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=AOqTs3FQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wLrbe6wignmOIo+qT19D9KxZCbqn3YQvWwqcQ7kF6jU=; b=NegP6bFUt1dERl5DN1ufaMJadH
	vd6Wk63Bf8/dlNAfiz2i1jbvkRAtXFjQa/dWJavzf5gIkwW1rvDnffQKusAqHpNOT7NR4lqL+f03w
	jteP7kXUM6VQdobE/XmMTo23Vx/DWyIC5PK1YhcEhG5RjHfjZ4O8dQgdhWORXAxLfqHraWW2wp/0X
	TdvvWjbcNQcmgOO22qaYoCjHT8ovElYokOH28JyZFFQmaqCAT+nmAAcQos2/t5OSOzpFmvbUMooJc
	OBfdsThyGE7ij2pg6ovyWr0NA0OlKoT01utqbUPZOOUo1oDOQoHIGYKvQty+1/FiVjFgSRURvQX8D
	RTnyxvcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpV4-0000000GCaI-2Xyu;
	Mon, 02 Nov 2026 10:42:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpV2-0000000GCZP-294t
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:49 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AO4m2880892
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WFSkmzhU6ZfcsWYrD7wTmAX1CjLb9zWXMvg6Mo14xU4=; b=cn5HKJchFxnD2Pb3
	abSbABmjYOkN3fOGFff63kYAWGD68+t3hx9kIbyiCSyrHtNkQAmm0RSn0VXCKdi6
	q55s+pVoDqdKMKbmX7YxIn63fcSWLZRPvFZLWtvHkLBFcPhANL7b/G4TaZhTkTuh
	Ukeu5LaJXSGGEOU7lLtnyJ4raYvxyY5fHbBg+aYEtyGFkp1OWlktO40gzKYdQQ85
	9a2WlhR0pFbYsZXth3Z57uoThPwgOdH5A2/u+zIK9jgHSZyvwqCu2tjYOuk5+hAo
	J29UO62luPIJZE/NnTzo3BHjXudEVKzQ4T+Pn+gEeGeIK8HskTmqiLpccbhHuyS0
	8cZPcw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpqfrgdx2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:47 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-54dbbf252cdso4299764b6e.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616166; x=1794220966; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WFSkmzhU6ZfcsWYrD7wTmAX1CjLb9zWXMvg6Mo14xU4=;
        b=AOqTs3FQLD5O1t1eHMwYbzWdRJs+KuDJBHuL8pVW3stPPykEBTMRcKx/GEBOedLUJU
         iTroqv0XSunniZzAvlrbythvzMXg19ufzbnhUXHstLv+bD0E14fYrB9MZ9GnUrxWIHEj
         xXEqjqazP4g0FDtIXJy4S4vJ7nugEaaUZmfRVoQ1Lw8CoMXoPWsjsU1inhKMNkXl7iUG
         d9UEjbz4YMaCNGpMWANqxh3XmyT5c4iyvTytqNFUn5gRuymRCLxCznwy0tt5+9gpLn2o
         RRPPZPRHY+Rz6arpz95NXliXq2qVnu8j84tiopXj3LtMswmMpf2QvNPaVXsjzh49By9G
         fpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616166; x=1794220966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WFSkmzhU6ZfcsWYrD7wTmAX1CjLb9zWXMvg6Mo14xU4=;
        b=VaISTKEE7Yu+dS/+ua2cR97MJ1s6xs9uUCwPI3DStIXw2n0W8S1Psb5jCOwJ0/yVIN
         WDsNulu5wGPUgIO3ndPvz42DamnttAT2d7kThk9Yu2XxvVhNoWGbtZ7TLfeE9gLdi2cM
         G/F2dm0KGFDsBZhJv7XtWIoKYXMoIqGkJN5Y2vESW1mvIlhqlLaWxKswu1+EB/V1qqmy
         mB9GQ0mpCnMemavRK8F781BuObxg5IzwMR9MmpkdAYYlQPYcBUhpfJhOGmG3MG+D3Q5v
         64JyxFdsb9nQDB6/NFUiDhalE8Gfz9URg73Mxq70nsUOJCnDjBcGT15IvDBmiTr4gEpD
         Y89w==
X-Gm-Message-State: AFq9FYIrXDmfQFPMuBaoFqwLp+ZaOSfGkdJMaII9FMJfY3uBdivo7oU6
	jV7I0tH5JI4x3Qf4ZBk8h/DURdmbrW9tKJXt4vKWd4O/YtzDoB+nUs/GvwfEQ2csvaIzEu0xfH3
	wP+xqSDKYNIW7uxKOKmcz/jMMKBtAQvBJ4lQcbt2xco5c9PmcIPB7HdFhSKzl8kjneoMl
X-Gm-Gg: AYBFou1hEt/o+T7xfIZbE31f9ytdeHTv/lMGYwgDnf+1kHMGvDgD+kHVVv2iygzRcru
	ICTaPo3aYppb/cwrLiJBSnqeXGXRPo4HREDopltcrwpT6IikP4qKuNOVZi6SZNX6/O0SwWmPTVj
	76fNP2HQmBP1qeXxCAyCiIShEDWlUohG3V3Hd1MWftvGYhvUCu54L96ZMkurVvE5YlD8kgghCQh
	qp4Va2V1E84wbnlKjo7nXVRvXytUfjE3T72xCJcBRXNEJgPCd5IhC0jyMoppCjEOlnDUFjRBsEX
	LRW4nBrlungGZHiMZJGYOi4SXBoihAhw3InV3kQdmh4ACttvo7kXf3VuSZuiwLJoZ5rmCD0JZUu
	3mfjWIDtdWS/BnrPig8i1OIYb9mqNWoNS6widvi4FivWIwS0atkjDw0pU4NLReVU1e0215jSEs2
	voEav1eGQK7fiXD69/y6k7dMPTvBmVJr3AFmDYO3CBgg0y+B6SQYeTpewFHno=
X-Received: by 2002:a05:6808:244d:b0:532:4867:8916 with SMTP id 5614622812f47-5640d9277famr6043856b6e.4.1793616165675;
        Mon, 02 Nov 2026 02:42:45 -0800 (PST)
X-Received: by 2002:a05:6808:244d:b0:532:4867:8916 with SMTP id 5614622812f47-5640d9277famr6043848b6e.4.1793616165250;
        Mon, 02 Nov 2026 02:42:45 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:44 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:23 -0800
Subject: [PATCH v24 15/15] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-15-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
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
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=HMJWhYtv c=1 sm=1 tr=0 ts=6ae86927 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=azXR8Rw6a_W_3m1MFLIA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: FlKADRH7SPQlo4I5pN1fb1FiLzi8U2rQ
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX7VwMy3cirJSK
 +6c86HU/HPcoA2B4AYDs6n9oo9WYfoHshEBULITnVGDRGzeyitZHfzHFw3EwcS9atGMA0NrEoMc
 oPpmDiN0gBOcmHOoPXuIo7rlrYaTDOA=
X-Proofpoint-ORIG-GUID: FlKADRH7SPQlo4I5pN1fb1FiLzi8U2rQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX7PA8cmvUxrmF
 ID9zKPOnzPM/7KsimNCBGqWOvQ7OuuqhcLr8ivxZQSSWWH1sGIaVuAh6t7RfJ/isnwIu5Z5Flx5
 5cHMK+vgLdNq0JSw0GedC/5zz3mGdNAQQDpb2pY4PfR6EB3bPvlT7WTMthx3wFAOvlc5VNPc7rB
 CD80p2a2cXeS8cCux/usUvHDcXVIY2Nh18rMrXI1Digpyx7kDFjTGUndvQkyndSfGvHAtZ3Xbzs
 1wATFyTXxn/r694nUAn1H205gl/NwZP12emYyzDK32uOYbklH16/OPGoRlizzd2RibX8GUash7z
 BjeHuKJ4ivbGxl/rK6CkSWdxwzDIvt+XF0LeqK3R10bB+NoEPucJcoi6vXCL90ylvfhLQDB3vQp
 GVlVYoPr4Gsa8tpu7cl+txBf4Zld3wVwOT6+TZDAN3ohbPosIDIlRthwqFT8TuO8wf4ycBd7c9D
 ahnHXzCYhyVDL+A01og==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024248_593280_193E5B4C 
X-CRM114-Status: GOOD (  15.64  )
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

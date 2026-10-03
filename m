Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5FF9CA5FE8
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uw3JdehJKJKrn8vbFgJTT8VgwQCUpav117swSt1VKEA=; b=mzxS737IWewSu7
	QxC6Ghipb7fNdI/NK+BIH9LzzWavDPQav0pp8RnyrlJG1AY2xdL021yDMqLxrMtwtvjs+dNh+OUxZ
	UT1XgDFfP7D/7vx5+KNqfWhFq1p3aiL3gZJf4eiGefRapzZ24YX3OAdqGoUJfibHXBf3Ntbjbddhm
	Gm4/ZOyBFwgAWynJsjU/eSiGJVi6zAKfZqdu3kT3VDfAEZdBj282cEpgyZ94XFQLGPTtjBOXOqSdh
	KTxlJvp6nyIGCNVsyHcpt4BdO5ngbXOTGPhXABuQ4ZyO/y8gA86NHKR47VP/prlIvZKKji2X0e8QR
	/xTmEZJjQ20++VPGggzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdm-0000000DEMx-1MSv;
	Sat, 03 Oct 2026 09:02:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdh-0000000DEK2-1zPZ
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:43 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933Pw5f2957206
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k70G8B2hvVN7JGew1rWDtZWVUjv1RQCNzhcK9YH0HpY=; b=BZMAFisvwU35Kdfz
	f9lc0E0wm1+KuYhgfcCABfQ16vAsyVMmhnjrv8BV+A1K/B+0F4X2vLjOGsSS50H3
	YW/qIncgG3LtoaQdcfqmM2dx5o6Ilsd1MEW4jZuaV70U9F3uzTgJX0ZeuwxBb3vA
	A6QvxVWSzWef9osQdvQuV7hykxG87FszckZtIAWIFopsGlyMZWP7jLk0XRFRF5Vb
	qKUS1hcbSS43FOb90nuBx9D1HkVTPiik0bKE+9HeOaZSPPkBaCr+/D3ETd/fc12f
	VD0JILUdftEZoSkE7m9lP/1v3A9GeSZHVmm+G8h6CjYsAnsWbNhXYXKfwWq51T/y
	8APpyQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2ssu0h76-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:40 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-34e676375d9so148090eec.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018159; x=1791622959; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k70G8B2hvVN7JGew1rWDtZWVUjv1RQCNzhcK9YH0HpY=;
        b=QHx/v6VEh+4aVca0uW9D04ar3NGGXUns5CY3CLWgm9j94cfTqt9MMGppZvPmWq1/qa
         AImrl3hJp70isxB8TAuRo06kdu/hadp0+7ns43K+9TFGBA7AX427jmtxXsv8CGcpBFQa
         ser1KSB23lJoauBLCCS7H1h92xqHJT/jrO8REXUeOdXKDlIj0s7u1Lfa/OfDT31t4BXx
         Y0C6a0XqOLVslSVU4BecjZPJ8WuOFC0Sw057AXPvqSf8J1tskCu6LPdNcJHPbgXXi5N3
         EBY+NYfGOh/uucQXs3J0Bgih258lLW5zDINMBA/fHvGhMPJFRm/1CiRU63PIlKzepTB7
         pdeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018159; x=1791622959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k70G8B2hvVN7JGew1rWDtZWVUjv1RQCNzhcK9YH0HpY=;
        b=kYRV4Wh6/V4YOpDi65s/lc6kW5zAZwTIPx5+G7vy3lC8n7ZAFqSy6P5hOOGrg+YJSe
         W+Z3WZ/6N9ztplXZ7UwsUF2letHisNCogu7hG18+H9vHs4ZVlXLrnbklYESU+0gAs+PW
         puTHS5KhOwRnYZ7ZzlInxcelY942TRYU3hRoWC3PBvsfIxQtE+yNstqMLuskCsBdCIt1
         pbsSd4hTAPNxURCr8d2nth2BXbZoyCBK+LgCe2PKL4EzH5maNI3ltuOjBuswVjT538Kg
         T7vUKw9eA82gmZ9kB+OULKsNt8D72vDQ4geetacgEW+Lm6ArwvB5YLdWouzz5O8fynhv
         NGnw==
X-Gm-Message-State: AFuF++l5NxtmUnoOXXkkWsmLUJSop7ITlsUMxgcLXVQKleG5VTyuII4g
	6geRBMetm43Ch4MbriFuyvdgzMS9cr1Jo2ABX1JZJnkxQe2B4wxNSZ4BsrlwvJOK2v21hAOl64d
	DghdBq5kwLTml3rLZvd289NITgT/uZWtqX+zC67PdPpJ0TDBjU38M0bXqUHqeah/xDTwky5nUx6
	nXeE8=
X-Gm-Gg: AYBFou0M5cDusRERfdLfMQen159qeYDn3XMOoYQQRB1Iqtov66AIWXzw+TPx4KEZf7W
	ocq+wcXLCdXz2XnlRBBZYLLQdidDJD0t7u4X9WnlEZM/gOBrRAN8TMhIOTxuRTXFDPp+YrTZFVv
	kFX8sfiWTbf0mkM0z0cCH8dMgPP8hvN+6W6CVaPUNJ/gwUq3QBA3mCrj90v8oNdXFDYh6+VMAaz
	5MAXwrm7zwp6rFJmrZ46HY7pFFea1ejsEefsTa3s38ldiJSHHLhIQeaotxgQQpdqBeINTzXHLqn
	9VJDMB1oCMEfUjTRMbqg5yXaQ8wce8stj+daqdO4jAmgtfj3nQ+Iducwl8txMz1KPbphAxpblr/
	Vm+1G/81Ri22SbJuJYJab7UscPSZAfR+f71GhcfqdWhHJ+XMtr3McGXiQn8UTmxwa37RXf9Qbql
	jZT6w4q7dotw==
X-Received: by 2002:a05:693c:41d6:10b0:34e:e22d:6c39 with SMTP id 5a478bee46e88-34f150ab91cmr6174176eec.4.1791018159058;
        Sat, 03 Oct 2026 02:02:39 -0700 (PDT)
X-Received: by 2002:a05:693c:41d6:10b0:34e:e22d:6c39 with SMTP id 5a478bee46e88-34f150ab91cmr6174139eec.4.1791018158461;
        Sat, 03 Oct 2026 02:02:38 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:38 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:21 -0700
Subject: [PATCH v18 10/11] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-10-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX7xtDa3pdeNG2
 i6ko4dfX2hpdwzwtjpiu/3RFvli6leVzcFt7ZcdhVJFhLPo4Dd2c+W7kJ/4e8UQrqhpgHdS2EjS
 WNQ6fTzVUGkQG71vOqyOEZyloNE5eptZmyXQxEX8a7nIuqmMZ2vLi3MhBJ56mf2TvZxrvtsucrL
 V40/ZWG6qP3jzf/V50v3q1DpsEdqSTfrfzhpQk7rwwAbwp3ILrgl3c1v/2bj09eD9tY29sHDr0Q
 FvjJHL8twgAnbS1O818uzCzg4UU4LDO4KuIPP57wIkrqmAE5JkM8FO58/xc57CJYPbVdsu9x/BX
 m8UdM3dlH7HOsIAoWBMh8dkItJKGNOrB552NdsSP9V/x6OLrwGDV7vFF1oIIQCEuf9+XYcvAcuN
 RkSjSuJLbzD3yNr0+lRGbOLS3J9Pk4P0DF/qAZxBvhtU+NZ82EsuCdtONJRyL0e6WcBuaSWpu92
 e3aX2C2+TI1FdfMyJYQ==
X-Proofpoint-ORIG-GUID: lySw7FXlyEUgk0Roz0OiOGoo5U5Qf-0o
X-Proofpoint-GUID: lySw7FXlyEUgk0Roz0OiOGoo5U5Qf-0o
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX7nKPDgdPTBZS
 ecyu28N1OsQPnMagFNehstCf9G4z44Tmunwzce01j5/TJYz8+HIA1Xa4qgHhMm+MqG+b4T71tWT
 mXluMA2QrfyqNgHW6X6BIFVb4FvdT4Q=
X-Authority-Analysis: v=2.4 cv=XPSl2ghE c=1 sm=1 tr=0 ts=6ac0c4b0 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6uyy3mKblwRlHw_pSasA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020242_105730_DA04D32E 
X-CRM114-Status: GOOD (  10.96  )
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
index 7e5106865e7e..710af0597aaa 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -3749,6 +3749,117 @@ port@5 {
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
@@ -4459,6 +4570,198 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cci0_i2c0_default: cci0-i2c0-default-state {
+				scl-pins {
+					pins = "gpio110";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				sda-pins {
+					pins = "gpio109";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_i2c0_sleep: cci0-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio110";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				sda-pins {
+					pins = "gpio109";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci0_i2c1_default: cci0-i2c1-default-state {
+				scl-pins {
+					pins = "gpio112";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_i2c1_sleep: cci0-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio112";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_i2c0_default: cci1-i2c0-default-state {
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_i2c0_sleep: cci1-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_i2c1_default: cci1-i2c1-default-state {
+				scl-pins {
+					pins = "gpio160";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				sda-pins {
+					pins = "gpio107";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_i2c1_sleep: cci1-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio160";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				sda-pins {
+					pins = "gpio107";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci2_i2c0_default: cci2-i2c0-default-state {
+				scl-pins {
+					pins = "gpio149";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				sda-pins {
+					pins = "gpio108";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci2_i2c0_sleep: cci2-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio149";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				sda-pins {
+					pins = "gpio108";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci2_i2c1_default: cci2-i2c1-default-state {
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci2_i2c1_sleep: cci2-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
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

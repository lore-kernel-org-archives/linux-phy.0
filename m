Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCF87C9832A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3mU7yd6x7q1shbWMAOf64eySmcf0mHcjz+jKn2tTGg=; b=TQrcPrpoVneFTh
	xcXcPanxuuayQZ7YmnOXJbIatEH7/bhw2yJc6xEna6PUomwldBOcRrheNmICZBIQAoC0n0PZMvB21
	uLBw64Wupnk/RdnoxrbFaXmdSB3IM/Zl0wSUXrSV1vcQNaKAFSnnwjWV/m4Dym/WgPAgalwykwvGi
	Isf23dbuSomLvM/O4HuWaeUIc7TO7MmWorP21FJRdxdLD3BwdtgNMiVofbafXuFgChKv0dD8GukHx
	EY/LcnYdeUK9tEhbsOEALvLXNpxllQ5jrEnGh05MSDGlr1TlrJMJ6x3KVdN6S9impFYoUPrJDrTop
	b/Rb4381KwZ1PSC2/eGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtr-00000002P5C-23Ax;
	Tue, 29 Sep 2026 06:01:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQto-00000002P2y-2nON
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:01:10 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T47LaZ3241691
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:01:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zDVxaWUQExbSZqDtvncCwvGw4iki0k/Nc32cFQcnXL4=; b=BZyN1g4XsICfxyih
	uYTeck0yaRPyEtV0IWWnDvVLuU72IEneoz+wIo1JAVdAFeems1l203RfCXSFfSys
	MDB+Gv3Os1hUf/in4OG0Mv1d3rO+0xAi8eAxtUIILlHpp+E894E6qKGRWefhcKIT
	UBdq2Ufje9/QApEFxAwUMRh/iFGRlsSH+3A1TnYOrHkBvq4iCxc3gAun/E7vJGGv
	0qQgDzIzlc1pQtCMvnEL8B0wYaUAjvcFrL1EtnCtaNKUN03CZaQDB54YS8xP8qGP
	6WtXOaL1Z/rhsgwem61Wmngiyq5P4kdkFL4SYDr2SQUqJxN3Z522P1gTWZqBZr/d
	v6UpWw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0144sbp5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:01:07 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cb48f41343aso388227a12.1
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661666; x=1791266466; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zDVxaWUQExbSZqDtvncCwvGw4iki0k/Nc32cFQcnXL4=;
        b=RRhFXO3zIDe1ayg9qKHAQPgBHVHrNI6y0KCfvOLgyPaWQRrLpyyZCVDfWFtwhl+MNL
         PWDwNE3Rb3+g6aKeB0tuVsowN0yJFgN/QhF8/M6nG9aPKzOVzX96caXF0DqeG8XvqOMw
         dVy9oIOvLcJptP9+Raq05bt951ZWI08/ySpgZMt4zuCk+kQe4krT2iWMulslHyBj3IgT
         eDo2911GAColrySbKCUFKCUNPJKuA54XlLkx580lEVhZAI47eqHWvOtNaDlRTAimEVj6
         9pl5RtlU43x9/FL+iA0DcJq44uduTTm8MN7YOxnuK/+l6GUixujt5BKOk3kZoc3q7Hfs
         7miw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661666; x=1791266466;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zDVxaWUQExbSZqDtvncCwvGw4iki0k/Nc32cFQcnXL4=;
        b=Q1cwGgS8BSqE4wAcXO8+wS1XLZHChiZAg7fDGgIyRyWWDhqKnJk8qr6VYM3pA1A2Ko
         NKRk/r9Z69rZZpGpI0PfeLwIIzLbyMVEDDnlSklLCWYAp0xQV1AAOS4cf0D9hZuuFe+6
         w5Qi7xK8Iy2RoSIojqoS9VZEfBViiCU4IoET74sxf13YGumV9KM1lonUwPmTca5yyzqt
         mSGZcxyOjAMR3AaK1CLZxUjKjW3IFkLsc3ks/eZV5yo1wPpdNdQtTN1GXOeQSV6Euw/a
         mSfZP9bSGuMURrq5efjY/wUeRmNnlbLaaSZfsTPUgWNuxHmWvo8kW6LFI3jqFuNnRFwj
         MDwQ==
X-Gm-Message-State: AFq9FYIeRQ/m8ER2h2y+bc7QMmKukoAcFrUtan5Ck1ST5xKZd0GC8c4Z
	iQq5aLQxCb4IpqU9LUNpwmNAp6TJ2G90DARaQX4EnRBtdEOiV7Ao28uoTnJFWVOR7sms37xcaB7
	+1RNvZ/BPNnNVimiuMTo+SyGXc/EWh8rvo6z2Gi2CFiQhmQzo33MBb/IW751eAKATmkJN
X-Gm-Gg: AYBFou37qv/AcVePEasL1b7xNw9hvrkwiaoOZJC3xFQC3zUsGTqLAG/WlnfXhsady/6
	YyslTJdQYoSNMUTIbSgWEqwQaW2eI61BV1P/5KAhyY+G24R4q9guDtC6puV+4e6yTxbS0zbk7mW
	VKj0HfxJKgC5Q9nLLoj1PS4sxTo6ET8G5dZGc8Yw8RgaaZ1xWEcnOl/rpPBh+ymZXJZdch3sWT6
	Zn9NOnOWBEplS27FlSySsLmyUSvW5N2dluygdBhuMK1UjhE7SZiSBt/QA2klbE0fCbpNNSZ/t2K
	nEr/9VsLomSfgr4WRvm/YkoH7Z9ekxw4rc4PadfS6v9F6iXrhr1zuJ2pI2mok+j5C/fguK5WuCT
	NOYBmyuCeUqpLctrUP4U7MwSV2xw4XybaZDhSbb4zmvXIlYmR7LOrHU7H3KH36f5vu8cxYue0dP
	uT0JZwR7Xijg==
X-Received: by 2002:a17:90b:4fc8:b0:3a0:c85a:ee12 with SMTP id 98e67ed59e1d1-3a49c1e7becmr794585a91.41.1790661663757;
        Mon, 28 Sep 2026 23:01:03 -0700 (PDT)
X-Received: by 2002:a17:90b:4fc8:b0:3a0:c85a:ee12 with SMTP id 98e67ed59e1d1-3a49c1e7becmr794415a91.41.1790661660279;
        Mon, 28 Sep 2026 23:01:00 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:59 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:37 -0700
Subject: [PATCH v17 11/11] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-11-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
In-Reply-To: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX65iFtz3Og6Wm
 BrjSTBIMeIMtp7HQJirDG9gEAUzlQRzMbDqnI3xrm1202jvMcJpXZm53mAJDdxIRt6vajbsB654
 MFwGX5qvWJx1Os7Ge05Euee7Bxj3n3RHm+XVqiujnxMc4PbsER6k2Zf1xx9ckP21ExrBXNQRKP+
 N3N53AecLV47xZth9IL/Pi6pxiY9ERdi0vII2wq13FvhbM5Dy52SYejT2AEHDQjsG+owZtB9hY8
 ncEFyi5Q6ApmZ4yBIjTjZAZTFE+thrLi23Ma/RLeJus5QL7jU55a8xxA3sNBeDvNG0TDicd8qwL
 woio9YpPhyS7x4Lz2rHlCWBcblwknvW16Ud2TF1+MBhladSQvCtZjwfR71f4i69SJOaxf6jGcmM
 bfQXUXRJTZ0O9IFRR1FxuBaF0exlB2PevH1RB9okEHLw/arQPLAxGHwhWlRDFRMqxn+H3zkFnql
 JygiveihUG/wR3/MEsg==
X-Authority-Analysis: v=2.4 cv=FJSOVOos c=1 sm=1 tr=0 ts=6abb5423 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 9M740IWLgbZ8TZYEQUAYBLcM5-3ZCtyM
X-Proofpoint-GUID: 9M740IWLgbZ8TZYEQUAYBLcM5-3ZCtyM
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX63EjlLYhlRPf
 Dqy5rv7rxND8K58fLXqf9+mauyIJew+1n2kGEIN9c86OkR//UZhSEiTDgma3o+PgzcbCNjekr00
 csr6jXpc7l7tpQWcHrd2/121Xl4OhDM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_230108_847289_A6778F44 
X-CRM114-Status: GOOD (  11.31  )
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

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index c19945bc438e..bbcd5a622f0b 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4568,6 +4568,62 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio89";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio90";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio91";
+				function = "cam_asc_mclk2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam_mclk3-default-state {
+				pins = "gpio92";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk4_default: cam_mclk4-default-state {
+				pins = "gpio93";
+				function = "cam_asc_mclk4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk5_default: cam_mclk5-default-state {
+				pins = "gpio94";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk6_default: cam_mclk6-default-state {
+				pins = "gpio95";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk7_default: cam_mclk7-default-state {
+				pins = "gpio96";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_i2c0_default: cci0-i2c0-default-state {
 				scl-pins {
 					pins = "gpio110";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

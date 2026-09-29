Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9EA9CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cdy0mSbw70IOpJkdbXc0/XlRWBxERSAdr5JGWD7KO4Y=; b=iGeymm98eABDB1
	QItx1kwqYC2K5XBdHHRKCrN2LS7SkGIRY/OL04A515VVvX34POhC/9rcMAiZ18pI4qJXm/kYKvUs4
	zP+qMGh0+UtTVVKQ9mbJ7nG/38TYjrBFlvKcJ2xE7h3MXrD4SwiHtpUbZBF0hxKGeAh6DsboWx1ul
	aKRRAs7PYs8vSTz0zIn5DUu5NOvdtbopFLakL3Q8VQc6iacOmUYrlgPizzXTIcd+Bc2XbAliD8V5c
	+loALGhBahpt0OyCkzi2GmoqY/TpJzNMwZLcVaMa+53DB1NnAlPYVUSgJPCXbOR9IGq4t3gmVk0V+
	GBVntjcsnhcyWgTGbiTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQu3-00000002P8M-2ODP;
	Tue, 29 Sep 2026 06:01:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQu2-00000002P8G-0h1y
	for linux-phy@bombadil.infradead.org;
	Tue, 29 Sep 2026 06:01:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=42TkaMUzlkxSZ0MxjEoP6YIqSL8IySzV2mmsgo+QOd0=; b=qxWUSokA0qTfeOZoynw/rISFUA
	wOlfFNpYPMzB/XeLzEgY1xtJl1TjUn3wLw7zwojYG+9bpMJ0aFJtHjzh8WiroGA2cixkpuaE5PJXM
	RqsNyv0zIhTRKrXNYmCv62FzRjngUeIOJwEC158lo//CoKURuU63S387y2DimIT/dsKZk1JLX96/W
	NcavBDOFpwyoiBfSFYYQKod8WK3eglj9JjN+MxBJDgRPoeqFSzjMXUm6pFlwD7//93q8xQ99ozyXV
	M17Yn9g5A+qc1Tp0TSIpzVaJ2YPKGdpuksRJVcNWITwCEzat7Vd42Y7azjwFUHdANsjo2tCZVPjsr
	Y8eVkOqA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBQth-00000002E6o-3l1i
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:01:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T47fdU4052908
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:01:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	42TkaMUzlkxSZ0MxjEoP6YIqSL8IySzV2mmsgo+QOd0=; b=QCRmQjQVXY0prCwO
	vgFfizRSfu7WUjbf57GDoT3gnsZRBw72+oolVkoSNaAn1igAya3k1E6Q7DM9RRx3
	p5jiOy9VQpAsbCTySwgCCqG2IDT4YxX9YvpQrCeQTYzakE7ao5pYP5z2L830nMFw
	ZmaWj2q4FPTvyT2ET8zAkrkZnYlHFYlfhALQO3cw+qEfKuiOPCcVcaaKulJMI2bn
	GEYcrJrUTAfqSXDjvWx9JPNXKXMHdWdwWdekdr5ETwkDd3dfmeKbcJM6BRxPYRiq
	dVq9rqW7l+mmNO7qF05M6ryL5wqoOrp6FIn7gIY0SQQz5/jGr6VEXrYt5/oGS4rh
	PMd4HA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h05yxgcdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:01:00 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc11b5dd54dso5752432a12.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661659; x=1791266459; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=42TkaMUzlkxSZ0MxjEoP6YIqSL8IySzV2mmsgo+QOd0=;
        b=iGmI5K8Do4kSy24xOxQf2GmLaHRi+kKTz2FcdC5SxcRqAhfRDXmLumljKuUJ00nidw
         JGmhhvEBslOqczP4lX6FftX+0y0NnDIBs6E5irw5UIoX49qwZoONjYgQKmrqCkqd2LAM
         jqWAOkFx/JkNnfITKzaW4HqThmsEcPZ0M68Nix7eVngzVRvRbM8ApRP3IRnxlvDd4aWc
         V8cO7uL44OjwbABcl3TV9bny4vc1XG/+G7noH0V/pQ5bSVHBJk1nQYuJc/ktB2evMgpT
         v99ZbGfz0Q/DUQ2s80SqwDvpPcMdgytMfIeV/qfd/ok71hxUykpnfPmV133MCrg5A9RJ
         tv9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661659; x=1791266459;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=42TkaMUzlkxSZ0MxjEoP6YIqSL8IySzV2mmsgo+QOd0=;
        b=ePvherqTeRKTOqXA0/a7jErSMMjLCR5CPWuEdvHcW4iT7OMjVdWtVy7C6QCITu8ovw
         pPkmovLFPWGLLxiPFemG8gEMd6Gw9lWudNZ2jwDyH0gvLzalGMObCtA7Pnd6pRFHq/BA
         Yx0grtO1hI34gWhm+6Wb/w4bL43cPa8NP+91uhnRFoNsJ9CZkPgi7vUZASyNID5kDR0a
         dTwd6uc1p+eDzaXm0wr90B8XPZE9Ig9AsI99Aa14TPfdEcA1Gcz4P5pEau1EWBQk5Rkb
         PDk6oQS8VAtM1rWbuPVXNGNAztXFb+D5oLjlnSYQ0kKqZNaYnWCATzHREPlHpqjDuyPt
         lvFQ==
X-Gm-Message-State: AFq9FYJOGPR7+5PeKKqFdNYTGX/7tZ6DDRLQ4m0ySwbaM3gtpzoUSE7r
	dcr9T9moM4IraHuQ7B7VdRdy2Cqv68XHz6NjeYdZW/zIxXx27OyTZoPsPI3T1dKwZIkafjf675C
	N/mDRTnGNhBdzz1j46jIktFnU56wTKPTRpUHmjx8eePhZoErvadVB6IuhtutjXcRIlFrHu11JvR
	Ll
X-Gm-Gg: AYBFou2RQVCHMTtdPAVHKUHyD5pVweEmyB2rDHh4uyjUfAcz93RBmiUGI8GxZe5n+2o
	t2We0frwAN79JuRF+JQwVGC+VUxfWoL+hko1odCa2smAXBcBMwpY24Rg7IOgURrUZXLQEILMQ+L
	r0Qny9RZFVYUgkElYoVBMhh9GvhFpL34puqqKj1g4R/+Yiw/5zSdQPH0thI6QGKw7XGVDsiPavo
	q183cOcQINnfSX936qylRhkZvT1bska58yjxU2fMEHk3FeRZoUz+3qG6OIjzhrAn3ZvwnjWoKuE
	ePYbs6lqclplrBHe/uTJNXqn80rQ5IGxW9aw4eYSxsWrSi+uPnu7RuiUfoGoEh0Q0Fq7udnc7aW
	G7kP6V5j4pEBNcdsigR6SQ4P9nYQkgaI1q/QR+/ACCR7ZoQY39ZVBjlxbSVph7sGF/4k9VooYQ6
	jU2dlcrCEDhQ==
X-Received: by 2002:a17:90b:1a88:b0:39e:574d:3d2f with SMTP id 98e67ed59e1d1-3a098d47682mr13226975a91.7.1790661659160;
        Mon, 28 Sep 2026 23:00:59 -0700 (PDT)
X-Received: by 2002:a17:90b:1a88:b0:39e:574d:3d2f with SMTP id 98e67ed59e1d1-3a098d47682mr13226952a91.7.1790661658584;
        Mon, 28 Sep 2026 23:00:58 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:58 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:36 -0700
Subject: [PATCH v17 10/11] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-10-dcf3fd37f76c@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfXzSs5fO2NhatF
 CGPUXre01nBEeElTSspLPUsPmUqZI0E2TOGJT48G+rBrfePguizz6Crwub3xvF/z92PzkXpIlGm
 avF58LjuKDSr4qzdMNqjzo968myhe9c=
X-Proofpoint-GUID: bBan71VSxf5dt4p4MVhidQzoCaNogl1s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX/GBQHSW4UMox
 4IEMDIoSht0oQK4NDBgoFSJCCeI2D+Bm384mji6bSgcokoRW3GcaJ6Y9SQECLNOdChbajaBb8/R
 UYmRYlU5nBehENg34lbw2LnB4/QlLLGzScssukZGbr1PxldoeqvWwR5ng7Y2dQw/9hPTkxuTReY
 TGbgPJVZft64ILhKzXAz/JOhLZWlazmT3s0PkpWCB5LkeDBFPRJYYLQQXJg447rM66kY7s4iTDB
 M0oK/OjJZDeyvvMHgWkk1pv66TxI2hPnEmopU8CTJh6pKPhFH2dowJvaRb1K+SA7TFvmo+lxXBO
 0Jv1vxiOS9mqYuHS96ErPxcnYNQQu/wu45YMNcDr3gLvE76yJIBvV1Sj/Z8HfAGViqwCIdKKjF7
 3RmC2/7ScIBIMt+9cLKmP+C49ipVwg1iJcqlbvRkTfGYIYssYLJUaiO1Ijj+Pdb4ScBQ0srQAlE
 +tYjClcitgCR5hLq1NQ==
X-Proofpoint-ORIG-GUID: bBan71VSxf5dt4p4MVhidQzoCaNogl1s
X-Authority-Analysis: v=2.4 cv=SaFi5fRu c=1 sm=1 tr=0 ts=6abb541c cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6uyy3mKblwRlHw_pSasA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_070118_805945_FB729B90 
X-CRM114-Status: GOOD (  13.44  )
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
index 7a80438bde57..c19945bc438e 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -3747,6 +3747,117 @@ port@5 {
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
@@ -4457,6 +4568,198 @@ tlmm: pinctrl@f100000 {
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

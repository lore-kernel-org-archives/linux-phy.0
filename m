Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6096CC5AD7B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tI2YlxOeK75DjGfyvNLn2AzIu/UF5ZeMuG5v+cGYNw8=; b=a5jyBR6GbYksjx
	dcP+5imU3y0BpXl5BBjvlfk0p1xHmlo788Z44YTfm68Lw3am3GYJayVE6oY7qLeg1sWpjzE+UpYDR
	Znjyqb5AvBERBgk9x0l4885MmUVbbh+INnFyxJ2F8RF1HsyQrE7IKHw1mtT4/d9A/1z1XJqGuMjVw
	d/+vSHjBpWmPjzMuUmgGAGn9kn/BQIY3LUGnJ/Pr71Pacm+ABt1/WMxsPE4EKfen4ajbqXjwei6hb
	CZvkQt5gCkHaEA3hOhGyD8BzAq3WlwzE+/xq2rgMEBIu0AaaJiLhOvJfs742ebSqtDUDbJQDqtj5P
	CBgzUx2T1wlhrGg7qsFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS95-0000000CIbV-0Ltk;
	Mon, 10 Aug 2026 15:42:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS91-0000000CIZi-39ju
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:34 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWf9G1299355
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I+hOVlvodWUaHCF6f8ct+3ncKE/NpJynp45drgitce8=; b=jHfxMlLMUSqIKNqk
	RolHCMaBomN8/F0ZFjIgz3uMj8kZs+53IRllyuqSJaYSntJUDOynfw2sW2iDmA4s
	AHNWQbEKcsOpvHfF2KlpsL2zGfFme3o2+gvJzvdc7yc3UwZr/61Vq3TddCuvVWzo
	xu6ZuVez09e6JysCkQsZbQT55ZSi/Q2lwEp/g4/UDzulrP5CXybWoldpzSe3xn4F
	vFzYAqmTqh7hd3Lub26fS0Mlwbwb30zqycD5ckTRuqeat1+CfEcfRLCrxukLGvgh
	Jne7RezkSJpqmfbCW0TT7rvPT7dn/pS/jmNSkkdZw67XrOlUV6WxMP+vVQ4Yg0il
	LqMfqw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v929tc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:31 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8e9489f62bfso22814536d6.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376550; x=1786981350; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I+hOVlvodWUaHCF6f8ct+3ncKE/NpJynp45drgitce8=;
        b=EQVV8+Yzoex7O40ogG7tyyeEANn+pxT+P76+MiFFs9gbOE4pp1zRO7uoO10OiYV0fP
         MI+NV2o8s7tlwSJVXDQ113JsQs12J6gDW1mMk2V9pIkSTpINceCAlC79n/abV9hsqYP2
         QpbEdPtxmxIsuaxZ89tb27sHYDgjc1ZJmU7WoS4Ll0Gs+z57sLsB24H5nn8IBnGpOm88
         fipzsMXSJbZoBhc0yU0c7bzFJJ8wMbKGssSzywKsFEVYn5llw/b8cBxjZX8mCKwrM6je
         mFLuYnrEE75/6/w09rnXJYn1fQ/G5gMIh+Ck/1mjvzy9DEApxGBGxfOJq0GoQgtChoA8
         x79w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376550; x=1786981350;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I+hOVlvodWUaHCF6f8ct+3ncKE/NpJynp45drgitce8=;
        b=ZKW/xbiuZMLVdRwRKlgkzDYBFONsvsPfkySpqB8Elmr8Ki0Xq+j0I+0Nyu32qgtLxx
         /+Dkro2qt9JV8qEQJIQEa8Gssw5W4Ln0iODodfZc7p+/QTaDX3M4WOxTh2hLIe1185m1
         PPrarK8PLiabETdv4NFq2a2+AiQnwuxPFlrUYBBszPdRnHqXechtt5G/feUNkJVT1CS1
         kjatojr/HAW0fbhD+kGaxid1TogJA+qvhh+jQFx05EyzJaGaT5nETBHC2GKrGbATe1IZ
         25WtJpZlErzlSpsXgvPGuwDmlRR8b103hohwvZqS8X4COGmWtn1jBVKP3NcBVZ6EsxEY
         wibg==
X-Forwarded-Encrypted: i=1; AHgh+Ro/aqeNBAA+dOgdCi34bk4sj6fFQiqwbVwREcU+Ol3XPkJ5HSiG9042k9jlGNpmc7wAJ7+TYnNkNvI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuwLQPLtaWF2wI+K6tF6MMG0YuMapEQ+3c9ngaiIkxCbhVl7oK
	ZHzzjEY2LkPvvl1Y/vkvPHr+1QIOIvc6Pw9NEJrMEDdbfXE2GZD+VuxHpxruJ6ocUq3Q/xVBqjM
	FVsF/F50fRucKCckZi9RGiNzqvY7gz4wmnx8ltsmWm93pW5cd3PVJDL6MKF6gS4mtNjjT
X-Gm-Gg: AR+sD10VRSQR9eSFuedhvxNDsDVJZQmhKpA22WiNvHlQEcmfIWyghzy2CxVeZbylynT
	tPNW1WEIRTHDbPiRdXEVS+xaQjIJmlmNRgiz609q5Ugwv9oWV/1d5n0RYW/KRKY5kva3GXkakuA
	L5Mn0KiHKoPwDogUgUVXF4jbocqg6gysCm0zqFHkzcSr+e89RDidFg6tZZsrs/J0UN/Go6YvPi6
	T9WbMNNN+rmbqY4aHqarmm3bNbwdBZXc9n959R+cTeXLI2OLvSFRy0vOJ8DcNYURLaJST/VOOGD
	3b7eaK5C6QwvQ6VTcivASg6oaRz94LMYOVBSxSCEqIxcWQsiIrn79XhXL+gLCC2iwI1dzIlbEge
	U/B8k8CJ0GfRz9taRLE+sL/75J3XDs7vhQYYjyCELx3sN3RGtlJ8LNlQVCsxo64+yuThB9LGMxw
	8UpsAVKeBScw84uA==
X-Received: by 2002:a05:622a:1f09:b0:51c:167d:b328 with SMTP id d75a77b69052e-52d4c251541mr32256321cf.40.1786376550312;
        Mon, 10 Aug 2026 08:42:30 -0700 (PDT)
X-Received: by 2002:a05:622a:1f09:b0:51c:167d:b328 with SMTP id d75a77b69052e-52d4c251541mr32255431cf.40.1786376549857;
        Mon, 10 Aug 2026 08:42:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:13 +0300
Subject: [PATCH 09/10] ARM: dts: qcom: msm8974: add the HSIC USB controller
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-9-e5f93ea76ffa@oss.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3085;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=AoZJqVVSo+ZoP1B5mllGlVyWEAwh6nCg4CrfFN4+HPk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFRg39N0tUH8uaZmrJ4GFul6JSkWDtgH3bqy
 rr5MP2jP92JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUQAKCRCLPIo+Aiko
 1SiVB/40EuDT4bcTQdsQdEN3kOWqySmkpWkj9bLL9kuiS+NlkLln6QGcFc13/zxSkQSk16yZEZ1
 h1K+H0irtCBFzFGTidDD9UA/gadXnkDrAwxrO363i3O2rr0HPV0bwmf2pZO1vsEyu2Nv352E0I8
 SzD0FflaDxjAJw11WAHgly1oyJq176j8h5+3ONtci7mAV+2N9m+zFJtVrNxz2QmZoMr5VrwgqgS
 qU/4/Pg/4oEKd790sT7a2LSAXiIrG961BRz8xhsORLvADKhfalwb++/kX9yXPjjgGq/FXx0uFxF
 ML67h1d8LFVTGKXfnticFrcAaXfHw5Gcci0GGDf6IGAZqsl9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX3lEYKoVdKhGQ
 o+yxya13wWymq+3AcgCMthSO/Tz7EI19dMP+O7f6rlk3JkhvwV4YlcIPlmHUJhUNN/H0NzCdlSs
 X0ApeLjzSEgRRufnupYQrt3VyYstV/o=
X-Proofpoint-ORIG-GUID: Jr3jvJZV8QllAd96yw374yZ6u_qDOWCq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX7HHCqa4BB+sN
 kYDdbt+4MKZ6N/bKPGXSZmNRt5fMmSlXcWkwmPlhC/p8h2gnVOUT+zRi852lpEj8iXP+YNB9k8y
 l3ukJP42Y4K7NncPR/5tAnbw47tVYQBMMOUaQ8sxc9EdofdGIkpuSQ5Ic5xsGT/h3s4f0aQBenT
 oaaAykvWhfnk5FW7005XmMowQvEehMSSBieJ+s0vyMvCmrzRuWHxdHeq9yWhOeQ39CX3l8otoFX
 tY58NsskgUgoUMaRqURlYfsY2VtHkki7ZjngRWcg7sTxbfzZJxSN0X+OS2Ig/7tPDoOjTjgXCpH
 cUytbfpplhYBdAO43K2kPtBTFy9gG2p2ODk4yhL7y+g+rryYJ6Lb/aDbtMcIMBo0eOwIVIH5ccT
 9hKuIMAv5SZKqg/MUWI3dYZPUXiaZdk9Q+wGNKwczzafzCTrStXhOS5m5Bgr6zThB/6S0r0Iqji
 mdtl7KglRvLHAUS6Gyw==
X-Authority-Analysis: v=2.4 cv=T5m8ifKQ c=1 sm=1 tr=0 ts=6a79f167 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=SNm9lHMw0LAWI6_J5M0A:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: Jr3jvJZV8QllAd96yw374yZ6u_qDOWCq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084231_801549_749A5C90 
X-CRM114-Status: GOOD (  13.51  )
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

The MSM8974 HSIC USB host - a third Chipidea controller with a
dedicated HSIC PHY on the special hsic_strobe/hsic_data pads - is not
described, leaving boards with HSIC-attached hubs or modems without
upstream support.

Add the controller and PHY nodes. The PHY is a ULPI bus driver present
inside the ulpi subnode.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 71 ++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
index bac3c8772e0a..72cd369927b2 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
@@ -760,6 +760,49 @@ usb3_ss_phy: phy@f92f8830 {
 			status = "disabled";
 		};
 
+		usb_hsic: usb@f9a00000 {
+			compatible = "qcom,ci-hdrc";
+			reg = <0xf9a00000 0x200>,
+			      <0xf9a00200 0x200>;
+			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_EDGE_RISING>;
+			assigned-clocks = <&gcc GCC_USB_HSIC_SYSTEM_CLK>,
+					  <&gcc GCC_USB_HSIC_CLK>,
+					  <&gcc GCC_USB_HSIC_IO_CAL_CLK>;
+			assigned-clock-rates = <75000000>,
+					       <480000000>,
+					       <9600000>;
+			clocks = <&gcc GCC_USB_HSIC_AHB_CLK>,
+				 <&gcc GCC_USB_HSIC_SYSTEM_CLK>;
+			clock-names = "iface", "core";
+			resets = <&gcc GCC_USB_HS_HSIC_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc USB_HS_HSIC_GDSC>;
+			phys = <&usb_hsic_phy>;
+			phy-names = "usb-phy";
+			phy_type = "ulpi";
+			dr_mode = "host";
+			ahb-burst-config = <0>;
+
+			status = "disabled";
+
+			ulpi {
+				usb_hsic_phy: phy {
+					compatible = "qcom,usb-hsic-phy-msm8974",
+						     "qcom,usb-hsic-phy";
+					clocks = <&gcc GCC_USB_HSIC_CLK>,
+						 <&gcc GCC_USB_HSIC_IO_CAL_CLK>,
+						 <&gcc GCC_USB_HSIC_IO_CAL_SLEEP_CLK>;
+					clock-names = "phy", "cal", "cal_sleep";
+					#phy-cells = <0>;
+
+					pinctrl-names = "init", "default";
+					pinctrl-0 = <&hsic_gpio_state>;
+					pinctrl-1 = <&hsic_state>;
+				};
+			};
+		};
+
 		usb: usb@f9a55000 {
 			compatible = "qcom,ci-hdrc";
 			reg = <0xf9a55000 0x200>,
@@ -1677,6 +1720,34 @@ tlmm: pinctrl@fd510000 {
 			#interrupt-cells = <2>;
 			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
 
+			hsic_gpio_state: hsic-gpio-state {
+				data-strobe-pins {
+					pins = "gpio144", "gpio145";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				ctl-pins {
+					pins = "hsic_data", "hsic_strobe";
+					function = "gpio";
+				};
+			};
+
+			hsic_state: hsic-state {
+				data-strobe-pins {
+					pins = "gpio144", "gpio145";
+					function = "hsic";
+					drive-strength = <12>;
+					bias-disable;
+				};
+
+				ctl-pins {
+					pins = "hsic_data", "hsic_strobe";
+					function = "hsic_ctl";
+				};
+			};
+
 			sdc1_off: sdc1-off-state {
 				clk-pins {
 					pins = "sdc1_clk";

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

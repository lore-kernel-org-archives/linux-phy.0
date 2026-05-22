Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21512CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 18:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxEWZgnkbE2Bz9JfrVEo9iufXNn2CajY7bYhv1GfIb4=; b=nmuiEszJW8cQ1+
	mGGTW2q83iqv4OPOntA7dPAjteI8yGqVBipPfgu45h5VkBkMWmHVc0NdRzkuLd3vUrGFBYzvhKzr3
	dz+XDCpgfrED2uqVJuYLPoGPkrCBq93EDZL7qDas5WOyyZWlR4PJQM0J7CE72ZgkLkdbJLJzc9ook
	stUlQOHtO41vyU4AaMiXLJFgrwZY9anGbd6vXwczWtnXO18n7QEMiCK61+Ir2bMUTPWqRQcnOjtsw
	Wpk1na7IZXw6JCsDqqrhtb1WOKZN5r7jt5OKxjBbc8BanXZZykaFC4rVL6nt0GuLRFUgaPvMGeNig
	/+Phdkdz25UlOSSmpu1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUDA-0000000BdX9-3kWT;
	Fri, 22 May 2026 18:03:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUD6-0000000BdWA-1RyK
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 18:03:03 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MGv8Sf3947403
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=; b=fPQpNPseu/T78jvD
	0yn6iOPXMQufvBZZdgGzPqz4s3BU9EbcM8mXoJO/Ur/GyH56vgM6xigpTD/Fo1t2
	+4ewgfq6aCjYm6/U31NroVELaaE0pspoOVMOdhfVjjvul8SBi4eFgOjMqM+4mtUw
	5kV0ky/kF1sxujWsvEbFvOXf5eRHUhWrsN9DeT+I0KWi8MSPUsnp4flsg0N1mFYD
	jWYdnpz60meKNUOojMHzywlSjc9Q9x74KWMZFZ1P2zLEYA93E2vIOqQivKjI650I
	tU+LTslg3EWjFleE91wgsSpOfUMHpm7Wt4wMEZ9w6j8EN/LuGzJz5SJC+sXCqcEE
	qdhSAQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ean2nhvm1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:59 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b2ecc96a9aso85202535ad.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 11:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779472979; x=1780077779; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=;
        b=Gcy49PBzTu9LreUdHOVn7T9Iwh4fqylpwqVfmqSoIPHKzMVmFy1c5RpqysmcKuEv5V
         Bm4uCxDshsS3nGIUSJlhZ8NdH2sYSyhl0ew6TmQBVqk5fNGOsk4f/hZKADXIjG08zJnL
         Fk4915k8qnktJ1exBqdbfsD0hgMSWJratBuNA1J0P4NLGC1AA959Y9TNq0MabCl93JnZ
         LiCyBcJHpjoWMbRJ1Ps+tSzNMjhBsbKp1kXkt+IY9QF/+4HsBdsm50G30zdjH1lQ+3KP
         OTC1gvsol5weo55jjOISF/R3aFKWERQSdig2u/g2if7jmyJ07KZe3lRCc7udYp3tGLNO
         dvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472979; x=1780077779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=;
        b=aKxowvXK/kjNHxxcjAoMiT/6cX9zWySKCB2eXXDlmNWOWVXHekgVzA80dxJ8qZYFb5
         bNufvt19pROGSTulfdnmioqUSBPhyIhaM/FSdUc/3K2GWtJW3/8iBisuncuPw+IT6/0/
         N7byddKicLaPcQBEDHXWkTiJRXDXKVP6GcDspTTSTv6cPhIEbJZgBTDmH4/ZYRcxAwEI
         39J0mIfFNUUsl//xAmy6iBadw+cjDXZ1kh90fwPEV7Fag8Fc/N9Cqz08Y97/J4XrjTNr
         6zmBmsOy9a3C1lL1gyMd2mWNL/pc5cSc6HLNKTxP1l9l9dwwXU7IXEjfr/hpLtvV+DBD
         nZWw==
X-Forwarded-Encrypted: i=1; AFNElJ870Q6TQ01t4zwl9ULnxKSMMj8sX5hueoYLswXben4S/Xs0L1BdiMuU+2FO7Y3CsaW7fcCCvAtk7ro=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3iFPFNhx/qvW+LIK/iMgubU3SlaDlkl8Bh/cpSnMKemth/Hj0
	RbBOSoj4rT26P/uFnSgSc23f8PE8mKqLkFW8VdYAVmCkenWdHdqQy7u8UjsWhbAkiREC8YZFyzJ
	8x+mu9lF21ncPK55cit1dp3zendFagmlKd9gYiqbK/Njarg2mK7OenOjSow9Rb3Y7euJA
X-Gm-Gg: Acq92OGdR3kbH68CZgEd5DsUC+QW/Ezl/isX89h/z/oE5bHiYnOWYDt/Kx6634xde5t
	nOgPn4gxsl2PrjPgjxItxANSyc9K56KgvXBAVbCktXWLcFejKY4LZGVTQ01Uz5TGgKdl4R7cX4T
	Z/gAydXrFgUgOar/9Is7KwpUaewJJSyxLl6UuozEJ1MqEWqZm5sX//CzCbX4yV7825U0nXuP7LI
	7HuV44m0nn4VyDpK7PPnAG8jPjwsfN9E3niyHpHB0+VHq5o1CcFiP0ncBuGrduh+s5hIb7Yry3F
	TwqALkJemS3JCuwf70/2OYI4LdSJi4uS+FyJRBA4BrRnVOwwr1GcitaDUk+1v0sCpjx8t7s3KKU
	YQqC+v+6CFQqJs5RC0MJUUapJOLHytQsh0TxH5PMhfZfA0uI=
X-Received: by 2002:a17:903:41c2:b0:2b4:6d92:b002 with SMTP id d9443c01a7336-2beb07db743mr50570495ad.37.1779472979186;
        Fri, 22 May 2026 11:02:59 -0700 (PDT)
X-Received: by 2002:a17:903:41c2:b0:2b4:6d92:b002 with SMTP id d9443c01a7336-2beb07db743mr50569905ad.37.1779472978605;
        Fri, 22 May 2026 11:02:58 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb58ff106sm21193645ad.74.2026.05.22.11.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 11:02:58 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 22 May 2026 23:32:27 +0530
Subject: [PATCH v3 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
MIME-Version: 1.0
Message-Id: <20260522-shikra-dt-v3-4-80ffde8a3dc4@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
In-Reply-To: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779472947; l=4539;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ODfMe8YwpE9zm6WOKy1yvRuBsZs9KnzIUkMMO4tFT3E=;
 b=KtKGO14IoZEn6XSmwkQjzh4RuB8D4vLo7VQiZcMsGVg9S8KCU8nTWc8JpyPOZ34BkgdurHD59
 ZFJAPGhlzEZCswyt7EKFSviffQ/DZ23ebGTm9J60w93SEh7BBnzHOsT
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=XvDK/1F9 c=1 sm=1 tr=0 ts=6a109a53 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=IZjsGcCFCfEoDLf82CEA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: QFGenEHpvvs528WzzlWIDuGNclCxrB-5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE4MCBTYWx0ZWRfX48Ms2JBbTFd7
 F6S+ssh+6S5xUYEO9qmW7ScQHWVftbIxfno2C26wlYw3mrxOVXWev8IJ/rBArQd5WUtpiJKNsRn
 S5PbJ9r0uAqiOKfHkgyniCoo7MEtsC4D6nXH4MxdQzf9hMpMQX613osQBbqA81XfPH+7YEPgIQ7
 CS/G9HHEbl0i3piCdxvhW6gvyWcR7qpFoycsrbZY+NGFn+iyponrE1DCwg0MMZrBDwY6/8ZjM2N
 vovJ/1UfaZ7TX5fnBvnN4T1qjHxcfbQvOmb1gCltDvhQVq2bg65ZqyrTHm4dDAAj7YocOb2zzCP
 62fbJ6WhPyZQOSAhNwRGl524zu57HILv0r3I58c6yW9C6cojhfeiTxku6pzU24vEKqTIoOO8vwh
 xw2Msnni6DM/geUtHfZmLi2PKgChm+ZYo2qv/T2z8YHexBRHJ+jj1aMjTxK84xrhlVDtNB1OrwB
 LZ4mHUnuEa0QBekeUQw==
X-Proofpoint-ORIG-GUID: QFGenEHpvvs528WzzlWIDuGNclCxrB-5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 impostorscore=0 adultscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_110300_403897_29A09A22 
X-CRM114-Status: GOOD (  13.14  )
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

Add device tree include for the IQ2390S variant of the Shikra
System-on-Module, an industrial compute module integrating the Shikra
SoC and PMIC for industrial IoT applications, designed to mount on
carrier boards.

  - shikra-iqs-som.dtsi: Industrial SoM without modem (PM8150 PMIC)

The DTSI includes the common shikra.dtsi and adds PM8150 PMIC regulator
definitions specific to this variant.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi | 170 +++++++++++++++++++++++++++
 1 file changed, 170 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
new file mode 100644
index 000000000000..73945bf42112
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
+#include "shikra.dtsi"
+#include "pm8150.dtsi"
+
+/ {
+	gpio-key {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vol_up_n>;
+
+		key-volume-up {
+			label = "Volume Up";
+			gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
+			linux,input-type = <1>;
+			linux,code = <KEY_VOLUMEUP>;
+			wakeup-source;
+			debounce-interval = <15>;
+			linux,can-disable;
+		};
+	};
+};
+
+&pm8150_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio6";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm8150-regulators";
+
+		pm8150_s4: s4 {
+			regulator-min-microvolt = <1080000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		pm8150_s5: s5 {
+			regulator-min-microvolt = <1574000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		pm8150_s6: s6 {
+			regulator-min-microvolt = <382000>;
+			regulator-max-microvolt = <1352000>;
+		};
+
+		pm8150_s7: s7 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1200000>;
+		};
+
+		pm8150_s8: s8 {
+			regulator-min-microvolt = <570000>;
+			regulator-max-microvolt = <650000>;
+		};
+
+		pm8150_l1: l1 {
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l2: l2 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <3300000>;
+		};
+
+		pm8150_l3: l3 {
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l4: l4 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <975000>;
+		};
+
+		pm8150_l5: l5 {
+			regulator-min-microvolt = <788000>;
+			regulator-max-microvolt = <1050000>;
+		};
+
+		pm8150_l6: l6 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8150_l7: l7 {
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <2000000>;
+		};
+
+		pm8150_l8: l8 {
+			regulator-min-microvolt = <1150000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l9: l9 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8150_l10: l10 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l11: l11 {
+			regulator-min-microvolt = <1100000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l12: l12 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <1950000>;
+		};
+
+		pm8150_l13: l13 {
+			regulator-min-microvolt = <2921000>;
+			regulator-max-microvolt = <3230000>;
+		};
+
+		pm8150_l14: l14 {
+			regulator-min-microvolt = <1700000>;
+			regulator-max-microvolt = <1910000>;
+		};
+
+		pm8150_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+		};
+
+		pm8150_l16: l16 {
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l17: l17 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l18: l18 {
+			regulator-min-microvolt = <400000>;
+			regulator-max-microvolt = <728000>;
+		};
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D669C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3aEV/XQ2JgIPayFVZEqP9rMHDSOsLG2qNjgRB4sfbs=; b=rvNQfN5N3lwwRH
	j369OBMixP8XH2bh7txhqVWK9hrUwRI30cGsoq/svUKzlPLQnxNBVBicpgDMifNWhG/ST4QG2ULUW
	ZjohHMs6sDHvqnk0peiQjUxkgmGlk/x6tpvcN1arPtx+Vk8QzvST8+SVcKXezNKa0ZuBfpxVZv7Ii
	uOa73JQgGHBPKVXpp6L/JqHWAFZrcpkxqflnDwKDUinUceo7ACr/H9blCOzZyblssn7VDCe9hyWIx
	sBkMr4/4A9gf/jgnvUsizp/NP/VAXFX0scKWZzdziX0aK96AORcPbU7LBL+rHmXCDRuJDLlhNckp9
	l7dStjtDsQO9qX0yx75w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOPE-0000000BeWU-00wh;
	Mon, 10 Aug 2026 11:43:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOPA-0000000BeU8-1eCb
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SCVP1167086
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D1R/M0FVHN3ZmfbTKK6TlJ8nWQLuQm6tCm8CfKF/XL0=; b=MC7L2hWtVxKuEQea
	10m0UnHKunesfwVzm24CArbmLKMAcp2tXHy3G/Xp8k45U2U+j92IdETLVf65+mxv
	BDMmD/oPyEHIUBjtHdTIk4JRuYvPZ7KdQ3z6y633KWMyJl4hhgXW7ldRDFK21gxl
	tvKuCt++R2V66eQFGJMb+T3nNMU7hhCaU9cMaZtsn1i+3LjLkIRcYQk9feFpEi6N
	BrtRKwpP+cUHYxZmgAQgYiiNgsgbj+vl3ZT+pEAhOm1nf7Zg6RLz8yRVExH1ofYs
	0si9BzmDXfS8oUEs8yqh3J6hkOh/4zj8/Fx9Xj6uYqh/VoC60kywCuBsl2CvGNVn
	hsmNLA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8vhhb5f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51bfe3fa93bso16523731cf.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362174; x=1786966974; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D1R/M0FVHN3ZmfbTKK6TlJ8nWQLuQm6tCm8CfKF/XL0=;
        b=VEhiU99fjwtyCI+iSAyHFsmQ3fqU5T9YB662YK/Bx25rulRsQ0dWtuAKYR4obiMHFb
         tnbouvrMdeORC2bfKHl03xhah2PRDJyXfFUYm1UqWGkYxbUDhCI42V6UKMhNG5SG8cin
         Z25AfxUhqjNlZXaB8sh0Iyf5mhZRgfW5zUOd2P7Abaq84hDN4PyNFRx0OOz2sRRzX5Pm
         eNijITMexX2w9Y5JJxJlAbCnOYEd15XVhMoIAjVGZTqpa6X9r+dEiRDsvCN9F/nHnCAl
         Sf+lBg9+ONjQvkeaqL0uhXcUuwj9L2tsLsrqMYHdzXrBiTRIKKsr/iLqOuudXfAORJ3J
         4frg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362174; x=1786966974;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D1R/M0FVHN3ZmfbTKK6TlJ8nWQLuQm6tCm8CfKF/XL0=;
        b=BiaQB6CxNGDsveYn64Gi/8MKzQM2aTGKrVOBLCqoLS5g6Scr6d7UxmqfuPE2K+cg6v
         WsSdIN9HIhOr3ZBOPJEVNPsOaWtiLcFMNVuPH7Mqs/rOA8WYbKoJ9jicNkrSpHeoHNJ6
         ylI2iW2B1/IFjNUbUNgKTGmB0TTLdfbhpSe9+6EKaJR12pCzQss/7riu3HRDfKFLSv2W
         1tgGnJZC7yrOjEb/Ef7hgeK9xkiIxgusVUTwR640h+jAkpiD/vFQoQY4qFaPJt5ouG8f
         eRKt581SU18vcSH8viCmn6MQIMknRDBzoE8GGK8J76iLbdvZ+UGtncly5hd7ybv15+zv
         N6NA==
X-Forwarded-Encrypted: i=1; AHgh+Ro46kGHOkZYEeAO6gENC2pt9/lsb3Jq2DM0eWlfYKhnanYHOcBaZaYDnrmS/gTKzvsyTj5QNvIjIXQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvaAD+SePFv+hJ/FJgQM5CZppg7H6cf0Z6sb+qCYg+ldf4CHCY
	6h+0EfscJui6NKG9Laq83O6zn8jZYVe+aMljvbTdQVlJ7xmGSNbsSY5tNFBvN9pvuONFWewv6Ha
	Zfn1pFz7gXPs/O+4114wIzXhTK7rrap+ISRYYpffryPESAuHIGDM5vLBLzx4u4phmcW75
X-Gm-Gg: AR+sD10edjtBoBIwm+JyItLvqQy9oqjzxgYv6CLmSKuV5gBwq6NKY3OdTwwerAnZtvx
	yY2Pl3stDxGOXL3lrtaRllOhBL8cl2MQqLVg+M+74nhuGa+iBKUHCuCglw0JkJ0jSZdVX4RiZyS
	NVCP2u7RiC/7EALa67UKQ0QL+IlRX7Ms6dswGJDg0L+GxqoxVdnw/tw3Uh8qbKI9BZQAWNnETrP
	uOizQugk1UmsI65ejuron2pgQH+jkLS9w4bEPRfUBSRtdZ3Fw6FEwSiOyJi+KO9D6myLtiMCg0H
	U0JoTV9DbS0Q3/0pV+s2dOFBNvSaJCqTxRG2lUw659NOcsc3OCXUK9lu1tp5ot+cl5mZ4DI3THx
	gvUywA5bfKJluFZySxdDmPPBKLZFcb7+RnGtFNoNfKlX2hdiLaekiS4cTTZGxVBeZC1SfTUbgnk
	3OiM+2Ouj6bCoUPg==
X-Received: by 2002:a05:622a:592:b0:51c:4dc:287b with SMTP id d75a77b69052e-52ce5f5f836mr434465681cf.7.1786362174206;
        Mon, 10 Aug 2026 04:42:54 -0700 (PDT)
X-Received: by 2002:a05:622a:592:b0:51c:4dc:287b with SMTP id d75a77b69052e-52ce5f5f836mr434465151cf.7.1786362173754;
        Mon, 10 Aug 2026 04:42:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:40 +0300
Subject: [PATCH 10/10] ARM: dts: qcom: apq8074-dragonboard: enable the USB3
 host
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-10-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2975;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=4fUsW2vr3VtdTcca0TQ3POF+LIM2tVnCfjqUfYO3u7U=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkqrQi4MHup0wtsPo5HbcREclT0npTNf1UJX
 wC6H1cwL/WJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KgAKCRCLPIo+Aiko
 1ceZB/40PwhtCC21vEUign1WqrxJu0PiZ+W1mNPhDBEzFzFkf9NGpxBv+xEXVzZ4YLe3lFVWgtX
 l+ceLedgf7M6ZF/7s2G6BnAV3rv719DVVd2eYaOMcLOn2SRDAXAm/3cjRyCabvHw2lMRhfC/VGS
 L7l5EQJz3OXJxU1kYiacQnwr+GL5Iw/VjnIvc1ojdxirTyS3AVUIvL8UVEm3RGPOl0ouWJk7f4s
 d2guopCrRectSnqjlVvSWoABCnHmueZ9cFyHN1kdYv7lqS6RCFzcsmHtn3JBNbkuFF+fYOoQUGh
 n2oiFeB5I+Z9kAtcZFd/vNm1sXFafqe5DLd+/haTFEpdOaPk
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=MMtQXsZl c=1 sm=1 tr=0 ts=6a79b93e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=8wdEFO8XJvJgKCc5rEQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: RMd73rSFmLGbMa9m_oSK3XNoTjj007RU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX604lXP0O5m5+
 Zc046gF8uCZogVDMdYfNhYyi4ZLpc46pAFxHb7lFtX8pKctKGSnOVV2YfDHE3i7a92SbOFo/nNE
 Nm5oc6tkDr/uSW4Gn8S0DTPh/Tk0lLU8iOogVl6aDKLmMd//NepECKfMg9uvZJPweqGueoG6V7u
 6RU42MxbcOkmfWFCl/whR8UgZybq+ADlp14WP3MF5QHSQc63wcnHBllFJHWbYnCUQuhk0gS5Lta
 nl2zFR/UcS+yhgXDz1na7FvsMcbHtAWQu+QqWKTu9K3fDZPcSSRXcfq0gEVcSJRC6i6S3rmKFaV
 WjFJ95k9i7aVq9beVDl+QTHhqlCt+hlTqwTujwjjK6oagYJQR+Pv6sdTbnPX7arHQJNoBpkNELd
 SZ49qW49h2cEp7+OxW7BPAp9iDGD9MTzB/QhEFrGPoNXaToaBEw2PHRFwvhdEBbTeEX/XJvf8o9
 X+wwJaKwlpry+60nFng==
X-Proofpoint-GUID: RMd73rSFmLGbMa9m_oSK3XNoTjj007RU
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX6lbpYtghrvTM
 Ng+rx08kSrSKBBbp6/MXfra52BkIiiDH4yd+O9XI22ggjHA45GdMCN1SgOmPQSm+o6TMRQI4UUX
 nxoQw3Hanv+dsKA3/LnfiwKwgWFIAhE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044256_551427_CB025E4A 
X-CRM114-Status: GOOD (  13.55  )
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

The USB3 port of the dragonboard drives the onboard TUSB8040A hub with
the AX88179 GbE controller and the PL2775 USB-SATA bridge behind it,
but the controller is disabled and nothing describes the devices, so
their reset lines float and their supplies are unmanaged.

Enable the DWC3 controller in host mode together with both of its
PHYs, and describe the onboard chain as device nodes under the
controller: the TUSB8040A hub pair (with the EEPROM-programmed
0451:8041/0451:8043 IDs this board reports), the AX88179 on the DN2
port and the PL2775 on the DN0 port, each with its PM8941 reset GPIO,
all powered from the always-on 3.3V carrier board rail, modeled as a
fixed regulator.

The SuperSpeed PHY is required even for the hub's USB 2.0 half to
respond: with the SS PHY left uninitialized the hub connects but never
answers enumeration at any speed.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
index d3ae6c6a6f83..083fd8fa0aea 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
@@ -50,6 +50,15 @@ mpss_region: mpss@ac00000 {
 		};
 	};
 
+	pwr_c_3p3: regulator-pwr-c-3p3 {
+		compatible = "regulator-fixed";
+		regulator-name = "pwr_c_3p3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	vreg_boost: vreg-boost {
 		compatible = "regulator-fixed";
 
@@ -477,3 +486,55 @@ &usb_hs2_phy {
 	extcon = <&smbb>;
 	qcom,init-seq = /bits/ 8 <0x1 0x63>;
 };
+
+&usb3 {
+	dr_mode = "host";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+
+	/* TI TUSB8040A four port hub */
+	hub_2_0: hub@1 {
+		compatible = "usb451,8043";
+		reg = <1>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&pm8941_gpios 6 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&pwr_c_3p3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Prolific PL2775 USB-SATA bridge on the DN0 port */
+		device@1 {
+			compatible = "usb67b,2775";
+			reg = <1>;
+			reset-gpios = <&pm8941_gpios 10 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&pwr_c_3p3>;
+		};
+
+		/* ASIX AX88179 USB-GbE controller on the DN2 port */
+		ethernet@3 {
+			compatible = "usbb95,1790";
+			reg = <3>;
+			reset-gpios = <&pm8941_gpios 9 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&pwr_c_3p3>;
+		};
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb451,8041";
+		reg = <2>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&pm8941_gpios 6 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&pwr_c_3p3>;
+	};
+};
+
+&usb3_hs_phy {
+	status = "okay";
+};
+
+&usb3_ss_phy {
+	status = "okay";
+};

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4069FC282EC
	for <linux-phy@archiver.kernel.org>; Sat,  8 Mar 2025 15:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3VoXMSRDzmf26alkBMaMIcwJVmTPfsp/nEAuN2vkg8=; b=GXdJcchqDZevjC
	gjLZgIzX3TGMKhF3IwQpPKbpyizMUixb7Kmf+8FJ/ONDQY7y4bh9UnReviaf9sYkctGix4xO2C1iq
	usc8zqHORNcahPIRQGiIKMHd/Hae1KUHtUip6emenZvd+20epAb9oWK1h2N+u1q44YDAmsLn4zRjG
	ETYpBbsyRWHLhHjCMvucDdTBdZOLREZ1VqoFdUXYBhfr5PjDNJpvitGh3digLv9vEoZy1tSfoude9
	Md3cbuaZ9I8u5y2ZUIwae3nDecDrVicyPEvYFnvk7rrXJ4t8wmghldrrLDsldU8Q+4rJHDFqSQZTS
	tZg/GNVymTcHv9gtpZrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvow-0000000Gm5i-00Kp;
	Sat, 08 Mar 2025 15:10:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvm0-0000000Glmy-21tJ
	for linux-phy@lists.infradead.org;
	Sat, 08 Mar 2025 15:07:34 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528DXiL4017382
	for <linux-phy@lists.infradead.org>; Sat, 8 Mar 2025 15:07:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7gGa4aZilPyCyYaUtOkyKJLgEGpI8bxypefG7qwCZ+M=; b=QhGn7ZsS3LO0WODO
	oRf1M2GnRuCy1OnVi7pwmk5bkxm07W4HD+Hdgrqc6udDywKidh2GQcWbCDW1em8q
	KGdezKiyvA4+2a2xwei7sOFksWugzh3vkEA47uU46TYm4tXFP8zVbdt7vCMsDlp/
	e8QgekpnPgAOdkoF/p3WwNy3mLR3scauqyF9b8hInq5Nhcaohu60r+aveFptooVr
	kpR4VYZ1Rduvl+8sCu/1rPvUU/a2TKqOs7hOviU4WMhis/I5rQuzGeQtaOkqPEBR
	AV6vPlPprXi0O8iwn/3pqEzTptF2TaUK7jYFpCg73sAovsWAjJl4trmAaQNuJVdX
	DJTlJw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ex0rrg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 15:07:31 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476786e50d9so118091cf.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 07:07:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741446451; x=1742051251;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7gGa4aZilPyCyYaUtOkyKJLgEGpI8bxypefG7qwCZ+M=;
        b=c4f/OsO81chMKxX8YFjUmuSAypc1wxC94w4USZE5I+3xYw/jHF49yMqW6bpkCb/QDv
         JMhTecW3Y3Nfg1Gen1Gi/1NYfefRlqFlh94vp4AJnb7rSGeBFsnu2AMwuzguhMnO+0md
         BCYguk8US9L2Rkni4KBNJgK0Zg3P9vC7SwTWYusJNEm2Pd299iEjhz9+VskmjNMOi9sa
         /lBjV5eU2ngpGW19bl57AkN/R4Wby6i0usMmF8tMl4SpOofhVs/UKT08uP8FBL045krZ
         n642aKmZL4inezTNMx3DAnFzUf65jg77RLT42EzZMf0YrHDiEn2YaO6csY8ACvJBMeOb
         1sww==
X-Forwarded-Encrypted: i=1; AJvYcCWebFG8SSbPXuZNckfQyVbJhZwAW3weDWDd/g2x6vjbYyu8PS9lPLkGhhf+APtJmRi43OMbIMFvmSw=@lists.infradead.org
X-Gm-Message-State: AOJu0YykiEq+COQIfelErj6AOGdETBek5x4kfEYhx52/d+lDQwItE4jk
	TD6K1hvOAK9IZHWYCUXfxyC19b58BMtT1CjCihRIVLlr/AD11kgByG9k5XUe8VWoEZJvUtnVTlw
	PnK6d0u4z1atPrpNXWQzrT1+Ct5uFxl2URvz7wboXmyOwtiJhcKrKpB67RrKg3sjJ
X-Gm-Gg: ASbGncvLw8KTVLI63RO9ilquuYIkwk3x/+jbadkJBRMpNW8iqDL5jGZ2QVHf6K1U34x
	3AzHurQSG/T9aEpMC9ElkGrINpbFXpmy3RWDMU4tyHUVAFvsxzRU7onoGFwd5w67y29kiMl9isH
	NE9HE9IhyaaBYW9/3jhXf5o2b9mCW0K5N7D+Pn5t51bWMu1H/6g+ajgTr75uhnwLEUalB3bd6ak
	FYdtqO+IJpCyMwGqvdMCfRkZJ4WdfbrmFc37C8y8GcwntdKQJPX0+OQXM7ClU+lQlbJIvArbjCG
	S+DPyYg63QifyNTUiru2c0oTqngKqhLfRYUfI+qPoSbi6W1DlSnLwqYLERDS9+5d8g6Q5g==
X-Received: by 2002:a05:622a:1342:b0:471:ea1a:d9e with SMTP id d75a77b69052e-47666c9c2efmr15222121cf.12.1741446450574;
        Sat, 08 Mar 2025 07:07:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG16fJ1s25av/19NCMWWvw3UdbNssC4iChQRcYwnRiDIAmzLAMyr8NziGv9MuhUVNksyID2cQ==
X-Received: by 2002:a05:622a:1342:b0:471:ea1a:d9e with SMTP id d75a77b69052e-47666c9c2efmr15221891cf.12.1741446450220;
        Sat, 08 Mar 2025 07:07:30 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac284f76a22sm24449066b.149.2025.03.08.07.07.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:07:29 -0800 (PST)
Message-ID: <aca09e7c-53e2-45a3-8281-7df9951549eb@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:07:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-7-a698a2e68e06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_usb_master-v2-7-a698a2e68e06@quicinc.com>
X-Proofpoint-ORIG-GUID: 9U14Sa17PnydH1OUvYvHuhMxTNlJQrf6
X-Authority-Analysis: v=2.4 cv=f/qyBPyM c=1 sm=1 tr=0 ts=67cc5d33 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=wuHw7GjLwNk9Z1BGEEEA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9U14Sa17PnydH1OUvYvHuhMxTNlJQrf6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_070732_655019_108E77AE 
X-CRM114-Status: GOOD (  14.60  )
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

On 4.03.2025 10:56 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +			status = "disabled";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;

Please follow property order / general style found in x1e80100.dtsi

> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&tcsrcc TCSR_USB3_CLKREF_EN>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "xo";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +						  <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event",
> +					  "hs_phy_irq",
> +					  "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "ss_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			resets = <&gcc GCC_USB30_PRIM_BCR>;
> +
> +			interconnects = <&aggre1_noc MASTER_USB3_0 0 &mc_virt SLAVE_EBI1 0>,

QCOM_ICC_TAG_ALWAYS

> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_0 0>;

QCOM_ICC_TAG_ACTIVE_ONLY

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

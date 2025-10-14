Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB487CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXXzqH4spSeGxl8mgp870SJ6cQ/Op4Y0IOrrrNawmRk=; b=Wr1NrHAxB8wyeh
	j7EkSMFrQKMpHz6ANsA0QcoBeP3po847Lz93La2QKENb6lOIBPZ1eAXwxQ6LWbuSIPwmyYtQ2vnAT
	KnJBh4/67oHWWwoaI5UuTxHoTrXLUhdadtfuqlU5/byEzpxxeCgyYWfwZqDGYwpLGguNAIeTuJdJe
	drRV/nxPIs0QD76Ph+GatSl4V4cD3ChSI1NuXqxYLuka9ovgGs8UNuzKQEf63E0qMb76gWNBaF2Fi
	Wk4YtYurvxFzWZwiBvIx1kXUGEbSURJcRFURuGwn76gcWmSHf7Czk+v242WGosfMW7VONWKLfWpJ8
	hYb77kEGISLeTCvQSUqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Xko-0000000FE6c-1BRl;
	Tue, 14 Oct 2025 05:39:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Xkl-0000000FE6F-2PzR
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 05:39:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDAf4020695
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:39:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1oMp6ReUGAkcuBWeYGGdepJL5VR/gD4ESMqxea/8SyE=; b=TK3lcttpFIRz3G+U
	v/MwFeIIk6gv4Ykggf78sHebrlnhp5UIjF9NTTQRQfdq5IvFE1DuAGhzB3rMMWRy
	bA9pgKfoB15sDv6UBsN0gVrZd2vFwlNVt1Basj8LD1ZVj9/WlytwEx3xtAk/Wa6D
	jDC+XClOjyXkK0GXgf9S2IcpGgjZaeo1mEEP9GjhCBvyiFDiztPma9lUy4KSdNaV
	DRv5ydspvetHfgMOdwmWTL+1yJJ61q1nDIe2468fbILr0DxTu2V/NDoWvYIn8axx
	Khz8hyYiXqghkYGhsBOzSwaiEdbjz6Wo1ycSa0nmukVHCM0qzviiqRt23Itcwsct
	IpGONg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8yb8q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 05:39:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-277f0ea6ee6so106616255ad.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 22:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760420358; x=1761025158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oMp6ReUGAkcuBWeYGGdepJL5VR/gD4ESMqxea/8SyE=;
        b=QkwT2zxZBhANClvUh6HP7l5tb7PTA3GEpZwJpIIbhyLoRPvHKLMOB/G4oHUyab4C7t
         QUBl+ahWC3VfraMVDGnT1hSIfuaWaBGuUlPFCu1cpDUhMrf+w0apKiQCWGkvb9d9JOAd
         562f3UTz5lUk9m+KkwpOv/+LUo/Eh6UCJEJRyJx49EF39BWADxKsj8ROqSWf3R2gignD
         gb7Uh/N3uLXPYfQNpRMJULlUGu3+PO3TeWNWkWb5nV9sbrQtyrx3i2YQy1QNqystFeK+
         eeo/8/zLF/jFl/VgtIzwEOfS0pdPT9sCC0HDWrJ7iKfDDPof8JwD0/OArBjR1RdR8B8p
         lVEw==
X-Forwarded-Encrypted: i=1; AJvYcCXk32PgGRyxApKJtli7DtVTsk4W4CekXKr1INK+R4fzISclF9evWWpec6MFGcixurYJ4DnjXeyP0V0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQws5yQHy2zQp6FCs+X0M/ks/b8zS/9jq0XZy60eUqGYREVSyB
	8/Z2lfdM7Pr1MGTuix4bdzSELYsTxqybZ1XE+i2D3i8INWjJNLH9xi9VzjjAwwfiQmXcfqvWvRR
	G68bE6D9UvOJkpkLWLzkKKnGdsAnAgyYf7OSgychkJ9r5WLjVNMuQLlsOwvuJqQ45DEAz
X-Gm-Gg: ASbGncsj8xi/TV2EijeLHOjAlFoGtfnR0/Ny6OJI9M8B7/thavByhYfOGBLa0QpEHvX
	oMEPf8qvPZMbsPxClew5XH8JfOmO6P22kJWyzyejmkSlUPxrkeL/sT89JMu5N/5tMXUiAe8eD7s
	8FA9PA+5428GWEXUfmIRXKip72zvjpnnvU2uglxcSZ31zw1+nQtUspn/evrFWPmbYBLq4s+paDL
	GbReof4yyUuOZPZ1xRClY7f//Kz3AvyQlKUSp0IHIbDYpmv44Jc1DaakB38IaU8bgY53xB5DYKv
	YEcgygZU3ecdxYW04RxaQiSfzRVo8kWqP/D3A4mZTZAiypf+H2LOBfQbqiaFzxnbz21483Q/mA=
	=
X-Received: by 2002:a17:902:ce88:b0:26a:8171:daf7 with SMTP id d9443c01a7336-2902723f086mr388952335ad.16.1760420358141;
        Mon, 13 Oct 2025 22:39:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzNWsTvFSwkJcmErpReie+BnX+Tvcx5O8Z7ZWO1k+OYQIw6XA2734NpxW3Pui5uE9foskOWQ==
X-Received: by 2002:a17:902:ce88:b0:26a:8171:daf7 with SMTP id d9443c01a7336-2902723f086mr388951955ad.16.1760420357620;
        Mon, 13 Oct 2025 22:39:17 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f4ae6csm151903735ad.108.2025.10.13.22.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:39:17 -0700 (PDT)
Message-ID: <e146e351-ec42-4980-b41e-56bfd7dcc0fd@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:09:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] arm64: dts: qcom: Add PCIe 5 support for
 HAMOA-IOT-SOM platform
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
 <20250922075509.3288419-2-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250922075509.3288419-2-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: n3scuq7LZnxos4JYJRVnU8tlSyY-xO_w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX6VXvpajxM8xB
 ri+aBTxjuzA4AW7hL1mhj7uufDXCG1P/W5KLmQeWrci9sk0xCKbC0ExlGLkilblo26mgsVnyYUF
 bVM07PNl7x0TehUcIY+zL9auNxokTHWI1veE1o+qZpEGKFfOnIZOsvt7eO7IHIbSJ0aX1ElQ92n
 JIbX4OpP9d7bFgqsI6t5MTBv6tHeKnl0HYqa6yo7yVd2tDRqNh7SrKhyGMBdzAJ+yqUGhp99xus
 +x8fWlnnK9FQmKR536LwSdfo45PMXkqZJzfl49h8v7gIxl4gTO/ZxSGDqkP2AU3Ox+juKf1AyId
 CjnvWeTof5LAUBKXaxDNM6Mj8t1lgcRk26WP3yw6DnlTvboCVWNoWAPZN+qB3FTudYqEYVgJjt4
 I3n4hjCsuRNI6d+W9Uh4jNNEY9kI0w==
X-Proofpoint-GUID: n3scuq7LZnxos4JYJRVnU8tlSyY-xO_w
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ede207 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=zv_5qE797hUBxoToDSIA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_223919_621779_40248142 
X-CRM114-Status: GOOD (  15.89  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> Update the HAMOA-IOT-SOM device tree to enable PCIe 5 support. Add perst
> wake and clkreq sideband signals and required regulators in  PCIe5
> controller and PHY device tree node.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

- Krishna Chaitanya.
> ---
>   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 40 +++++++++++++++++++++
>   1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> index 1aead50b8920..0c8ae34c1f37 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -407,6 +407,23 @@ &pcie4_phy {
>   	status = "okay";
>   };
>   
> +&pcie5 {
> +	perst-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> +
> +	pinctrl-0 = <&pcie5_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie5_phy {
> +	vdda-phy-supply = <&vreg_l3i_0p8>;
> +	vdda-pll-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
>   &pcie6a {
>   	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
>   	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
> @@ -477,6 +494,29 @@ wake-n-pins {
>   		};
>   	};
>   
> +	pcie5_default: pcie5-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio150";
> +			function = "pcie5_clk";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio149";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio151";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
>   	pcie6a_default: pcie6a-default-state {
>   		clkreq-n-pins {
>   			pins = "gpio153";

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

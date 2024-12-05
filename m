Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B010CE77170
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 17:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVmQt9BBNlFztarLcUhA39yf0H2KGGdBPR2iHkUX3dQ=; b=tYMsWaAQdVWjaH
	QXwy+OCsIPrM5RqWclXQpB+tna4bxe47P/hMyA2HPZwFqw0pJBMoBeF7TqKcD9YIGZ22Vy0Hh1YgM
	oeyROk2Xs0ZYVuXhrGdUUUHfjGodQqLmFz5c3u42/kizt1i+6RTBoylI2kvxuJPLqTPSaCoa72Kk1
	kemzXz1rf2gvY/ROuAsT0QtcZUxiJI+OiNlRP/1a2cI0ZCc3/k4mhxuxX9UARXTWi4nDFXkweuih/
	768+o8m2fPFDeID+zq+BvW648MwkuYwpPeuxx8C/UcnEQQiVGc8mNKBKj0OWExBCllGUNf/aSolZz
	lAXTNlQ8kcMVhybGG25Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFNl-0000000GtCa-3ybB;
	Thu, 05 Dec 2024 17:11:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJF8X-0000000GqLM-1ucp
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 16:55:34 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5GMmT6010475
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 16:55:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VOFQylGJgYNMCJcUBcofUAuX/+VKBXcVVeUUlHN8vVk=; b=hH3uGaren9vGIINs
	j2WI3cccYIp5+se1M6em2KECJk7kR2vZz6OIlY/IpflNiTiuYAtyRxbl+OrAOn+t
	l0/K+xO8ZdylPDpgUmQQK3kbVFjdJ8GQs7Vojxoy02N9jm/1/tTRC1NTp3nV+2mq
	reumS8wt8cUtz8hwlZEme0OdSdeA0Y4euv5rf/vmahH0KReq4TBuAatGX3Y/K24s
	fUxAakPP1/9ra3Z9Mu8YFvLu5uVZhN/MU3fWAJDJvUCJxyl7V3zTJewQt6UnKtbI
	N8JddbJ86tf0VyHP+VXNqmA5cof4Wzj35ofsOE8UfYbYp2525rxxLyW68d95fdFP
	8YjmmA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439v800e4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:55:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-466c5605601so2539601cf.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 08:55:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417731; x=1734022531;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VOFQylGJgYNMCJcUBcofUAuX/+VKBXcVVeUUlHN8vVk=;
        b=dCHdyrsnuu6c8bw/NVk9rq3rQTGwnnM4MPBytyziv6E44BLtFwgAFjgh3Kj2nHF5X7
         r5u4DCYNE+3x5Su3DT3hcjt798rDEig2INNJdi7ezMLc27eKOh3csl3wnnXyqS8roTCb
         ZfsdPFXcUvAa30Zr8NnXqbAUt60J7v1f2RMADdOY8VO7aaXWXT3srxNPcWCkaxcYY2Fe
         1UspXuLI4uA8+cnV5OF89KQ6OPXLP+8byu6dlBpmBJO35NHTv/bMwYo3SLQef3Iig8Yh
         SAoh46EXpYXIGW8Gv4ZHQmfqSlJY2sKBMSGMXlg1boWQ0C4JUHbAUhP6rvPD1veIgKIy
         vSoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXD1RsOla2gyzD6T8+FROvUUt81f97k1DlD9RtOwHnMcdhUhi4d/mO1/orSsBaLp8tvvXTshZfWmAw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxo2tns/Xamr9KL4zm2MtuwWrnEWqpSYHpc5RvruB7Y44TvDqnX
	Bye7GpPEJPacEFEEKzZLUpZ7mQQdZ+x0M57PfkYZWabUzK1F2ES04vJCQT7YdMQvCGCyry3Hq6C
	02i5tXsxqfj/P3z++4gAbVkxXL2YgirUGhqd7r7gMtD0ngAB968UioUVUQCOIurp2
X-Gm-Gg: ASbGnctGLQ9L6oXtzPPdMRxz1tFBvgPMyRsRaHqoBEovYE0Z2yX2T6j5IQ8wZSiEu1e
	0qxOEb1KmaglKX5ziZiP2yNiqI0yU1XRCC6HtZur6KNvKqIMvGaxE6P4TSlkgxdWpw0akIlTD3I
	IkiF7La5QoES1YRYXJOEPB75Do5sQa4uKCPpxFrPMfnI2AgzNOOw8jS0Wicvfd5ROpbnPFAr40F
	8QAei1DVkuE3FCdcSdr6oIc5F8vL6bG1fpwIiWL+kPeIpjnNNjhjlpPqEPHON9Rq/1YUiveBphD
	37HhjZ6r3mdT2BSvScm4Ts5K1Q629vY=
X-Received: by 2002:a05:622a:58c:b0:466:92d8:737f with SMTP id d75a77b69052e-4670c0c19d8mr67579541cf.8.1733417731428;
        Thu, 05 Dec 2024 08:55:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpOyIz3ExEZb6pa6ljRFBJV3XGl7gjiUagmYMxGVfn+2598vcJKlgl8xXch7qaXTeppX9Nrg==
X-Received: by 2002:a05:622a:58c:b0:466:92d8:737f with SMTP id d75a77b69052e-4670c0c19d8mr67579291cf.8.1733417730950;
        Thu, 05 Dec 2024 08:55:30 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dc95sm115378266b.38.2024.12.05.08.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:55:30 -0800 (PST)
Message-ID: <6fe09de4-c94c-495d-92a4-aa902d2519ef@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:55:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: ipq5332: Add PCIe related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204113329.3195627-6-quic_varada@quicinc.com>
X-Proofpoint-ORIG-GUID: XXaQZlsLC7PCrVFjcZURmV8R0i5Xe_k5
X-Proofpoint-GUID: XXaQZlsLC7PCrVFjcZURmV8R0i5Xe_k5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_085533_616042_026F61B6 
X-CRM114-Status: GOOD (  12.80  )
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

On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +		pcie0: pcie@20000000 {
> +			compatible = "qcom,pcie-ipq5332";
> +			reg =  <0x20000000 0xf1d>,
> +			       <0x20000F20 0xa8>,

Please use lowercase hex

> +			       <0x20001000 0x1000>,
> +			       <0x00080000 0x3000>,
> +			       <0x20100000 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";

Please also add the MHI region
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0 0x20200000 0x20200000 0 0x00100000>, /* I/O */
> +				 <0x02000000 0 0x20300000 0x20300000 0 0x0fd00000>; /* MEM */

Please drop these comments
> +
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 35 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 0 36 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 0 37 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 0 38 IRQ_TYPE_LEVEL_HIGH>; /* int_d */

And these too

> +
> +			clocks = <&gcc GCC_PCIE3X1_0_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_BRIDGE_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_RCHG_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AHB_CLK>,
> +				 <&gcc GCC_PCIE3X1_0_AUX_CLK>;
> +
Stray newline

> +			clock-names = "axi_m",
> +				      "axi_s",
> +				      "axi_bridge",
> +				      "rchng",
> +				      "ahb",
> +				      "aux";
> +
> +			resets = <&gcc GCC_PCIE3X1_0_PIPE_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_CORE_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_S_CLK_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_M_STICKY_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AXI_M_CLK_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AUX_CLK_ARES>,
> +				 <&gcc GCC_PCIE3X1_0_AHB_CLK_ARES>;
> +
Ditto

> +			reset-names = "pipe",
> +				      "sticky",
> +				      "axi_s_sticky",
> +				      "axi_s",
> +				      "axi_m_sticky",
> +				      "axi_m",
> +				      "aux",
> +				      "ahb";
> +
> +			phys = <&pcie0_phy>;
> +			phy-names = "pciephy";
> +
> +			interconnects = <&gcc MASTER_SNOC_PCIE3_1_M &gcc SLAVE_SNOC_PCIE3_1_M>,
> +					<&gcc MASTER_ANOC_PCIE3_1_S &gcc SLAVE_ANOC_PCIE3_1_S>;
> +			interconnect-names = "pcie-mem", "cpu-pcie";
> +
> +			msi-map = <0x0 &v2m0 0x0 0xffd>;
> +			status = "disabled";
> +		};
> +
> +		pcie1: pcie@18000000 {

Same comments as pcie0

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

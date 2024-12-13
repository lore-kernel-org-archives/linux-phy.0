Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9468E7717D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 15:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuQxX16vU/kTM4ZtZhFMs5hxPOawcdhNW9Jn6VWd4Kc=; b=OYk4ITnsZcB2iD
	zjpeVrKBBLlNM1jq9igYy65+4PJfnz175Vxkdr3Gb6Bizu4VS7GxmYenupffjImwih9AiZzOBME8k
	DiyKBpus4P292snSijYZCLHziwJQweKl+n91mMSP3/6Nva5blkjU4W7tB3f2LM19sa6cGA1zxzjOU
	VmyFSY6uveAxN9cI0WLVxAs7AvwMPAhTaoK7MyYTuzvbdeuEQ7QbbYdHxB7S+D9hrYpCo5YOxoa3y
	cvl/Y2eOhspEr+NCe6pQGkzoxF1UC6xhd0idXi2Q1zqS2sdADfMauCkw8wMhqwnDCPyLEBOl479RQ
	rRPi3pF1te+M8KAg/Nyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Ht-00000004Dqi-1pDS;
	Fri, 13 Dec 2024 15:09:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Fy-00000004DIo-2So0
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 15:07:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDA3hB7012465
	for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 15:07:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	95sMhGv8JzId9Jkjd/s1AKc37jB1S5fUjQhHk6lxW9w=; b=Ml2h24Nr0x9cz3x2
	UnO7eDH5Ar/+Q5FpHmHLR4siyOf899HRx/MV0TtE2rxERBLz25CP2R0bGc8fY9Ug
	ZFDuOYFudCycE46doqAfsuNvfgeKgfWkKNgvvL19z5qe55rQ9oASHSsgPYtDLq4S
	zZ3y+4xZXjtVIjnmWsGavTPrGAT8eVXdVMv2TYwTHi47hMSn8G1te+XveosFrm3e
	k3Io0mFJjHUKlddCds9XZQwbGaTSRKni3Hp63fAxYQmJ6FrSMFQ2KV9n12NTkcmY
	CaljqLDFar3qGG9uS2GB6ogwX7Av3e8kwUeZkloAIUoJO3XD6jErJdCBOCnFWPqO
	tHdohQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjudgued-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 15:07:04 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d880eea0a1so5145046d6.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Dec 2024 07:07:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734102424; x=1734707224;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=95sMhGv8JzId9Jkjd/s1AKc37jB1S5fUjQhHk6lxW9w=;
        b=g1T663KvA8nTLy908MJeCm3DeNyHW1VwdnIxTLXr71bxxaOq0Ng4kclyIcGPUcPVrY
         N4bhhPAcA6EfKG8CgY0AUb5rgJTo4gW8hjHnyoWPaVf+SJhENE5H1s1JWcTnWD2TZczm
         6dy/IaJaMjlX44bLNe+wLMfVBJsIDSUt+YfWvQzuzuXKBJ9A3cnFK/B2TtsMijP2tqDw
         cH6EWPwRmc55ZalwMoFvLcmJiay+/811EGgKcEU1zgos78JaDRKWEZyfuyOFrb0SwkJT
         BIfAgusqOvA9vBawrSijhYza3CQYmcu2626d6eQULCfgxdeLlAOoL9EhWvYFnTbt15MV
         3XPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXT0BBlJ9uVlZRq5XvYiIsBJiIXSgQNiH0QUM3w9SP2Gserpj+bFMmRba7R1ZGmMSmL4bSauf/rdBM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA/Ya0K00A0KKLvmcFyYSWHuAdZH4LXrU9rHzLNtgbu+2gcoR3
	BGStZ9UxACAVxGa2AKvCaw61R6e/y2db3o5Z2DEn0O58369xwOHoeh7rpYPzbQdFWcHVbLzbt6O
	akYE6mVg96uUx3oFTgBxTlHSyRG3PqGHUbbrdip/BMt29TUOjil+lnIkr2f9nIMQb
X-Gm-Gg: ASbGnctrpN4QeYZ8mcpjOEjx5AyEfGeDkLPFdLMo/ODqmxT4QBp+Y1VFaYegSNDk/LO
	RqeOAflg+C1ExFiJCnlgBfYIN1SMdwVU95NHzV583A+1Z/KIpWEmmVfbMLYn0ljuO/F8eozRUaD
	xw+4HhUlGE9Yf+JqXfxVy+hTaQpRBWMKiaj7DaF+xHawLBJhc5+rI0RxNjLMdfuulEPHHdEeEOJ
	OFIFBhznDmBZqeRcS6rJ9gn5hHrBdwb7owvPJekdkiF9uQBuKymCAAugQTefr2QDVg93XrrkUFa
	W6UnsmwqlLkwHI8+GFacviGhF0nz3Jtv/YfD
X-Received: by 2002:a05:620a:4714:b0:7b6:5e36:224c with SMTP id af79cd13be357-7b6fbec7893mr130158585a.3.1734102423763;
        Fri, 13 Dec 2024 07:07:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfUebqUqZS7Y8o9ZMXBvY3yYBIuA+QkiY22vXgsLp37i+bH8jWKJluwlAQE+Ir/r62U/7iFA==
X-Received: by 2002:a05:620a:4714:b0:7b6:5e36:224c with SMTP id af79cd13be357-7b6fbec7893mr130157085a.3.1734102423321;
        Fri, 13 Dec 2024 07:07:03 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6656f306csm913017466b.61.2024.12.13.07.07.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:07:02 -0800 (PST)
Message-ID: <69dffe54-939d-47c3-b951-4a4dea11eae0@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 16:06:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-4-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213134950.234946-4-quic_mmanikan@quicinc.com>
X-Proofpoint-GUID: nsCya6AGYHoL-nh6ro0oK1pKX5-xz6iU
X-Proofpoint-ORIG-GUID: nsCya6AGYHoL-nh6ro0oK1pKX5-xz6iU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_070706_749192_32D2687A 
X-CRM114-Status: GOOD (  17.19  )
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

On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 482 +++++++++++++++++++++++++-
>  1 file changed, 477 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 5e219f900412..ade512bcb180 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,ipq5424-gcc.h>
>  #include <dt-bindings/reset/qcom,ipq5424-gcc.h>
> +#include <dt-bindings/interconnect/qcom,ipq5424.h>
>  #include <dt-bindings/gpio/gpio.h>
>  
>  / {
> @@ -143,7 +144,99 @@ soc@0 {
>  		compatible = "simple-bus";
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> -		ranges = <0 0 0 0 0x10 0>;
> +		ranges = <0 0 0 0 0x0 0xffffffff>;

This must be a separate change, with a clear explanation

> +
> +		pcie0_phy: phy@84000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> +			reg = <0 0x00084000 0 0x2000>;
> +			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
> +				 <&gcc GCC_PCIE0_AHB_CLK>,
> +				 <&gcc GCC_PCIE0_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE0_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie0_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		pcie1_phy: phy@8c000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> +			reg = <0 0x0008c000 0 0x2000>;
> +			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
> +				 <&gcc GCC_PCIE1_AHB_CLK>,
> +				 <&gcc GCC_PCIE1_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE1_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie1_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		pcie2_phy: phy@f4000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x2-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x2-pcie-phy";
> +			reg = <0 0x000f4000 0 0x2000>;
> +			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
> +				 <&gcc GCC_PCIE2_AHB_CLK>,
> +				 <&gcc GCC_PCIE2_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE2_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE2_PHY_BCR>,
> +				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie2_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		pcie3_phy: phy@fc000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x2-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x2-pcie-phy";
> +			reg = <0 0x000fc000 0 0x2000>;
> +			clocks = <&gcc GCC_PCIE3_AUX_CLK>,
> +				 <&gcc GCC_PCIE3_AHB_CLK>,
> +				 <&gcc GCC_PCIE3_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE3_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE3_PHY_BCR>,
> +				 <&gcc GCC_PCIE3PHY_PHY_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie3_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
>  
>  		tlmm: pinctrl@1000000 {
>  			compatible = "qcom,ipq5424-tlmm";
> @@ -168,11 +261,11 @@ gcc: clock-controller@1800000 {
>  			reg = <0 0x01800000 0 0x40000>;
>  			clocks = <&xo_board>,
>  				 <&sleep_clk>,
> +				 <&pcie0_phy>,
> +				 <&pcie1_phy>,
>  				 <0>,

This leftover zero needs to be removed too, currently the wrong
clocks are used as parents

> -				 <0>,
> -				 <0>,
> -				 <0>,
> -				 <0>;
> +				 <&pcie2_phy>,
> +				 <&pcie3_phy>;
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#interconnect-cells = <1>;
> @@ -292,6 +385,385 @@ frame@f42d000 {
>  			};
>  		};
>  
> +		pcie3: pcie@40000000 {
> +			compatible = "qcom,pcie-ipq5424",
> +				     "qcom,pcie-ipq9574";
> +			reg = <0 0x40000000 0 0xf1d>,
> +			      <0 0x40000f20 0 0xa8>,
> +			      <0 0x40001000 0 0x1000>,
> +			      <0 0x000f8000 0 0x3000>,
> +			      <0 0x40100000 0 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";

Please make this a vertical list, in all nodes

[...]

> +			phys = <&pcie3_phy>;
> +			phy-names = "pciephy";
> +			interconnects = <&gcc MASTER_ANOC_PCIE3 &gcc SLAVE_ANOC_PCIE3>,
> +					<&gcc MASTER_CNOC_PCIE3 &gcc SLAVE_CNOC_PCIE3>;
> +			interconnect-names = "pcie-mem", "cpu-pcie";
> +			status = "disabled";

And add a newline above status

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

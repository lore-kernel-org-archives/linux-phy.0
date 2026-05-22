Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE33CD5BB1
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 13:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMLnVmG6w/c82aGEEq8F+yQA+jG4Xbru6zOy0kjIC3o=; b=BavVUh28hMxLk9
	evCqPboU9cjw99DFyNRlTQJne4UNNNeDp2M8C6TMWH6CGkjZ828AtBoHPpZNHuIV7s2+J2YHeHGR+
	fklddhjHEDF25zOIlWDz9FAfNST6A+kx3u5GC1i0Ix8On4KE3zJG9yZD5YcRpYmbyU6Uc8yohxUmR
	Lw8jEmEsXpsad/3jkswrDOTrZheJFOIhb8BZPpcEoD5Id3MzQr76ur5TBWoqpm0688SkrirwrH9t3
	o1zIdqWRCgoG6vBK2a1VoGPIAS3stdV7tBbbpv1BFxNdL7fk0b1U56YhlaM8ODoTe4APQ/h/8Um6X
	M95NbyAV7DhYZA2enoFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQ0F-0000000AzCU-39FQ;
	Fri, 22 May 2026 13:33:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQ0D-0000000AzBI-1fJR
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 13:33:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MA4HMY3947594
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 13:33:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7AQ+7Ja/GHakdcs1Bu7eELxDh+aauHM8hieyf0f30X8=; b=WVsj6q3b+Q6Zrfr4
	Hn4WyzT58zbJeZ0suPCYh4TSxDdrjA/5brpoxMzY/sKLxZe7tLgzrTq1ryTNetME
	3dz6GInNF43OiV9j4mtVpcfFYtIuDELIZaJm+57Wuc8XK7EkIgZQnqtNpYfgXt8b
	TchwXbR05NtbVSD1Sy6zL7OHEl7C0PwuDlQqpMoqGKqXBADxmARUHymkB8RMa/gK
	XAXWdnX/vnR1kBSvpIdQwy8m8T98jsPDhsBE/SSRjxOVJtfOVjlq2J8ei+hXHwaR
	EvW8FhPhxlYbPRs7+u4LvJrQ/5wHulOO3GivZpHeHiYXZFeAuW/S6w89Dxz7N8xn
	813TaA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ean2ngpja-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 13:33:24 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-83544d05c5aso3614496b3a.2
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779456804; x=1780061604; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7AQ+7Ja/GHakdcs1Bu7eELxDh+aauHM8hieyf0f30X8=;
        b=D3SHXToycAPn2Mht7qSsP94f/TiRXnh1DdYYaDanqN7tAfzQu9AWJCkorXYBRzHCqF
         s0y4fSQdyMXuJbfNptyi84njoywdX0afCX91wIWaVqZxjEKGz/xBHAMultqxBkXQiu8D
         sG8BMy3RcoUBPmaNM7FGxMRV2K/akicDT6TCRj1YaPktNEedhTup0pivsxtYZxq6KU8P
         fFLwVg2c9PEZsChnDLDaeJrZiEI8yJmous4uJKLLveJphUfTWpRr1GBFgl1sMenw/BGb
         5Sq4Jc+dIdzGlogJa2iIVeQ/bPa+R70yH1dzxb51aNNXqEsNlIaCN8HjB2de6bIo2coP
         ZQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779456804; x=1780061604;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7AQ+7Ja/GHakdcs1Bu7eELxDh+aauHM8hieyf0f30X8=;
        b=fn8P1UH9Hxx6HS+OKcqmlJ/kOrzwcQFqFJ40ojWTRyjOT3aC7Iq8NK/9fbSixubhH4
         btoI54MARQVcacm/V9s5dvu32Pay40B9rGkpiNPXmzc/2ZTz7U7rgCW+28/2ipL2rxu9
         vuW7ZVKpHYe1EZY+AOgk/pLcpPdVW0DtSXI7yCdcpzxI60eXoK1tDRQmNnhOku+tov+x
         y4PJTAN392DKNnH5TpXpcitCX821Lf6hMgXJUGUjmngW7X4K/kNQXnRdkwAJniyShe1s
         XfZE3cwWMg42OfOSRcv3N27oXW4LCkAj4IUBEl+yN6ghezcGs42i3+wV9wQ4giHkoVSc
         MKDw==
X-Forwarded-Encrypted: i=1; AFNElJ+gNtN4Whv5ftPQ+m8ZZplBaaLOhEpJB9QwC/V3+XZOA5/+hncIqjtteySI/sjL3kY+64kYuLBMLJ4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr2EgZj/z/wIcsL7ffbWdUrIjJHC6nd4g5/FwXJRO56811kEkA
	MLYN4wYKLNyGk3fKYWzmE8gvSUFm6lDdXPfP5CcUxxLMy6WWnAhsEVioJ9zE/rrvvg81XUtZWiK
	z585cinHz3e3IQqx94k4CFb9pZFiVO9UyMckSyEH31weFEAnWGpvFwbbNpmqKnMSJMm/q
X-Gm-Gg: Acq92OFvwaqhkTrHthfyUatrz+ltSHI/LjGDNiaG1wmthrm7Vbl+zEZUDqghLmpDfEW
	FlELgKaUJHzJnMeeio9FPSWZOOrLH8lak54qmkDdjxJc1tzN/poQhYW9Di4Abt583YwNYehovhc
	2AD+hMrbgdmeWngIt/m6LCpfh0+Pe6t8/Z994YVBKwuMabA7MjiajxLxQuT3D4AsPh04YSN3MmO
	EwfLxc7bopCK0J8NlhRUxJGPWYQU1RPO9EKgrSqSBQVqftmXedXLO7Iy3J1G3QkzvKhQNnMGtBr
	qs3+FZCE93fkPzY03O1FzL11iaiLEu4hsI1bGDLH7TZkGv4Quwg4VbRayHwFBV/yn34qZOsWf3t
	PzX9HlBttkYpZORCOB4gnK+6AOoOkquTzEDvZ6n7/0hnoZSpQIac12YcnvnA=
X-Received: by 2002:a05:6a00:10c9:b0:82f:70a7:4a25 with SMTP id d2e1a72fcca58-8415f3640d3mr3788988b3a.35.1779456804146;
        Fri, 22 May 2026 06:33:24 -0700 (PDT)
X-Received: by 2002:a05:6a00:10c9:b0:82f:70a7:4a25 with SMTP id d2e1a72fcca58-8415f3640d3mr3788947b3a.35.1779456803587;
        Fri, 22 May 2026 06:33:23 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164e9e7cdsm2198292b3a.34.2026.05.22.06.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 06:33:23 -0700 (PDT)
Message-ID: <af80ccf3-b26b-48f7-ba94-0830c0730a94@oss.qualcomm.com>
Date: Fri, 22 May 2026 19:03:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org
References: <20260519-shikra-dt-v2-2-c01b90fb4395@oss.qualcomm.com>
 <20260519114737.70CD0C2BCB3@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260519114737.70CD0C2BCB3@smtp.kernel.org>
X-Authority-Analysis: v=2.4 cv=XvDK/1F9 c=1 sm=1 tr=0 ts=6a105b24 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=RLylhfQl9M-TdwYxiz0A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: 6AaLAGOmcpANUKNdoSyxDgF40Y4cz4kr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDEzNSBTYWx0ZWRfXy5zb1ityYzWi
 4w29jD8WhiMK5eX+b0i/rhQRg9wFfePO7wpG9/yIhRSUxDS7R53SOHqiTpHjN2u1KNOUCL020Cz
 U3anPpqReb8Ho/XrZFKCJ3p++GuBDXLTdbRl/bYRgjhOffMxCLcZqNu1HELXcb663n/qwjKEX68
 I8LcGGIZVhfRi4DwpIW29MDTCqtOAQMsxIHEFTSZ47ty7ju/J5+Qc2/7lITs2zTDc5oTek+2uiB
 7Yef0UgtIPGC29s3Bn540ZfiI50vVCIHhmcGKvtrOOftq/M2XKXzWcQ2U523/012fE+DSIUr48N
 O/su7D3KzW7sXQZqgZ1XZCBuIPTyGFYrQCxGypbzq/WZjO6NQ2/dmxQE7++j/u4i58QvF1ZbaTb
 eDCb8VDbDIzLzBKnEzHqrIwVE1y/Bcxe+go4+Tn9q3bZz1/6dpY6M+bhwQXBGB0fFbIicpVR+CF
 oIp37n39DHLqTlTDnng==
X-Proofpoint-ORIG-GUID: 6AaLAGOmcpANUKNdoSyxDgF40Y4cz4kr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 impostorscore=0 adultscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_063325_456693_832045E7 
X-CRM114-Status: GOOD (  26.17  )
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

On 5/19/2026 5:17 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 5 potential issue(s) to consider:
> - [Critical] Incorrect PPI numbers are specified for the ARM architected timers and GIC maintenance interrupts.
> - [High] The base memory node specifies an incorrect start address, obscuring 512MB of DDR system RAM and breaking reservations.
> - [Medium] The `sdhc_1` node incorrectly references a power domain specific to a different SoC.
> - [Medium] The logical `cpu-map` splits CPUs into two clusters, contradicting physical MPIDR topology and shared cache.
> - [Medium] The `usb_1` node is missing MPM-routed interrupts for USB 2.0 wake from deep sleep.
> --
>
> commit 32b9841bdefaa72fe3d5267070711875edaaafa0
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>
> arm64: dts: qcom: Introduce Shikra SoC base dtsi
>
> Add initial device tree support for the Qualcomm Shikra SoC, an
> IoT-focused platform built around a heterogeneous CPU cluster
> (Cortex-A55 + Cortex-A78C) with RPM-based power and clock management.
>
>> diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
>> new file mode 100644
>> index 0000000000000..31d0126e5b3ee
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
>> @@ -0,0 +1,981 @@
> [ ... ]
>
>> +		cpu-map {
>> +			cluster0 {
>> +				core0 {
>> +					cpu = <&cpu0>;
>> +				};
>> +
>> +				core1 {
>> +					cpu = <&cpu1>;
>> +				};
>> +
>> +				core2 {
>> +					cpu = <&cpu2>;
>> +				};
>> +			};
>> +
>> +			cluster1 {
>> +				core0 {
>> +					cpu = <&cpu3>;
>> +				};
>> +			};
>> +		};
> Is this logical topology misaligned with the physical MPIDR topology?
>
> The CPU reg values (0x0, 0x100, 0x200, 0x300) have their Aff2 bits set to 0,
> meaning they physically reside in the same cluster. The A55 cores and A78C
> core also share the same L3 cache.
>
> Does splitting cpu0-cpu2 into cluster0 and cpu3 into cluster1 violate
> DynamIQ specifications and confuse the scheduler's task migration and
> domains?
>
> [ ... ]

The hardware MPIDR for cpu3 is 0x300 (Aff2=0), confirmed by PSCI boot 
failure when reg was changed to 0x10000.
The cpu-map two-cluster split is intentional and correct for EAS 
scheduler topology (separate performance domains for A55 silver and A78C 
gold), even though all four cores share Aff2=0 in the same DSU.

>
>> +	memory@a0000000 {
>> +		device_type = "memory";
>> +		/* We expect the bootloader to fill in the size */
>> +		reg = <0x0 0xa0000000 0x0 0x0>;
>> +	};
> Is this base address correct?
>
> The reserved-memory list allocates memory regions well below this address,
> such as hyp@80000000 and smem@86000000.
>
> Does starting the system RAM at 0xa0000000 cause the kernel to disregard the
> 0x80000000-0x9fffffff region, effectively losing 512MB of RAM and
> potentially causing the reservations to fail?

Will fix by updating base address to memory@80000000.

>
> [ ... ]
>
>> +		sdhc_1: mmc@4744000 {
>> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
>> +
>> +			reg = <0x0 0x04744000 0x0 0x1000>,
> [ ... ]
>
>> +			interconnects = <&system_noc MASTER_SDCC_1 RPM_ALWAYS_TAG
>> +					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
>> +					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
>> +					&config_noc SLAVE_SDCC_1 RPM_ACTIVE_TAG>;
>> +			interconnect-names = "sdhc-ddr",
>> +					     "cpu-sdhc";
>> +
>> +			power-domains = <&rpmpd QCM2290_VDDCX>;
> Is this a copy-paste error?
>
> The gcc node correctly uses the generic or Shikra-specific RPMPD_VDDCX.
>
> Could referencing a QCM2290-specific power domain macro here result in the
> hardware attempting to scale the wrong voltage domain or cause an
> out-of-bounds array access in the driver?

Yes, that's a copy-paste error. Will fix it in the next version.

[ ... ]

> [ ... ]
>
>> +		intc: interrupt-controller@f200000 {
>> +			compatible = "arm,gic-v3";
>> +			reg = <0x0 0xf200000 0x0 0x10000>,
>> +			      <0x0 0xf240000 0x0 0x80000>;
>> +
>> +			interrupts = <GIC_PPI 8 IRQ_TYPE_LEVEL_HIGH 0>;
> Is this the correct PPI for the GIC maintenance interrupt?
>
> The architecturally mandated GIC maintenance interrupt is PPI 9, rather than
> PPI 8.

Will fix by changing GIC_PPI 8 to GIC_PPI 9 in the next version.

Thanks
Komal

>
> [ ... ]
>
>> +	timer {
>> +		compatible = "arm,armv8-timer";
>> +
>> +		interrupts = <GIC_PPI 1 IRQ_TYPE_LEVEL_LOW 0>,
>> +			     <GIC_PPI 2 IRQ_TYPE_LEVEL_LOW 0>,
>> +			     <GIC_PPI 3 IRQ_TYPE_LEVEL_LOW 0>,
>> +			     <GIC_PPI 0 IRQ_TYPE_LEVEL_LOW 0>;
>> +	};
>> +};
> Are these PPI numbers correct for the ARM architected timers?
>
> The architecturally hardwired ARM core timer PPIs are 13 (Secure),
> 14 (Non-Secure), 11 (Virtual), and 10 (Hypervisor).
>
> Could specifying these incorrect numbers prevent the kernel from receiving
> timer ticks and cause the system to hang during boot?
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

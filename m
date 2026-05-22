Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64069CD5BB4
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 14:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G38heFgvbAUXJ+AYhAAPCMexpQ1t7U8/pRjBjjvmhaY=; b=KCwEWcxlYy4FEs
	HMs9umtNY2ECnqING8V3CXXb3n+Sh9F3Mjai92UJsRuG69kxIo176CQB5V8zmB7YcJZw/E0qZrztZ
	e9DBNF1aJs4cck6vySQZr26Ht5nBA6uJOjd2V2EtXI09ByHFVRbwb47fb0U9FCXExHP7F5lR7c5cq
	idsPhy5c0PsPu3MrXJXc0f8zy6ljt/5xP1Cfse/oreHAOY+e5yFltqa3qvNqDzmwJU2fI7iCOAdYE
	M9XzAUaREdFoq6ZQAK9cfPbWdof3UXtiCmx7DVdY7YEDQqkkzPlEI1/K8jX2Snyp9I6zy0yaDfHN5
	i4/WJknsLdNYZff3spyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQr9-0000000B8IX-3DxY;
	Fri, 22 May 2026 14:28:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQr6-0000000B8Hi-2EqV
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 14:28:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MB3ADp777951
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 14:28:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hDhAoltlaw1s+bb8wQYhsM+Av96Qttuem2tUfK7aq0A=; b=iKoFTCqSXvCgnqfQ
	wePkIcOBt143vhk+Uq5WxLeW5XnBrzyplItZOV/RZRBzsx9Ea8eZvKnmA7WZ6Vei
	mDQYIWItIsr5ovkwKOojFKaa1Z8riLeEVe65FS+NqQ0TH2bNImDJcq/Gt6vc3eua
	x3Lwf5TMHtEkITBiAhd0RFQ+1CsX7JgdQow09iL05Rp8TvHK7pj2C5uXAYH1sB7a
	S0XdwBR/oO3Lba26wFDz4EwDbS0vrBWxs1oOQePtHZbaixx3zIGfAs87DSRdsJ/V
	2UNDi+IOtV9L+g2QZf/hWsvW2wsDsjnh9Mv+TGeejDSB9XicXjF+4WdUMiEicNpf
	WvxxIQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea94h3vqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 14:28:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-837d0d71c61so3799455b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 07:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779460082; x=1780064882; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hDhAoltlaw1s+bb8wQYhsM+Av96Qttuem2tUfK7aq0A=;
        b=jQpSjXoYl+9Cq2bjGBZmP2si+0KSKoBiCEdrGQonpoqiZKeJDFpmgjz60DMg9DxrQS
         QOebotKiR4xV3dStKlaQJhqQCNsQECfyCM91H0mY9HyHE2bNC8KM7t3u/y/6Tt1uckhA
         sE0326MMfXfvJyo+INfVvGG8pydmmPheGmrYL6e8MrnSAYQ/FtiVpnRr6nz571BRJHo+
         tCTNIacHsE4JVMdwugVMmvScGVhEjxXfBLH8prEWVHUZbDEHFYb8KVFgW9OurSiX1+1j
         gCTtYq0wA4ePPF2XCHovcSh7X/HK3AiR+aLbj67fn75kqWn8BW6RU3JHC1rxCAZrB6n+
         i7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779460082; x=1780064882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hDhAoltlaw1s+bb8wQYhsM+Av96Qttuem2tUfK7aq0A=;
        b=QHxPd+fbV4Be6uXB0NzSUeHzVZQaodXxjiwdpoX8H+V0csVXJSKcvDfObEYuFw592k
         8vpiSxPpzxQzNNuyWCJPf259I+wBCxvCiagfJMxDLoi9CO4Y0ZVdlWZ6ui95DHKEZ2wM
         lITYyZyVKU2+y+q9GRhmM6tNQ4Ls+F8A+qhmtEDYERu5nnHq+F0YvOvCdUd8CIpAlZ+d
         DF/daP2sQoe2hNW95J2RXyzKyKwgl3Adv5Mz70Ct4otwVrww4N8wNtAFlR6cP+6JYdv8
         9h9yfguSIs8RUIVgBTzIXzh5ZcZJG5V6vX6JeJR93fzJyExquAbSG2MQrYa84eJkNTQ6
         bwkA==
X-Forwarded-Encrypted: i=1; AFNElJ/FUTEHHuq3OIkeU44ccRrh7afLkodAMHc4yyUez7CG06HLP/YNhUQGwKi6ju9Ah3hwcnDvuZhH8eE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7Aac5pdUszuuuaNh2u7Y/E6Sv340V817DtYNkXdmPSWKr9mWG
	PZlSpOhLab9D76RQv1O650qI5f7Fdv3/FUt15RMnQOSWVkjw0VcyKTUMMCgPBROmV7L7nAMZZHl
	Hn8paZZ64XJMsf900lUzxVKJ/WjV045obpMEsVmpg3SU/yApO1AYdOvA7RoaM37vtqLoCLiiJ6X
	px
X-Gm-Gg: Acq92OEejd6Rht770KFITE7EsyzKJDPXYaWt153eGkR46spDb0kmsFJNId79hQ4TNhz
	o6hRHGFzyP3I4U5kZLSPzHfscpW7VVKlwyCiPwU4kgEU/YuCRPQV038mJ1lv3NiBTgJa5Z+wCW/
	65uicJ4djvGBUVKc7x9Tv+79S6GY+a9CnJLNQBsurSY/NZFw60iyBTANuePcGEpCNvUQttOdYOH
	Ivk43DbdS9u2o1YXir8tNhsjrISAAnqqBCj9P+6o0Nt7TZmb38MRma93HGu8q/+eVU4JYPn2ATD
	z4A6iic+hOmrgRPBrgWlu43CI+ltQ0FWh2aZeUXpyERCG+XVca9lVUixQG2e+Ril+eSmi0TxHbW
	DLzIJV0pQnWxwIj7rwGAVe+IqzAl45w45whCFygGlGSMRTz+s
X-Received: by 2002:a05:6a00:cc3:b0:82f:9985:d4a1 with SMTP id d2e1a72fcca58-8415f5a64e4mr4193237b3a.24.1779460081897;
        Fri, 22 May 2026 07:28:01 -0700 (PDT)
X-Received: by 2002:a05:6a00:cc3:b0:82f:9985:d4a1 with SMTP id d2e1a72fcca58-8415f5a64e4mr4193196b3a.24.1779460081319;
        Fri, 22 May 2026 07:28:01 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164fd8127sm2039826b3a.50.2026.05.22.07.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 07:28:00 -0700 (PDT)
Message-ID: <b6d9cc45-0218-4186-88c1-73a2a57f5ab4@oss.qualcomm.com>
Date: Fri, 22 May 2026 19:57:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: Add Shikra CQ7790M SoM platform
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com,
        conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org
References: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
 <20260519120238.1C84CC2BCB3@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260519120238.1C84CC2BCB3@smtp.kernel.org>
X-Proofpoint-GUID: xKJT9W45LmuSRjexrAocHiHjZdaUXFnE
X-Authority-Analysis: v=2.4 cv=QblWeMbv c=1 sm=1 tr=0 ts=6a1067f3 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=DQnpCjiGftk-ZKpXLgcA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: xKJT9W45LmuSRjexrAocHiHjZdaUXFnE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE0NCBTYWx0ZWRfX+PfNQ5NWlkeR
 JLJJLfI9aU3sfOaPsdWDRfMqX3b/hzUq2Xpi1H+hoOMkPIksYAaWNqlrJxXNvHn/S1x8AMg0DRs
 zsrUmlXK0syFs5MkY90NOYgANjWnMJyEd5OSD58RgQqixg2g9j96v5wpryNR2cF88uikdegiz72
 ifQXW03So/3DNculNdA5/Y6afTTRXqRlEasiKd/jiHI3Ngv7IizjqD8mY5Ec+UxP9ES00L9qHlr
 AIHrLmvPUBcS15m2k827WuhsYud6gPt8gXZtGkn+RpNnNSn4czQLHN4V0dM/OM29Clfkx/bas6l
 ryG9My/bZziA4jBs/Y+J9yl4uJINs/bE7bIejzy89WRGuVOD5iQIyQnarZoQdbCfIvtrKE0McwE
 nEpXyBxOOOQg4+rDTvEkoJSLqP7ELBZQeHnmXbrd/iT4gzgaXG+kXQ7YuuxWWiQMAKvMJLI6x+9
 0YOlu+L5MUUNQic8S1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_072804_698437_457F2EAF 
X-CRM114-Status: GOOD (  20.42  )
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

On 5/19/2026 5:32 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] The SoM device tree partially defines PMIC regulators (LDOs) but completely omits their internal parent SMPS regulators (S3, S4) and the required supply linkage properties.
> - [High] The SoM integrates the PM4125 PMIC, but the device tree include for the PMIC's SPMI components (`pm4125.dtsi`) is missing.
> --
>
> commit 1edd30ea88da411f667f786ef5494cebf1420c78
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>
> arm64: dts: qcom: Add Shikra CQ7790M SoM platform
>
> This commit adds the device tree include for the CQ7790M variant of the
> Shikra System-on-Module. It includes the common shikra.dtsi and adds
> PM4125 PMIC regulator definitions specific to this variant.
>
>> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
>> new file mode 100644
>> index 0000000000000..401e71720519d
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
>> @@ -0,0 +1,112 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#include "shikra.dtsi"
> The commit message mentions the SoM integrates the PM4125 PMIC, but is
> pm4125.dtsi supposed to be included here as well?
>
> Without including the PMIC's SPMI components (like pm4125_gpios,
> pm4125_pwrkey), it seems carrier boards won't be able to address or utilize
> these peripherals.

Will add in next revision.

>
>> +
>> +&rpm_requests {
>> +	regulators {
>> +		compatible = "qcom,rpm-pm2250-regulators";
>> +
>> +		pm4125_s2: s2 {
>> +			regulator-min-microvolt = <1000000>;
>> +			regulator-max-microvolt = <1200000>;
>> +		};
> Does this regulator node need to define the internal parent SMPS regulators
> like s3 and s4, as well as the vdd_X-supply linkage properties for the child
> LDOs?
>
> The driver drivers/regulator/qcom_smd-regulator.c expects supply mappings for
> pm2250 (e.g., vdd_l1_l2_l3_l5_l6_l7_l8_l9_l10_l11_l12).
>
> Without representing this fixed internal power routing in the SoM's device
> tree, the core framework might not be able to correctly manage the parent
> supply voltages and states when child LDOs are toggled.

This can be ignored, refer discussion:
https://lore.kernel.org/all/20260519120238.1C84CC2BCB3@smtp.kernel.org/

Thanks
Komal

>
>> +
>> +		pm4125_l3: l3 {
>> +			regulator-min-microvolt = <624000>;
>> +			regulator-max-microvolt = <650000>;
>> +		};


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

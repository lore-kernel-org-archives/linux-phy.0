Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5806ACD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 09:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AV9B7FwO3AY/jWrbeAT0oEGFOO255yMV3jC+75rakVY=; b=JyZRc07AEe5+oi
	sOtswq/xkevW7WVL6VpByj+Dx3cyyTJia0UPFxktxDJgsC+yppKq5MWoXycjxs0Z+tKsveALRluIL
	rZOk1lxFOWqX2B5w/It/WRByyKNRT3IJCZRqyXax62stFEwQtHI1k7ds0vc7OakJv1Lr4CCHtPyvA
	B3j15f2L/Vlh7Saqt7q5pVHnkXnm0BmQgO6UrWRkITsfHxXr4i2MZLzBJYS97Xo8UnNvLbqC3CR8p
	BWowUAKDLdDPYBjB58aUT2DOFHbuotEKia7J/uj8DNVzCujt1gsaGN4ELZIsVTIflnUFZFhcJM/sb
	ccX/eUdCU3tJT3D/cl5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPH5H-00000000zZQ-0K7s;
	Tue, 19 May 2026 09:49:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPH5D-00000000zYI-3vws
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 09:49:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J5dlDv2701093
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 09:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sBtjktn/3wn6yr624wkAeDkkUIrRoZ3BsNhBAG45sVA=; b=pISHkWUPdBue0n01
	/v+xPTDZ3RzcD3gBuSSDVUfiqPAFV1mAwVVTMVv+NA1UGFoc3K5p2dYsLrBBMSx3
	mAHkdgFXdyTmcm6xHT6rJlill3+NJeOSyMJ9Q2iEI+oYtfUeZxrc6U4cUXv/EcF6
	FcbaZ84ZXlzestGVKPUzE7QMnSb4muh3vzj11lLKUBIdbO8PXnHUWRncbjM3co7U
	crJTGv3uS7A1hr0jpg8iQMBZKPj4cD+47SzyTasSSqZN0JALKP35+c0EgUp5u0lu
	c7lJMYpvUAXKq4cnSYHzpz7a+zFlvOs5zdtdKFyvip9r4Oxw2vWcHgIUcR8aStd1
	ezDbpg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e82memdrv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 09:49:49 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2babc42244aso83422645ad.3
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 02:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779184189; x=1779788989; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sBtjktn/3wn6yr624wkAeDkkUIrRoZ3BsNhBAG45sVA=;
        b=MiSZWm+0x/bD40uzC7yEe8kQSXPMOa+PbK9mfSeTfyCr4VEn4KCwkX6VhLmJ5PULf1
         DDcebE4jf4pa/E2/gcolZYDZ8frMlz9X6/CFgKFFUmb1/WIt6XMlL/9kqK5ePN7pXCqC
         QTo6juV0oPbRym+bQWQUQzVCuSftguRP/SrtOZ3rJUooE7ObnOPcJG/uWXy/7H20CknZ
         IlDWJ79bSrhZ8Q35m76vvbiTSOA8q9FpND70EfBmJCB46/NKbHzUbW6tjeAGCCtRLtqG
         f4vM5VrE4a6Fo7xjsfi4UAW3mCfLvkaj/O8lZs5FRcLZZ0Vc8lHMyHO0EC/Ks93Ywo7r
         LHWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779184189; x=1779788989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sBtjktn/3wn6yr624wkAeDkkUIrRoZ3BsNhBAG45sVA=;
        b=iaum2JPywk34/oP5yW0foZhDomLCqKh0ygxRJvnoIZ4WrS93vskjVa4WPtXTvcJR+t
         gLwxk7CINKXLDvAwXUpLJddKl3ioTOWRKhAdAOTJA+GH4pdR7e85XAP9lxvJjUhv67LD
         Zz8Zk53QektODIfnfd0/UyxwVa/qzRGcv83tBavLWbFHZg1jIUS7+kxfFZnx3c/KmKS/
         vSRaCAjPPfrMLew+wPFTculgIsKGvJldk1yvKMBVP1NYQFUhcu9N67tCk4l3bST0WPIy
         AQ6xXdVuEPeL/ZK7+XmASp5Tk1KB/R6UFmWnTFXMScDheGo//jjJxPEfAn5Wy1vV+/pO
         UHQA==
X-Gm-Message-State: AOJu0YwIl40h1Ksum1z8pn/YfXyC1Z7RBqEViDf46qJcme62FY3mTy/2
	afyphBGy18qzM5AjHyk6goylavh/TI48CZCzLCjyDgFQiDVUla2yvx55zSaj9SA/Xvvuo1ddeMN
	wSSlND15QGEoXibiY5xgCF3TYfOqGCruBj4+eYv/1ApuSXiVsbromDv1dK4MbtR/q9k7e
X-Gm-Gg: Acq92OECiRjfy4XI6YUwlivK8vYRJ/s1Y+WUxO8yllBr56MgbMqWJgwXWevtP+UsKpk
	OI/cQNpjjzjlT9BAYLZZ+t5afvobRv8OqZ4OQ/QfkdLIQMnHDvmGQojAo0xP9B9ls0CtkLZ3wdr
	lc37xXaqRE1oT1tK9ro2sTcYxLYxhcqM7scyYz1E60kSYE4tvpn5WBiqb8cycCp/1hjEvGPbyAk
	cWmOBzEYO3GcgCjSF/tn1BSQmZcIU34uo98Etm/s9lvpazbiylW39SGYb5SfYuVQZ5HQ4QkafW3
	YV+TRKPweQJRrv1sUjCGNj30a6wSc4OdWsHbper3D0Tj9f8jPhskoL59GgwKCdEsVmMF+WPOQ+9
	bIKvK1BHKApnn5Y9PYqhRa4G7VpRFSxcWvP9ewq0lFlVdUTBBVOVPze7Anj8=
X-Received: by 2002:a17:903:44cd:b0:2bd:6732:6817 with SMTP id d9443c01a7336-2bd7e8d3578mr136422975ad.23.1779184188789;
        Tue, 19 May 2026 02:49:48 -0700 (PDT)
X-Received: by 2002:a17:903:44cd:b0:2bd:6732:6817 with SMTP id d9443c01a7336-2bd7e8d3578mr136422675ad.23.1779184188242;
        Tue, 19 May 2026 02:49:48 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5cfe6b8fsm186570885ad.46.2026.05.19.02.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 02:49:47 -0700 (PDT)
Message-ID: <0f79dcff-0676-4e83-8f85-6345313f75d6@oss.qualcomm.com>
Date: Tue, 19 May 2026 15:19:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, neil.armstrong@linaro.org,
        olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org,
        vkoul@kernel.org
References: <20260512-shikra-dt-v1-2-716438330dd0@oss.qualcomm.com>
 <20260513040623.03F36C2BCC7@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260513040623.03F36C2BCC7@smtp.kernel.org>
X-Authority-Analysis: v=2.4 cv=Tr7WQjXh c=1 sm=1 tr=0 ts=6a0c323e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1Btu4tQq9WNLzPClb6kA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: mmASqjrfjZBomb7t68H6Q0TMFVO8frUS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA5NiBTYWx0ZWRfX6/yDTXWYbGib
 Bwbublyssfl39ltRMxfhlS39IYegO7w0lX1Vig+sSD+vOIjGq5GEQwZ7+UloTduuDkX+Z7V61Jt
 Denv61MljqBqBHTDi5HW6dlOfCbRy/4Uw5t3kPUWhYCe5aSxDcM5QAAcObRYIC3ANa0+mTnbtoZ
 JgAb/lNAYvMCJ3LEZHc0MUCajNfzJGsH3lwad5J0dN0QuKLeili2BybXVgHxNkmKr0KHf7FuSKn
 zmxiP+DxpMl1poD6oO8UiqbRDSzLQuzxWozHoIGVPIvBjXfQiCLaS5LWxBnzMAEEBUSUOo/znk+
 yvnhUfZDoA8juyWagzbdTUiNXaDa90z2TrJqnTiqCbe0wJddgNga9qHE1aUHrATOJmRrlBfta/W
 KpktbEKbkJTi3BMFYSbKM+iXMvh2rYY1Uc02hAouOsvNDHKM/v1bfZjYyr1PgcV5RlOQ1ZgltZQ
 Ay1JD566KhzDJGGrxnA==
X-Proofpoint-ORIG-GUID: mmASqjrfjZBomb7t68H6Q0TMFVO8frUS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605190096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_024952_196315_68BAE9AE 
X-CRM114-Status: GOOD (  22.47  )
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

On 5/13/2026 9:36 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 4 potential issue(s) to consider:
> - [High] Invalid PPI interrupt numbers (1, 2, 3, 0) are specified for the ARMv8 generic timer instead of the architecturally required numbers (13, 14, 11, 10).
> - [Medium] The `sdhc_1` node incorrectly uses RPMh interconnect tags (`QCOM_ICC_TAG_ALWAYS`, `QCOM_ICC_TAG_ACTIVE_ONLY`) on an RPM-based interconnect topology.
> - [Medium] The USB SuperSpeed wakeup interrupt (`ss_phy_irq`) directly references the GIC instead of routing through the MPM, breaking system wake-up from deep sleep.
> - [Low] The `sdhc_1` node uses the undeclared macro `RPMHPD_CX` for its `power-domains` property, which will cause a Device Tree compiler syntax error.
> --
>
> commit e2ee94ef3a5741f2cb9aae14dbef52c5f4a760f1
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> Subject: arm64: dts: qcom: Introduce Shikra SoC base dtsi
>
> This commit adds initial device tree support for the Qualcomm Shikra SoC, an
> IoT-focused platform featuring a Cortex-A55 and Cortex-A78C cluster. It
> configures RPM-based power and clock management alongside various peripherals
> like USB, eMMC, and the generic timer.
>
>> diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
>> new file mode 100644
>> index 0000000000000..262c488add1ec
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
> [ ... ]
>
>> +		sdhc_1: mmc@4744000 {
>> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
>> +
>> +			reg = <0x0 0x04744000 0x0 0x1000>,
>> +			      <0x0 0x04745000 0x0 0x1000>;
> [ ... ]
>
>> +			interconnects = <&system_noc MASTER_SDCC_1 QCOM_ICC_TAG_ALWAYS
>> +					&mc_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
>> +					<&mem_noc MASTER_AMPSS_M0 QCOM_ICC_TAG_ACTIVE_ONLY
>> +					&config_noc SLAVE_SDCC_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
> Since the Shikra SoC utilizes an RPM-based architecture, should this node use
> interconnect tags from qcom,rpm-icc.h (such as RPM_ALWAYS_TAG) instead?
> Passing RPMh interconnect tags from qcom,icc.h to an RPM interconnect provider
> might result in unhandled parameters or silent bandwidth request failures.

ACK, macro to be updated as per the RPM header. Will update in next series.

>
>> +			interconnect-names = "sdhc-ddr",
>> +					     "cpu-sdhc";
>> +
>> +			power-domains = <&rpmpd RPMHPD_CX>;
> Does this power-domains assignment use an undeclared macro? RPMHPD_CX belongs
> to RPMh-based power domains, while this platform relies on RPMPD. This looks
> like it will cause a dtc syntax error during the build.

ACK, PD to be updated as per the available and compatible power-domain 
as per the architecture.

>
> [ ... ]
>
>> +		usb_1: usb@4e00000 {
>> +			compatible = "qcom,shikra-dwc3", "qcom,snps-dwc3";
>> +			reg = <0x0 0x04e00000 0x0 0xfc100>;
> [ ... ]
>
>> +			interrupts-extended = <&intc GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
>> +					      <&intc GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "dwc_usb3",
>> +					  "pwr_event",
>> +					  "qusb2_phy",
>> +					  "hs_phy_irq",
>> +					  "ss_phy_irq";
> The mpm node correctly maps pin 12 to GIC SPI 422 for the DWC3 ss_phy_irq.
> Could routing this directly to the GIC here instead of hierarchically through
> the mpm (e.g., <&mpm 12 IRQ_TYPE_LEVEL_HIGH>) prevent the hardware from
> waking up from low-power states upon USB activity?

ACK, will update to use MPM for ss_phy_irq instead of direct GIC for usb.

Thanks
Komal

>
> [ ... ]
>
>> +	timer {
>> +		compatible = "arm,armv8-timer";
>> +
>> +		interrupts = <GIC_PPI 1 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 2 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 3 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 0 IRQ_TYPE_LEVEL_LOW>;
>> +	};
> Are these PPI interrupt numbers correct for the ARMv8 generic timer? The
> architecturally defined numbers are typically 13 for Secure, 14 for Non-secure,
> 11 for Virtual, and 10 for Hypervisor. Using invalid hardware IRQ lines here
> could prevent the kernel from receiving scheduler ticks and stall the boot.
>
>> +};


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

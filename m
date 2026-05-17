Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B909CD4F3C
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 18:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ct/Y+OU2f5ke5LRdoteiH9Qqiu2g/TCAojGstyTONFU=; b=kAfkp/B6JMBBkX
	gqWGVv21xR8OAGOoDA2vjFxffbNjTG7wimZm7Rn5Cs8avOXV/4GKKTkiGztIwQaezN1acgKkdxor5
	E9KyeETQVoZ/3yP21brYyXFLThUhro4SwqIxA9Z9f78gtUMgydKU9Hr9zuoZf56kmip5a4v5HJP9D
	GaTugGC8UBAb0umMMufk2GwtlwT6n/bqjE5m1AZv8pUVx6V/urTV0mizeXP4G3U34X/inWOfkbyer
	03mA9NVX9r45DqC+1RL8njoR6+YVmfZ3pRUxoaDA5LufhU69pKGtM6vU8wrTlS02+t8UQQPYjiCJ+
	b7h6rpfdhYeEg5juUO0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgdn-0000000DH0j-0a3d;
	Sun, 17 May 2026 18:55:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgdk-0000000DH0A-3skL
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 18:55:06 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64H1Cj8r1672239
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 18:55:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uvotslgmuBxMjV4vyIrw83t49BBKhTWX250EySC5IBU=; b=BdhC3kJZ8j191vgZ
	wXQhTlW4q879b1VEnlS0m6NYHU9Y8JvKhOekIBK/8/osCzUghd/GXNK2T/oYOBZp
	1WCO22orpCnV6aoAudY1KbOLSh8n9OQIqgby2BpV/ltpOb2DicKksNvUElWck0u8
	bH15I1sbH6fb9NqQsY9VxtYG/6dVnbof1UMuEU/MJAkNIy7m8An6mNSv+jM8NNub
	H4bo3uqngLmozCQD1T9WuUIyxBZiW6OsMEexS8J+U4uiQheO7l/j5/fvdYr5SfRe
	cFAjTKX3erdcpPunEz7Ec0NNCel/6KzS1g72Dkc7aIi73cnNulkWagZT7Le3SAoM
	lGMZJw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6h0g3crd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 18:55:04 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bce224720d8so587488a12.1
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 11:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779044104; x=1779648904; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uvotslgmuBxMjV4vyIrw83t49BBKhTWX250EySC5IBU=;
        b=IbJT8obrYuiHFk3iDXSqvYmx7rXKItamMXfOTQOlxcoV0xLCRI8niwhfNeQZzqi0Yb
         scgdGqu7cjloy2cpTSwo+pldGfHj5fm/ikvIe7UCk2b5OL7IRzcenveczgYk9fn8lXso
         gjIBmemgGWLHvWukGMaktEDUFSIIqFqp+8DRSnfRzJ8fc2CGr/2xCdHT+FOkdVvhm8sk
         ViuymJBjS7KmQvnyoR/ZNs8Z3pEYFRIu1RDDb5PCii+dZANsy/ZLLomcrOVgGO57Irru
         aqGjYAlczvciWua36FyZ1pcU4u/qBm+NYXaUwFS03s5QfTxaxn5G5mDV1oUJ+yB3gG7T
         dsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779044104; x=1779648904;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvotslgmuBxMjV4vyIrw83t49BBKhTWX250EySC5IBU=;
        b=rX+PMZkxnq7Q7TXti+aTSmJC7zl2I1f137XbnU8cLi8BuHialIIz+mNXAixLWnBK03
         ril2gakHi2gkQBW6ZsX+jrKsXREj+6go8QNpPUZ3QIDAMOcDpBgCWcD2PshN1kL5Tb3N
         AqGAe+5/VdnuOo4ui5cDA6nBXV8dk/L2/OXpAuDoxSdoJM6m8wJq91cpOQjWNAq+RkIf
         Jj0vv5OzZSB3IW1rlisMNV+Ukn3pCX8fPGINtNfvKKOyJ1c8wDxFrarvSn70ykD/+f1h
         BQa4lOYqj831cVCjTXqUlbNyyuGqoy0pu1AiS4ArVLKmLsX2R3KfNrnyK2zcdrSnv73T
         AGMA==
X-Gm-Message-State: AOJu0YyhVTS0ti+HRM/6XiYSpttv+gAhGbNgRiYlzZ0OAJc0J98NMgBE
	2fXi98laJ0K0AErBIZV7MNx3fsXYxw5hvEV4C24uxHB70Dwo8CyqLYmA6/ZyDe22mWJNc4ALag4
	Ncan5c7OuP3u3A0WdionkOZpvYzf/pSlv9bbgnK9dOWZ25R2TicNlsWDX/Kc4xjKKvJhb
X-Gm-Gg: Acq92OFQKo2l9t0WdIbKuQC7/N4qqfix69DGQZieC6cYz+qDTT7IJOWm5uJNE/zG42J
	m4AEvUrIxaaXFE8jXojsyEvHQw/xYThnTrZjTxSi1EPKvrRPFutLMuaf4CNT389AN6/snBRpcQp
	uIan9Q5c20PztcSwE+YHuENbYUOGzY4uDezbNbLqnnM16+t2I12/krorrJoRdNXaBiVC5cYCJhM
	EyxWvmgfIHC3qexWwiWFDzAp0DYq1pwfimQpitGnxLW8615L6w/AVF6xUETqnb5o537RH3HkZXa
	z8suGToO8gvpvtshL04WY0LMasVbh+7dmcazkDR59/ue2d0C62LIzXXGRTSGmoJyccMn4F3bWpI
	eeox2fBv4BYPvllmxauS1DUnh22EOsLkFir3vFgd6FlxM5/ueZNM=
X-Received: by 2002:a05:6a00:2793:b0:837:40f6:cb88 with SMTP id d2e1a72fcca58-83f33d39d8cmr11942502b3a.26.1779044103495;
        Sun, 17 May 2026 11:55:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:2793:b0:837:40f6:cb88 with SMTP id d2e1a72fcca58-83f33d39d8cmr11942486b3a.26.1779044102990;
        Sun, 17 May 2026 11:55:02 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.235.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19663cfdsm14550673b3a.9.2026.05.17.11.54.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2026 11:55:02 -0700 (PDT)
Message-ID: <17e87f6e-fbd0-4787-aab9-d3a32de44887@oss.qualcomm.com>
Date: Mon, 18 May 2026 00:24:56 +0530
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDIwMyBTYWx0ZWRfXx8ZmsWXltRPd
 0zbeqec7D8Cyf5RoHK06Gs3ZqeRo4fyNQjZEYjBKNg35Q15Bm9GZxE49jiTXC+JXd7SUdR/QSFN
 PnGvQYTRBF5+M1VStuzNIRJweB6Wec8Dtf1w5CG8lWeMGS+ve/mZDEdivayjtLVSISeH6zFO4c5
 8j8TkJmKJ+sgJBf347JEbgYrfRGKOJ2ED/kNu8y22N781siRIIeXYYNT696wrhQPxTk2jzEQmRC
 GCmA3YwmUzh6rftf/F5AqJxy2MDENbN1SfOflE6JC25xEe+rtb3yRCnC2OztqXUhjLwgE77fRX7
 WDysFMh9aUQDcOByTiEhigCjRoCflgw6pGO7zkUt2oWh06BaC0jKRkc8xYUNqp4IOZJo+HPAZQB
 9LQyNzb8SEWyHazH88o5YgkagkSmU4z1ZMMgSkoyDpvCXBhu2LXHqqsU8Nf9ey+GPMpT1EXHwDX
 d9sDLTxnlAtEob3NUGQ==
X-Authority-Analysis: v=2.4 cv=W7gIkxWk c=1 sm=1 tr=0 ts=6a0a0f08 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=g4/7f0GlZvY0MGcqtTB0Sw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1Btu4tQq9WNLzPClb6kA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: afleNijK54UckCgW-wK4t2pr4zmU-s96
X-Proofpoint-ORIG-GUID: afleNijK54UckCgW-wK4t2pr4zmU-s96
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_04,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605170203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_115504_977457_9BACBDC0 
X-CRM114-Status: GOOD (  20.94  )
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
>
>> +			interconnect-names = "sdhc-ddr",
>> +					     "cpu-sdhc";
>> +
>> +			power-domains = <&rpmpd RPMHPD_CX>;
> Does this power-domains assignment use an undeclared macro? RPMHPD_CX belongs
> to RPMh-based power domains, while this platform relies on RPMPD. This looks
> like it will cause a dtc syntax error during the build.
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

PPI numbers (1/2/3/0) are correct for Shikra. It uses the same older 
Qualcomm GIC implementation as sm6115, sm6375, sm6125, and sdm630, which 
all use these timer PPI numbers.

Thanks
Komal

>
>> +};


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

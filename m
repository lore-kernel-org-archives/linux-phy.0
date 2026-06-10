Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 671C9CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uDfj4maMAal1uiVd7BTW85Fa0QFpYVwdjdJBpg0++g=; b=xTYQCHZh09S/Ld
	2eUzjNQcH4U0hvbabN1jnGPUpFDzVKtR8yFQT4Qp70+oYgsRYIS+tfctZxFyTejPt3HokG7cOkM/0
	VtUseG4yr6I1P18j0BWp4aZ7HZ5bN1lpVrhqfbx2KE1h+SihFQAUSp2VP9TkGXaZI2busEDVcMT5M
	YQp+FQCauZK6Cj7j3eLUo0plvVxzhPEqhz4Tu1NR3smkJgL4aTmZ9mYe2RaGWwbmyx+NQRn3FUMRK
	WAxwBg+/qWIjAYSciKDkF3CwDPOUr+IPoq7Cc4DU70QJcPvKDnVrqplkCeDICrs5/mk9VtWECt3or
	miGoCvKYzlZHCwAcg8Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJ3s-00000007mgf-041b;
	Wed, 10 Jun 2026 13:33:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJ3p-00000007mgH-23wh
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:33:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBgAq1134958
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:33:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wir8yRgBm5lDK5u6u5oiz29nk7aruaK9GHY7JmhUKaM=; b=TcacYaBdx9GGqTgF
	GTgKtvwQLx94hjGwJLd5UXoXpGAczFvfoinq49yxWMBqiYOXxZiBnSbw6nZrTuea
	2ZenQ08LWd/+rCLvB4lWJPOV14hGhgyvP0lIsmvGaq/kOHF/AdH604BP8xPajjsZ
	vrTImnZUW+7k/q6h1CzMC6AY8e/u8UxSGcFjL+4FSfZqguDq+RdE2PnFUU7Ovvr3
	gff3CjLQR0+qb87l9YZT/Erh1ddJGoFX5KOxwO2escviSbYkq5aSzcR4A1CKQq1U
	gJrv56lYdWOTyyR4SfCZOC7P46bkGFn/FoLi+DHqVZNq0qPd6BNaIu/8TqKmt/TT
	1IbG6g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq0m1t0wk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:33:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9157263095fso155916385a.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781098416; x=1781703216; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wir8yRgBm5lDK5u6u5oiz29nk7aruaK9GHY7JmhUKaM=;
        b=OB7dy1yZ3ITd1SkIb+KZJzxqbPyD0/5d674MiU8WyNQKNI/ooMFiIMVh6kUBeLJSAs
         3PWQmosOsXKmBej2oBYErXbG7MCoFI2Qx9xJZYdswyfaNRBFKgwf63z0qAgpD45WTaRY
         7cCa0FGAw2Qpi91bwGAKSvMbygLElVMLoG44clsuGMNUMM13sBTK8oAYaxnk+2OgGLcC
         osJVxS/A0B8EJLQ2x19qiO2xvVb6tIPzgmk5+fUqkxCc2UC6i1dxUv1GnpEczrsZMm3n
         poIjGX8MTJO7tC8Bor/DoPceY9XcgGyv6qGqdcA7Q2ZbtYeG9bl+PRz37P8WpiKq6is4
         4wZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781098416; x=1781703216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wir8yRgBm5lDK5u6u5oiz29nk7aruaK9GHY7JmhUKaM=;
        b=MRtYWh3lpQcGRRd977zAe6pqReWjvEz0UK/xkojl0C8RDh8L01YG6i8K7bHWnNVnTb
         l40sOlFnJmvQiC9GHLbQF+UC/gxM1vRqkz7LYsqo/g867Rh3Ki9Ot9BJ+EYcqwSiefyV
         mHQFlM6VNzv39cQ7q5RbGDj5b7b1RnsmX2a8IQRbEsmkqvXdN3Qf7p6BSL/F6H/UrmpH
         NjryOd4CjbvIH3/fx7OQ6iG7JLVwxfHWM5r4Hr+az6iReG/VtQx+TH/PMXXWBuQWobZ7
         Mb6cqR+EbLlU5pmnZNxAcbIZJOKOKfFCBcwn2Kw7SXmUDu1YGLYBVcppdUDEY83ubFB6
         Ge2A==
X-Forwarded-Encrypted: i=1; AFNElJ/9skf+JZd5fGHvzCZJoYr5jhZcWWP8WrbkYAD1zuabZBFk0uRwWbsufSxShlRheKg5Rm3EkuLFfuc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQ32Z0rMPfHQmfeuc8FwmUWtTCGSob8ZpXK4wSxdO5zu0De2cM
	/AzEUpmp+WtMbGudFhvqOG/DqDPb5zl4iXCOO03M22xja70hwneV4V9xgsDet6NQTqb8BpcK/MF
	hjqg68UhvTUqP8Hf62BpXIIA/LAcnPVHli9y8MEPQ74yJ/HcqhlLcsLrOKw91xAEc+Zte
X-Gm-Gg: Acq92OGFVpEtD7jOnUAXSrqc5P4On1M3ga9fbG/7uudhcZqOxBkgRIlFfBJSbWwpnH9
	SytBvPsmDKbbC1Q1EOJdnpyp9LFjdLr2Ttc071J3h4xUnlCXj62gPypfuxghlNNzv8z5G2Wa80H
	bwzuoBVESSWiKOCFC0PN3XZ4gmyPxUw4a7HdkjewMGYFxC6kB9JFbbJNsMJcbFWicXkCxEzzohe
	3AOs3cKG7UpxvWCRzoLij86w891rrElCgB/fo70hhyTkOqf8CYo3ohTEOEjEqux2Srfv9xK2nh6
	5oFAM6epaADzsDshAPhKODOJcyvbaVMUnPGmDE4y++hvnxsjKOlMoVnK1ZfvP31Sh/RJQ8qpT2a
	4NnkCKJCukYHw/p+RCLw2B93uyAPPNszBqlyrtZ/xOHaSOE/7RXWpI3M9
X-Received: by 2002:a05:620a:28cc:b0:915:4ca0:1210 with SMTP id af79cd13be357-915a9d9a69emr2525538785a.3.1781098415686;
        Wed, 10 Jun 2026 06:33:35 -0700 (PDT)
X-Received: by 2002:a05:620a:28cc:b0:915:4ca0:1210 with SMTP id af79cd13be357-915a9d9a69emr2525533985a.3.1781098415251;
        Wed, 10 Jun 2026 06:33:35 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed74asm5362236e87.13.2026.06.10.06.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 06:33:34 -0700 (PDT)
Message-ID: <2e90f4e5-7151-482f-bdac-4cb210ecf6de@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 15:33:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
 <b24o5mc7cwljy73a52r5klagfnhxldkdpvyq2easkjfmgmqyo7@o2oazxld2svl>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b24o5mc7cwljy73a52r5klagfnhxldkdpvyq2easkjfmgmqyo7@o2oazxld2svl>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEzMCBTYWx0ZWRfX7EfBA6gVi4gN
 BGdCwYjSdtZtJKmfGrwaSp2pA72miGR0vx4ILb+XAhnnyvMFdY1RPr2+EFyzTWjTfU2f+Y6Empr
 C3fGitvG1D5R9xenkZDH7ThScT3kvpYvua73HK55SJCZ0DHv8a/ZqDXzmN1vYd/Il41GE3dARD6
 pPZOa65qtx8JhVUCEHD7rkzeK/8bNRgVMtPWD6t2fFrrery4ulXE/UA2Ke12EhCw8zC0lBkFx0D
 ftXE5xdY8oIM24o0xnOk5Sh/vZhxI/ERliLPDHpm+UFo75dPzvE/Z7xzLMkx2f5zjbVodwL5ewP
 7mxLruPYPynVkwSkhmYojls2nAhAte44fIpu+MwEiYc6D2CfWPJ6AYJ7jidtfXPH7vBXEbWJoUN
 QYMSEsdd5LWtPljQVaxnAPgg7JtlRzEBQRGgVV0kW5W8iNilj3lspP6RoHMYkcUS0IVFzNSl7kO
 BO/XMxFeo8a6ILwGstg==
X-Proofpoint-GUID: ofuZZgkIeGCUrZcnSeYuXXYq-vAL2uiu
X-Authority-Analysis: v=2.4 cv=UdJhjqSN c=1 sm=1 tr=0 ts=6a2967b0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=ZzvzhfFT30TdYZK-mrMA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: ofuZZgkIeGCUrZcnSeYuXXYq-vAL2uiu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_063337_542917_81280C18 
X-CRM114-Status: GOOD (  16.08  )
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

On 6/10/26 3:21 PM, Dmitry Baryshkov wrote:
> On Wed, Jun 10, 2026 at 02:04:16PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The QUSB2 PHYs are powered by (among others) the VDD_MX power rail.
>> Describe that in the DT.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
>> index 2f67e665996f..b7cd1928335c 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
>> @@ -3192,7 +3192,12 @@ hsusb_phy1: phy@7411000 {
>>  			clock-names = "cfg_ahb", "ref";
>>  
>>  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
>> +
>> +			power-domains = <&rpmpd MSM8996_VDDMX>;
>> +			required-opps = <&rpmpd_opp4>;
> 
> Interesting, might it be the reason for QUSB PLL locking issues which I
> have been observing from time to time?

Possibly. I'm surprised that this is such a high value (4 out of 7,
whatever that used to mean in the olden RPM SMD times, maybe NOM?)
but that's what msm-3.18 uses..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69635CD98E4
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 12:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wF6gHyjWI6FsGGoh+nH8uw5oii5bH3Er6xLouwmyTYo=; b=yEqP+J6EDPTNPV
	NpWg2Kki3oOoH4wrvlO8H8tZwxPOBRImkOafx5NUaexwVFZWvSY6IZPfSbo8McmRX/AvtSR5g/7n4
	U5yNf+f2UtITKJabiz10E1KPCqYcWtiIaaZubILbQmdQbmKIfI+/krVCzpP1HuT2Kkh7qdmIEbHmz
	iozeBFUUXesmkaIR/sNt/oDrUMj3iCHcza2evwauxyaS08GHdnh3snb2jQUnd8Dvkt7uJIWUHvxjK
	IadYg+KKjZdOLFmndXkQWwQ7jrbkTnfXE+vNeLvlT8tS99pG4tcvtNKTW8m+J5Mu3p88qGt5XOcBw
	JZB416uPJseuJEB79uEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpdS-0000000HMZ7-3w2c;
	Wed, 17 Jun 2026 12:44:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpdQ-0000000HMXw-296O
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 12:44:50 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65HC5ppL2758371
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 12:44:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8RN/3eykQCaBeCitaPquH73O6bIsCGSHsqz7b2YuNQQ=; b=Pda9F3sMejzdRzpl
	XCMvPd8ujmf3RtL1Re6GmKiM16UwX/NWIbv4XaptsKdI2aIcHFJGZ1n6AYWEy6wS
	hoUJBmOmKD6B4OaGzwj2hgbwbdR4oYXfUepMOw928JbTpHdyvnx0WDIGyWzk9zWK
	RJsl9IWQ8RcuG9/MqTIjYIznnL0ipnTxRf9rOpwugCGpjJI81cnbUbbnD6qp1za6
	zgYw5SNVu4rKWboTKd67BOZpIGwKDqPGG1+8KchOTWwOt+/a2JWG4CwpqBUvYJc8
	R54N5B9DvDS0WuRUII1VhEKGb6cBbVGE83lOmgqBSACTQKhTAICWGL/C3Pj5czRE
	Wf2Zsg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4euef2b7e4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 12:44:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-915827fb1a3so49618485a.2
        for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 05:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781700286; x=1782305086; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8RN/3eykQCaBeCitaPquH73O6bIsCGSHsqz7b2YuNQQ=;
        b=Fq1MlaPrFVeFYuc76ccmtetBUF3yMx3UWfsCG3oEnXfvOpAHBItwqe/uTQWq7TC7w/
         TN7v01LZNRcTWwtA7jruTx6nf0+/FVnWwo/QMViRp4iin5lz3hriKQIn8WRIinuOOQc+
         cUjnxVldK3D27n6ccX++5ie1XwDVQqIDP5ZFHlnjDUvsuvCxVBdhZUa1TYzzKPV3v+7g
         HRpg8A2yPn/DlEMlgUivMq+G+FstWZVSyhbYODoQcmqiJbxgD9Gtciqvj+bVWbdw2BpN
         gP6A6L8QNIzFYFw1cO8zdIL+riWjqMZykdyJHYs5Nx5I01lbQ/Jalp8ipKdqdI6gzN3R
         zXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781700286; x=1782305086;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RN/3eykQCaBeCitaPquH73O6bIsCGSHsqz7b2YuNQQ=;
        b=kkeHZz5in0Y/vefstnIhV7ikAdKA7GIs6NXG3epTPxUHpRosguKD/uK3BRO4YfTMs0
         jHryDo46nPQzgmBT/Vm19D5zoQP+EUaBwB3Ozwjm1jsLUa/QJ4IJB1HyrYmJEVL4QX09
         kLEx7vHd7hl0j9WObtqTzrDiTZbkEeo1KM+KxADpTX48pi+jcfwFr4NMVFOd9xy/Lpd3
         KKwtNMWugxS3Nt5yrgX1s2mRoy41PK+e6GoHH+5Wu9Y1RGNQxXW9hXtY3BJCepCOQbz7
         CNKb3RLoxQuO2jCftI3tfRDeWEfWss9jL3Uil8AsDiBV5riQcasHmVe2nqBfhFVRunzM
         JNJQ==
X-Forwarded-Encrypted: i=1; AFNElJ+5ffR9Rqm8HpWeTR/9u+opfufxfR/RsQsOtcTqkj+ZE53u6GzRK/GXHxDBhrLZr5k0J3HhoS4z08s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzW//96+zs0wF65Wejk3UMwizDXZhZPbU1CBDAErUixXk9MEWn
	y0UeRB4jdiwCw66KFPuZSWFs+CTt8CKLE56xjbCRhz3EoWN5iD6BHjeXARjFHreD+hjypuFZYPI
	N1dJNyLCptNJSwCISX3i5ZZybQEoeUqnYmn9ujMW5oi3Md/2PIHWzEZQ5golpmwGaBvlX
X-Gm-Gg: Acq92OEyqZXCuuZh1K8k4pWJysHWsXjJz/W1nwQOmoDKm+3qH+AnsyIlpsstHBfj/iP
	oyuY5lQDqWfU8+p7ZLHCscJS/tfts3FQcHEUO8/O7LVYQDw8SU7pYn4Sz0dRO2fwNaNCYFXpUU9
	aQ5qogRG+rwAIOKAm/xRCcEsRUxDVzfjXEs2x35M2scR6rxBWjyBFrdzxeW0WFPN2AShvKPiSYF
	ZvhanNuwxUgSjvdhWWbmOEFuDcPByACVs3UCvG9cu19mAFovV+BMK8d5myY/LwG4z3CdjFdVeEa
	xyHWuo5h3lx2typ3TN08IHCJGSGNeeES9Lne4OvNlaOyXXzPGXCdKpOHrX/sK0Btus/13kLE82v
	Q/Gd43MJrY1ZDrRKgXRvARnZK4L3bFMFcEsM=
X-Received: by 2002:a05:620a:2908:b0:915:8197:4490 with SMTP id af79cd13be357-91d8cfae231mr374727385a.4.1781700285908;
        Wed, 17 Jun 2026 05:44:45 -0700 (PDT)
X-Received: by 2002:a05:620a:2908:b0:915:8197:4490 with SMTP id af79cd13be357-91d8cfae231mr374723285a.4.1781700285342;
        Wed, 17 Jun 2026 05:44:45 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3995c19a9f5sm14224681fa.32.2026.06.17.05.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 05:44:44 -0700 (PDT)
Message-ID: <bf9a7031-c6d7-4897-9ba8-988b92f55dd8@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 14:44:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=F8hnsKhN c=1 sm=1 tr=0 ts=6a3296be cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=o19EmiD99IrPSnOigvUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDEyMSBTYWx0ZWRfX9FRQUdjbS/Y3
 3fmOa07b+QMew3Q+zuNXXZl5+gLOD8DRUihFWjcJf/sElPGvDYWx7NEhI1TPLZ5qMRHljEpxSS6
 SDrSWL2hucGi2QcXZNcuu3Ey3I4ONwo=
X-Proofpoint-GUID: xCRTJyQe0lsPwM4LfsdrzsIE_ttrSeCd
X-Proofpoint-ORIG-GUID: xCRTJyQe0lsPwM4LfsdrzsIE_ttrSeCd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDEyMSBTYWx0ZWRfXxRu6Ca/kVOei
 gh7CU571Z/m0B3lw/DPobYk/dk9Ckl6uFsgCNRPRAWdh2BnD3EyJ3QamUo3lXNwVlSZ8F9TbCDw
 yUbO7nysIZg9CpTJ1SobWKfDTNT8uwp5s0sV66rSMx9ThQkC+7Ld9rNbb3qKhft5xg2tpTTLSx7
 tDdxzfOBf7sbMXOPzk1X5cvjosfrYlbKqFON0GA8/Jy1jdgZ52eOjcXBTzf89a4vKidaEDLWyPX
 UrC36QnNFu+i8iHP9G3mHCyxDg7en/Cfgr0Vb7H+xR/hvPOL68AjtVynr0UJEsW/NT81nrAwajm
 XLIWqWUvrG7ya/USSv1GaIpB2ZdYJLxv5/wyY5iqiJs0FDNry6r+pD7wVfL7+l/G7xgmjd+sqTk
 omdzMS4fkLhrsP7RyZwVpkxvIBIJ4GZFr5C+T9bxKcHpK/wlIBXLgdmmsrIwE9pl9DGwXbklWIW
 ziVnEwXnAludJBeecXg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_01,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606170121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_054448_676608_72F7DCED 
X-CRM114-Status: GOOD (  25.17  )
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

On 5/18/26 1:49 PM, Kamal Wadhwa wrote:
> On Sun, May 17, 2026 at 08:18:15PM +0300, Dmitry Baryshkov wrote:
>> On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
>>> On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
>>>> On 13/05/2026 17:29, Rakesh Kota wrote:
>>>>> On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
>>>>>> On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
>>>>>>> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
>>>>>>> - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
>>>>>>> - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
>>>>>>> --
>>>>>>>
>>>>>>> commit 457abf6e7ac410430c866842e08e602ec3daaa51
>>>>>>> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>>>>>>>
>>>>>>> arm64: dts: qcom: Add Shikra CQM SoM platform
>>>>>>>
>>>>>>> Add device tree include for the CQM variant of the Shikra System-on-Module.
>>>>>>> This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
>>>>>>> the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
>>>>>>>
>>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
>>>>>>>> new file mode 100644
>>>>>>>> index 0000000000000..401e71720519d
>>>>>>>> --- /dev/null
>>>>>>>> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
>>>>>>> [ ... ]
>>>>>>>> +&rpm_requests {
>>>>>>>> +	regulators {
>>>>>>>> +		compatible = "qcom,rpm-pm2250-regulators";
>>>>>>>
>>>>>>> Since the commit message indicates this is a PM4125 PMIC, should the
>>>>>>> compatible string include a specific identifier for the actual hardware?
>>>>>>>
>>>>>>> Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
>>>>>>> the fallback allows the kernel to apply specific quirks if PM4125 errata
>>>>>>> are discovered later.
>>>>>>
>>>>>> This can be ignored. The compat is a leftover from the historically
>>>>>> incorrect naming.
>>>>>>
>>>>>>>
>>>>>>>> +
>>>>>>>> +		pm4125_s2: s2 {
>>>>>>>> +			regulator-min-microvolt = <1000000>;
>>>>>>>> +			regulator-max-microvolt = <1200000>;
>>>>>>>> +		};
>>>>>>>
>>>>>>> Do these regulators need to explicitly define their input supply dependencies
>>>>>>> such as vdd_s2-supply?
>>>>>>>
>>>>>>> Without these properties, the regulator framework might be unaware that the
>>>>>>> PMIC regulators draw power from upstream supplies.
>>>>>>>
>>>>>>> If the kernel dynamically manages the upstream supply and its reference count
>>>>>>> drops to zero, could it be disabled, causing an unexpected power loss for
>>>>>>> downstream components?
>>>>>>
>>>>>> And this is a correct comment. Please provide missing supplies.
>>>>>>
>>>>> As per the Qualcomm system design, the parent-child supply relationship
>>>>> is managed by the RPM firmware, not the Linux regulator framework. The
>>>>> RPM ensures the parent supply is never disabled until all subsystem
>>>>> votes are cleared.
>>>>
>>>> How is this different from other, previous platforms?
>>>
>>> This is not different. In the previous platforms too this is taken care from the
>>> RPM/RPMH firmware side, the only case where we may need explicit vote to parent
>>> is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
>>> may have a RPM/RPMH regulator as a parent.
>>>
>>> Even on those previous targets the parent rail of all RPM/RPMH regulators are
>>> internally voted by RPM/RPMH FW at proper voltage with required headroom
>>> calculated based on the active child rails. This was done for all the
>>> subsystems (including APPS) regulators.
>>>
>>> So no explicit handling from the APPS is required for parent supply.
>>
>> You are explaining the driver behaviour. But the question is about the
>> hardware description. If there is no difference, please add necessary
>> supplies back.
> 
> I understand your concern about descibing the parent-child relation in the
> devicetree, and given that we have been almost always followed this for all
> the previous targets, it will expected of us to add them.
> 
> However, we want to avoid the unnecessary access to the parent from APPS.
> At the moment, I do not see a way to avoid that, if we add the parent
> regulators.
> 
> @Bjorn, @Konrad - can you please also share your suggestion, how we can add
> parent-child desciption, but avoid accessing parent supply from APPS, as its
> Qualcomm's system design to handle this on RPM/RPMH firmware side (you may
> recall we had a verbal/offline discussion about same concern in context of
> RPMH regulators earlier).

Can we introduce some flag in idk.. struct regulation_constraints, make it
skip the parts we don't need and set it for all regulators registered in
qcom-rpm(h/smd).c?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

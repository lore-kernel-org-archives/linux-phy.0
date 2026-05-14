Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D583CD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 06:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEnpcSdySah2mK0ol6YfC8XRhgnajzO34g6L1GCxnDM=; b=vzh3suTJylk8rD
	OUwCKMOFH89eTK2/PKfI6R3T+Wn5Vvf66hDIr0BqT2S6+mkBV3RF+wQECF4Nbw+Dx+p0fM3zyDZgG
	DEUSIpzSBTPFrZfTQrhuFzDXxb/JgbDiK3E9g8upkBziSkMC4yCkPF5n9KSsIQA/E1OpDLV9MsleI
	VTYUSazFpfwJAXICAJPOx5tLPmAs9DfHSElX4JfukMUJ7LFP037wyrRZfnbMzHGsQiFkGSDDo5dKL
	i4ajJPy9RxFm3MDPzLiENpvo8uT27gqG1KQvCBbFg6d3y+YNrW01c0dWwAURd2+ySfNSC6PHXp5vW
	doMAbhinmAbWDNKieyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNPT8-00000004hrV-3K2z;
	Thu, 14 May 2026 06:22:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNPT6-00000004hqR-3Dzi
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 06:22:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64E4gKFI3013542
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 06:22:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W6EuO2zZJQMU48rIvtrMMeNXywoABvRlbsWA7IZNce0=; b=aNs9xl3BBfVZl8pk
	qh/mM2TZ+l3EE6a8/fdXpllfxtanJ9H3VVCRl4udunvnOf9QRj7jCje/MErO/MIX
	EB2Heg5Pdt1zBZpILOB50iPJPfQXaPFgp7FZpm5yU6+3Ed4AuAp+nwI28rg1AHBH
	kcuAapxSZuOsU+Y06UeHppMOb2VczDvxFZ+Y8JTMWy1b32g52LTWxUiUYYcuYA12
	lkUMsEmpH5+oZIVLl9QTkvI1D4ANqiR+f5rmusexKE+PWwrI98fV2Su4q0Cwazfv
	HUfdOj6LQ1odnHxu8XzlatQQNb2NHZdVbKcPQjneG5d5cgqNJonxH7tAJn1GKV5K
	UHZ9MQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e57ksr94r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 06:22:47 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8397b14a689so4761070b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 23:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778739767; x=1779344567; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W6EuO2zZJQMU48rIvtrMMeNXywoABvRlbsWA7IZNce0=;
        b=c14tDI1anyde5jI1Yqh+MqcyTFRV5ss6wz60X5KpJJT3IKy/Fi6bCEbiLzChqv4piv
         9j8Im8HEXyLmcDoMvItbBJOfKNz+ZcGJdIyIEUrfjlPw9lO8QMlY4SM7r4cRe3/nEMiM
         JJjF3QHg3s6YnD+At+AwCsTLFt5RVb1FBBNqoFgCFRpaKprBT+IYKbDlW0RwCUm1F76B
         YWtE/DT5cIC2IuaMdnPsNGcx8Lt97HGWpKaN1pxe5z5Frmrk1CLmO2oafj0+gm+KBYcJ
         /Q7y0FpWbPsIciYM4XHBavDbDPKYinc2lraUoI7kr5nS2G0O7lPXMF7RA23S/aySX3D6
         wefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778739767; x=1779344567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W6EuO2zZJQMU48rIvtrMMeNXywoABvRlbsWA7IZNce0=;
        b=QOkbqoVl/7byvwWak24PkGQunMNwKK7pozYTSPd8lp2QBd71rjrdECzXtw1zN6MASL
         2tRtTQAawm11ed/QEp7x0u0R2QjxexRDA9dbFClYfQ5i2Pn7Mkq+8plcqckoCWaVPSiU
         N/EJqoXmhtBASsG8DPW7Zi2NHvso9U2y6iajxjo2n9K9cWdDdoOJ+6cyVKYMqAn4WRJo
         N1zc9uF0qkfg5TVtBOG/UdqmmByQ3AYn8Zv1VhuE0fdYfMqZYijuq7DMir+5TXTRAoRG
         9vVKtNusCWW/iU+mZvKIC15zseIVRhyX69V+wadYRcZPwKwby1q89hRuN1nJKJqkiSKo
         iyzw==
X-Forwarded-Encrypted: i=1; AFNElJ+rG0mHglCpVfhJMchwW2rPTtpSyyhnZAmKvSCbAZ2u8uFdm99NqsGcxCF0tAwkI5arKtSH1TWc/48=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4w7cPHUEU9hdKopanYw46VZ84wPoonrIFNYxK+tHrh596Okgd
	1Wcopkv3NDqI/XQgbMmJaOA2JP3ISefQfSu3AYI0hPCZtzvjBeQC48tzU32mJNggKqsF0LvvFSG
	rs6D1bK2SYY4QMoSsq4ih7Ijf6YxoaIG/7UWyZnq3R72KCpfkY5tHgRyx5jehA7jHbfPq
X-Gm-Gg: Acq92OGyJ82FkBpHub7ijH8fHNExPVgy9iq1LQJGK9atm4a7tM2e6uu1WOoEv+FKHXq
	6h85tSfNscbRPcTd00hjoEbb399ZwHszp27ckH/leBacgh3rl9faU+y1ayAnXlhn135ANPjlWKV
	2myzq0+wRaHBvSDPkEe5alhPNi7ZebQf4HQP9nGp9vyFTQ+tnA5fMDXAUTVKYyM+ZXtJFGKFa0x
	X1RmgI+k0dUDU6/XOFGj0Ud11EEIocyeEJ7rC0uD4EfSvne9nZKhm2T65gphRPV5NSk1V10yaw2
	j1Aya9kzJWeZJj03YkhukJJWX5+r0sINfhI4zpHpHeVRi1kBuMVSSJvwqGu2aWNU9W9yhYwLnWW
	DXMxWGwrAaNGWrQmtPY/319DxJe7wkcv8zAsJ6s06/3w/l0s2WvNgwLFv8JZNqJwY2r1LcB60d/
	gGsVb1ddsRiIp4UA==
X-Received: by 2002:a05:6a00:339a:b0:834:efcb:12b4 with SMTP id d2e1a72fcca58-83f0428732amr6709148b3a.28.1778739766584;
        Wed, 13 May 2026 23:22:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:339a:b0:834:efcb:12b4 with SMTP id d2e1a72fcca58-83f0428732amr6709106b3a.28.1778739765951;
        Wed, 13 May 2026 23:22:45 -0700 (PDT)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19663cfdsm1803149b3a.9.2026.05.13.23.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2026 23:22:45 -0700 (PDT)
Message-ID: <42ba6ac7-306a-419f-96b6-3427c51ef567@oss.qualcomm.com>
Date: Thu, 14 May 2026 11:52:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
 <20260505-gifted-salamander-of-prowess-5107a6@quoll>
 <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
 <95b567cc-b83c-4154-9520-e624555f1882@oss.qualcomm.com>
 <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
 <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
 <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
 <d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com>
 <5baeeeed-7c18-46f7-82a3-5bb299ba05ef@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <5baeeeed-7c18-46f7-82a3-5bb299ba05ef@kernel.org>
X-Proofpoint-GUID: Fl7FpupLUiq4HSIFvRkJHM29SkR-qm2K
X-Authority-Analysis: v=2.4 cv=KZbidwYD c=1 sm=1 tr=0 ts=6a056a37 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=bDX-BmwN5UdOEqwmdTwA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE0MDA2MSBTYWx0ZWRfXx1wlqGYUt1zN
 tOK9ISz9dzHGFdRl7nD4rmR+KxaLI3ENiCWAmX8IS6OBV5ZGj/E0qknnwWYOftajkwmnnTSu9eo
 zHbgNnNXSVZH87DObA3eC8rx74MXlwEU3dpJbaPOFgOWgzHkxD7obgR9FguU0+oyWTDmrjKE2Cu
 zeBlTONs7iD8qa48D93MAYPn6u+QwXaqgAP1/20aPsGdrKB+SWt1hJCBhEIQwa25yZOcEPgTFhC
 4hvrgcRDIuFt0kny4KPqNuXOhsRhAAYaLJYsH2LJTvQLMBDQSLMbmevpsUtHQPG8jKjt0B8lveX
 kmqWKldOEuq3auklRhkpp4o4qnBJeGU6d3ke7r3o3PvPdVJm1GRfCUE/EW80fifWA/WLMn0lLDb
 euLC9lwwiVoqFq7VkQRW7WZosNNJK4LxwhxSDyNq+mO09FvaJ993CwW/tmGBNiQUeYA8tNuv0Nn
 1KzBYe49GQD6abW+wPg==
X-Proofpoint-ORIG-GUID: Fl7FpupLUiq4HSIFvRkJHM29SkR-qm2K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605140061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_232248_821402_8F70BFFF 
X-CRM114-Status: GOOD (  23.56  )
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



On 5/14/2026 12:26 AM, Krzysztof Kozlowski wrote:
> On 07/05/2026 13:37, Krishna Kurapati wrote:
>>
>>
>> On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
>>> On 05/05/2026 15:57, Krishna Kurapati wrote:
>>>>
>>>>
>>>> On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
>>>>> On 05/05/2026 15:27, Krishna Kurapati wrote:
>>>>>>
>>>>>>
>>>>>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
>>>>>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>>>>>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>>>>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>>>>>> ---
>>>>>>>>>      .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>>>>>>>      1 file changed, 2 insertions(+)
>>>>>>>>
>>>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>>>
>>>>>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
>>>>>>> compatible. If not, explain what is not compatible.
>>>>>>>
>>>>>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>
>>>>>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
>>>>>> GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>
>>>>>> Hence, I didn't use a fallback compatible.
>>>>>
>>>>> This still explains nothing. How different clock makes interface for SW
>>>>> incompatible exactly?
>>>>>
>>>> So I went by the naming. AUX vs COM_AUX.
>>>
>>> The naming does not matter. If the clock is called
>>> "no_one_expects_spanish_inquisition", does that make software
>>> incompatible? Why would the name itself matter?
>>>
>>>>
>>>> Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
>>>> clock-names mentioning "aux" ?
>>>
>>> I don't know, I asked what is different in software interface.
>>>
>>
>> Hi Krzysztof,
>>
>>    I checked with the hw team here and found out two things.
>>
>>    1. Shikra is a spinoff of Agatti and its sw interface (clocks used and
>> regulators used) is the same as agatti.
>>
>>    2. I thought we could use qcm2290 as a fallback since the phy register
>> init sequence is the same for Talos/Shikra/Agatti. The difference
>> between Talos and agatti when checked in the driver was the init load
>> settings. I checked with the hw team and they suggested using the init
>> load settings which talos was using.
>>
>>    Hence both these compatibles (qcm2290 and qcs615) cannot be used as
>> fallback for Shikra.
> 
> Then I do not understand why you are using qcs615_usb3phy_cfg for
> Shikra. You say that the initialization is different, but you use
> exactly the same initialization. So in a meaning of compatibility
> between hardware for Devicetree they are compatible.
> 
Hi Krzysztof,

  There are 3 things:

1. Clocks used:
-> Talos supports AUX Clock since it supports DP over USB.
-> Agatti and Shikra use COM_AUX clock since they dont support DP over USB.

2. Phy register Init sequence - same for all 3 targets

3. Regulator init load:
-> Different for both Talos and Agatti
-> Recommendation is to use Talos regulator load values.

SW interface wise, shikra is comaptible with agatti. If we use agatti as 
fallback, we would end up using the platform data of Agatti where the 
regulator init load is not suitable for Shikra. Hence not using Agatti 
as fallback.

Coming to driver changes, I used qcs615_cfg because it has required phy 
register sequence and regulator init load as needed by shikra.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA4CCD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 15:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eD89HHmon+k813ZnF3utbStot6z9snT873SFip7adEY=; b=stRObjXNYwjoUk
	tTr9ZPNEnGdzXi3SqKc2l0jSRdda6IGVNl1Os7HcAbZu7bnF9LCIOAbw5yIWiukpJCG7SfpPq6P3Q
	S3XM+Kk/QCASCfV8AD1UFO4pia7ZMEAV6BWhILGS627D+vGTYeLtSdGHp7EZe52uH5wqYKtIhjvFs
	g99EdpGmN2zWibiUX7QiRwGkJP8DRze/WmFvj98dFBlrYWeM5isv1mm/CHOTNGwHBIDHKu2hy2SYw
	tquaQK30rfWJWFTOXf4G4jwt1tdC/r3HFqt/UNKcG6oN6Rc5hunbL70WtXjAxK5KKzLuvREu65Xg/
	rfo975nn7Y1WiG26ed6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuaa-00000008lcZ-3Ibf;
	Fri, 15 May 2026 15:36:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuaY-00000008lbX-2BS4
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 15:36:35 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64FAsuT1654914
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 15:36:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rsaGzOjLUFY2It8a9XtlX327ezydEMR58UXIEf39RR4=; b=n8Vx5k7EOihDTmZX
	7DOdHH0etoziH5v/38ebKig5B2J5oXo3bA1nd+ue6B4HaJV/H2TI0aAqZw36E8j/
	mVX8fltNd0AdxCsN4bek5nOuv1c2zdEAZa/5cwRaP0So1LG0YGIsri4zoK/p0iu7
	Rjxo2uYfQbSesp2p4PnDMEfDJ6KKOYbEcZLJTFmpyp1Qz0+kakXt2ZoZS6o0xSml
	eNbRSHfmb2+RTWTmLG66vBga+CMx0CIu2SH5APCr8Kr82ddaeLLGTjuyosgpz6UJ
	asJpYkUvKxTFWkybYKEzByUnNrLfEWguj/qiI121HQCjrKMmlZBxjCbN3WzIp1sG
	J9kwKg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1puwak-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 15:36:33 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-13312cff948so16770379c88.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 08:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778859392; x=1779464192; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rsaGzOjLUFY2It8a9XtlX327ezydEMR58UXIEf39RR4=;
        b=HCMCoCe1VNkuI1s2Wvq6TnowQ9EDz4aWdLeXZvH89950z4GBHT/n2Z9BH6zX+pV4Mw
         KfwRU3zkOuIzgaq5bCuPaaJ/JwtvCPql7PV2ap8xGmcfAT1tKm3EGCylPC/BJeQWVIsO
         3vbpbRs7MeYK3yZcRJkajOgb9fwrwCSqo8CtmvVxKinfRIfbBNg0pI8dW+aNTBM/hRWA
         P8MZ9nqUJ9swlonjFouyLCXm9z7DIolMSZz8LtGQ8K9l6gQPhPzRnmjsBAihNU4b59e2
         q6cUIza+dg6JfNzCPCs3QZR9osFOjQ/PLfhnk0wbi1j1yQTrQsjh1XUFrVJ/E4pbzbwi
         9Kcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778859392; x=1779464192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsaGzOjLUFY2It8a9XtlX327ezydEMR58UXIEf39RR4=;
        b=DzarlY+ATILI+iNA/6wlGMccthNcr7lc7hoVrpkyklra8bmRUf4YFYxsixHZFfuEL6
         1IsU3ug7KCn/0nfmMR2X9Pnpr5+IOdmcB5HAgdGJjImALib6jrsVtMv4Jw9Bo0Ufv+n4
         VkIQerby3TBH8+BculSyv0NitaeoVSZXxCYe5p3GQyDPRNyrdpx3Iity1tVrzrwOzggI
         IU3IF+VF3QMcWZB1Qcy0Z9dv0aQFSG03ViHr2dwxqDIHCCu77te+KIP9FGMezKtck+Gs
         Vd17OvF3WrwtANg347wlpaltLDrQR3Y9J2MQWLoM7fqUKwHDhXPhWseLRmbjPiDsJ+pU
         Ph6A==
X-Forwarded-Encrypted: i=1; AFNElJ/W/MS7GLmVStHefb4EAUII29fydV4xeojDbx8YG1CqmVBjudJUBZEsimu94v4+7/YqRmRnvbTPG0U=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywl5za4m4JLytoplODkK0ZGc4f/TFxqdceCAFcwOSScbYiiuOlk
	mkPlAhm1FbdmMk9QacSul9z1m9iu0dqw5OwlhnLvZTxNiz44x4XI097CMELrGHwduhQUXNeTPCQ
	a4rkgbMbci9uEA7cvrrtbHjkRg387agRo7/pbzoEew4w+v8KUuGiFmX2pmVt+qmnEel0L
X-Gm-Gg: Acq92OHESdWF4Gm3A1GIG8hBvZFV9eN3ZOMNDcL3Koji4zfSrCx8VisRyxKL1BRfJMB
	v4xMlFkxixKp0cIEeIYYMWK9hd/5PtfDBA3dZcNJUpk9Yi9pquqB/WqfkuCe0cB9F9HzqlSw/DU
	l8o8raOa/BUF/gi818c7MwHxW+oHgKG72DYk8ZVF36LnW5vlzYwNv2gPQAnDP9qjl07dte4Rkva
	/5wdEX8yA+4mcL+oFlfHYtCtqXvXQeEFxCMQqbFndwIjSuCr0b8UkD12ElVavMLoLzSQjZpSI9Z
	F33DK3NDQ+FBDt06aidyg6beuAnNg6ZOqPbsMVOn+WR2km5n3yoOE7agUicNRlK7ZK5CNe+cu+v
	eM9VHSJ8Lug9RN5H8W0EoIDb6vbWl7xbdM54FKdbpRRIZ2simMDbJqn+2RIJmKMMsao5bFnmGwa
	qu07qOt00I0qZ+OQ==
X-Received: by 2002:a05:7022:1e11:b0:12d:ff1b:92f5 with SMTP id a92af1059eb24-1350484ce0emr2086003c88.28.1778859392222;
        Fri, 15 May 2026 08:36:32 -0700 (PDT)
X-Received: by 2002:a05:7022:1e11:b0:12d:ff1b:92f5 with SMTP id a92af1059eb24-1350484ce0emr2085975c88.28.1778859391617;
        Fri, 15 May 2026 08:36:31 -0700 (PDT)
Received: from [192.168.1.2] ([122.177.241.140])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-134cbdcf140sm10393355c88.5.2026.05.15.08.36.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2026 08:36:31 -0700 (PDT)
Message-ID: <34586ed6-4f78-490f-a916-baf7657cca7a@oss.qualcomm.com>
Date: Fri, 15 May 2026 21:06:21 +0530
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
 <42ba6ac7-306a-419f-96b6-3427c51ef567@oss.qualcomm.com>
 <9ed7c714-07c1-48de-8d27-cbe24356c606@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <9ed7c714-07c1-48de-8d27-cbe24356c606@kernel.org>
X-Proofpoint-GUID: gGsaVs1aIbRPmxuxsLq1w5rZF78WmFLU
X-Proofpoint-ORIG-GUID: gGsaVs1aIbRPmxuxsLq1w5rZF78WmFLU
X-Authority-Analysis: v=2.4 cv=GrhyPE1C c=1 sm=1 tr=0 ts=6a073d81 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=3kx7GFP7sCMRTT5SgtpHhw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=kYkthLK8IOESzKOdJy8A:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDE1OSBTYWx0ZWRfX/+2O7/X+nnPf
 UnGnYhmybPn1rjBHPYUmzNhWwYRn0iPsbBKKUA/LJ4sYHxpZaYhfb2rrjPuxtiiVUuhlexpdUYq
 WqMISXLcrSZVuOOODic1L2BLgtyPkKMEDmNcnWV8TupZMczyHYCJ27Ug67nuongFx59uR7/yCod
 i4xYMYYOIIt2WFH5BgEdh3ycEkA85WnJX9IaNd8Q3jeUSAB/vr5ishDY5Dr0HlQxQiDB2AMGpmA
 7preOIAYatg0/r25oRpx+4zQ8ruHvmj727oD4Veg1EyJjV4bavjRZ4IO+Ca61Ax/Bd/PVK1rsUj
 zhvsHZcpu2STUBMxdZhq++KCCTi7EevCxJZx4qFHc5OEojcVVFA7q3XIK1tzY8bbjMlrmSEg7xj
 QfT+RxHQm/NMRN1MREAK6SHYZWQhQXMvmdU1CPEoAqVDXLF5ifTJZx9TH9KPiiFE7hY9/PSQdif
 /QX71DZeIpAaLsR9IuA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_03,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_083634_566396_19763E30 
X-CRM114-Status: GOOD (  25.11  )
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



On 5/14/2026 8:07 PM, Krzysztof Kozlowski wrote:
> On 14/05/2026 08:22, Krishna Kurapati wrote:
>>
>>
>> On 5/14/2026 12:26 AM, Krzysztof Kozlowski wrote:
>>> On 07/05/2026 13:37, Krishna Kurapati wrote:
>>>>
>>>>
>>>> On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
>>>>> On 05/05/2026 15:57, Krishna Kurapati wrote:
>>>>>>
>>>>>>
>>>>>> On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
>>>>>>> On 05/05/2026 15:27, Krishna Kurapati wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
>>>>>>>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>>>>>>>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>>>>>>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>>>>>>>>>
>>>>>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>>>>>>>> ---
>>>>>>>>>>>       .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>>>>>>>>>       1 file changed, 2 insertions(+)
>>>>>>>>>>
>>>>>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>>>>>
>>>>>>>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
>>>>>>>>> compatible. If not, explain what is not compatible.
>>>>>>>>>
>>>>>>>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>>>
>>>>>>>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
>>>>>>>> GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>>>
>>>>>>>> Hence, I didn't use a fallback compatible.
>>>>>>>
>>>>>>> This still explains nothing. How different clock makes interface for SW
>>>>>>> incompatible exactly?
>>>>>>>
>>>>>> So I went by the naming. AUX vs COM_AUX.
>>>>>
>>>>> The naming does not matter. If the clock is called
>>>>> "no_one_expects_spanish_inquisition", does that make software
>>>>> incompatible? Why would the name itself matter?
>>>>>
>>>>>>
>>>>>> Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
>>>>>> clock-names mentioning "aux" ?
>>>>>
>>>>> I don't know, I asked what is different in software interface.
>>>>>
>>>>
>>>> Hi Krzysztof,
>>>>
>>>>     I checked with the hw team here and found out two things.
>>>>
>>>>     1. Shikra is a spinoff of Agatti and its sw interface (clocks used and
>>>> regulators used) is the same as agatti.
>>>>
>>>>     2. I thought we could use qcm2290 as a fallback since the phy register
>>>> init sequence is the same for Talos/Shikra/Agatti. The difference
>>>> between Talos and agatti when checked in the driver was the init load
>>>> settings. I checked with the hw team and they suggested using the init
>>>> load settings which talos was using.
>>>>
>>>>     Hence both these compatibles (qcm2290 and qcs615) cannot be used as
>>>> fallback for Shikra.
>>>
>>> Then I do not understand why you are using qcs615_usb3phy_cfg for
>>> Shikra. You say that the initialization is different, but you use
>>> exactly the same initialization. So in a meaning of compatibility
>>> between hardware for Devicetree they are compatible.
>>>
>> Hi Krzysztof,
>>
>>    There are 3 things:
>>
>> 1. Clocks used:
>> -> Talos supports AUX Clock since it supports DP over USB.
>> -> Agatti and Shikra use COM_AUX clock since they dont support DP over USB.
>>
>> 2. Phy register Init sequence - same for all 3 targets
>>
>> 3. Regulator init load:
>> -> Different for both Talos and Agatti
>> -> Recommendation is to use Talos regulator load values.
>>
>> SW interface wise, shikra is comaptible with agatti. If we use agatti as
>> fallback, we would end up using the platform data of Agatti where the
>> regulator init load is not suitable for Shikra. Hence not using Agatti
>> as fallback.
>>
>> Coming to driver changes, I used qcs615_cfg because it has required phy
>> register sequence and regulator init load as needed by shikra.
> 
> So is it compatible with QCS615? If not, then something is incomplete or
> confusing. The driver uses the same software interface.
> 
Sorry for the confusion. The Talos compatible represents the USB/DP PHY 
with aux clock input, while Shikra is a USB-only PHY with com_aux input 
clock, so the two PHYs are not compatible with each other.

In the Linux driver implementation the match data is currently used only 
to affect the init sequence and regulator init load and here Shikra can 
reuse the Talos match data structure.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

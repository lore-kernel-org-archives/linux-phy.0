Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F328C87FD3
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 16:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYiU1a9BIC5vUeNlfx9cC28XD68sjSSdmzU/507Sjho=; b=ShlqsYHyxca2d2
	WsG17bVXeLZfiAq4FtiMZO8vyktMfcWV0E0HYS5rsL2VHKch/nAyKKhXwqTB1XfmnCuEMnHl/a161
	VXp+/asVS5gDiaREVzF+I1zEeuPopnHELTAFOJnxyXQwvKxdMgVvQODVMgTmyxiNTaD07efUa+HoK
	D3Y87y8HYPTDOkji1UbjBVOMc1b8PV9hZsC6EJAMuc+jxunO5VfilcyNbPcscfomuGmjkWUHLM5Co
	3A7Q4acZZ1S6tJOABnKQvzEQFv6B4zg3TLTAEZ6TPgH/bjI1sQh5bmsLRpOOqkwvEmMYmvJX1wE8S
	wMBbzn1ld3OUrQTBBVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujgc1-0000000Fi2v-3j2W;
	Wed, 06 Aug 2025 16:03:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujgNx-0000000FfCQ-3guM
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 15:49:03 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5769epFY032380
	for <linux-phy@lists.infradead.org>; Wed, 6 Aug 2025 15:49:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EdCOe8rcZOVsB/eSOWtFT/kaLn+Ejjtvoiw1zmIh8iQ=; b=iIuTDNl20jiEYEIT
	uAqVcosWj93FpEaRO+rUtsjjGMX1QmB2YUXF2KCfd/i4TZVSoNibuAE2emrow3O1
	xAga+MGlPqsBUw3tn50rJnsJphYO3Ug/6pt9Qb776WsXCGWPzbqmusu+CYLaTibz
	zK/1GYqiXXOTnQ0dNz5YeZ65Dxxt6cgwbCNROm7fCv09Psd9aAGlAcyYlxQYh5BG
	HryJdqEd742A06TYO4DuPuIEQ1ua0mrKTpPXg8JObyfynXno029teCnVwBXFoXxA
	FWFuW+V0h+UlubainCr7XM73D7zqsXa8rfDMAOGsepc2cTf6+MPOfrAT+Q+Zbmwt
	pRPFRA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw2uagj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 15:49:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b071271e3eso123611cf.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 08:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754495339; x=1755100139;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EdCOe8rcZOVsB/eSOWtFT/kaLn+Ejjtvoiw1zmIh8iQ=;
        b=TQ2HbDQCVOQMGNnxWgKyUSFTS3sWamGBxYwSzVoZM11DdVdN2NKfCCayUFblkHwjhh
         jvJp8RtQ/Wxs9FK9bQAcZFv4IxvMplYu9oqQbbwHAg5s21fFzmkW0o8cjgKGiRgCAMtx
         MJYuRUCGcaM3D9lgt7QPo79Rt8r8aF7fLFf1F8p5sZf1wc9lZYl2zIPj+baI57OLYpJz
         3+J2k5vR84QWr7hHh5yfRKVVSgJjMbAfnPjYxa9798AksSbf6ByL3GVMYZXLN2cptz5W
         7Ycw6ntDhSj5BGex2gslpQsgMwJHKAbMWOs66wlWHbZyp5V1sScvEZVS6Le0Z1GC0/+I
         vh4A==
X-Forwarded-Encrypted: i=1; AJvYcCVo/s3FAt+mwGE3pVDZP7rxD/isTgVQOTKvrixKxocchqdUcvgXJgBAoagv+bsL5oJMUnC166x6Ijw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk7poRrC4dlUiNPzSxcLgstKGNZWs0boiVl20MvtBC8Kx5/rzB
	q3eNXMkBTD8i/moE2VhdVz1M3Yt4Xg0DNfejKvbh4XeVDGi3OxEU3qpdVTbqRyowISuIvsIosvT
	AdTjP7NPH0uT8TQFmEoBQSBDCffvVz1mkrYKMhMTs9QGZ0XKkj6WuWGj6HyUAZxIKtTOg
X-Gm-Gg: ASbGncsMNTBqQm8ajhD2XwQQcsJOYjeBuU+DfmzdeH1+FIDtege25718v7GU7Oa9MDZ
	wTSS3Dirp2yCLhl/nyLdacgpPAExLd3RajNy8exmdX3c+2ttcjv/zTwPayVGQN5+S79c6mZ9r4V
	NLGK86Eu6jHB2N2+olIFIwfGYw7thJTYPRP2aKp86hVKtAdaPs7bmWSQi1xsnBQ9rDzaEzLQ2af
	Z3gA+ZLZssvHxsFXFkmQXne0qvAvVMIuuvYFsMq7eY15mqATdOgcUbYeXIbWFUP2et5azxE6NI+
	SpfSajzaWQ3aDURwcNAZR4WeBChZaHCVpi2yY4KGtSbLczPAUMwpEN1YFxsC7lVT0BNY9RyC7nY
	xVDwosRnZO5NaddK4iA==
X-Received: by 2002:ac8:7e94:0:b0:4ab:635b:a309 with SMTP id d75a77b69052e-4b0910145f2mr26950591cf.0.1754495339258;
        Wed, 06 Aug 2025 08:48:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYe5Tt26YGSNtspI4Adw8RhbSGkHq9bCQs03PaJmHMaILl3gZLSyjG6dCEODCsa2/y8OOGnQ==
X-Received: by 2002:ac8:7e94:0:b0:4ab:635b:a309 with SMTP id d75a77b69052e-4b0910145f2mr26950151cf.0.1754495338571;
        Wed, 06 Aug 2025 08:48:58 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a374dsm1112625966b.36.2025.08.06.08.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 08:48:57 -0700 (PDT)
Message-ID: <f21b7d52-4c3f-4e5b-bee7-f8b2945b5b02@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 17:48:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
 <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
 <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
 <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
 <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
 <fhzdhzxdwcoiuhx2eogpshwt5cxagjkrygrefqikmfbx3cfcov@awmhgrvurnfi>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fhzdhzxdwcoiuhx2eogpshwt5cxagjkrygrefqikmfbx3cfcov@awmhgrvurnfi>
X-Authority-Analysis: v=2.4 cv=Vbz3PEp9 c=1 sm=1 tr=0 ts=6893796c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=p9fLoZ6QpVtK1h1Of3EA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: vEGiDtGF5vma4l76j5zusaSJNl06utqx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOCBTYWx0ZWRfX4YYPxAD5RscG
 OcvMEV9e4Az5JONMWCM1ns3qRb1OnRRTmq0MYhFx3Zi99ZArDnFn73uaUBY/w5DL0DKmwlc7iiw
 xwfQUI5KxG08yAbMkobaJDVzP1P6Av7jOt7/37LseCnYAQiPtZw3wG85Fb9QE94UghOYvKblLfy
 eWySeANayaIpGksSP8vFsHSQuhaN+fc91BIy/kXJiKiFdqeEJ0j2DVOe0luyLuII+fqBQdvfH2D
 foe/Bs6MxhH4RZ5BtYcSfIXNgbN/DcZpvBJ3nIcN8U3mHiOXyS9ONR16MtZCANAgOXQSYh3Z4zf
 9cqbQ20JztCcHZoXwZ+ZiJzT5OBtdzOP9fLYJQWiGt4NqS2vXWHzsk6hlZbE+k1HSjhMBAFypUE
 PPfoID0b
X-Proofpoint-GUID: vEGiDtGF5vma4l76j5zusaSJNl06utqx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_084902_042512_F16FF71A 
X-CRM114-Status: GOOD (  36.32  )
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

On 6/3/25 3:17 PM, Dmitry Baryshkov wrote:
> On Tue, Jun 03, 2025 at 01:03:11PM +0200, Konrad Dybcio wrote:
>> On 6/2/25 10:55 AM, Neil Armstrong wrote:
>>> On 28/05/2025 18:56, Konrad Dybcio wrote:
>>>> On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
>>>>>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
>>>>>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>>>>>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>>>>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>>>>>
>>>>>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>>>>>> PHY is not powered off.
>>>>>>>>>
>>>>>>>>> This series doesn't seem to solve the USB side of a problem. When the
>>>>>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>>>>>>>> clock, so it needs to be switched to the USB-2 mode.
>>>>>>>>
>>>>>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
>>>>>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>>>>>>>> the USB thumb drive twice for the first time (only in that sequence)
>>>>>>>
>>>>>>> Might be.
>>>>>>>
>>>>>>>> But there's nothing interesting in dmesg and the phy seems to be
>>>>>>>> programmed with the same values on both the initial and the subsequent
>>>>>>>> working plug-in
>>>>>>>
>>>>>>> Please try using a DP dongle with USB 2 passthrough (there are some).
>>>>>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
>>>>>>> devices. Would you be able to see the USB device on a bus?
>>>>>>
>>>>>> I only have a dongle with both display and usb that does 2ln dp
>>>>>> (I tested 4ln dp on a type-c display that I don't think has a hub)
>>>>>>
>>>>>> USB3 - yes, USB2 - no (but it works after a replug)
>>>>>>
>>>>>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
>>>>>> at runtime?
>>>>>
>>>>> I think so.
>>>>
>>>> So after quite some time playing with that, I noticed that the USB2
>>>> device was never actually kicked off the bus.. and works totally fine
>>>> after connecting the display output (2ln DP)
>>>>
>>>> I was looking at dmesg, checking for discovery/disconnect messages,
>>>> but the device was simply never disconnected (which makes sense given
>>>> repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)
>>>>
>>>> I also read some docs and learnt that what we call
>>>> qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
>>>> and is unnecessary to set on USB2.0-only controllers
>>>>
>>>> The USB controller programming guide though doesn't talk about DP,
>>>> but I'd expect that we may need to set that override for 4lnDP+USB2
>>>> use cases (which I don't have a dongle for)
>>>
>>> Yeah basically we need to:
>>> 1) power-off the USB3 PHY
>>> 2) switch to UTMI clock
>>>
>>> In the following states:
>>> - USB safe mode (USB2 lanes may still be connected)
>>> - 4lanes DP mode
>>> - DP-only mode
>>>
>>> But for this, the dwc3 should also get USB-C events with an addition mode-switch property.
>>> The flatten DWC3 node now allows that !
>>
>> Yeah, I got even more confirmation this is intended..
>>
>> I hacked up something that boils down to:
>>
>> diff --git a/drivers/usb/dwc3/drd.c b/drivers/usb/dwc3/drd.c
>> index 7977860932b1..e5a0a8ec624d 100644
>> --- a/drivers/usb/dwc3/drd.c
>> +++ b/drivers/usb/dwc3/drd.c
>> @@ -464,6 +464,11 @@ static int dwc3_usb_role_switch_set(struct usb_role_switch *sw,
>>  		break;
>>  	}
>>  
>> +	if (dwc->mode_fn)
>> +		dwc->mode_fn(dwc, mode);
>>
>> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
>> index 7334de85ad10..ea56f5087ecb 100644
>> --- a/drivers/usb/dwc3/dwc3-qcom.c
>> +++ b/drivers/usb/dwc3/dwc3-qcom.c
>> +static void mode_fn(struct dwc3 *dwc, enum usb_role role)
>> +{
>> +	struct dwc3_qcom *qcom = to_dwc3_qcom(dwc);
>> +
>> +	if (dwc->usb3_generic_phy[0])
>> +		dwc3_qcom_select_utmi_clk(qcom, role == USB_ROLE_NONE);
> 
> This part is a hack for devices with no USB-2 passthrough, isn't it?
> 
>>  }
>>
>>
>> It was easy to tap into because there's already mode switch handling..
>> But obviously it's a hack - should I register a typec_mux in there?
> 
> I think so, we should listen to mode changes, instead of host/device
> changes.
> 
>> Should it go to dwc3-common or dwc3-qcom?
> 
> I'd say, dwc3-qcom. Not all dwc3 controllers are USB 3 capable, not
> talking about the USB-C.

I did some coding and we can't switch clock sources at runtime (not a
huge shocker), but the bigger issue is that, paraphrasing the HPG, the
DWC3 controller must be programmed as if it was not SS-capable (probably
skipping starting some subcores), which is not trivial

I also came up with a sneaky workaround of simply keeping the USB PLL
always-on, but the hardware disagrees to do so if the PHY is configured
in the DP_ONLY mode (which I suppose makes sense)

All in all, I was not able to find people with a device that actually
does 4ln DP + USB2 and IIUC the only drawback would be that USB2 would
not work (and not stall the system). Not sure if/how it recovers after
you'd plug something else into that port later on, but again, I don't
have anyone that could test it.

With that in mind, would you be okay with me resubmitting this series
with just a rebase & taking care of the comment to patch 5 (pertaining
to the default mode setting if svid != DP)?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

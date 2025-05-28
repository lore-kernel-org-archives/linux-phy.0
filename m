Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E708C3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 17:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2MycZCVPBwl3fY4peJp1SG02ud66G9qy9fhaWJFX/E=; b=MfyJ66rTX0Qu1/
	oDukLkTYNCO7IGA18+7SqqYp+ulu+ccd0Kd2klqBBI7p0oWgIihclT8vGLxkoL46Aa4ltB5vYuAs8
	AjapUg1senNarQGMYv2aIXmkrTz0gGiRX45YFeyKyLxM5V62uCnMAqpWGAL4kR7rcTMkohBMptwY9
	jMN/8Kzpid3q25PpH243B5KYMdWSDXoThqw7xiRRbNFzoE4ykQR6XhKH7Q/G88Belm/xD9boslE9g
	4/rqUMULlQl1P4oegn+bpxiQuAvWvd0UHYmpA3VYbGcfnKYtFhOTt4uK1RjgtOjMElFzP8vunSg9P
	8AN8CT7u4ZYs0lKjiWKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKKFB-0000000DmiB-3uxM;
	Wed, 28 May 2025 17:07:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKK4U-0000000DlJV-1MxJ
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 16:56:10 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S9TgTN020607
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 16:56:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0EkcYL9G1rpVd7TL/MkBWT3qRyPOPRTrOWOR/0GFkgo=; b=HtwDE4an2n2FkjoC
	Op9bUKa1ga1AfztP2XKHJ6EdihsuchjLRTRe26dHSJS2gS2Z0ETwiuJRWDmpxTV0
	wPvFl1rx9MQcFwCakeBy/dMaa/mT2mqiM5HKBFz3Eya3Izfg1afAUm4h9Tse5Hlp
	la4pL6oqGVjNPQU3QmrB7VUqQEBlv4c2DQqR66K/xh+Yy0hYjSyEBwTM0uU7Xpmk
	JHOFdA3t1k5FpHBxLdDNcgQRy+WffM1dGmLBioNkATxnElkbcL5PGzwI3tIpyPUW
	K5+KUJiJPgCScWmuaukwWz8T+4TwFhWeieKBievTWu9Ax4o3wfgk2GyMv5RX9yLn
	5lhS+g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vju038-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 16:56:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0979c176eso5569485a.1
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 09:56:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748451364; x=1749056164;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0EkcYL9G1rpVd7TL/MkBWT3qRyPOPRTrOWOR/0GFkgo=;
        b=Jfpgsz/LFRDLrQYA09Kvtj1oOu/VX+qQrXuCZgqoT4Ix4F4/F43Vi95N0IKbIL67ee
         ZinMb+7AYFIU8onV9HAWBk63fKSp+8RvxHIZFwm9veJ8uMONDejBcmqpKKZ1qCUCeI8f
         0FCrdSv6csvOQO71h0yQlWunvmiIy9JlcguAcQ0YJZgvu7BiDY/Ju9WfImdJ5k2sA84f
         sj5iQyTUASjOMX/L3e5hG3KJL+BqYUy1mPfN79AiF2cnIAwfRm6lNb+DJtAnG8IdPn2O
         Jwvu/rpF8wgrttjkVc+i8WoStTdl+EL1SkD4PFzNQY+zRkKpkq/UbUQm6THoAUKb+wTC
         pmzA==
X-Forwarded-Encrypted: i=1; AJvYcCW9vCdyD2EzWNuTGkmBA+R7lHFlDKN5tcQEQNmzdh0uRZhG0qpkRwplOOXzrOhffK/EayDvRIciIVw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmxUwnkvTTOpUronGJBNaPgAXOe9UQOWkt1B+q+741wN5WR7nV
	iXqbgcFQZQ/MZ8adX5YiElm9pATqI6kI0NMNmP79Wfvv+o1Z3IDACNw9N8vm/Fb6/kqFxnApRt5
	Tt7/ayJNopRISlcdJuuCNMm01MzVkoH8ycTrJRnjcsjCmpYqKzEKsyMZj08FA/SMygoOo
X-Gm-Gg: ASbGnctRsw8Ekp/ZF1h6WKpM9Bb0U8oe4Yd3hn6E8hJkAMN4B8w5KFVtAbR8ij4vKf0
	xWOk81YxVCcGxjjMSzE7FPom9IMPsQ+HzGHcSK2gdf5W6zeUQVAFTjqWGZtDF9Q7PO96/3R3A3y
	eCHRZAtfAhkI7ZiMD0299QzR8DecGZl59ctzJIg0Ih3XYf7GwKtpYkHapOXK7tZj1cWM14al40Q
	FzSb7CrU/+NoBNMmDPI8ctOt1vH0K8qiwiyVONSGZ4HxIio9HVch1VLKU/OEyb5acyqOnd5MGw3
	uXsLn+rWz5W+IW3Oik/fgWTUlvZ4O40XAnP5/D0XbvCdFBChyw4bM0xBJdLccsMsYw==
X-Received: by 2002:a05:620a:bce:b0:7c3:e399:328f with SMTP id af79cd13be357-7ceecc09be4mr921069585a.11.1748451363849;
        Wed, 28 May 2025 09:56:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECAr+S1817A/Gvel1AgAah4imkP7ECioo5NX/E9v0PLICsaguf8YD826ewc1MMFQ+GXcT3jA==
X-Received: by 2002:a05:620a:bce:b0:7c3:e399:328f with SMTP id af79cd13be357-7ceecc09be4mr921067585a.11.1748451363392;
        Wed, 28 May 2025 09:56:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b29778sm134027366b.113.2025.05.28.09.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 09:56:02 -0700 (PDT)
Message-ID: <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
Date: Wed, 28 May 2025 18:56:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
 <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68374025 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=g7IH87eAirqrRPCYX14A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: OG9lCM6dZlns-NpcHrh9oHKxyf7UlVAB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE0NiBTYWx0ZWRfX/vLRkHQ3N0Kl
 b9UP17HcghjYvbLbNA62Kd1QnCrlHCB33676ko5NRYHOoP2HGrvYkfJkjQT3YbEXRHxwc0j4MuG
 SEYZwXdOgsir2U6Mfr4lqsItdCPUGT8Gh4ZwTGYBlw/ZUAcTYUHgF73KL5iyTsFRimBDiVrPALh
 jC8s8Z6xMYYCIhXYVo9Z18rjHxE7pNJAwhTMF5nc/C3rXp5pTy5Ixm3YJIEjiy+lLRJbOQQGXvU
 BsgiJUKLZVVGwYOXB6w5Fv6qibDt4nQ+SG2qYmFoaymU3LOMZdtk8jFgGUb8GFt+iB1b5BIoxvy
 euZQpwICzbCT8pL0uOLEnu2jJ6AjneUYXB6Uh8vl5yQjBzbgNq2AB9KH45bDmqlgbj8tXvQXmCM
 Wnm1prX7xoOx164f6yzEK4ahw3qZUdpPCxjqIq2VguSOP/Hf+OZZ68a/orekmn4+Eu8585ki
X-Proofpoint-GUID: OG9lCM6dZlns-NpcHrh9oHKxyf7UlVAB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_08,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_095606_377676_87E4068F 
X-CRM114-Status: GOOD (  23.51  )
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

On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>
>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>> PHY is not powered off.
>>>>>
>>>>> This series doesn't seem to solve the USB side of a problem. When the
>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>>>> clock, so it needs to be switched to the USB-2 mode.
>>>>
>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>>>> the USB thumb drive twice for the first time (only in that sequence)
>>>
>>> Might be.
>>>
>>>> But there's nothing interesting in dmesg and the phy seems to be
>>>> programmed with the same values on both the initial and the subsequent
>>>> working plug-in
>>>
>>> Please try using a DP dongle with USB 2 passthrough (there are some).
>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
>>> devices. Would you be able to see the USB device on a bus?
>>
>> I only have a dongle with both display and usb that does 2ln dp
>> (I tested 4ln dp on a type-c display that I don't think has a hub)
>>
>> USB3 - yes, USB2 - no (but it works after a replug)
>>
>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
>> at runtime?
> 
> I think so.

So after quite some time playing with that, I noticed that the USB2
device was never actually kicked off the bus.. and works totally fine
after connecting the display output (2ln DP)

I was looking at dmesg, checking for discovery/disconnect messages,
but the device was simply never disconnected (which makes sense given
repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)

I also read some docs and learnt that what we call
qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
and is unnecessary to set on USB2.0-only controllers

The USB controller programming guide though doesn't talk about DP,
but I'd expect that we may need to set that override for 4lnDP+USB2
use cases (which I don't have a dongle for)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

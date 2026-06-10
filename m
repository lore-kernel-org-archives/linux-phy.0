Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2242ACD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZEx3jgRToruF/wb5yA6xYkvvmsNj1GFEuhdHBA6Rok=; b=jZAqzYOFJQl/e1
	3NPTATe1pfdh7SoDNubXmRgieL0Ib4xBcwQTHEtxxteiFYH0e0TK8XtpoRGZxfu6PHbB2vbDAxoqS
	WZxnBPEViujiHibfaaUMSp24GcrAUaCIo9vgy6QMVXWfvAD5g76dYacEuiBfvsXdH3ICgl1uHQ8h2
	MR08p7aU0P9yiHwGmm7UJJfh2hGqbG00Rqhk9BJxFmWn9atuJKYDIr+ABdh11tGCfGrobpCX/Pj8L
	9PNrGdZHgwur4uTp6Dh8FvjoKEk6yZenu7uATz/hRhc0tWL7DUbi3qyx+RHCvQsM0PXi3IEvvs/3D
	x6QT5+GfsdYFEMsgfSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJ6b-00000007nUf-3euY;
	Wed, 10 Jun 2026 13:36:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJ6Z-00000007nTk-18Br
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:36:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBeP61137390
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:36:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	niaQqv0TO5ktLYqg+JO/ci5vasrTsTgygjoHApXMLdA=; b=OWTgv2oaKoYu+Oxi
	VNZ76vqVmqiS/eGjNkXMa2iUd0Tl4HisiGBqKPqVFt94l8QR17+d5j8gFNk8Qt2f
	U4ntb1tbPqN3YksGILZG8O/TWQlSdpm1BECXv5okFUjBKo2j8s8a/Ug2QMTnmFGr
	asxkwXaPH/LE+4XDsdvyLfd2jdHcqIb5rJgd4giZCnsZ6/IeZmyjkbALdGyKM198
	ltTLB33uASNfRwhjLXG0kpnLsiGzw4w4pSf2jVlx0hv9tw6O/bOmueZUkoQn1bAC
	P20aoUCkr7MtPvQnhyWXZsoAPOm7iWWz3lLq1vhWqRBn6iF1jCex4ECoapCqWvcL
	ivZvCg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epwnh2qav-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:36:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-915827fb1a3so131644985a.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781098586; x=1781703386; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=niaQqv0TO5ktLYqg+JO/ci5vasrTsTgygjoHApXMLdA=;
        b=cR8N2+pxW8YkpuD39ll3YRO58WmLsx28Vt4mXvjuepcZRP76jIAd26DWmJk8dp00Jq
         Hbw3OMcGcNQNLm8ZODSHWANXFPxIEfPog6eas1eyhvBFM96re9xxAxME+aLWQSGM7UI7
         KOudtqojHjohESEKtBknf4SIIJyHB2fBRPSYDS1DqWLLD2e0tHpsXTZ2kDVuql8ZR8K2
         nwCnQQS3FyT82k0nqDtEAiZEfHy30rAwMzevzHT1isV7A63kXLRjqnLI52Wlk9wZO1fp
         rk/HWaqiXkKYCskMHUkO+1Xmz2ap7s0UUL176tU2cGEntuKaOEsZSlUYmo1pVz9KBWuR
         WR4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781098586; x=1781703386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=niaQqv0TO5ktLYqg+JO/ci5vasrTsTgygjoHApXMLdA=;
        b=L1evX0PR4Wd/kJggUmw6bDkYeTAgu+3Gf9ElSmNJfA/Ijq+lbgiB+9KhfzA93rawfN
         Atbk13bHxh8Yzc+7xBOF5L9diJO3R3SY+trh22RJHFZDBgBivuDnHRNOisBI6++nzjEd
         TMS3bNINoOSpU572AeQ3qZR3yWUPuGtmPqZHBYCfV1DzZV9goB97p1HMO90O17IHSoAl
         f7bN19897g/i1OlYRM8HAYPZyGHlPEGWJz+JIGaL38rVKqnt5yLhQd0BYhm3eKx3OIdC
         0IfW159Pa3SmdoH7iExRBFhaHZm6CSowzveeZmLFSisRMB0BZgkKCH55vYqG3W0yNd4w
         ETjQ==
X-Forwarded-Encrypted: i=1; AFNElJ9SeNdvb0Tcvfc3FZlhUdVxVRu30cOnbHudK01BOvl1GKMjTJnnX5Pzsxu+lo7ifrrbHgOgHpCW5RI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYnj9k1s5fsqDykb/IQFROXW7TFzIxJhNmxaHWhuEB6AGRdojl
	1K7e3vYVRpy1ZLsbvxgKOX8KsZUFcZhmrZ3sKSgYgrL8kQ42uAefhvrhatJHwkm1sWIqbvj4lzE
	FcW8PHenK9HNvORk5absvWvtZlOb7A/voJ+6mxJoOvhqEc1cN4iJt5ooIw8IvGuMWWyjF
X-Gm-Gg: Acq92OGqpSiVnE/DJOa8s/KOU4c1evC8RGzVySMFbigLtFB/sQlCvcHTMnR//PL/GLQ
	1gmu+KJQRl+5LuWZG1qtDGcDCuzWm8fnin4cXhYyQo8No2qRNRHDfXzO5y5oNwfl5eJ7bHCcFDu
	X4R+h12NSVyBmVfnGD+/TGzKALOgN3J5tLyBpGRqbRgI0qt1jxSShk5NiyM3q5ZH8P2KLrc08ps
	L0bQ9V6vWMT8YN2NUxoSBYaCgIMpYp3UNRRr3LvDqZ5kpzFeloSKxs3EkuwOR4wuT50IjMtV9dk
	RUIJaUD7rQul9vGBVW4R0JOhqd4udyJeqbRGGQOdLuvXDIhrNaW/0UbRgORX5/kl2672UA8C9U8
	shNUhdV4UBvnodI3bbECHt964rdUojoJm6SiRVzxaSEKLZ/MBDXAa+7TM
X-Received: by 2002:a05:620a:7113:b0:914:ea37:6f14 with SMTP id af79cd13be357-915a9c7736dmr2175328285a.1.1781098585665;
        Wed, 10 Jun 2026 06:36:25 -0700 (PDT)
X-Received: by 2002:a05:620a:7113:b0:914:ea37:6f14 with SMTP id af79cd13be357-915a9c7736dmr2175321485a.1.1781098584986;
        Wed, 10 Jun 2026 06:36:24 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed718sm5324751e87.14.2026.06.10.06.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 06:36:23 -0700 (PDT)
Message-ID: <0947e485-4619-43a3-a127-5b887780190b@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 15:36:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
 <95b567cc-b83c-4154-9520-e624555f1882@oss.qualcomm.com>
 <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
 <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
 <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
 <d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com>
 <5baeeeed-7c18-46f7-82a3-5bb299ba05ef@kernel.org>
 <42ba6ac7-306a-419f-96b6-3427c51ef567@oss.qualcomm.com>
 <9ed7c714-07c1-48de-8d27-cbe24356c606@kernel.org>
 <34586ed6-4f78-490f-a916-baf7657cca7a@oss.qualcomm.com>
 <xw7f24rvxhkfntui4jjswyyabb5be4cbkfgh7fico6vlhfvf5b@d4axfyz6gds5>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <xw7f24rvxhkfntui4jjswyyabb5be4cbkfgh7fico6vlhfvf5b@d4axfyz6gds5>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEzMCBTYWx0ZWRfX+aN594IDelPD
 P8kKrAd4WkuHOLt/zEwH5d8F9N+RanfGx8iQ4Ql6cN4F3LUnYPxpmnCrVn5HZAf3Fq21g7Tn94c
 8JHjuSCvR3m07erKACSE18nbug1Zn/Y7c3G/dSw8I9s0RxCaPc/xug2LAVOqRwvGVyqxUZQ1bIY
 xJSqi706XHQn19H1XzO5ukkTMfEZw20zMlTXQ4F1qVzYf9wLpTRKgLLJs2EyNphli43ur1g+wlp
 NMJlpVmkvOPLh2ZmIkY/FMaTYr8acVY+IiLrIGjw7Y1uV7bcyRHtwCjwSFm95LivY2K9mnBrqVz
 XjkugVdQrsmyvClISza9o8d8zfVIjLr5AkZxX8+ZyyFJqQjB8SwbUNkDEXtzDHylYQP63vCPyVw
 eMh4O/TEb9DxT7YMEUhfjBig6//h5FXn47og0Eqi5o/9dEA5w72t9NS1wyCeUuPmShICsguOSGq
 XveOECRjsg6Tp+siULg==
X-Authority-Analysis: v=2.4 cv=Xce5Co55 c=1 sm=1 tr=0 ts=6a29685a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=eIvkFyfHag2gwDMtOzUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: TcbFVlWWL8QpQrbMydZr8N45hNMnRK61
X-Proofpoint-GUID: TcbFVlWWL8QpQrbMydZr8N45hNMnRK61
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_063627_318194_6B99E94F 
X-CRM114-Status: GOOD (  26.94  )
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

On 5/17/26 9:16 PM, Dmitry Baryshkov wrote:
> On Fri, May 15, 2026 at 09:06:21PM +0530, Krishna Kurapati wrote:
>>
>>
>> On 5/14/2026 8:07 PM, Krzysztof Kozlowski wrote:
>>> On 14/05/2026 08:22, Krishna Kurapati wrote:
>>>>
>>>>
>>>> On 5/14/2026 12:26 AM, Krzysztof Kozlowski wrote:
>>>>> On 07/05/2026 13:37, Krishna Kurapati wrote:
>>>>>>
>>>>>>
>>>>>> On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
>>>>>>> On 05/05/2026 15:57, Krishna Kurapati wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
>>>>>>>>> On 05/05/2026 15:27, Krishna Kurapati wrote:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
>>>>>>>>>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>>>>>>>>>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>>>>>>>>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>>>>>>>>>> ---
>>>>>>>>>>>>>       .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>>>>>>>>>>>       1 file changed, 2 insertions(+)
>>>>>>>>>>>>
>>>>>>>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>>>>>>>
>>>>>>>>>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
>>>>>>>>>>> compatible. If not, explain what is not compatible.
>>>>>>>>>>>
>>>>>>>>>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>>>>>
>>>>>>>>>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
>>>>>>>>>> GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>>>>>
>>>>>>>>>> Hence, I didn't use a fallback compatible.
>>>>>>>>>
>>>>>>>>> This still explains nothing. How different clock makes interface for SW
>>>>>>>>> incompatible exactly?
>>>>>>>>>
>>>>>>>> So I went by the naming. AUX vs COM_AUX.
>>>>>>>
>>>>>>> The naming does not matter. If the clock is called
>>>>>>> "no_one_expects_spanish_inquisition", does that make software
>>>>>>> incompatible? Why would the name itself matter?
>>>>>>>
>>>>>>>>
>>>>>>>> Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
>>>>>>>> clock-names mentioning "aux" ?
>>>>>>>
>>>>>>> I don't know, I asked what is different in software interface.
>>>>>>>
>>>>>>
>>>>>> Hi Krzysztof,
>>>>>>
>>>>>>     I checked with the hw team here and found out two things.
>>>>>>
>>>>>>     1. Shikra is a spinoff of Agatti and its sw interface (clocks used and
>>>>>> regulators used) is the same as agatti.
>>>>>>
>>>>>>     2. I thought we could use qcm2290 as a fallback since the phy register
>>>>>> init sequence is the same for Talos/Shikra/Agatti. The difference
>>>>>> between Talos and agatti when checked in the driver was the init load
>>>>>> settings. I checked with the hw team and they suggested using the init
>>>>>> load settings which talos was using.
>>>>>>
>>>>>>     Hence both these compatibles (qcm2290 and qcs615) cannot be used as
>>>>>> fallback for Shikra.
>>>>>
>>>>> Then I do not understand why you are using qcs615_usb3phy_cfg for
>>>>> Shikra. You say that the initialization is different, but you use
>>>>> exactly the same initialization. So in a meaning of compatibility
>>>>> between hardware for Devicetree they are compatible.
>>>>>
>>>> Hi Krzysztof,
>>>>
>>>>    There are 3 things:
>>>>
>>>> 1. Clocks used:
>>>> -> Talos supports AUX Clock since it supports DP over USB.
>>>> -> Agatti and Shikra use COM_AUX clock since they dont support DP over USB.
>>>>
>>>> 2. Phy register Init sequence - same for all 3 targets
>>>>
>>>> 3. Regulator init load:
>>>> -> Different for both Talos and Agatti
>>>> -> Recommendation is to use Talos regulator load values.
>>>>
>>>> SW interface wise, shikra is comaptible with agatti. If we use agatti as
>>>> fallback, we would end up using the platform data of Agatti where the
>>>> regulator init load is not suitable for Shikra. Hence not using Agatti
>>>> as fallback.
>>>>
>>>> Coming to driver changes, I used qcs615_cfg because it has required phy
>>>> register sequence and regulator init load as needed by shikra.
>>>
>>> So is it compatible with QCS615? If not, then something is incomplete or
>>> confusing. The driver uses the same software interface.
>>>
>> Sorry for the confusion. The Talos compatible represents the USB/DP PHY with
>> aux clock input, while Shikra is a USB-only PHY with com_aux input clock, so
>> the two PHYs are not compatible with each other.
> 
> According to the memory map, there is an (unused) DP registers part
> right after the QMP USB3 PHY. So, sofware-wise it is compatible to
> Talos. Having the different clock input means different integration of
> the block rather than the differences in the hardware block.
> 
> So, the block should be compatible to qcom,qcs615-qmp-usb3-dp-phy

It should still carry its own compatible though, to let the driver
disallow powering up the DP part

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

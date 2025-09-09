Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03248CAC583
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0Vxryzy/jIuFU4IkWJFtbB+1A0dXgIna+QRBPTSQ2U=; b=I3W3Uww/0zRR67
	SHzwX6ouDiOKnAAdazFCdDP2AcGDLTABaJHx14HjBYrZLiv4f9EAE84rnfC8UEFbaMUL7t8K41rhd
	5V3qu30Llx9vv0o+PoYJVRCsPFNK/QagYn0yoWBy5IXH4xXcEhjk+TFIx7NGHAK2+PIuAoM8cFRFX
	d4Jj3TLJLGF6EtxyXipOp7bGNWIcqA8ESiBlgWhNTxf/NEYc48OLM3NFdGuphdciYWiAVfyR1bQ4a
	VF2cEis4K00lgZL7ZeMk4DP5u+DT/1zTENtyzi/YKGT1va4ynF/QR6NHVyURGyWyS2SznOYMuQ2UA
	0DQtIqRl9EhEezmkOv4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1vC-00000008mjx-2lAu;
	Tue, 09 Sep 2025 17:14:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwPi-00000006guh-4ADR
	for linux-phy@bombadil.infradead.org;
	Tue, 09 Sep 2025 11:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HIY+rDS/Ojh2ctDZQPuEjHteQ4Q9hFu4Pzq36e8Lb/g=; b=Y9IIRHy/9zdxnni3JXcrxpw6MY
	1m3ZTNFZzv/ARw8RcNU12y826lmmxl3VYzLvy3fo6g2nrW2ViDQSRK3mJGrGojLxBBFOiHi7TohNH
	iFRMpVwakuPYE5dU2IhEr1g3hRgeGFzqiuq4HSKuRsenZWViFXK17rM5PbXQQiiskuxbZHnzJrh+Q
	5EtyyEmBYlHkdt4clsVZF9SqFx+it3TGKO2K2am+FXPKwWsO7wwsqhqkFJ2P5fB+l6ocb6IrtEoj1
	GcjpGi5ACn1harZsSyszkbTO8blRnMoZoUr9bN7h68HF+QALgNENiCwbzFplFggt6Z0WEbUGA7Uu0
	vaSQApCw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwPf-00000005J2h-2im4
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:21:29 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LV1Y011070
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 11:21:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HIY+rDS/Ojh2ctDZQPuEjHteQ4Q9hFu4Pzq36e8Lb/g=; b=isSJbq0uSQPg7bI1
	J++DRhdfA1wMOKF8wC6+yo/pPFQu3k4CDwUcXSoc5ObmLQXl9E70sk4RKnMFIGOc
	olmaXQZVPuuXBaefCSMrROSjUV7kmskNtYCTgigLdAtrq6xWYz9LRwOH3HSrvZWQ
	4GHVfkxuzav8yKD9+689rK8hMQ/0DMmNoZXAzq/q55n02/QZU/qq71qqFispxdQL
	IRa/n2AkajKGlR/tHHG6ujXwZ5E4dkK1o8DgnvnxLHk3D9kklXWlPfRldA34IBkU
	vVXxSS5eoIDnNoBlexLLMQexZ4T61Z2+ZRJx2JSxwPv3GKtpCN5adCIrsTLxN+Cj
	d+oCNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0r0nr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:21:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-819d2492a75so27956785a.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 04:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416883; x=1758021683;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HIY+rDS/Ojh2ctDZQPuEjHteQ4Q9hFu4Pzq36e8Lb/g=;
        b=seeIvZrR1EpsjPnJw+MyS3N4pYjnarHeMXB9XvVDxnAnqxRhqlRhpjAeDA4djspRBc
         X1GZ44Q+lIVZ9/QqpQVOWtW/Cv3PIV5LPmnhXKtWvz3uVuk9IgIjJjZYc+Vm71xFjfGf
         J1JLTszFxaeRh8qTk9lyHwvxf+fxR2gTM+fzEO0HtuEnbwwBGwIbB+JOcRP7uisZQzib
         sNPRmtwhzeySuyMni/7FwHP6VEnq7vJVtgJkTqddFeCfYdGof576tf6LDu9FbtVOuy1U
         oMZsH1N+Jd00aH66fzAAxAbqfgLtIXfa91G/G9jj9d8a6H/OehGXsemBYp8bf+2996cU
         BCHA==
X-Forwarded-Encrypted: i=1; AJvYcCUzB/SeYHSPa6DNQYr+gxsRMd7aPU6yq+OwV0FGJ4xuaj71WS+D0cT1YSs+TY25JNZPpUpejfRS2/0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy793p404RW53LHty0OyX1NA9YseRcEUh/AV0fw2HmDEhGH+pqt
	47QBzK972Lcqs0aHUMaPuo2NDlFeypbQ/94eBiRuSsNEQ332AHjym39t8f6jRkeaLE9rICanTxb
	Xac102HMujTyPe+0+S7fnuHuEoUopGJLT/NEO5IYGUj85xTBwFW6zda/z54YeiXXgs2az
X-Gm-Gg: ASbGncuAWL5OOcMMzu/30N2nrkPRQL0eluX8gH0vlXMOMtgkTJ8Y3/W3I5MK6AYOGJw
	e5PatARrPOJrEDoifUizj1dZqP44uZjAfuQc/DBVwMfNPL+kLBYhdWXXIvqmpXUegY2o9aygz6k
	JNOh4B+jnnN7UU/Ccb/vMsVsYosVvVuFUQeEz2MxY1vHsjW7coxPfzYBTYNK0F7Xep53R4Mblut
	bsME2xuez1yw/HcNTHSPVds8oh7HnSnw1aBnmgQvzxbwVS2sQYc9xIh5rzJcLHPfvpE4TXOrGMd
	E2EeEA6mjQW8KLrOO88C7RGTLcJiLvq2Y5wxjD0/XVoYC10ItW0wuRUTmdIbnf+HKbWmyRuEr+2
	zOSP7qF35LHcCeqLEvJaqVg==
X-Received: by 2002:a05:622a:488:b0:4b5:f0d8:c265 with SMTP id d75a77b69052e-4b5f83570d6mr84969981cf.2.1757416882890;
        Tue, 09 Sep 2025 04:21:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqTKupwZi6BVen7gNsper3VxyomXaAVS6ZWiqIWE5W+J094ukf4dWiZ+B5kiS4EVU2QEVOjQ==
X-Received: by 2002:a05:622a:488:b0:4b5:f0d8:c265 with SMTP id d75a77b69052e-4b5f83570d6mr84969561cf.2.1757416882146;
        Tue, 09 Sep 2025 04:21:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff08b86833sm2622560666b.48.2025.09.09.04.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 04:21:21 -0700 (PDT)
Message-ID: <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 13:21:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
X-Proofpoint-ORIG-GUID: kK_xcWeU4sWN6kFcedaeLwBU3nle64qR
X-Proofpoint-GUID: kK_xcWeU4sWN6kFcedaeLwBU3nle64qR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX0WDUPpMSg8UW
 WbZfzlESsurtQDrVKhn0/YhjVlCAGo4sUh0zdYtWHbSeo3AO2E+UDRSpYwcFXz4Dn5+h/F/xUT+
 8v8zIgVv7N/uqpk9kvPJEdLgJpChVsJS17TuljxCGLS0fo/MR9VMXBMMryd+ntimqdWAT0DaBZf
 CC8ooqPjILXw+99lBjgMheQReEWFtEGmLe3feTINJyDHrNRlc4E5CyMZPFHOfniqbwMSCrf3OAF
 98QOeTMb4+6+TbFgo/yQusNG/BUW6pUgNsHcHwW+1+H1FRm8a+aQc75SyhWCb5xz37HnPi6EdR/
 IReCWQJgAfFopRSYJs5lZkp9pLJXaQ5RhVW+08XuYB4lrbwjQmm/Ovh12rL+uTbSR8Q5RC+Za4Q
 BV2EC9GE
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68c00db3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=iAPsCBKfci-S516yzPgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_122128_179916_999EB1F7 
X-CRM114-Status: GOOD (  21.48  )
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

On 9/9/25 1:16 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
>> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
>>> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> The layout of the lanes was designed to be mapped and swapped
>>>> related to the USB-C Power Delivery negociation, so it supports
>>>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>>>
>>>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
>>>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
>>>> an USB-C connector and no PD events.
>>>>
>>>> Document the data-lanes on numbered port@0 out endpoints,
>>>> allowing us to document the lanes mapping to DisplayPort
>>>> and/or USB3 connectors/peripherals.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
>>>>   1 file changed, 58 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -81,10 +81,67 @@ properties:
>>>>     ports:
>>>>       $ref: /schemas/graph.yaml#/properties/ports
>>>> +
>>>>       properties:
>>>>         port@0:
>>>> -        $ref: /schemas/graph.yaml#/properties/port
>>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>>>           description: Output endpoint of the PHY
>>>> +        unevaluatedProperties: false
>>>> +
>>>> +        properties:
>>>> +          endpoint:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +          endpoint@0:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            description: Display Port Output lanes of the PHY when used with static mapping
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lanes:
>>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +                minItems: 2
>>>
>>> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
>>
>> So the PHY already supports 1-lane, but the QMP Combo only supports
>> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
>> int both in & out endpoint and still should work fine.
>>
>> Do you think this should be done now ?
> 
> Do we support it in the PHY hardware?

I don't think the PHY cares if it's 1 or 2 lanes

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

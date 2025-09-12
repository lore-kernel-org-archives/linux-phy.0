Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D74DCAC58F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbA5Kf8KIr+fYZ1XgE2FKhFHTMIu/EK2sg75LJ/0chU=; b=OtR+JIv/wtmMRm
	IEH96lr47i3k+iU8jxFZmajFtnXXh/18w5NI7PRqTqzN2OmGsPndkrASbgl8iiWWlbMPugY2y29ai
	rJMu6o0XzzbEvt8Me/qXQ8/CnqSBJpNOADVfmxRARIrkbu8MIM6P+h1uBpk8JtK8RCe22rCA4bC6A
	pWhcSM4lNSBRj3PN2EBM8SWWyNaHhIcY9/g9Y8sA/afzpZ+JKJWiM5/N7OukYZMB2gsJD5xzN6Td5
	pO7JfntZ0JtTzYlL1KMrTE345XD9SUCwkq1L4MW3YcO16Ooi2tmW32MfWM0xvkQnbjycMC94ISTKb
	oMnPDIt1Oh2OC7HoX+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2dv-0000000995h-1NAp;
	Fri, 12 Sep 2025 12:12:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2ds-0000000993l-3d7R
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:12:42 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fNxr023361
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:12:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zI8guBb3Lo60ZeYXEP0MXbu6
	oVCoqd2RpOjF36niL0E=; b=ERMbbQEIEeC7btydKuXkpC0mwnfj1F7Ywp2yIK+Y
	p0xIR881VWrMk5qiPUA4VMMUlXNe+85sKGEbX1sj5wohtBp22e7uwOdcHhxTdtyW
	SiOQ29t8n5XmP4/USzu4AdHykf/SEYvTF0y7bUmPU6mNpyyXzVBdYjRp23J2UE6D
	ywGwqEn//5Qsuc1E7NNAgVAfX9hxAAHJN91zR/QDcTm3rNroYNm55fipI1483YfN
	27wBLYz5yW8IffYX3cEhIGWswS0VkRX7VDo0Zk0pdmMNMlUtkssLUhEZdPMyEzd5
	nbxEvwCX/tOJD6UMCM+71b06AjOgcpTfuVVQkzUfIovT3A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2fpfd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:12:39 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-718c2590e94so64640026d6.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679159; x=1758283959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zI8guBb3Lo60ZeYXEP0MXbu6oVCoqd2RpOjF36niL0E=;
        b=O8RtGW0A+gw8K601Y1ZTrRcjODW9PRck4Y8tROpG5sJxDXDnVeLy/vPGsDeU2+h7pS
         iBk+aC4+9XHv3ssVnFIldXFIq6G48uH17pMrfZ0V2aIRi4iWJin74KndnSR5gtPotkIi
         GHrrpmgzmfnT8clAeE2AY/MnnO6Dj5c6kSGAJTTorvwi812h7DI37CyUo0CkkMcnz+u3
         BRVvmuITnjXe+fsMGbQeL1LwuGDPuP0Y+EzBadXUeUAD7rheMVs0wcXK0e8mJQOv7B7i
         1pxJ4VZzefZwrfhU4mjmm55enseaHaeHolMGHnthZBMFXrsYoWYBO4tjfh386jdS67Uc
         S1CA==
X-Forwarded-Encrypted: i=1; AJvYcCVtxCNu45RifKLUEPCAwzqoFvyqT42maBDj7gwsGLp5m2pUFSxoQtqTB4ab+Yp7lbof9/06PB5Kxo4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDZ2t+5ZhQb4IuQ2CJu47nYs6LvG34uF83wJ+2Wd2OBpRS9rEB
	EHVhlW1S1013O9dT9iCL1x5R+tq9Wg8DHiIE4tjI+n7YfB61p6/QPFvvhQ/Sw1WDVyBTIYZK73z
	5UZQcSFp/GDWXrcOI8nq91EcrUefyzReUP5hf2zitv9EAeetkV/jSwrao5Kf8d55T2a7d
X-Gm-Gg: ASbGncutlujeZO7nSZMihh+ZHD8n2nEDl5RnvEhHQDaoI8t5/myApMICuiYyksNhOeF
	TzXGVwv/YdvHklyETO4SAQXMhJsJ4fE4CRSveOSyzdzlV9TmnqoVut3XuMYSXe3QqwTnll8EqSq
	FhUpS8FlHkthDIao1Fap5mnIMqAwF5sNdcC901+K7Ao+8QDnN2zoETJBDAdHj2EzSylnx17ZusA
	xI6Kb03ElM0J/M6HknVChyZom5He7w4HLo+rBzxQpj5ddwmFgTJeRAOA+22AOpAdMewm8zphLzn
	NPrQ5q05mfw/Q60zjyNZg/YYDjsEmPJVrnYp82E6+a2Jk3ueoUPKkNwmgWPyIsaujLYWb+P+gxH
	Q8nGZkYP7tD/IJOXBqzI4Agz8tJsmPZlvqPJSADzlqZwZI5xM+CGs
X-Received: by 2002:a05:6214:e44:b0:72a:6d80:89 with SMTP id 6a1803df08f44-7621f5326bcmr84955336d6.14.1757679158409;
        Fri, 12 Sep 2025 05:12:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETqAAx9aPZRKQ9jf+u+KmM6Kvfm0l4R77YKoWyoC00QsU84Zpj1UOrIYuydwW4MVV7TmB7Pg==
X-Received: by 2002:a05:6214:e44:b0:72a:6d80:89 with SMTP id 6a1803df08f44-7621f5326bcmr84954736d6.14.1757679157622;
        Fri, 12 Sep 2025 05:12:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1b2a925dsm7684111fa.46.2025.09.12.05.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:12:36 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:12:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>,
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
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
Message-ID: <rioswugtt3v6f6qa2w5qcmnqjzuxkm372sgovdy7cj3g2jfxru@tg2bdy5hxjhr>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
 <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c40e37 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=r0EWWIcaWpoI38bJcbMA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: mGDNRsMBNj59fiqFaQo-HvLIOAM5Vqkx
X-Proofpoint-GUID: mGDNRsMBNj59fiqFaQo-HvLIOAM5Vqkx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX6BXaDKfoHun3
 7hD1J+T8tA288kAeSdRw8xb/svt0yLWLxqyFM3pNcdpx50/8oMy0Vzsv+JUSApwntGXTRg+CPmT
 OEf1CKuw+qHSVbOYK7rYFhphXnLY42ez41fKTR9jaIQqN0E8ukA0PSxAxrbFPlUhdyJtI+Qqfpr
 aUCp4nsaGy8p9y6B8eJAOzrrXquKRfqSex8tr/oRS+rxUTv52DQIONSfujKYklCFNIpOLEbxDZm
 wqTHcrO9wCkRA+1kqBR5wzle+KNVHqWcD4WZI1WUuXiQxCQGq+fx6duInt56/wEs/tGS2OKnJIq
 ijtHMvP/QBVZY/MX3iQglpIKEbPS1RpRP/L7C5foCJfVB009Rhb2+CaHbQyV/LmpYhYi6RdX2up
 fgcMYUQK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_051241_040717_B4884B38 
X-CRM114-Status: GOOD (  29.35  )
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

On Tue, Sep 09, 2025 at 01:21:19PM +0200, Konrad Dybcio wrote:
> On 9/9/25 1:16 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
> >> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
> >>> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
> >>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> >>>> of a combo glue to route either lanes to the 4 shared physical lanes.
> >>>>
> >>>> The routing of the lanes can be:
> >>>> - 2 DP + 2 USB3
> >>>> - 4 DP
> >>>> - 2 USB3
> >>>>
> >>>> The layout of the lanes was designed to be mapped and swapped
> >>>> related to the USB-C Power Delivery negociation, so it supports
> >>>> a finite set of mappings inherited by the USB-C Altmode layouts.
> >>>>
> >>>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> >>>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
> >>>> an USB-C connector and no PD events.
> >>>>
> >>>> Document the data-lanes on numbered port@0 out endpoints,
> >>>> allowing us to document the lanes mapping to DisplayPort
> >>>> and/or USB3 connectors/peripherals.
> >>>>
> >>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>>> ---
> >>>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
> >>>>   1 file changed, 58 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> >>>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
> >>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> >>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> >>>> @@ -81,10 +81,67 @@ properties:
> >>>>     ports:
> >>>>       $ref: /schemas/graph.yaml#/properties/ports
> >>>> +
> >>>>       properties:
> >>>>         port@0:
> >>>> -        $ref: /schemas/graph.yaml#/properties/port
> >>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
> >>>>           description: Output endpoint of the PHY
> >>>> +        unevaluatedProperties: false
> >>>> +
> >>>> +        properties:
> >>>> +          endpoint:
> >>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> >>>> +            unevaluatedProperties: false
> >>>> +
> >>>> +          endpoint@0:
> >>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> >>>> +            description: Display Port Output lanes of the PHY when used with static mapping
> >>>> +            unevaluatedProperties: false
> >>>> +
> >>>> +            properties:
> >>>> +              data-lanes:
> >>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> >>>> +                minItems: 2
> >>>
> >>> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
> >>
> >> So the PHY already supports 1-lane, but the QMP Combo only supports
> >> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
> >> int both in & out endpoint and still should work fine.
> >>
> >> Do you think this should be done now ?
> > 
> > Do we support it in the PHY hardware?
> 
> I don't think the PHY cares if it's 1 or 2 lanes

After taking a lookg at the HPG and the driver sources, it does. So, I'd
say, please describe 1-lane mode (which most likely can be enabled only
on selected set of lanes).

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

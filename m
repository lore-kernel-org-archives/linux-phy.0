Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ABDECAC58E
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk5nnukP0CEHursRJH3D4Ep7KPWkadHbLw1nQvSX7zc=; b=wiAZ1wmNV1alGL
	FAoPGnwlEm/OXiEwKzjnfQyJM4fMLYAS74NwbWWTAY4jGQFOr4yhaJ35mX1TDPYfsU58Npv1pgQwJ
	qNP33PhJJbRaFAvARkKwaSJFpdjQixiNjo3uIrNecWfBQIjL1WTx+opg8yQspGnu/NTxVyxQ5Fner
	Wi1ZshjaYnT4X+0xcdB/nZQfzct8t+cYetJPy81XV2z9uCNcvWAJqdS5ZGURbfOySMzqM2qHoLRqj
	xhdyJEwzo0nwjilAJ+ZMZqcFBXzqNJIlpFsEPQxZbkHjy7UJpyxvTnpWtJM2q5vkOXEk431mtzzBU
	UAEuXUin6YXQGld6nSBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw20x-00000008vxF-2wTR;
	Tue, 09 Sep 2025 17:20:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvysB-00000007ZOe-1ts3
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 13:59:04 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LZsa029320
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 13:59:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+e+m2eXxsaETI5+DzIMa5RUB
	HZ/+khiBv1BzAFhU+3c=; b=e3RVKHfIvyKU1oDik0Wo+ZvycmTxqZqJHGYPKKBY
	v1JnjNrQVxXdzu7H8EJwamY+kGanlkNCRKdEik3p5xmIEa9//LUW2xvByoJbPLdp
	rnVsrUMj4utvHOJUivDreQNssmyZ+itk0sIvg5WDL2+kwQYoC6uzhJcTF3AFuaVb
	0E0t09mHBPZdH4weIT0+3iYnyJDO+rzv/Qmu0F4b/GE0ezdGX8/WzERGlUKNqRNB
	5g9zeb/TimgZb0Q4KM2cParKdLhq4L7cj0UK0k5lmENxLF+m/cOVBSHWnG6K+9qn
	b8kxuZzuRLUzlOUB6yfD5qWB2cSYNJlOLe+DVvwzE9wjBQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8ge77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 13:59:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7211f13bc24so118788306d6.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 06:59:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757426340; x=1758031140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+e+m2eXxsaETI5+DzIMa5RUBHZ/+khiBv1BzAFhU+3c=;
        b=aAJrEJVbuGf5E2FEUDoYdJSktt/1fUkP/T4YeoFlbI1UqRs/DifRcdnrnF65lPw0v1
         C6Y2H6PziYPwiczNM9fut+2+dGGaZpLCpWQ0c8fgQ04xr7e2WabjUPuhypWAOrNCfbXJ
         ZVMyvNotRFDh5mK8Z3P6OjKHiZ6hQa3g+iDB7lfHPXrev2ob9PPt0mLK/RI5tPc3zCTy
         APoV3QryS0g0MjPQUvrRVoIfr4ifLoJ3lcF8vhTOFsSWIO1uml+SIFFkoOz/njFSaBr9
         Z2mFlwQuOTV0UWQ+RWo+c0XDbG5diLajY8MsW8EBQujAS0GJ6+cvXTfToMDdaj6my32X
         sK7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVBk/P721oyWtx58UwwPPepgQBmdbivyIjo7IlHo3HbKXOYzsuqa0xvjbn3p+HlmftL72pHGY30mSg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwS3g6vbCDEV7kOJXpZIXAzk2g/o76p5w6igprqyM0Uj1JAOF5l
	IKpGC2bYmeMXYTS6/6/R5lLA0muDCmuazFXJTWAQGPaTv3BpvPSQf1wRjkUOMfE7f1gyWbPAN+N
	tjKfvkJyXR2qIzTULMrDcxF+XIJy0NtILpAx1tGcGeOADT/UBt5hp61LgUNnc6xkTszNG
X-Gm-Gg: ASbGncu2gonTw+8EJ6Sol5M6EpqTcrL74Uokk2Lunv9jlFILv14SOV/LJ7vtH0cZsCe
	vY4MLexqV6jsdSysQDWVwSLBcMXUv6+V6Pmb9Ymb9XCgZ0hCkJ+sTXIQ9XmNu45oBTDfMHX4s24
	OYoQPisX0d2cwnA38a9jZL170XTE+r0Ekw14LLuqAwXFYoOfkt+5cF+3gWO09a6Sxn2tg6/I/4g
	UPDF5B3TyTX9sjxLZa2K7ezJt25xBIpoxb8/4tyDDsI+mGT/Kw8YSIZ+SECEYHWLDRQBrLftmk0
	AfObDM3pDZlfAUvXl75l5uatCa8MwHa1qJXjp97ki/jINUMKDek7JuqAF+baP27zGnLSyXjTAhO
	GkdrhSEynALt8PB9T1RcvtYP/vAiCzZrXeswo0aK4Aq5nSxZeS1mX
X-Received: by 2002:a05:6214:e6e:b0:72b:f322:6817 with SMTP id 6a1803df08f44-7391f30353dmr118891066d6.10.1757426340337;
        Tue, 09 Sep 2025 06:59:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx+dFgHWJPMSKPSEn7vDY6bmN0vj3HU50MJCOT7V8BOnFjo1dHoOhzTqahq+CmW1jyx6u1HA==
X-Received: by 2002:a05:6214:e6e:b0:72b:f322:6817 with SMTP id 6a1803df08f44-7391f30353dmr118890216d6.10.1757426339166;
        Tue, 09 Sep 2025 06:58:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680c424fb2sm548560e87.11.2025.09.09.06.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:58:58 -0700 (PDT)
Date: Tue, 9 Sep 2025 16:58:56 +0300
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
Message-ID: <dpidjyofawtrmci5lu72gdnwxxws57sw55cxxedkhsq2dryohm@cdxjwnros57y>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
 <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX1XnhHqCB7RYo
 K/usN5/kq0obq7CKqswXVMbNXy3EprGFnK4w0wuvM1IoHvnOdzI/fa5hHjk2dG4ICnLQAa9pZiY
 Q55XWS75FBWDUxtBpqunuzoxljYkNoJdNP18xz2Ug9p1zVSEAEiCV5fzO05TTjWqVoxJMNP/bZL
 B0asN9jw2cxVMbqch05ad1YdoziZV+AN2wW4Tbynh4WRzxZk0VcxGuh4sJTScaJ38v8HnM9T4QE
 C+/Q34VBHv2WgpSHuNZRYC3jWXabsU/VWUqgUTJOv+7EQYylmgOG9LSGbo3DTqifa2/Xo0pMsnC
 yxuy+kwO235FW842YxoZFGrOwURBQZPfaNtUec2YwjhsC0NV16HiMNFUmpxaiy9PQFQHnhA+FYr
 W83dgFk3
X-Proofpoint-ORIG-GUID: wH3fEGFr5Ewg5Fz8bRtFGPFjACYzkQP0
X-Proofpoint-GUID: wH3fEGFr5Ewg5Fz8bRtFGPFjACYzkQP0
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c032a5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=r0EWWIcaWpoI38bJcbMA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_065903_640365_4B420B3D 
X-CRM114-Status: GOOD (  30.09  )
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

I think so too. So maybe we shouldn't list 1 lane separately here.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

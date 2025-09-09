Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C18ACAC587
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 15:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jt3jeG2lHzH1I1BcWWFxksFFtsg/7PidKSSpgahkD60=; b=DPibxpIjwXmdil
	Uc0HHrn/f0bkjJVIr8Kc3NhaOzx+o/rFxElkF+D62vGLhU6WNx4vgKCZODmragF4YFagZTIcIanbu
	gosqPGCuBore3Vg+QN34M/XawD9X2Okdsuhxs4n7TCKutkWQmmMTyrea69n9YyZEoZpbr2XM/dvzS
	5Gfv5yEL5ghMe7fu1/z6KIj3HO2hlOEOQRCdR1aGq/V4HillFz1RJfkMiQpb1vs9MljnP4VhJyquk
	YDhiaNK9DF6xScGnlTI/dDGCLN8lc9M5VAYK3+RBQnZMs3nouz5D9A/HZGBSFsJWbiBmYbZdYaMr/
	RdlNU16APEdX4FoE3Pqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0VG-00000008E0Q-1FGR;
	Tue, 09 Sep 2025 15:43:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwKZ-00000006f8I-1oq9
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:16:12 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899Lkrk020449
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 11:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vyy6UuL4wRzAkGNDFXbY0fdg
	2ceTtxqY7qR0Dof66IU=; b=Xl2FMTZjfPIoZoUT3ZV/L/GYQV5HRjk1ixzGkyUw
	ht/7vZwdNMLyCBbZ/9d6Ab3y8qlh8+GCYdFItSiipkxwJvSA81nuy+4eRDEuVwRy
	iVV8Tcp360raq7haaloVG5zzFn2FbaOHcOEiVmIjn1S1hnvYCr3+2HTiZpEaBVlr
	DddqT4nl6otzuLXOf7U0wV8p3B9oQv0WVBz+BmYrB1nk58rE7u4sbh3fs8WH/XyZ
	sUbZ5GBbLZv++YAEgvPaz3hOSSV7iBRzI2vqXt46KUcIGGsM76/3qVa94iO3XLJM
	M62IjwR92msjwIEac9CRgdU0730+RhGmFwKg76DPMj6+aQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc24165-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:16:10 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-718c2590e94so152612826d6.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 04:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416570; x=1758021370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vyy6UuL4wRzAkGNDFXbY0fdg2ceTtxqY7qR0Dof66IU=;
        b=lZNDwmyIP+nr4oT3Fqh6h3P06mk0hjcGqgICzvXhlZCC8Cy89ZeqHTEsz8QbK2Q9yd
         /qZrkLJ7+QnOLyOrGESeL9QAkDrcPCR8EYErK/qTpVoQVSR+Iikhpt293NViWWFS9G7g
         plCecWdlP8ngTBLR6rtmVZgqltKTIxvVNiRp4FoU6KnFHw9h10aqpJ6fdnobqga/FbFu
         yMrypsA7lte1O4nDSZv+nhEp2NJ/adAQn2BCBqdtcaLLh9Eb6F9Zf/2gMFDkvw60DB/w
         p7UjFJYGTY6qyC4U5uswjyuo4eWK/UUWdL5CthC0AtslwyBiRgZPixk1mQi7+z4z/U/N
         hbVA==
X-Forwarded-Encrypted: i=1; AJvYcCXgAbrRqK3K3yOVK832LbJLsXsxRRJqTfA++pDl2uQY0EM4tfgzbXhMLcM2tezyhzJSAO6oxm8dqtc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4LNk3l/yvt9qBPibhvVD7fCRnqm55LgnCc0CRM0/LgD+Dx9H4
	C0kOCzJwhNQTRjOxxhvA2vMVdrepTneESjQ0u0UdNydqYfgN48GBPvTQ65ImDwcjS03AA6ID8Hb
	eGVqnuiTpozUYE2QHMsnb6LG8m6ovjHlJzAgNMAsEy8W9+isTPuZf+bcSXvlcUWERONIS
X-Gm-Gg: ASbGncu+b0VOl/6EeTdgr0uAbzpjwsvESnhXz8LMeWEU+jRssj78Fir6SqDE5AeXy4q
	SFDOwamrahh2aKjxjlkU+pbUcvNqrQqfzl8gD5wj8ZjmSxR3t2whl3avJOvrPVrFmFNmUoeGhQk
	9Puf3DxSWl1+jFvLNkk6FHU8DdFivLeHF6qvcuZhSHlBwKAkXaZm0RGsFPTORBXTdB34Bat38Ox
	M/xMjR+RnwRdrk8fXNdxqs9nDstv7Y2nBoY9xYFgVJiVAHCtbP+bKGM7fRSafuCPEO16S8JDmuU
	QNQCmZ2ZsjOSrtgUTsE4WSbvcmyeD57aRgP2zH6KIrduCD0cDfGfs+rAr6No13fEoT2+fgscmVN
	80gbBQYwLjxIP4DwjlZ77WswP7LrBpmLj4HtHDDflw/TFO5863Q+g
X-Received: by 2002:a05:6214:489:b0:72a:87e6:f8d9 with SMTP id 6a1803df08f44-72bbef339e8mr151682526d6.8.1757416569501;
        Tue, 09 Sep 2025 04:16:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEY1tTjvV8h2NSrNoZ1Pf5XTkOvg9H6zYxJVAlIs8vECDwJ1Ls71vAHDYTRO2mKRmYsJzgvZQ==
X-Received: by 2002:a05:6214:489:b0:72a:87e6:f8d9 with SMTP id 6a1803df08f44-72bbef339e8mr151682146d6.8.1757416569008;
        Tue, 09 Sep 2025 04:16:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795d482sm442455e87.75.2025.09.09.04.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:16:08 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:16:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
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
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
Message-ID: <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c00c7a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=Ywig2pavXv6aIl8GUcoA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: S53ZHsqs34cqXmppTJNLb-5ntKOKWGc9
X-Proofpoint-GUID: S53ZHsqs34cqXmppTJNLb-5ntKOKWGc9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfXxJNFAiNsidUf
 QRd3yckrRyYcYZ4cZ8Y4ypcz2c+9gtAehztHJu42iz8nujUk24QY7bfj13cEctnd3aG52sPN3R6
 9llvTbP3jr1iSQ7D64EghSpDRTv7540qREg5gaTq+ul0JVWb+UDEoS+3ia5ObIFP24LU+RCz/4i
 wV6eiEFNO/n4HNANTXXMWDm5ATZN4l/Xn/1RUF7focWudTYkLLgv5STCtFBUlN7Up6aUWVsbERV
 XZO+R+/mW3fWUxVQKU2vtZQFmr2nLYECI+arTPehkUKgxY+5+RhQoWcDLquG962PA24wr5UxXva
 iNtL2+DhtPKfHteAoMA0AcbMMRmPZYXEqTXJRG6dmyVDcBina1SJyKLcL3TV3rPCtPerpp1Jirf
 Gk77wz/b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_041611_596255_9A6C7AF8 
X-CRM114-Status: GOOD (  32.33  )
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

On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
> > On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
> > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > of a combo glue to route either lanes to the 4 shared physical lanes.
> > > 
> > > The routing of the lanes can be:
> > > - 2 DP + 2 USB3
> > > - 4 DP
> > > - 2 USB3
> > > 
> > > The layout of the lanes was designed to be mapped and swapped
> > > related to the USB-C Power Delivery negociation, so it supports
> > > a finite set of mappings inherited by the USB-C Altmode layouts.
> > > 
> > > Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> > > connector, DP->HDMI bridge, USB3 A Connector, etc... without
> > > an USB-C connector and no PD events.
> > > 
> > > Document the data-lanes on numbered port@0 out endpoints,
> > > allowing us to document the lanes mapping to DisplayPort
> > > and/or USB3 connectors/peripherals.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
> > >   1 file changed, 58 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > @@ -81,10 +81,67 @@ properties:
> > >     ports:
> > >       $ref: /schemas/graph.yaml#/properties/ports
> > > +
> > >       properties:
> > >         port@0:
> > > -        $ref: /schemas/graph.yaml#/properties/port
> > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > >           description: Output endpoint of the PHY
> > > +        unevaluatedProperties: false
> > > +
> > > +        properties:
> > > +          endpoint:
> > > +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> > > +            unevaluatedProperties: false
> > > +
> > > +          endpoint@0:
> > > +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> > > +            description: Display Port Output lanes of the PHY when used with static mapping
> > > +            unevaluatedProperties: false
> > > +
> > > +            properties:
> > > +              data-lanes:
> > > +                $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +                minItems: 2
> > 
> > Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
> 
> So the PHY already supports 1-lane, but the QMP Combo only supports
> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
> int both in & out endpoint and still should work fine.
> 
> Do you think this should be done now ?

Do we support it in the PHY hardware?

> 
> Neil
> 
> > 
> > > +                maxItems: 4
> > > +                oneOf:
> > > +                  - items: # DisplayPort 2 lanes, normal orientation
> > > +                      - const: 0
> > > +                      - const: 1
> > > +                  - items: # DisplayPort 2 lanes, flipped orientation
> > > +                      - const: 3
> > > +                      - const: 2
> > > +                  - items: # DisplayPort 4 lanes, normal orientation
> > > +                      - const: 0
> > > +                      - const: 1
> > > +                      - const: 2
> > > +                      - const: 3
> > > +                  - items: # DisplayPort 4 lanes, flipped orientation
> > > +                      - const: 3
> > > +                      - const: 2
> > > +                      - const: 1
> > > +                      - const: 0
> > > +            required:
> > > +              - data-lanes
> > > +
> > > +          endpoint@1:
> > > +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> > > +            description: USB Output lanes of the PHY when used with static mapping
> > > +            unevaluatedProperties: false
> > > +
> > > +            properties:
> > > +              data-lanes:
> > > +                $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +                minItems: 2
> > > +                oneOf:
> > > +                  - items: # USB3, normal orientation
> > > +                      - const: 1
> > > +                      - const: 0
> > > +                  - items: # USB3, flipped orientation
> > > +                      - const: 2
> > > +                      - const: 3
> > > +
> > > +            required:
> > > +              - data-lanes
> > >         port@1:
> > >           $ref: /schemas/graph.yaml#/properties/port
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

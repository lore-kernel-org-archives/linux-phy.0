Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C00FDCA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 14:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsSHaOjAmgXqLzVOPNgMhJ7bA8dev04tllEOIBrNVXU=; b=4ZVsCck6ZlwHQF
	SdkYaa2JlsEsySA2VsloiFv6j1fGByCTPvQ0JoJV6ZNKmZRBpc4kEzSuTRFGeV74ZlWovhN7FIxsD
	PwJgK16OnrnbY3M4VBc3s74Urn/2maTFLsc3lHsvZxJWnNTCszgVjwrAQMsP3Vh+HJn5kYyblXeEl
	iCsJZTcLqJPJF32udub6cFJ/TxnwI/BiW2LdkyXLZCredv9CTNkmzlQMouNh04a76zpI92Epvbm+9
	3F0xXZJ/iZYDmyA91djAwAOaWnD0KTEzTPbWLTLmdi2NmWp6bYQy3xHhxyzSY6PYsPp4BBSXet9XN
	kf+nuexTXQNTajmroR3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utSBt-00000000QFy-1nKD;
	Tue, 02 Sep 2025 14:40:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utPX5-0000000H17H-1wXf
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 11:50:40 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582Aiq1Z029695
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 11:50:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5EB/XrOSwrBg61UCKv90VdlyE8eMUv62GQ7Noo3Ndow=; b=nybMVs+EeKRJq3LU
	bPFyv0XreWU751FtGKaUNSSqfxImrsxXGm4HO76Rs8IjceRiN/7h1BfWakmZhaMW
	ik3zINYG+NTEQPwfetg2GfiA18kcbVoNTKxE8b50RWjPZGZ28QKZqqHr4gahKllq
	qXFnBR02M7R2ksQyqUwFVjQA5ASDMJbYVNMrHdcjxejP6ogAKHXU6Ot+Mj7ghEqe
	UOMNbwX4bgnM2n80mbKA7spzXNa97mkMgE7HHybsXNuwBpbSPZYXAsydbcfIdvWI
	Cky99Dw1803sPo7Z89Ps/TubwD1L+wTkm5qFuo7rx+Pisn49zb+De5Qcc1jGiFBo
	TZGceg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8qm9h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 11:50:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so87801cf.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 04:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756813836; x=1757418636;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5EB/XrOSwrBg61UCKv90VdlyE8eMUv62GQ7Noo3Ndow=;
        b=fP7HLWW657ogkLHZ6xJt1iLQEPxR3/jobzBluPeaxoDZcn1UA0QiaUrU3s40qzn2M8
         jA+3JvAh0zR/JtcaU6+PUcwYL315S4TgbWU7ZM5TtjQ4I9ylEw4Ds4AiFQttaC7T/REo
         7/P5UU7Wz1UN++opObLnV4xV+kazIZbYoH/SPkgwkJ/WSDTaD/VCL/pefFdq7xa4AmWG
         6nZEo7a7nbI2JBncj1/Hey1toFjoXna0loXMfzQZLhAUc3CxV094R+Uj3IgmkDM8tKLW
         Ep/GP+19OM+nQqwfsj1cTGWI1Y1A9eJAfsG8ZOi6cbTLTFQ/o7S805MsIkMT31nNdEHh
         1OOw==
X-Forwarded-Encrypted: i=1; AJvYcCUk8CPcg02DQUhO0ZaeYedd/UzayIwMbKJH0Rh2oaqj96PNTIVUu0h6EbDIBndLl7XdzLk9RS4ZnJQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUyivJiC4TqgtgcMWC/IAf5WAZQ3NyBA05bQQZ3l7Hhxo7bcLN
	BsPl+h/ZiXgStEcsCIVHpUS720OxmNrOd0b9SbIIWkGx3ooeCsY0X5UtWO/DgCoxfQ/pSkuSm1O
	xaT49URUtk8QT3DzsiNpuX3vYKHkEXCgM9DoNCzzk3O0kCGr0sQKXQii159jBiIix4/EI
X-Gm-Gg: ASbGnctjKlf5nA2nyx52VrswL25E3iDZRpo3U9wATI7RpNwfDqdA929kNYUkrtprmK9
	rY0oeeyUAGjvLOcCXqZY/x539GkgOUJoYM7Kr1YT2teOQOQE4vH0AcZgoeHVaqi2iCjxuQAvlVV
	hTWKcx0VVMRip1qTyCctHENd1/RgIt4JroqBgm5XRUskY7OwIjsVw5CyS7WJ4E0wlJjyhaWmIny
	OWsrdbUpblXoLbJ5WOlPWY3py5UFPStbPM9hq3VI75gttD3xKgYquzbR+0aGrNtbwEVSVO2UNmV
	ooDXF1vx8xdCYdeUG9tU3FsLB1X2cYNaRZpbOmx0CLIuxxAfxuS7lHZxZ1M5WUSREuneImj+MUa
	LjxSn7Lczx8RaaCrSk/1MuQ==
X-Received: by 2002:ac8:5ad3:0:b0:494:b722:141a with SMTP id d75a77b69052e-4b313fb8f60mr107758201cf.13.1756813836182;
        Tue, 02 Sep 2025 04:50:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+rzTco+7fQp7WZWydorG6/Vw8s23rOxW1SECVccT+ronOW4dFkZRBskA4ygd4Rv1M9i7TYQ==
X-Received: by 2002:ac8:5ad3:0:b0:494:b722:141a with SMTP id d75a77b69052e-4b313fb8f60mr107757911cf.13.1756813835705;
        Tue, 02 Sep 2025 04:50:35 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04132c77d9sm665564666b.20.2025.09.02.04.50.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 04:50:35 -0700 (PDT)
Message-ID: <4dff9cc2-2152-48a0-b8ab-eea57ce2ace2@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 13:50:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
X-Proofpoint-ORIG-GUID: bsIyVUTAWHfoB04maePSMywsI2XRDEZT
X-Proofpoint-GUID: bsIyVUTAWHfoB04maePSMywsI2XRDEZT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX9uTQkuSUl46B
 CDw6NS469iQ3GguLV7JLWvJfEDEYMOX2Pnjp3nZYWIbwd2XM8Ki0ftmqgAG/+AMWakc3CBMuUGD
 CEdv18yE/ziOmsSmfQnMO//YmNUneV/1ASKiV6Vtog3brVlQkXakmchivzo5vU1eYjs/p9S3WsQ
 ZVA8CGjah5vcsVKE7MYm8Ao7UGJo9+3Lfh2ZYF9/IsxN7haWBNo3w/HoKlxO0pLzra07YzEY4tM
 1ctjE5UsPk1BSySZrWO1ftKEnhls0Eay2iX0WMy1PCIEG8l9Hj9pkqdsbH2P+yC63WLDVT+NT1n
 8Xh9hCZbn2ag9stAK4AyPqNENSOnrpLgd1gQt5HuPBxAxZt02JyrpcC+iHy9YIh2m5svsPkV95Q
 8wEgOBMR
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b6da0d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=TNrL9Qa0OoqJGZUcVMkA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_045039_649960_4CC4A27F 
X-CRM114-Status: GOOD (  23.64  )
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

On 9/2/25 11:00 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> The layout of the lanes was designed to be mapped and swapped
> related to the USB-C Power Delivery negociation, so it supports
> a finite set of mappings inherited by the USB-C Altmode layouts.
> 
> Nevertheless those QMP Comby PHY can be statically used to
> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> etc... without an USB-C connector and no PD events.
> 
> Add a property that documents the static lanes mapping to
> each underlying PHY to allow supporting boards directly
> connecting USB3 and DisplayPort lanes to the QMP Combo
> lanes.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -76,6 +76,35 @@ properties:
>    mode-switch: true
>    orientation-switch: true
>  
> +  qcom,static-lanes-mapping:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 4
> +    items:
> +      enum:
> +        - 0 # Unconnected (PHY_NONE)
> +        - 4 # USB3 (PHY_TYPE_USB3)
> +        - 6 # DisplayPort (PHY_TYPE_DP)
> +    description:
> +      Describes the static mapping of the Combo PHY lanes, when not used
> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> +      be connected to the DP PHY.
> +      The numbers corresponds to the PHY Type the lanes are connected to.
> +      The possible combinations are
> +        <0 0 0 0> when none are connected
> +        <4 4 0 6> USB3 and DP single lane
> +        <4 4 6 6> USB3 and DP
> +        <6 6 4 4> DP and USB3
> +        <6 0 4 4> DP and USB3 single lane
> +        <4 4 0 0> USB3 Only
> +        <0 0 4 4> USB3 Only
> +        <6 0 0 0> DP single lane
> +        <0 0 0 6> DP single lane
> +        <6 6 0 0> DP 2 lanes
> +        <0 0 6 6> DP 2 lanes
> +        <6 6 6 6> DP 4 lanes

Would

oneOf:
  - [0, 0, 0, 0]
  - ...

or something similar work here?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

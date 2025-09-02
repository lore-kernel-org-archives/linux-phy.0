Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64AF6CA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeU/42wBm6ax2oVzgiH5cjLs/h59S8rvwK/aVimw63U=; b=cN4Qo/V7KAHEMp
	lFY0TyTk3+zpVLv12u+bUMcLHixxPK7OxSNGgT4iwlAMqAnNiLuztHp/I+zz8UU22OlB1QEUl1cM0
	1WJt7rFiQeuS+ybfV1yK8XhkQuVIRwoGqi6FZjJz1R9cRVoQpM+SPEmH/Wy7ApgmynwDyu7Ir+Ri1
	I5wivdiFOBMe0KvYzA0GppvhZRmahO/N50p7OtvP9bv1T6lSaDdqAqf7OxKVo9gD7f30P/sE/IlGN
	SB4Z/d2M0e9DnnyPYloWKHHIBmVsRuTy896XXOrzvaJilyryIiLIe3wMUp9+Ac2YYXThza0tvfIks
	UqOoeZnMi3kAj9dFEvgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ8l-0000000HGfB-004C;
	Tue, 02 Sep 2025 12:29:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNLb-0000000GO9p-3HYv
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:30:42 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822S9MI022293
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 09:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jA18KHak3xEuH/pG/ByyPr54
	rqvVPspGXhnOl9P369I=; b=Ogeea3KbBKvZAmnR6hReYKQ20SGd+Kjeo6dawV4y
	mgFQFWWbQlVO/hmrq+rvFuzd17svyADjmJkKjmiGNQt3OcLOhR/dPfV0y7wPMseS
	LeC31ZQ9EQT/rix/tKEKoOmlwy9uWqLdTArgauq/XIdrmyAPdRBAqbb/yrGCkP8c
	coNen6GhHRsGK2N9JyiuVbLe5NrNg9ZQ2rjmSMCi1zGMZNF2KUV9UtMC80hergkn
	cGa0HyKoAGI+FdF4UKElq6b+uSy2wLtbcg7IIUZUAizjMBaK1OQIv3LDFhcnOFZE
	K+wMq5vT/BCzll+DACmOZwpRGkPhI0KUuLEm0mp5naBNCw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp7eqw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 09:30:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b35083d560so1425311cf.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805437; x=1757410237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jA18KHak3xEuH/pG/ByyPr54rqvVPspGXhnOl9P369I=;
        b=XCSnll2A6ZbCcYKlsElvFbcjNWNImWwAHzC/rYTxtE37bdDBL3CBBNkho9dQIh9Z6a
         8RSK8MMQCG9s5WRSUUEDYodhJ+IukeJayux9aG8Csbk3L0CcYJv7K1sg0zVUb60OX/fG
         K2lO+Gs096K+JRSMIS6OTreZY18WsQ13lm+pc39reX4Ve9YML7GW6Pi2KvhIbu5ogGxV
         xNpScCgwvL2ZcNAQJetmFadKdn2gVtgEo+9X5DNn2/LK1nXlRF948fGPiSwGAZEiEm1n
         BulbdytNrtGwDYNAtjhCH0tOd2eQUo/myDY3Sg7Q/xrCJXa2of2+VGG1rJsaLdxnvJkE
         /FTw==
X-Forwarded-Encrypted: i=1; AJvYcCV903ruW7q+NQkrJQ22RFR26N2E908QzCp+rorGNUb0OSzELTI4znWhCwH9SKdQTVmSpDNw7u5GcC0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3JjDzfSNkoY4vYp7uOxNhCqa3tL6LOflt09HpGN2FuppCQz6I
	kySzhKBoHYmxdsSekFpgn16QTqzoJUt9tcatwjj4W3xiGM44eyQ9r++ZHv+k90hjVAEqRVf4h5e
	CdR8Zr0/NYkG+yNmLd7gWx0GeSU6qrkRKwP1axYqR3mt2SPNyAyAKDgOWAW3TDx3LWZ3P
X-Gm-Gg: ASbGnctLYySjcf2vM2w75CsVdSDL7D4c6Yj7aEmljdlNd+xx4zMxi8hO//sewMKC3L4
	buESDZNOUYTAoma+egDxqRMmOQvT0O0SdKWb0WJFx6CBXpuEJS6FnqyH6pUvkikDmiHOoZJzNVb
	3iqMEob0Duq8VMdaWQ2QOBgCpbFnhjdG01i0hH4zV35VhcFNqIOU1h9ullzs093Tw5gZFE+CHtX
	DXcIgRcavk7zdJ8vTx/sfdnIKLcf5SPJBx87z+yVFaZnoQpY5NeYfH4stEzq/WfZi6iKMqleoQl
	wFOtr1Jn2w2OCKJHwdfFJlgxpPKQIdqnuvhL82sWyG5KExtu3yi0oUc4P1zDWFDVv14pARrwumg
	vC+tG/UA+MtF+SM6OUtnfa4DDk6XXVu0HanGTb1ygpQrPEkRGYieD
X-Received: by 2002:a05:622a:2609:b0:4b2:8e41:1aed with SMTP id d75a77b69052e-4b31da37e70mr123618891cf.50.1756805437315;
        Tue, 02 Sep 2025 02:30:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3B2sMY6mhuzZQ9BKM05I6HOCeVfKyCF2/fNLRfgWKFDFDuw/uEv61rjhN5aI6FvZLt8UIZQ==
X-Received: by 2002:a05:622a:2609:b0:4b2:8e41:1aed with SMTP id d75a77b69052e-4b31da37e70mr123618381cf.50.1756805436682;
        Tue, 02 Sep 2025 02:30:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608279d2cesm541552e87.112.2025.09.02.02.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:30:35 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:30:33 +0300
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
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
Message-ID: <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
X-Proofpoint-GUID: iaiP4NXzpSxWTDTLMcovK8JpU3wJndmS
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b6b93e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=h5iY_YrdyxaDv9g1vm0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: iaiP4NXzpSxWTDTLMcovK8JpU3wJndmS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfXyCYfSlWqwuKx
 wvTTb0tKubEcL/F40ShdQa7ddSvR0XcCcQg3J0RgrF+81dABMSglkpB+qR144oqlAHKUZFmeaac
 oHvZyaAwNFcmWSJya2gggk24uAtgfVIC2yt6h2YOfCKz7mkgRreaL4hS1wUn0fErPe+zaGrA68w
 I8fu1FRZM1qGFWNzcKEqp9Sl/5xSPya38Mfs35uA0HRDHfDGpcAXTCsrAzG0jctKLDxcCAuTruq
 yFfyEr794YHbVtKwvosiyI0uAxyWO0zYoPhfL/yHA6LtCe3JvM9IwOJ9TA0kuWDnoZ1xfEi0dcx
 D4ym267WpUfJayNyTJlR+JSjGTwKLTmnmdtRElermdcXWKSj4Vwur/Az9ka+Q2x2921UB1B8xCJ
 omC2ABTM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_023039_979317_DE2A1AD1 
X-CRM114-Status: GOOD (  27.32  )
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

On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
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

It feels like this significantly duplicates existing data-lanes
definitions. Can we use that property to express the same semantics?


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
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

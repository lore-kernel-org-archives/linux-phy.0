Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CE2ACAC58D
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 06:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfkPaVQ2Qj/SHUxspSXqCWHKoHh//8IRWNcss0wZcH0=; b=zOg1CoM2nRMvle
	rXsabaQf6MIxqo/5gNrMuarQqfR8ixY2s0UUVegOn7c20Ol6bBS0J2Xbk/KhM2abdUhvLEOMExlF9
	OxeiaesEXbWODSm4S7vZNr8vaCKqRCX2DAqYEC0v5bFRy9dy2Cuu3+aFvTycd/UYqxYtH1f7ueNS2
	bA5ssz9c1Emrni12ompBZP5PeOb29iaHDSKVhK8fickyjPsBUXevyr6o9XFaHIczmdlLfGnDCMBgn
	C2eSOTLFUi4aQjo5FyBayULydevNNP5cMMNxfTU6vZ2CogOsdOYcC+0fwnoBFdbeCfsNBbAva+zV5
	OnSZw7DWkUWJONYzmxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsC2-00000004pjT-3q47;
	Tue, 09 Sep 2025 06:51:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvjCI-00000002PL7-1mkM
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 21:14:47 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588GIB4p028663
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 21:14:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gGFqDPUT3FFdS1GHQLN/aMib
	+ITPMyd8yB8R5vRfLy0=; b=IV5j6zDZg1Tozh4mtrTUk91Pr/3XOjeFLYI+/c8Y
	e1unaMz5dXDEKp3qW7SNnu/cKVsjZXDvgBP8bX3fFsY1DqwHkqeQIDlw8vLlBmf/
	cuiRawgBccD+zL5fU+XDbI/StBHngxyzHRvsWZXkwC5gO1ciYoYBnYgPJESBh6rR
	mlOD28sM6WzFV3EQfZXkTcqhZB1fmR0VALWrEdK0ZUddzLU5m7cBUJI8Ix4Izt07
	EXD/FpK31o/TTI8oriCpoLbaAPCFOQ97nenKfrhZNT5kvsJXg34/3bWgkU+02vbK
	9vdN0s8Lgr+4wUDa18ZNBeuj6sLQ3OaoPs/7tgeOz743Ww==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j635p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 21:14:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f6eeb20eso126187541cf.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 14:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757366084; x=1757970884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gGFqDPUT3FFdS1GHQLN/aMib+ITPMyd8yB8R5vRfLy0=;
        b=tcMDLiw980rFdoJH+XVAbkXT1bV63LYxbbLFoqKD/NEi1kliN6k3mspDrTCcNoI/89
         xCij/PIWJ7CMCy0QuTN1fFV2652HhY1rTNxNPH22U43oVGa6ejQm/sC39//So3eiPA8x
         6+bAvStWtofaK3fvWH1Aju2nC05uBeCLUnK19/BOUaYgUt64JkMWBuvTYhJnfxY8OeYR
         dx1gimIaytaHHs5XHizdoplf6DJ6EW7p7QLxtXuXQYysPkWWxsG2NCfvo/8LE95RM3Zy
         JspC9ELzgxFyaxL8h/WbKtIFFrE/0nhjkAzIUGFNe7NCgeD3yNdvxUcjqkUw5xHKA0p+
         AY/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZiGDfzffcITSnhkDaksBlm2DtCjq1o1IreryWcXoToxHtUI1wKrgOZ8iIJSD4yljgXgyMNr04izM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwL3sBiyCY6sB8Ah1m7Z8Rvbf9ihGm0jopVUo5f92jsud5fQA6H
	8K/wxJHgLa8h5EY0o7XYka5IJJZJeLALr6bZtovV6kn1GqB4RmFoKEXFS75zTvsm/82HgNNpdlD
	5K2HCiPYsREeVSiEfWqrdyof92K/seGgyHiWM3e8//oAN02wHtrR9mhWSwG+n5KqE+bwY
X-Gm-Gg: ASbGncsarhGSSD2fnMayrmW7gITXuKACYGzQKYiTBMpc3h1eJNKfjHeznK1o0KnnLI+
	83ysrlHGc5Mwin8CNIajpFU/iPJ0ML+iEnxkABY/mT6F8QIi9h1lqiVi59B1wZJZBwWJxDE6N9a
	gv4uB0VVa6m3izpZfOG1Up+2mp45jHiux2L8m+/b3tWyshXdwAi9GyOzT8k1PEiWnTpk4Se6nE3
	8f7SMcjrLEjL+xiCeqnUrGlzVzfAr3tYyx8UQlR0zO7F4PVqRKe8NW+KznlM6OCsrABDYuvUnNW
	wqWuJ7JNWLqs9TMiNaJYLqvkvVpzof9jh3sqjzm918bJD1TMhp6N/exQG+ovLHolqyBJylJOVW2
	0FYujcJH83a99irlHuLzD+pFr/M1F3Mnc62EUDBxJ4Hn+pbQalCjq
X-Received: by 2002:a05:622a:48a:b0:4b3:552:27a9 with SMTP id d75a77b69052e-4b5f84650aemr96693441cf.58.1757366084184;
        Mon, 08 Sep 2025 14:14:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0oVHFI5EIDxHYHpoWD6bO+otPWX2dmEW+dVE7ydmDEbNxbxrGRzABsbieuc3+w78vdOnHmg==
X-Received: by 2002:a05:622a:48a:b0:4b3:552:27a9 with SMTP id d75a77b69052e-4b5f84650aemr96693011cf.58.1757366083658;
        Mon, 08 Sep 2025 14:14:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795da99sm21668e87.76.2025.09.08.14.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 14:14:42 -0700 (PDT)
Date: Tue, 9 Sep 2025 00:14:40 +0300
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
Message-ID: <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXycOzbqfgWiwk
 F421jEbdhcPFagzNpRI+zuNvD4YyxZsLBhBOSnD+dU6VpnyjaE2SjIyQFiu4nnYtJfDd2kjK127
 k95RTxUsiegP/KPNle4K57aEXIYFrE1sZwNlWKmM8ssH3hR2qGYIy4IqcLAo1jDe7PDZSsTyFVb
 Z3WFcVyA7ipYVg8dwGVLA6IYZc/F46ei1+lAwttL5XudVjP9B6JsC2DPDOxH1tUSe8elsA+D7nG
 Kydx+MIv9Ludm7KEtFFYHrMbG1OOnx4JZF1fbZ+m1/KucVueD7LEAxyHwzYZgGFNrW/Q2LlPUGR
 TxJkedDXBb6KpikBTpd2inwc7Gn26VFQ9weml/dA1ZHIJaHshSJ5VKBtgfisWScqcrfJFSp1TNP
 I45tFYer
X-Proofpoint-ORIG-GUID: sPd5NwJGbeo_ibJ-Z-oaAPt1Wd_fEQxZ
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68bf4745 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=MealuuOmK2OQarRwPrkA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: sPd5NwJGbeo_ibJ-Z-oaAPt1Wd_fEQxZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_141446_583985_72033935 
X-CRM114-Status: GOOD (  25.54  )
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

On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
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
> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> connector, DP->HDMI bridge, USB3 A Connector, etc... without
> an USB-C connector and no PD events.
> 
> Document the data-lanes on numbered port@0 out endpoints,
> allowing us to document the lanes mapping to DisplayPort
> and/or USB3 connectors/peripherals.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -81,10 +81,67 @@ properties:
>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> +
>      properties:
>        port@0:
> -        $ref: /schemas/graph.yaml#/properties/port
> +        $ref: /schemas/graph.yaml#/$defs/port-base
>          description: Output endpoint of the PHY
> +        unevaluatedProperties: false
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            unevaluatedProperties: false
> +
> +          endpoint@0:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            description: Display Port Output lanes of the PHY when used with static mapping
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> +                minItems: 2

Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?

> +                maxItems: 4
> +                oneOf:
> +                  - items: # DisplayPort 2 lanes, normal orientation
> +                      - const: 0
> +                      - const: 1
> +                  - items: # DisplayPort 2 lanes, flipped orientation
> +                      - const: 3
> +                      - const: 2
> +                  - items: # DisplayPort 4 lanes, normal orientation
> +                      - const: 0
> +                      - const: 1
> +                      - const: 2
> +                      - const: 3
> +                  - items: # DisplayPort 4 lanes, flipped orientation
> +                      - const: 3
> +                      - const: 2
> +                      - const: 1
> +                      - const: 0
> +            required:
> +              - data-lanes
> +
> +          endpoint@1:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            description: USB Output lanes of the PHY when used with static mapping
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> +                minItems: 2
> +                oneOf:
> +                  - items: # USB3, normal orientation
> +                      - const: 1
> +                      - const: 0
> +                  - items: # USB3, flipped orientation
> +                      - const: 2
> +                      - const: 3
> +
> +            required:
> +              - data-lanes
>  
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
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

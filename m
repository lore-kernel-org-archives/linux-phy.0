Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E677CA1002
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea4szgz4uFC1fAwMqhACvrKckuMUxzcKlYrLGPu5r/k=; b=LSxq6KZ8g2cax1
	C1Ognzlo9lWLoO4Sk0+ZcM7ZKBLBix4CSTzV+6zjg4jN11VVspx0hHMui5DiToS7pOC19VU5w5dDM
	5z6/tuq2UrNAcbP0fssma+ouaNfPa9cdA1PmjieVVEel7PbhDgMU3qJvkj+3eXIfFvoJyM+06rAsT
	em/51GDxY5MGRi4RMgWNJS8xM64a2yELSSVNXdAWGMtdMxXySMH4LCSMphK+pKcRefvNYIolif1he
	wSFKDR5aRZtMFFx/2SZ/9fAic0UqL7UcSCihUDbKYhDaEFJaYJp6b/tgQnJuJI71gMif/5VfQAik/
	4zbn0fFEmPHAHPidDzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuyaf-00000008Mpm-3pzF;
	Sat, 06 Sep 2025 19:28:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuyWz-00000008MHL-0Fbt
	for linux-phy@lists.infradead.org;
	Sat, 06 Sep 2025 19:25:03 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586HFGpw021328
	for <linux-phy@lists.infradead.org>; Sat, 6 Sep 2025 19:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MTEK0pkDHJjciIVxHN9OmhQI
	NcjLjs9n3rxGq729tTE=; b=DdPwKsIYMWvg8x8N76/OFmxu4st7+i6Xm7nNHoSw
	xxhOS07Bd2FmXKrePMmNQYdbHYKjQoPCG3umm6WMnxbKVxSwvf75vSmEh/gnQgDt
	cGcN5iQf5KAl/fIsxs+Bt54Nv5Fn4wB/CCns3U9e7jfMq1WvIsOOADJz1WBk6T+a
	tdm3OwCm3rhaL1SMvkjAEhPrSdyXbEsmgn/ug47MTLMBZ4magi4oHWuETK7yLL4k
	uibp/5MTko3mD+NBYFBhLiONtePX0VgTV/nrDBHST/kZ4USRH1LLyJoutVDJe97V
	HrcemKRKeA56msJcbfWqZ4SC6mdRryL5cWZJr+AOOnkc5Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490d1v93tq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 06 Sep 2025 19:24:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-72631c2c2f7so69400126d6.0
        for <linux-phy@lists.infradead.org>; Sat, 06 Sep 2025 12:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757186698; x=1757791498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MTEK0pkDHJjciIVxHN9OmhQINcjLjs9n3rxGq729tTE=;
        b=EtquZXJ26q7X09UiiDr5gGID3fYoI7ZCU07yNxwy6nyYMVcBW43wrXQgHuh4BrIyIm
         RahCEE3hk+iqD1vgk3K330pxI/VhIivJPN7WcdjC3vlI20m1zFg+tuVeJ5YywxX1zL2/
         sDQnAyW77Jg3U5W6/9yus7mw39lW/ZmOm4j20VRgzYcrK1d81kT3J98CxGqg4jmrEmS0
         nMZ1d10fSfQYjX25BTQhvPGjVpS4SH/5b/la5Bq5xTfho62P/2BPO7Zp5WivtmwvFBHt
         tA2D0tA6hIZb5FTpyMRi08w/ROqSUHCbh9VH8M/6pAhFAeZD/Xz10VtupZ8eBDrIGEaJ
         711A==
X-Forwarded-Encrypted: i=1; AJvYcCUOWOmc/Asu0pqXAT6sUdr3b8YlbWmUlDASea+PIl2PWY1XJXTVZ7JKquvs34wyC1TQZ7DZfBSv7TU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywn18Ql/TskY3qVvdc1hLsh59m35g7Ww0YH9VDttdnvULKBzznX
	yY0W82nyM1PiCQH8vqsaVhWcaVE0GsW2WYYbjDAhtfRVIk91PZUUjPGrKFRsKSEW0pNbUe6oyoe
	6UjoembhVZ/WOj3+VS1pG9wNpXF1s5+8TWGVwllioyYwAIO+FB/x1rYLwHmYMOhiaddGf
X-Gm-Gg: ASbGncvOaGI9orURNDW/mLyiVUej0eiByA1AsXe0Ctu2t5QLH3Oysc2AKfELOGZTzXU
	IGeOWXAEjxl6Pi42eyk4k5Wg7UBIYQw25Xp15yygkPhAEoVOIVjI8tBjMLSdMtIVvpQyBjq8HhU
	BIDEnsru9Fwp7wXYVKUX2NH2n6gCbduNC93Mg8oV9RwrpmHflEW4gBLXVvZaqRnPMEKMINKqUPZ
	AFHAIhtRa42jaiItZal0FpjD7PdPmCksgiTjkSzdyUbi/r1jA9T9585pzDjJSPtJEDWP4rDjxth
	yKed6YL+x2NyIr//ZAbtIhgQnRBQozmq3B8n+qI4pDDOfXTMYJUI2wzW6sJtx0G4rOFYMPMRNiL
	K6wkfVIxg7yIMzoxkCqMdh4hDkIHY8LvMFawTim/94BiPdoQxrP2w
X-Received: by 2002:ad4:5f07:0:b0:728:4af1:e4f9 with SMTP id 6a1803df08f44-739435cf288mr38553296d6.47.1757186698184;
        Sat, 06 Sep 2025 12:24:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrz7N2428ImzsvEUQElMBkqhCweROuKesIV1+3pYGl1R0oId7O3XdYr9aAYzNEBMgDXflUUA==
X-Received: by 2002:ad4:5f07:0:b0:728:4af1:e4f9 with SMTP id 6a1803df08f44-739435cf288mr38553016d6.47.1757186697694;
        Sat, 06 Sep 2025 12:24:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfd2ffsm2500187e87.107.2025.09.06.12.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 12:24:56 -0700 (PDT)
Date: Sat, 6 Sep 2025 22:24:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Frank Wang <frank.wang@rock-chips.com>,
        Zhang Yubing <yubing.zhang@rock-chips.com>,
        Andy Yan <andyshrk@163.com>,
        Maud Spierings <maud_spierings@hotmail.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/2] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Message-ID: <aLyKhngeksG2SKdq@umbar.lan>
References: <20250904-rock5b-dp-alt-mode-v1-0-23df726b31ce@collabora.com>
 <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
X-Proofpoint-ORIG-GUID: 5AWCLn3uZXuxufCEK9b5r7P49cPuYLil
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNyBTYWx0ZWRfX1EaKnQXnITb6
 tw+I7nrVk5TlpYKwcsZfE/oXkfeu2eGoLfazUuMRFeOsypT7xIz5RZ/F6gR9ybaWqhRlcLlLsXJ
 Zgbbin7/Kp+Utu7NtQ/L6UVj5PfnM/Oe1f48IidrJhhhLV2nvp+ckOVbGyBjTiOHTiazH9wlI1A
 vitIkzrftCHU27272HJatZfJT7nKDSnhYUFOk8qKO9OrQX3YnzLsmS6+dvgNFG1RVlO3RMyA2Gg
 JfOIVmHh8FjFzLfsQl1P0VL7seB97VjR/b+DMawcI1/iIh9uJqNVomsQ/AftNU2tNVNfMImEdZC
 iJSq2rt6GukT4BKG29h/fZedfRPJvO9ZymXqpUxoSl0iQCegFIdiBCp6NMI5kX3zRQhNYaj77Q5
 uhoPGIhM
X-Authority-Analysis: v=2.4 cv=cYXSrmDM c=1 sm=1 tr=0 ts=68bc8a8b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=QX4gbG5DAAAA:8 a=OfM26ny4dbP1suOavW4A:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: 5AWCLn3uZXuxufCEK9b5r7P49cPuYLil
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_07,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_122501_214320_95021DBD 
X-CRM114-Status: GOOD (  29.24  )
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

On Thu, Sep 04, 2025 at 08:26:02PM +0200, Sebastian Reichel wrote:
> Currently the Rockchip USBDP PHY as a very simply port scheme: It just
> offers a single port, which is supposed to point towards the connector.
> Usually with 2 endpoints, one for the USB-C superspeed port and one for
> the USB-C SBU port.
> 
> This scheme is not good enough to properly handle DP AltMode, so add
> a new scheme, which has separate ports for everything. This has been
> modelled after the Qualcomm QMP USB4-USB3-DP PHY controller binding
> with a slight difference that there is an additional port for the
> USB-C SBU port as the Rockchip USB-DP PHY also contains the mux.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> index 8b7059d5b1826fdec5170cf78d6e27f2bd6766bb..f728acf057e4046a4d254ee687af3451f17bcd01 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> @@ -114,6 +114,29 @@ properties:
>        A port node to link the PHY to a TypeC controller for the purpose of
>        handling orientation switching.
>  
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for USB (or DP when configured into 4 lane
> +          mode), which should point to the superspeed port of a USB connector.

What abourt USB+DP mode, where each one gets 2 lanes?

> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the DisplayPort controller
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for DP, which should either point to the
> +          SBU port of a USB-C connector or a DisplayPort connector input port.

I would suggest describing this port as 'DisplayPort AUX signals to be
connected to the SBU port of a USB-C connector (maybe through the
additinal mux, switch or retimer)'. It should not be confused with the
actual DisplayPort signals (as those go through the port@0).

In the Qualcomm world we currently do not describe this link from the
PHY to the gpio-mux or retimer, but I think we will have to do that
soon.

> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.50.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

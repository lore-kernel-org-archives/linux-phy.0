Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F28CA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uo0ZZBhQPPU8hRddlsdjxVT7yATIrcWTFrimrrYzAV4=; b=ejXK/2ot08K9zS
	cXDuovLUShTKkbt3sgc+CUsnUORZjiSRaeJRlB2jqIzTfRbU7TNEx6wUs1gbuM2XNV9DmBGeIbkV/
	htWW7bBetZnuP8+mC42xXeRFmuZovfhybFLuG6hQ7B0Klwsx8IcNe2EB9A3lE4UG/DdKHu8Jpypma
	E4MdLPZW4O5sLLDpARGSGSYfPiMSgSSVoQGjY8GRee8iqMFtwREz37/H0itZ5lFThV6EFyMeUNscC
	uHebPgID9bp0yPqDOlkWkmW9toyltl6UCVq9aSdC4xxf+vEFbI45Bp0P+XEbUOgD9tk+yAm6MENsP
	MzzYOkmUgMvHmYfSpRCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ9Q-0000000HHWn-3C1l;
	Tue, 02 Sep 2025 12:30:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNaY-0000000GT0F-2akc
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:46:10 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RvAQ017489
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 09:46:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kuvcx9dK+4uPO7PcKf2xDvCA
	/wZvMuQBYtW1BRkUMHs=; b=bMAnIhXaL4tjXQoR242+kYg3wyyhu8xAaePglGcF
	rX5tb9HzfAvjws3tmxb8bkdJ2TKxWrbU9xEj43O1eD+HVJjlOMgxj24sZL0ifFU+
	JGPGBe0mkYm8Dsj+TkVgO7vcdqsX9MNKNYXdo3D5wMX1M9l2zdQIjVY4C0q88Xx7
	lMzcCHo8Rmiz/CvGGDJPKCz2s5zlaiBsqoF3uoaaYnV8ss3UkYTgR7tyzqTA00mX
	ub09LEkAnNUF4EsRb9ap87MR16rrRCcYmp8AcAGcvOoqT1mfVTvQl8WwUX5AgobT
	OiQwK0kRTpVrWwJ+HjHHv/LHOz+Celi5n2TutAWVr1VMyA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8y596-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 09:46:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32fe42b83so32230991cf.0
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806364; x=1757411164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kuvcx9dK+4uPO7PcKf2xDvCA/wZvMuQBYtW1BRkUMHs=;
        b=qlJlENJ1NtuHIFh2bAqjaoWQZ0VO2gkCXw7L5hGutIAogcG8NsVhz1QdunlvEmqjyP
         LPhFeFZCoD9qg4KCraX7WIS5KrkAizqkuOzRnNlBvtAKqxyDUG1V3Up2Jv9SaFShFXDO
         /1j1Pdqx48j86jKIm1Z5Tb7HyLY9HwVRg3i4DL3i/sOKo7uuwQ3EHy9OFgbjdk84+ofb
         ZJGVHHDd5kyCz6Ta6e3FDSNjHI+kgeASKwBO+JX65AiJHtyULtH6pt7PO1bWOygQxHa4
         dHdLc5p3UHbPCfU8hfDDo4TJxL10bg5kHKy/KPTYTG8Fd/P+RCR/gCWlDKfc33O/hwNF
         Xgvw==
X-Forwarded-Encrypted: i=1; AJvYcCWA+evzHDEqvok7m+JekIf9SwjNgF1J8DfwRIdZo/IUIix/SUwpTtLSiq5wDLUZiFivY0FdBnjETMY=@lists.infradead.org
X-Gm-Message-State: AOJu0YziqXOjA7LxQSwP5pM3VzFbdqU3Zdu4xjjL6/2gDsKmBgSZ9b1W
	GZg5qL35b+HPGmM/2tjSKjxpOMcEln4Z9Rn6HoaTI+t+Efe4JmtWJQVAzrCJu5c3DmKn/0jXG7s
	bZGxehsQNKrBKajrZ0UgIhOfRXNDA1oMzjnQ8nK/LHSQ5EC2M80YEMY7FU1tGEZb+Ts4TnNOL8r
	9W
X-Gm-Gg: ASbGncuqxs4otSWXQV3M0lmOJvSvL12QGDfsYodhoTT5j+++JPoqojhdYmlBrVYXvc5
	PLkTxrZXV9P5JX14l3T9bosjbQmmqNUcf5DCOV7tfr7iJPCl0fa6jvwnui21h6xg0VehkxvHcB0
	N8PC7JacyzmO23Qkmo74KjcNbep/tLFh7omyH532Jl/Kx0ruvbU2ku+cFrj4ILB8925tXW0756m
	/xNTxyUv+YP40KeIeQfFzINS7M5spdHGO3DIFYIZ5fKlnoiH9K0btcc6v3FEUicGnjyh17zG6SV
	3DanVedZxD7a+DBRK+lO1roGo0UvVHQMSVbpn3O7w2bQxcllD8kZRTb8Vwo4yS6SGcK5WnOiix4
	wfy88uGrp2NZcjUiWIFbXW6BmoV6+w4Vp7PRqjnPeB/B0dDgSdbFC
X-Received: by 2002:a05:622a:1898:b0:4af:af49:977f with SMTP id d75a77b69052e-4b31d843106mr110963061cf.30.1756806364133;
        Tue, 02 Sep 2025 02:46:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6+NH9LnUGOobc8Z3ipkGt2tyqr1PSej/+J4YRMh0RhCCuZpIUdsEIhFAtonApsNUh/JxvIw==
X-Received: by 2002:a05:622a:1898:b0:4af:af49:977f with SMTP id d75a77b69052e-4b31d843106mr110962671cf.30.1756806363442;
        Tue, 02 Sep 2025 02:46:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c91d37sm3581281fa.19.2025.09.02.02.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:46:02 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:46:00 +0300
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
Message-ID: <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
 <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
X-Proofpoint-GUID: 166aPdl7YiAE-yzp-NCQcZaYZJlRyDEd
X-Proofpoint-ORIG-GUID: 166aPdl7YiAE-yzp-NCQcZaYZJlRyDEd
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b6bcde cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=SY17gm6z-Ks54HuadOoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX/sWOgpZKncG/
 XpHuxHuZK2FoLnSNbMwTZ6ZzNlFZfGbR4EyrcVbW6GjDIFXUv6OBSD+0JH7NIniaUipVAHWkTRk
 +L5kWB7Ej+V9Dbf/d+PQD34GrVLaVwXHCUTX94sx3XkZf+bA3nZijP3Zo1CcrQ325nWp8/Jn37h
 63Xr7knVUcIdDIL14aNbrMRAH64DFEeLc/WFNdVjMsvT+Ncct1OWOG9qHxEdsxY2JRAMeqvM3FI
 E36zSFJRcGv6Y8+UXjTSnFTFRCjUU2XuM9iEmsXMx3QWBFwIUKj57cDhpWL01D2HNcRMUzhaCul
 phz8Bb6isw3Q9gK7tV1JrUj8jq6gnO69c2qubIoglXZkjlwkTS++LKi1UwlV3BjNgjIwEsU5yVb
 XPDCbCG9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_024606_660949_0AB1FDD4 
X-CRM114-Status: GOOD (  34.72  )
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

On Tue, Sep 02, 2025 at 11:35:25AM +0200, Neil Armstrong wrote:
> On 02/09/2025 11:30, Dmitry Baryshkov wrote:
> > On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
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
> > > Nevertheless those QMP Comby PHY can be statically used to
> > > drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> > > etc... without an USB-C connector and no PD events.
> > > 
> > > Add a property that documents the static lanes mapping to
> > > each underlying PHY to allow supporting boards directly
> > > connecting USB3 and DisplayPort lanes to the QMP Combo
> > > lanes.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
> > >   1 file changed, 29 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > @@ -76,6 +76,35 @@ properties:
> > >     mode-switch: true
> > >     orientation-switch: true
> > > +  qcom,static-lanes-mapping:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +    minItems: 4
> > > +    items:
> > > +      enum:
> > > +        - 0 # Unconnected (PHY_NONE)
> > > +        - 4 # USB3 (PHY_TYPE_USB3)
> > > +        - 6 # DisplayPort (PHY_TYPE_DP)
> > > +    description:
> > > +      Describes the static mapping of the Combo PHY lanes, when not used
> > > +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> > > +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> > > +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> > > +      be connected to the DP PHY.
> > 
> > It feels like this significantly duplicates existing data-lanes
> > definitions. Can we use that property to express the same semantics?
> 
> Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
> to describes the lanes layout/ordering, not the type/mapping.
> 
> Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
> but which lane is supposed to connect to which internal PHY.
> 
> Anyway, I'm open to suggestions.

phy@abcdef {
	ports {
		port@1 {
			endpoint {
				remote-endpoint = <&&usb_1_dwc3_ss>;
				data-lanes = <2 3>;
			};
		};

		port@2 {
			endpoint {
				remote-endpoint = <&mdss_dp0_out>;
				data-lanes = <1>;
			};
		};
	};
};

phy@cafecafe {
	ports {
		port@1 {
			endpoint {
				remote-endpoint = <&&usb_1_dwc3_ss>;
				status = "disabled";
			};
		};

		port@2 {
			endpoint {
				remote-endpoint = <&mdss_dp0_out>;
				data-lanes = <2 3 0 1>;
			};
		};
	};
};


> 
> Neil
> 
> > 
> > 
> > > +      The numbers corresponds to the PHY Type the lanes are connected to.
> > > +      The possible combinations are
> > > +        <0 0 0 0> when none are connected
> > > +        <4 4 0 6> USB3 and DP single lane
> > > +        <4 4 6 6> USB3 and DP
> > > +        <6 6 4 4> DP and USB3
> > > +        <6 0 4 4> DP and USB3 single lane
> > > +        <4 4 0 0> USB3 Only
> > > +        <0 0 4 4> USB3 Only
> > > +        <6 0 0 0> DP single lane
> > > +        <0 0 0 6> DP single lane
> > > +        <6 6 0 0> DP 2 lanes
> > > +        <0 0 6 6> DP 2 lanes
> > > +        <6 6 6 6> DP 4 lanes
> > > +
> > >     ports:
> > >       $ref: /schemas/graph.yaml#/properties/ports
> > >       properties:
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

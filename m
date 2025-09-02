Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4499BCA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 16:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwW0b6ycob3G8+zwl7SzRB4stNTLgXVDk05B6VUtWx0=; b=D3iDB4q/rmWWp7
	X3cDveDuLdBRUI2LNExCRUFAsZ3uogfgAXqvt/berCLePqTyHXB8lYUzwDHejpPf8l8NjayhkJnrk
	MhQADQ0ev3qi2WzGtmwVL1McICXa/4e4FHLwmDRRArD0zaJGJQZ20Aznd2lUpgxcFtCKmJWjCBD8D
	7hVeWMlzlmplSTuTwZeiwVKh/2mcf2DtQGuQ2ggSWrON8a/3lqo0142tq37RbcrFKXQEXh0rfkEon
	vzcMHgVyuVFAlOZtLEmjHxY1DzpS+XEsN4BY5M/aEwxgWoRaoVACFLq5xQnFOi5H09/epXBVbwyso
	7jRCt49/yg5aDInn/m8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utTXR-00000000rZE-068u;
	Tue, 02 Sep 2025 16:07:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ1o-0000000HC5z-00EN
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 12:22:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AgfvQ009790
	for <linux-phy@lists.infradead.org>; Tue, 2 Sep 2025 12:22:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j5aSO0KmmpUqooUb/3qdW5ye
	cSIIeoQPBPrLpY1Yuvs=; b=ZSjYulLkag+B83fDDBVTT267Lz9GorndmZBiFv0N
	gDtnywdeeKkHLXJHlh2+gnhOPGUT2XHexI0qw4UJTpL8TyzqsCGFUpBLm1NpVXxJ
	qCZ/FyluGGVdm9UxminxiX3xbRCj7Nppao7XTK4ZfcxwZ3GrTmuqA5ZhAGg98JrU
	dY3xOd4evkbtQTofGyOE62AMsEs1Jsll6OmD3dIT3mlIIXVjWXwvrMVSWeZylAkp
	AXvT2Z2Z8JtE5XgYnLRt7vDqmDO0UC3jwve8cdB5Y2UEe6IM9zFrv9wr1And7U8G
	Jrwl8StMb6x77eQNcJ7CZIUGIolOI5YxuQIW70tpP97gtw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjfqqy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 12:22:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b327a79a30so64819801cf.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 05:22:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756815742; x=1757420542;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j5aSO0KmmpUqooUb/3qdW5yecSIIeoQPBPrLpY1Yuvs=;
        b=WAi+hO+At6S/EZDV6PO8vu5IBcz8oCubduX4mIheOY4NBT6dq+MWs/3pkTr9t8avKy
         MHVzryBASgoz3IqyrYZXE25vET7jC26BA+5huDaIsXzs6piyFqCR8EA1pVGQrYPqPc/2
         wXz1+8DTef49frtDgpZQvaGj3DRHjxnfseCIvmgaoCLeefPFVl3dnMsVJh76UIhkM8I4
         ZjGvH0/motqrzArvYbO7KnHCvi2l6LH7OVFru3s6FgUpaKf/RyRF6PDdocoHNCZ0fsC+
         ccqw4aTxbCwCgjvzGLCzi9RWnjjE+fQgzjdZ2IoB9NaAleyJ9tRa92mVKh783cZwO4Wq
         l0OA==
X-Forwarded-Encrypted: i=1; AJvYcCWhbx+ngvLMdmdKYxSULJZwLclNOE92H0pKm3JUwMMULU6V1iMn3o3sAM3UBZ3xLLOiXALqY+lLRzg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/YCQtIcW2TRCOl/r/BqyxnDAxeglanxWMfJZtq+Kfr3MpCua4
	fdtO08BQOJJ0+1egnmoWErPa9zm66Y8eHOVI3KxXY6pkJCC1DwfgMKNYlIAcQJckzWGtqxg/8S9
	h1jbRPyS0zKPKuBz3FAU52XLONf0JtvYJdxxxS7ZphKUIWMAQnDUkQUPMe/65zO//Ma1p
X-Gm-Gg: ASbGncsD/7pVFWT0TPp2q4IGcB4mO/oGGbPVerc+g7ZHLhrIMXvHfr5Dg2KCmuOL1kc
	qDHxB5C3ZA8QuTrjk0iVY6lE4d9uFTOfaSawq0VYxL7qIY3j3fvMeM8cuocCJiFKG5LmM7vI+Gj
	MTbDW6j9kQ/fKqortGmQ3TmKQghR14opgTXynBF8Kst+KoAqUpAsz8Z2W2FtA5U8etnkwin09ab
	RdjlLs63LDTdwchPXFOy5Uh58HcMo3Ce1TbFwHhjUL46PD/HNqwmtCbD5bgmlx4/gbcdTq/EDif
	TvUxUuYnN43QBicacNSIHNL/zW3CH/ckLbmoqqmj5KD6iTvO1vHBZFsUbnRwGEU6Xrc8YhzmGhX
	DUQ3epeknvtf1JypmrRXi0pjUM/pwF+T86EmXsA0e1tviDFEchoge
X-Received: by 2002:ac8:5905:0:b0:4ae:cc75:4703 with SMTP id d75a77b69052e-4b31dcbab88mr120080511cf.58.1756815741357;
        Tue, 02 Sep 2025 05:22:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEujDNuyvL4g7dEIP1Zof253r1rsB9bYFgUlrVvoDVc0jN2XKrDOZk12w7hWmQbuIucQUVHTA==
X-Received: by 2002:ac8:5905:0:b0:4ae:cc75:4703 with SMTP id d75a77b69052e-4b31dcbab88mr120079791cf.58.1756815740501;
        Tue, 02 Sep 2025 05:22:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826d7f2asm667117e87.43.2025.09.02.05.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 05:22:19 -0700 (PDT)
Date: Tue, 2 Sep 2025 15:22:17 +0300
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
Message-ID: <oel3t35pxegxaowcfjbrzrxvuw47p7pzcinz7kf2uj2ivcderv@efbttlqpwcc7>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
 <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
 <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
 <14f334fc-35de-4f21-8eb1-f6b41ac24704@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14f334fc-35de-4f21-8eb1-f6b41ac24704@linaro.org>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b6e17e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=HJy97g7PLlcXBZGHDcIA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: y_TDI7Q0sfUQGEej6etySFgV61lUukNl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX6hemneIYgDx9
 H0Ea5O0u25wz2ZkKkpXRov6B01Lo/Q2QQJQ3LeCbQx2sw4skMXHV18PVd1/PG443BNs4SSlq2NH
 14pjKWjYgH1KP+yfR6eLobZ9K5TMlqM4M5+9Is+632WYIVEbqRsoHMjxKj+lCLUSq8lkWm07tnX
 hCw4jJ25uG/OGIjQtDc85u2J+Wfbreulyb6V9rMVyBoeUpUAqvyJkj3geJsNXaDvRuCc/OGe3Hy
 wvwKBZpM+Gi6QLCivS/jfmD1YXc0KGbsArso6viY4no192ZksRkoqXhj77/CnHkWc2UFYJ5ZLZ/
 5dnb4kJxNULC3LnY/UQyy8UKOMCCapAvgT3+j1sZCz+s7a4eh+5VsfXcrm/9kXJru5gOhh18JTS
 gyYp+Fj8
X-Proofpoint-ORIG-GUID: y_TDI7Q0sfUQGEej6etySFgV61lUukNl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_052224_160234_BCB1877E 
X-CRM114-Status: GOOD (  43.05  )
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

On Tue, Sep 02, 2025 at 12:05:45PM +0200, Neil Armstrong wrote:
> On 02/09/2025 11:46, Dmitry Baryshkov wrote:
> > On Tue, Sep 02, 2025 at 11:35:25AM +0200, Neil Armstrong wrote:
> > > On 02/09/2025 11:30, Dmitry Baryshkov wrote:
> > > > On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
> > > > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > > > of a combo glue to route either lanes to the 4 shared physical lanes.
> > > > > 
> > > > > The routing of the lanes can be:
> > > > > - 2 DP + 2 USB3
> > > > > - 4 DP
> > > > > - 2 USB3
> > > > > 
> > > > > The layout of the lanes was designed to be mapped and swapped
> > > > > related to the USB-C Power Delivery negociation, so it supports
> > > > > a finite set of mappings inherited by the USB-C Altmode layouts.
> > > > > 
> > > > > Nevertheless those QMP Comby PHY can be statically used to
> > > > > drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> > > > > etc... without an USB-C connector and no PD events.
> > > > > 
> > > > > Add a property that documents the static lanes mapping to
> > > > > each underlying PHY to allow supporting boards directly
> > > > > connecting USB3 and DisplayPort lanes to the QMP Combo
> > > > > lanes.
> > > > > 
> > > > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > > ---
> > > > >    .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
> > > > >    1 file changed, 29 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > > index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> > > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > > @@ -76,6 +76,35 @@ properties:
> > > > >      mode-switch: true
> > > > >      orientation-switch: true
> > > > > +  qcom,static-lanes-mapping:
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > > +    minItems: 4
> > > > > +    items:
> > > > > +      enum:
> > > > > +        - 0 # Unconnected (PHY_NONE)
> > > > > +        - 4 # USB3 (PHY_TYPE_USB3)
> > > > > +        - 6 # DisplayPort (PHY_TYPE_DP)
> > > > > +    description:
> > > > > +      Describes the static mapping of the Combo PHY lanes, when not used
> > > > > +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> > > > > +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> > > > > +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> > > > > +      be connected to the DP PHY.
> > > > 
> > > > It feels like this significantly duplicates existing data-lanes
> > > > definitions. Can we use that property to express the same semantics?
> > > 
> > > Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
> > > to describes the lanes layout/ordering, not the type/mapping.
> > > 
> > > Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
> > > but which lane is supposed to connect to which internal PHY.
> > > 
> > > Anyway, I'm open to suggestions.
> > 
> > phy@abcdef {
> > 	ports {
> > 		port@1 {
> > 			endpoint {
> > 				remote-endpoint = <&&usb_1_dwc3_ss>;
> > 				data-lanes = <2 3>;
> > 			};
> > 		};
> > 
> > 		port@2 {
> > 			endpoint {
> > 				remote-endpoint = <&mdss_dp0_out>;
> > 				data-lanes = <1>;
> > 			};
> > 		};
> > 	};
> > };
> > 
> > phy@cafecafe {
> > 	ports {
> > 		port@1 {
> > 			endpoint {
> > 				remote-endpoint = <&&usb_1_dwc3_ss>;
> > 				status = "disabled";
> > 			};
> > 		};
> > 
> > 		port@2 {
> > 			endpoint {
> > 				remote-endpoint = <&mdss_dp0_out>;
> > 				data-lanes = <2 3 0 1>;
> > 			};
> > 		};
> > 	};
> > };
> 
> This is wrong, those are the internal connections to the controllers,
> those are fixed. I'm speaking about the external lanes, but there's only
> a single port.
> 
> So, following your suggestion, we should use the Output port 0, but as it's
> only a single port it would need to have 2 endpoints, one for USB3 and one for
> DP.
> 
> For example:
> 
> \{
> 	dp-connector {
> 		compatible = "dp-connector";
> 		type = "a";
> 
> 		port {
> 			dp_con: endpoint {
> 				remote-endpoint = <&usb_1_ss2_qmpphy_dp_out>;
> 			};
> 		};
> 	};
> 
> 	usb-a-connector {
> 		compatible = "usb-a-connector";
> 
> 		ports {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			port@0 {
> 				reg = <0>;
>                      		usb_con_hs: endpoint {
>                         		remote-endpoint = <&usb_1_ss2_dwc3_hs>;
>                      		};
>                  	};
> 
>                  	port@1 {
>                      		reg = <1>;
>                     		usb_con_ss: endpoint {
>                          		remote-endpoint = <&usb_1_ss2_qmpphy_usb3_out>;
>                      		};
>                  	};
> 		};
> 	};
> 
> };
> 
> &usb_1_ss2_dwc3_hs {
> 	remote-endpoint = <&usb_1_ss2_dwc3_hs>;
> };
> 
> &usb_1_ss2_qmpphy {
> 	/delete-property/ mode-switch;
> 	/delete-property/ orientation-switch;
> 
> 	ports {
> 		
> 		port@0{
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			/delete-node/ endpoint;
> 
> 			usb_1_ss2_qmpphy_usb3_out: endpoint@0 {
> 				reg = <0>;
> 				
> 				remote-endpoint = <&usb_con_ss>;
> 
> 				data-lanes = <1 2 0 0>;
> 			};
> 
> 			usb_1_ss2_qmpphy_dp_out: endpoint@1 {
> 				reg = <1>;
> 				
> 				remote-endpoint = <&dp_con>;
> 
> 				data-lanes = <0 0 1 2>;
> 			};
> 		};
> 	};
> };
> 
> So the driver logic would need to look at the port0/endpoint0 and port0/endpoint1
> data-lanes to figure out the mode.
> 
> Is this what you were thinking ?

No, I was really thinking about the data-lanes in the PHY parts, so I
was incorrect there (which is incrrect as you've pointed out).

The endpoints approach looks interesting though.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

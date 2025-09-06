Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD21ACA0FED
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 21:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKITnXs47N7XaaoUID+mC8PbUCzRd+hHLswnY5uolyM=; b=rWRJUwzokrftiV
	t4k7eUdW9he/2cesxb2/APgSnyAEfHGI+WIMuDe2GLIKZF3/UMGiOFg41qn54KYZwzM50Zr29ml/A
	L4tLuVnTv6E1BSrh8sgLIxjXCE9RDttvI0h7frvRd80DOxnT9A4RQM3rP2lOz+joszRuvJpxqP4pL
	5uV4xkienvL8E5Isp+Eqgtvuh+0C8IE2QOuqYuwMqCl/In25WXpZe+P1cCkGUITjjSDqouorfcGUR
	XlTxQPtBiBm753yaXU2Je+d7ZP0lx1t399CB40pwDc4GnP1/pEnnQKwCNnqIOaPaEW0fjzV75r6aq
	L7caHrhkMIMyrhhxt6Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uv0YM-00000008Utb-1TBY;
	Sat, 06 Sep 2025 21:34:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uv0YJ-00000008UsR-0rGe
	for linux-phy@lists.infradead.org;
	Sat, 06 Sep 2025 21:34:32 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586LU33n025811
	for <linux-phy@lists.infradead.org>; Sat, 6 Sep 2025 21:34:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AV0ygjr/WMrb8ByJbVimXXrP
	CDYMyTfWtuK1PizEYI0=; b=e5ftPaC8Rae41bTW+MlzdXR6ClMTga5gCFXeCVFi
	HWm1K9lRZWDV0QHiDHnxVKgCnArBRq4B6ve6xP23yvCoCFMWC3Omk6PNjqxHru2b
	DXkrh0+IKZHpsHoDGcKK3jr2V2pjh37CFNJUW5ahceNvW8Gcuf3/gNqKjKR2s7cA
	J4axbBpSUkSmZ8AuBcqNAT8obSTH9xRWR27gVr6IzOoQxNfIvwsEK2OnTwBMSQoQ
	6CkbS+LbtNbKMhFo3Y3y4CcOXaGjvZV6ZvkpzVELfxs6VNXc/LITbw2iDDmMUO3E
	TBqQBsjyuSF+tq4Mll0x67Y8oDZwWIaV8sSKdCte6hCEdA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws19vu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 06 Sep 2025 21:34:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-72631c2c2f7so71091096d6.0
        for <linux-phy@lists.infradead.org>; Sat, 06 Sep 2025 14:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757194469; x=1757799269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AV0ygjr/WMrb8ByJbVimXXrPCDYMyTfWtuK1PizEYI0=;
        b=SL9FpEYxG7y6vcQTuIyyOk3CSeoPpmrJ4c/blYlRe9aUmTPTtAzs5paERjrw4BCJRb
         Fk46UIKHmgDBZcAMycY5uGeZuU6U1FWejvMDFc3BedOG78jAB2+7EHLP/8GmU+pTKOQI
         QrY1RdSMZI/NsoljvSQHFRK0ut55i7rj6g3CjRqtDUeTKWTJ1Nud7kMhiIddz/0m+S+A
         8THzB8vMzB1AgT2eTCo6XVM8s2JCl25Cr9qJRws1Qw21pAIPL//fUmxJAHJs8k+GHVPe
         kWW0DbohZsVCkCGTWqzKgXjKIgvDwjTgGtXz7XGVvv9ENzO0tF5uywXah08LhpPFqHyn
         +33Q==
X-Forwarded-Encrypted: i=1; AJvYcCVjfSvibdue82TAyU39Ot7iWSdUNVHMHSYtwbi5Ku3XsTHbkHauPuNY+zccgKjU/VV3fq+FEQaIjNs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzgl9uIhlv3VU9cuhnrY+aWS7BEaq6OSL4gq+w+o2A/idSMEgZX
	1TbrY5Di+paIUqfR17wazwyRKbykM/3VEfuuxbwe77pU2aXYUenj+BHabbXjELLm9dJALtu8a4F
	tGGFzSSgvxeoIw5b9U0R+kuTglsqpPA3AQmxYZBfaxyepnkXmt4h/BlTK9e/eLqu6kuu1
X-Gm-Gg: ASbGncsEOg7j5GmxQa8/vN16mRyKOrVtGECzkS9Y457SyZh6mq4w86kM+G7Y08qfwez
	Hp6PvuLipOe0Lm9OF4kIv7dNbuBdoy83+xyb9R9pj56oVVnGeRc3AzDt6xXFB7PSoak9q2RjRx7
	bY6qsuKy6esEt8/EzZAGoK2I1rGU3oHLba37na2KyuikbyYmQmrCE9BW5I8c8ZBx85KipvU7u+4
	Y4ape/amtlBo/EXY26ByUWhhvKJNZ9vcp4cUcW/Q1TcA6PpauKIlpQiPOVaTMgAsMu/Bhdoa/UP
	XaJUDSr53IlgJZVggognhsr/Q0iNS7ijLVJhVpZbSQh+i0DVhTaZBODXo9sPhTFRzxmeVM1YLEt
	PiHNMlIh1/xK0eTehWjObVtIVNc3fQQ2FPSSy1amIQ+DuBLvMJ/g/
X-Received: by 2002:ad4:574c:0:b0:70d:def5:9574 with SMTP id 6a1803df08f44-7392305d770mr37428556d6.2.1757194469325;
        Sat, 06 Sep 2025 14:34:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJg5k1T8IvlFvM9U9wTF9PMcT8HtFQ5QIZb8nStHiYwoUNP1ozeojLz9R0BS5x5zF6EmmDBw==
X-Received: by 2002:ad4:574c:0:b0:70d:def5:9574 with SMTP id 6a1803df08f44-7392305d770mr37428376d6.2.1757194468817;
        Sat, 06 Sep 2025 14:34:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3381cff2f63sm10262891fa.48.2025.09.06.14.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 14:34:27 -0700 (PDT)
Date: Sun, 7 Sep 2025 00:34:24 +0300
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
Message-ID: <aLyo4N59o4CIYm-6@umbar.lan>
References: <20250904-rock5b-dp-alt-mode-v1-0-23df726b31ce@collabora.com>
 <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
 <aLyKhngeksG2SKdq@umbar.lan>
 <jzooq6qg3y7nee2nz6lujustdf4z7vtn6t2slikw43dann5sbk@2telraae26tl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <jzooq6qg3y7nee2nz6lujustdf4z7vtn6t2slikw43dann5sbk@2telraae26tl>
X-Proofpoint-ORIG-GUID: OF0rt39_ka8yKromtEqRptX-Bd3NsuRh
X-Proofpoint-GUID: OF0rt39_ka8yKromtEqRptX-Bd3NsuRh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfXxGJGPwQ4euRQ
 D/LI+PW0XW5B2jTXSdoybQpfNQRJiOGDp+gB67Auj54gzhqOAPo+qSSiOPHpZyWVEAcynMH8qY5
 QbppG8N0k5FyTXTx7XcJpus3RdsN6rx3u2YW4jlhWaHQOhyLl2mzhp7Orj8n1YpuKtkvPzhb113
 LawZr9bEyvQip32PRVW47hqa35485ZM1S6MxXuJ7aKuj6KLO0QRtMW8cJzJ48khuqry2XSJcEJd
 UXdqIsf8hYDa/7QYJwNc+7jHc6Nh324aL6hhebL2500/vGTwpYIySmOV1X7gNVPrZ4y/hDgpogM
 5+gWf3n6tV174TckVT0m9de7ccFfl2PMBv26SC44jI+ozOMURJOtW51Upm/ddce5INHe2Cl89yA
 0Gxj9gNm
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68bca8e6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=QX4gbG5DAAAA:8 a=cojAzSgMqaLAs1qlVxgA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_143431_255117_86F27EBE 
X-CRM114-Status: GOOD (  44.75  )
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

On Sat, Sep 06, 2025 at 10:42:22PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Sat, Sep 06, 2025 at 10:24:54PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Sep 04, 2025 at 08:26:02PM +0200, Sebastian Reichel wrote:
> > > Currently the Rockchip USBDP PHY as a very simply port scheme: It just
> > > offers a single port, which is supposed to point towards the connector.
> > > Usually with 2 endpoints, one for the USB-C superspeed port and one for
> > > the USB-C SBU port.
> > > 
> > > This scheme is not good enough to properly handle DP AltMode, so add
> > > a new scheme, which has separate ports for everything. This has been
> > > modelled after the Qualcomm QMP USB4-USB3-DP PHY controller binding
> > > with a slight difference that there is an additional port for the
> > > USB-C SBU port as the Rockchip USB-DP PHY also contains the mux.
> > > 
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > >  .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
> > >  1 file changed, 23 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> > > index 8b7059d5b1826fdec5170cf78d6e27f2bd6766bb..f728acf057e4046a4d254ee687af3451f17bcd01 100644
> > > --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> > > @@ -114,6 +114,29 @@ properties:
> > >        A port node to link the PHY to a TypeC controller for the purpose of
> > >        handling orientation switching.
> > >  
> > > +  ports:
> > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > +    properties:
> > > +      port@0:
> > > +        $ref: /schemas/graph.yaml#/properties/port
> > > +        description:
> > > +          Output endpoint of the PHY for USB (or DP when configured into 4 lane
> > > +          mode), which should point to the superspeed port of a USB connector.
> > 
> > What abourt USB+DP mode, where each one gets 2 lanes?
> 
> Right, I guess we would need one port more and have one port for
> lane 0 + 1 and one port for 1 + 2. For USB-C both ports are
> connected to the USB-C superspeed port. For DP 4-lane mode the
> same is done for the input port of the connector. Last but not
> least for 2 lanes USB + 2 lanes DP, one port can be connected
> to the USB connector and one port can be connected to the DP
> connector.

Hmm. I'm not sure what do you mean here. Basically, it should be:

- Normal USB-C case with DP AltMode:
  + port@0 routed to connector's port@1 (through mux or retimer if any)
  + port@4 routed to connector's port@2 (through mux or retimer if any)

- Actual DP or mini-DP connector:
  + port@0 routed to connector's sole port (most likely direcrly)
  + port@4 most likely unconnected (at least for now, dp-connector
    doesn't have AUX lines described)

- Weird mode of having both USB-A or -C and actual DisplayPort
  + port@0 should get two endpoints, each having data-lines properties,
    one endpoint being connected to the USB port, another endpoint being
    connected to DP connector.
  + port@4 unconnected (yep, we should extend DP properties, maybe I'll
    send a patch)

I'd say, the first two options are the most important ones. Unless you
have actual hardware that uses the USB + separate DP, I'd say, we can
ignore that part.

> 
> > > +      port@1:
> > > +        $ref: /schemas/graph.yaml#/properties/port
> > > +        description: Incoming endpoint from the USB controller
> > > +
> > > +      port@2:
> > > +        $ref: /schemas/graph.yaml#/properties/port
> > > +        description: Incoming endpoint from the DisplayPort controller
> > > +
> > > +      port@3:
> > > +        $ref: /schemas/graph.yaml#/properties/port
> > > +        description:
> > > +          Output endpoint of the PHY for DP, which should either point to the
> > > +          SBU port of a USB-C connector or a DisplayPort connector input port.
> > 
> > I would suggest describing this port as 'DisplayPort AUX signals to be
> > connected to the SBU port of a USB-C connector (maybe through the
> > additinal mux, switch or retimer)'. It should not be confused with the
> > actual DisplayPort signals (as those go through the port@0).
> > 
> > In the Qualcomm world we currently do not describe this link from the
> > PHY to the gpio-mux or retimer, but I think we will have to do that
> > soon.
> 
> It does looks like no upstream platform does a proper description of
> USB-C setups :(
> 
> Thanks for having a look,
> 
> -- Sebastian



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

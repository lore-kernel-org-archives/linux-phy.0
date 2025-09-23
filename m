Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8955CAC5AA
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 03:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVHwSKEZrysm16fhUf1oMKDjwznK8I6PRcLNMAk7BIM=; b=PJlYD88eKt5HnA
	HfL9Kzo0yKz0qkI7TcNo3fegu7em3QJLgof1B7z1J7cMSE9+5wWfoXZNgWDV+0rWAWswUB1hgbDdw
	djv1bVRdWlLmvusFF5NlXM7a8K2sJZvdCZ13QRgygO8GNkbYrPzTg9muTXrt0z9En2KLOywTo1p6O
	TYrITKt4WPA+TikwcwFEGScNj1taN0XE5aCNb3lFQT57vkR2UEb9roSrmkUyZIDFLH4IaktRARXZi
	FUkFlO9Xa13L3mvNEM/+u5xc1RV1b0dMFTU9cphUqWpMCZR6BKXwvbMB51geCYk8oOFYcIA1+IvyT
	9Gw6rRO+iNdsLf/nBfqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tWq-0000000CDID-2Ke7;
	Tue, 23 Sep 2025 03:17:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0tWo-0000000CDH2-2RR1
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 03:17:19 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MH1eIH011124
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:17:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bMb7C2zDppeQTKGSH4djX/sY8FExMuELVy1N+D87Fjg=; b=XHGnxezEa/2Uh3/5
	AlxnmfeU39uhBRTepsSKDOYGtjOv65Batzfrkr5rmyt64pqUM8zQ0v7jXcgUDnEW
	wdfpN6ICL/zvfPpPg7+UBoPUXeuvVpWime1N7Q7zbvD2/PN9JFNg9fimXQ1Y1erK
	2DxwsfMFlQNsdSseVlu8JduF1Ir67zt3vRoejAPo5UCmAfmcp5RniBb5ci9PxE8d
	mr1yz7bSUjfZYsaTjrW3eqLFq16DnEHnEQeFN1dTSPOw+0ukSVH/irHkqNc0NoNZ
	OICwCifD1C2LCAXl9vlgNMz48sO8ULSNl9geCp54SMI8jQ6O03h6LDXHxZnGONrd
	uhmynA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0xyjr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:17:17 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78e45d71f05so103936576d6.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758597436; x=1759202236;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bMb7C2zDppeQTKGSH4djX/sY8FExMuELVy1N+D87Fjg=;
        b=GfjeMU2yG9oPwbwD6EqyAqjsscuVrC4H+7U6sDT0tLIjuE2DHU6UvupTiCcr5zUKlR
         X6eXZewStpGlYdxRPOPib2Vh/0RfzLW38ktTuEDyxnHfxQrwZfV9bghR/V6nsPickLw6
         FVvgFG0KV5MqDWNhJ9kybR7+ituYvAAfP+E7wPPebCvlYXvwOYROw4QV/pVCWy3nhI36
         A6RjucyI5Q6PHS6ZOe1Bqb//jp/DQmaF0zov4g22cEtx5ec2osc6TEXjpnHhdTBNBwJd
         l5sF7740aU5uK5zMyqpHY6Vri+hpRRNz1gxitu0X0+e59zSGFXYu9EiIrtZlsw5UDkHC
         aadw==
X-Forwarded-Encrypted: i=1; AJvYcCWRzGb6/Aoi/VGR4Ne1ltsJUYmu0952e4r5Mz4YCkup7sZM5RBckLPIHcWDbprN5HcE1ol+6YaSSA4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8v4dR935FOh87SUEg4cGZ+XhvAVc88fPe99KKItgw6PmypzEf
	gVWA8yGOpGYelHkzu+T9qNPq4FCYH2Ko0sGOpZ7oxRTOAA31LehBzS6f0C3haO4YiSmXoNj6ywZ
	UYsRc+X3rCZx66dU2D7kCO05h0+UYs0CiiikTieqk0SMYoxv7Zl2Kaz6J1iQxfaLa72WH
X-Gm-Gg: ASbGncvtto0R7w9CDV1UdFzJoHJaNNpRRFy/tZcwkruckpcQnZvdC5iiintZe44L8fk
	VblctD7TYWRqltnl11CafyFjfylL2Yf/oN2frkolpoL7GfcVn4bk7PLpQOyzwsBLnsGdqsS1Cex
	S02m7Hd0GsQ6allOMSwwk+XVSSfZyi3Y35LJUIhq29I8Yuxx6pzUS1i7QM2RnaUa9cRLsP6PnCh
	Nput+AvIYfx4QcnzIx5GyaO1FT22d58/QzFwQiBnhap7RMdzqjvXUw14U8VHN9GYj/Ovvx4X5mH
	QLXPVW2txkCuPqHgqb/TFsX3k/kUzko85xR8TEuMTP4LDURePmQR32zxXa8MV2nrwdteSceePaw
	WS+JSO311Z7VNg3QGXw0/nw3yIzHQEHjywOpr2nREWG7C9BeVheK2
X-Received: by 2002:a05:6214:2a8f:b0:741:52cf:a104 with SMTP id 6a1803df08f44-7e70169a36amr13294366d6.5.1758597436480;
        Mon, 22 Sep 2025 20:17:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn0eBFPbnW3yR2CGZz8WEuSgYw6bETDind9f429+o4fUJgBVTohgVWJzPvbfpV811TCcIXOQ==
X-Received: by 2002:a05:6214:2a8f:b0:741:52cf:a104 with SMTP id 6a1803df08f44-7e70169a36amr13294086d6.5.1758597435854;
        Mon, 22 Sep 2025 20:17:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57a9a81f52asm2678963e87.124.2025.09.22.20.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 20:17:13 -0700 (PDT)
Date: Tue, 23 Sep 2025 06:17:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
Message-ID: <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
X-Proofpoint-GUID: V-GSF0-A0dqHFwXBm4w18bupltpzbe2B
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d2113d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=uIhu009UdGQP6qFfJxgA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX8EBGSA1KHupG
 KqCXoJlxOBB1WJRTC8/HedqR4+B/aJzIZcct0sBGs9RYKHOnAbxArMmDnMmzS9EWdAbcP6WW6d7
 KSaS/D4RRe4ve5oXvQDn8jrvlCKKReEO9KrHbynU3Kl7zi/THtF5eLU9jcy2deIf4qWqLHIolSH
 /3ENgLPXY0nv+aCpaTyrbvDBz/ioV/Pml3e61Y3dI5rY1Ew+/tnrIhfmKT4W3/M/pD1WLCK3Z6P
 hC6ecIozc5XNxpCPTt045qEpRIgSVkoMbBGuHH008O428sVJvykSduNalMm3zcjVp++FpqzKKyP
 wtEKl5UK/GuE3/6TmVtkJdevrqTx0iR/TT8bL+SxVDYAvDKIFhprGof+tJG0LaiM1FNjvpbgBoS
 1u8FVQAJ
X-Proofpoint-ORIG-GUID: V-GSF0-A0dqHFwXBm4w18bupltpzbe2B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_201718_729109_53178B9B 
X-CRM114-Status: GOOD (  32.87  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Sep 23, 2025 at 09:53:06AM +0800, Chaoyi Chen wrote:
> Hi Dmitry,
> =

> On 9/23/2025 9:12 AM, Dmitry Baryshkov wrote:
> > On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > =

> > > The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> > > supports software-configurable pin mapping and DisplayPort lane
> > > assignment. These capabilities enable the PHY itself to handle both
> > > mode switching and orientation switching, based on the Type-C plug
> > > orientation and USB PD negotiation results.
> > > =

> > > While an external Type-C controller is still required to detect cable
> > > attachment and report USB PD events, the actual mode and orientation
> > > switching is performed internally by the PHY through software
> > > configuration. This allows the PHY to act as a Type-C multiplexer for
> > > both data role and DP altmode configuration.
> > > =

> > > To reflect this hardware design, this patch introduces a new
> > > "mode-switch" property for the dp-port node in the device tree bindin=
gs.
> > > This property indicates that the connected PHY is capable of handling
> > > Type-C mode switching itself.
> > > =

> > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > =

> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > ---
> > > =

> > > Changes in v4:
> > > - Remove "|" in description.
> > > =

> > > Changes in v3:
> > > - Add more descriptions to clarify the role of the PHY in switching.
> > > =

> > > Changes in v2:
> > > - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> > > =

> > >   .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 +++=
+++
> > >   1 file changed, 6 insertions(+)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-ty=
pec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-=
phy.yaml
> > > index 91c011f68cd0..83ebcde096ea 100644
> > > --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy=
.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy=
.yaml
> > > @@ -51,6 +51,12 @@ properties:
> > >         '#phy-cells':
> > >           const: 0
> > > +      mode-switch:
> > Having the mode-switch here is a bit strange. I think the whole PHY
> > device should be an orientation-switch and mode-switch. Otherwise it
> > feels weird to me.
> =

> I think this is a difference in practice. In the previous binding, there =
was already an orientation-switch under the usb-port. I trying to add both =
an orientation-switch and a mode-switch to the top-level device in v2. And=
=A0Krzysztof reminded me that adding a mode-switch under the dp-port would =
be better, so I changed it to the current form :)

I couldn't find the comment on lore. Could you please point it out?

> =

> =

> =

> > =

> > > +        description:
> > > +          Indicates the PHY can handle altmode switching. In this ca=
se,
> > > +          requires an external USB Type-C controller to report USB P=
D message.
> > > +        type: boolean
> > > +
> > >         port:
> > >           $ref: /schemas/graph.yaml#/properties/port
> > >           description: Connection to USB Type-C connector
> > > -- =

> > > 2.49.0
> > > =

> -- =

> Best,
> Chaoyi
> =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

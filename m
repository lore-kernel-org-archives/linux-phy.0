Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63297CAC5B1
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 10:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=be0V+kr7vNJUihJywiuzAuvLUoQaoKOAb+xTdhKXZKg=; b=XfMjh/L1bfIlbU
	PGcsDdd8K38eafxdwR33h+HVtnSa1BSKAyhmg9WWT9kqjk3Cat4yksQ311sFnZnbNKY3i3FUyQ9+R
	u8qIIIndqPZ/XJ10G/Wvdp3D+K7v9iuMwRkgeZssOzu+NW54ZQUVrAwTyuT1q3JYHkoILojXxpD7D
	NpnUnYLKvk1lX0qjklE9gylA1ObKkuolS6pCcvYJgDWNfygL1nzkNuHAJEMXgSs1BuHTeJC7WyjLR
	jZpkhXQ2YMe6jhi2PMbpI6WYf6BTGLql2lFXsKSXtW9l/aCwz7mNbJpRlxxXPjlnduf8kpWg7Kieb
	INDveXuOggkQlAFtOJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v10Wr-0000000D58I-0D8T;
	Tue, 23 Sep 2025 10:45:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v10Wn-0000000D56E-26BA
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 10:45:47 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8HNJp004736
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 10:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QliD1n9xy/2XCUdFKu8941e4ETR46EUUmd/ECFnedT0=; b=TCT5YuN5yyg6V5lP
	+oPpau14OqQ5ZlUfTkPDvNWoBDr2ZTf6SP0fcIUFURx7R5Irl044q0/EBTDc8bAX
	Jt/xhkAUFIQFLBDJqprwVtOllYO17qb0yr7h4X9zF/pxBFRcTsfpqTo5G2sLI4LN
	TfFkaoStJuEIYuqLxKsxlWJnu74ZEYCceuG6t7xnV32CmD3gbzqjJMHTwi3Hhcqh
	Yf19nlw13fF7+H7IBkz8DOMa5xJKkAdAS1w/qJ3qiFKxRRqamdbiDdwGWV7UDORI
	BBCdohVva9tBmBSEg8i7U0BY3oyDEWauOfC+TO8cTeblrrmjpT+8zH1V9TiUplec
	QN8wjw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnrh6x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 10:45:44 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d38dbc0e29so11970841cf.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758624343; x=1759229143;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QliD1n9xy/2XCUdFKu8941e4ETR46EUUmd/ECFnedT0=;
        b=cYFi0PJO8qNdrmt4iaRraSuOKW1yFKnKM0puvKpHgnDGTr4hRGeWlqVzBLxIyYf2eL
         jqQTf8IHzc/tg9XC82yCVvYXElFlXcOhP9m/BBrNvbU5Vu92gorSy3gnVbksbmFaKx+e
         z1IO+U1Q1SG021VTPHaAByNxoM5hSTzOjVbEvwUqRZYwcGDApG7Pu7FX4LpV7k/4njwo
         6wUre7wv/XDbEPcJgo2A2aUNfBFzCofXolRIhewuCx2yB/R5NJXtIYYYNfTI6+qwPn8b
         BAH3axJOjlETjuEf9hTdVf9fmt24VKs+uW/N8KYnhP921cr+a8Cr0BqgemrOH3nhZ55A
         ueEA==
X-Forwarded-Encrypted: i=1; AJvYcCW39fwXIqeOYfNUJ5Y0iXCrFNn5qhlVE/Y8F2ny040hdohT9+jNVkDvmybPNDyr36zwaarbILh3d90=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDkSX5dKo8jlZ2e/mfQ8HVhChs1n+vuvtY1tdzcWViAK+5+Ojw
	6wQCw6hZFfOIKu+NJnEED3TZB6wDh4AlILozyAnbYsy7qstrSN8Fv5P2UGN+xW3VvDHeJzKNCxL
	i6OR1jbIAWPsmULxXuUHDIEBzgHsB0UoiM341yphXyOxwdenWevtk9FPCFjWKT2UxIsrt
X-Gm-Gg: ASbGncvCX2zT96dna804wBd8NxpO6kOth7cizV2Jmz0tCas8CYsasfKCaqa8kt6noYM
	XzfICjv+jJTx5k4lBBlYJMlfIUCESGtiIUJRnxsZjA5HDwCxeXyQf13ogX3eYKDDf4AfmgRw5lu
	q2GqvEIebGcb2mRrkCeim7we6i5ObXIUJuDibLzmVxEB/WrNWrN5KEhfSKcKZ5UmEBjO8fObLtw
	XG6SSyYXDsOVV7gcxxMXJFwagPlKQY7cGl4ayr3GGHWi5p0Qrhtgv6JwkQcm/1Qek1HyiDjqrPA
	JRcGbfnmHzxmxpILX5azmDrWs8yxXj7/5dWo3YKXvqx7KloovpPmR/tGcafHB+5B8QaMH2BKgtw
	w2zJIN0yyTKinYQUIATKuG56tAhQhNS0Ssd67w2wkjvY+VYCC8rbG
X-Received: by 2002:a05:622a:553:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4d36708263amr20612821cf.1.1758624343342;
        Tue, 23 Sep 2025 03:45:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiYj54pkLfQJi4mBKnM8awsCwLOK/0GZu894Y6oYBprrn+tmmkltO3sOFH+V8iuDnCGbKBNQ==
X-Received: by 2002:a05:622a:553:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4d36708263amr20612281cf.1.1758624342548;
        Tue, 23 Sep 2025 03:45:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57c56d475a7sm2237990e87.42.2025.09.23.03.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 03:45:41 -0700 (PDT)
Date: Tue, 23 Sep 2025 13:45:39 +0300
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
Message-ID: <p3kgqn3euumhysckh4yyqavqv5y6any5zcrgkrcg3j5a7z7cyw@lfpkla5p3put>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
 <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
 <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
 <jm32ujhxslsx5snes4o66t2grb5uxhsaapjqahektfck66g6hb@fx6f53yojlcr>
 <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d27a58 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=ePr-TV-LAAAA:8 a=JfrnYn6hAAAA:8
 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=Y8DisfNwMWTW2FRaHhwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=uGDpjx9DKq9E8W49yboe:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 6af4Cnf1QBCO0U1csY7YsGW0yHvA4RoP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX53FzUUbUOjDZ
 eR9Fl+R9pUgiad8aNVN99d3aYI+dGAZpWxsqWh5kuPGVlnzdLdi5fpjA2a4IvKQDx1+5bNmExTF
 gLsWyQGTMPRlsy76j9ZbHai2kAKB4p96LERCQZkfkPSAWQGS4ZT5VqtzL9EoArk+ZKs9I2UdnCA
 f88gX7cv3NZX8oJO+2b054oNiEhGj1lxjdhDU1R0Bvic87wk3c/6ACxb1TtDsXI6TG6T4zkUijJ
 KOmbRq+pxo83esuTZgjaeAPpLJGcDThiMwnAff6uJBjPUYJDxIbOdS3a6ExxTJsjHwDu4E6JJF+
 1yv5nClPLkPngV2dwdg6RJkaLEQpjyjXm5AD+8Sbz4DBbqxygu1W21pQYASQZne0du7ugdgmPNy
 xIAjFimF
X-Proofpoint-GUID: 6af4Cnf1QBCO0U1csY7YsGW0yHvA4RoP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_034545_662770_4005C141 
X-CRM114-Status: GOOD (  46.64  )
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

On Tue, Sep 23, 2025 at 03:17:20PM +0800, Chaoyi Chen wrote:
> On 9/23/2025 12:51 PM, Dmitry Baryshkov wrote:
> =

> > On Tue, Sep 23, 2025 at 11:40:33AM +0800, Chaoyi Chen wrote:
> > > On 9/23/2025 11:17 AM, Dmitry Baryshkov wrote:
> > > =

> > > > On Tue, Sep 23, 2025 at 09:53:06AM +0800, Chaoyi Chen wrote:
> > > > > Hi Dmitry,
> > > > > =

> > > > > On 9/23/2025 9:12 AM, Dmitry Baryshkov wrote:
> > > > > > On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> > > > > > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > =

> > > > > > > The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> > > > > > > supports software-configurable pin mapping and DisplayPort la=
ne
> > > > > > > assignment. These capabilities enable the PHY itself to handl=
e both
> > > > > > > mode switching and orientation switching, based on the Type-C=
 plug
> > > > > > > orientation and USB PD negotiation results.
> > > > > > > =

> > > > > > > While an external Type-C controller is still required to dete=
ct cable
> > > > > > > attachment and report USB PD events, the actual mode and orie=
ntation
> > > > > > > switching is performed internally by the PHY through software
> > > > > > > configuration. This allows the PHY to act as a Type-C multipl=
exer for
> > > > > > > both data role and DP altmode configuration.
> > > > > > > =

> > > > > > > To reflect this hardware design, this patch introduces a new
> > > > > > > "mode-switch" property for the dp-port node in the device tre=
e bindings.
> > > > > > > This property indicates that the connected PHY is capable of =
handling
> > > > > > > Type-C mode switching itself.
> > > > > > > =

> > > > > > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > =

> > > > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > > > ---
> > > > > > > =

> > > > > > > Changes in v4:
> > > > > > > - Remove "|" in description.
> > > > > > > =

> > > > > > > Changes in v3:
> > > > > > > - Add more descriptions to clarify the role of the PHY in swi=
tching.
> > > > > > > =

> > > > > > > Changes in v2:
> > > > > > > - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> > > > > > > =

> > > > > > >     .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yam=
l  | 6 ++++++
> > > > > > >     1 file changed, 6 insertions(+)
> > > > > > > =

> > > > > > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,r=
k3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk339=
9-typec-phy.yaml
> > > > > > > index 91c011f68cd0..83ebcde096ea 100644
> > > > > > > --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-t=
ypec-phy.yaml
> > > > > > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-t=
ypec-phy.yaml
> > > > > > > @@ -51,6 +51,12 @@ properties:
> > > > > > >           '#phy-cells':
> > > > > > >             const: 0
> > > > > > > +      mode-switch:
> > > > > > Having the mode-switch here is a bit strange. I think the whole=
 PHY
> > > > > > device should be an orientation-switch and mode-switch. Otherwi=
se it
> > > > > > feels weird to me.
> > > > > I think this is a difference in practice. In the previous binding=
, there was already an orientation-switch under the usb-port. I trying to a=
dd both an orientation-switch and a mode-switch to the top-level device in =
v2. And=A0Krzysztof reminded me that adding a mode-switch under the dp-port=
 would be better, so I changed it to the current form :)
> > > > I couldn't find the comment on lore. Could you please point it out?
> > > Sorry, it is v1. I added an orientation-switch and a mode-switch in t=
he top-level PHY [0]. Comment is here: [1]
> > My interpretation of [1] doesn't quite match yours. It doesn't say
> > anything about moving mode-switch to dp-port. It basically pointed out
> > that you already have two ports.
> =

> Yes, I think this can be easily changed, as long as the issue you mention=
ed below is resolved.
> =

> =

> > =

> > Also, I'm not sure how the current construction works: you register
> > switch and mux for the dev_fwnode(tcphy->dev), however the lookfup
> > functions should be looking for a device corresponding to the port OF
> > node (which doesn't exist).
> =

> In v1, that is fwnode =3D dev_fwnode(tcphy->dev) .=A0 And dt like is:
> =

> =

> &tcphy {
> =A0 =A0 port {
> =A0 =A0 =A0 =A0 tcphy0_orientation_switch: endpoint@0 { ... };
> =A0 =A0 =A0 =A0 tcphy_dp_altmode_switch: endpoint@1 { ... };
> =A0 =A0 };
> };
> =

> =

> Since the binding already includes a "usb3-port" and a "dp-port", it can =
not add another new port.
> =

> So after v1, that is fwnode =3D device_get_named_child_node(tcphy->dev, "=
usb3-port") . And dt like this:

I see it now, I was probably looking at the different revision, sorry
about it.

> =

> =

> &tcphy0_dp {
> =A0 =A0 port { ... };
> };
> =

> &tcphy0_usb3 {
> =A0 =A0 port { ... };
> };
> =

> =

> Sorry, this looks a bit hacky. Do you have a better idea? Thank you.

No, it's fine from my POV now.

> =

> =

> > =

> > > =

> > > [0] https://lore.kernel.org/all/20250715112456.101-4-kernel@airkyi.co=
m/
> > > =

> > > [1] https://lore.kernel.org/all/4dfed94c-665d-4e04-b527-ddd34fd3db8f@=
kernel.org/
> > > =

> > > =

> > > =

> > > > > =

> > > > > > > +        description:
> > > > > > > +          Indicates the PHY can handle altmode switching. In=
 this case,
> > > > > > > +          requires an external USB Type-C controller to repo=
rt USB PD message.
> > > > > > > +        type: boolean
> > > > > > > +
> > > > > > >           port:
> > > > > > >             $ref: /schemas/graph.yaml#/properties/port
> > > > > > >             description: Connection to USB Type-C connector
> > > > > > > -- =

> > > > > > > 2.49.0
> > > > > > > =

> > > > > -- =

> > > > > Best,
> > > > > Chaoyi
> > > > > =

> > > -- =

> > > Best,
> > > Chaoyi
> > > =

> > > =

> > > -- =

> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> =

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

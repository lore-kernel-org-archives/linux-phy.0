Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFDFFC7EE23
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 11:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35pI3JS0705wIa1sdJJSmydJjWWA1q/KDFFrSgNwHQI=; b=HLlq2FpJBfvJZc
	I74+/2fdKJ+l3MdkZwjJ/IH9hvqRaBTrWxxUwuSz2urqM6LcIqpbPxDixdwWRgYSmNoUbQ5Ul4jzg
	eBK8K+yLinihX35rbagzthQcFCZ2S+JlPNGgm2LaDS7N1PQcishEG/eya8hjqdLSpukzyiaI4ejEr
	bGMRIdmUmiWYUwLOVmQjoeTDhx1qErWWqUPQewXelgmKX30LoMWmwgkzh0OwyQj4+YCzRiFJ8cGLc
	KzCu/NtdeLjEuQh+2MUpcKcKMLmQfnZGAsAL+R6Q5PfW0o5+n4YLYApu2VBpMdNGqA8mMEqlj7YVx
	rOVzkZSHK7bnXJ6FnMOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvywZ-000OO1-1f;
	Mon, 08 May 2023 11:22:15 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvywV-000OLn-02
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 11:22:12 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-55a8019379fso38963237b3.0
        for <linux-phy@lists.infradead.org>; Mon, 08 May 2023 04:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683544923; x=1686136923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ko/U1fePk/WQPy7Vn3m2ZCRRwSMISl8BqLJIER3u0Oc=;
        b=lmH0XMw8PpvMAbg4bTIjxo7HrMUANXnsUFHAGj4B/mc9GFBCjA8omr6ylekmWkYkhn
         6Z6uO30eTzH+govAWZABsibcAaCFm4bxOHizPQYwPIX998PelJ/aRHI9BhWZvuA/0RTc
         L27hLqc7EVPLe5WpS1yCjZXfSORDmbnHsH9qYJsXK6gRuQDaVw1B4EQwt/WVy54savt8
         CTObqlSg0mBBX9N4XY2o7IoofdceWwM2Jkgf9UH8/a8V3K9LECpbwxeAASI1HSGsnlDH
         VWbxvbXnl6V4UczO1yrBQo5vMiRDzC1WnKLkdPf4o9OJNIQKVwjwFFVIYE4VMAJJp+gw
         43lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683544923; x=1686136923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ko/U1fePk/WQPy7Vn3m2ZCRRwSMISl8BqLJIER3u0Oc=;
        b=Vsm8JgaHAzQYpiBKsscew0OsbMbVU8WRyqCrxUHvmZfysoEkH4BopYwKoY7BcJhru2
         JEqE7nGleh0j8DERzxQ16YdZVziI7BT7bUQs6TTjqP0+gYR0Tp57r9hFdopxLUycRt8i
         GJspi7nl/Oj1biAv4IhT1rSykjw9kCHNS/ZQA714Et0Vmn+HVQTfOoK4SYi4GO8WLVR+
         hHYYaQERCZFNHbGrI4j+HJx2b6xaHnRcnZCeKryvHNxW5eID8KVNlRxmgTNqTUXOfsta
         Wx7y36dQ3uqHOW6E9is7MbTGAVuawX/SL6M7Dm4IKtvFeBEDxvwfREhWfxhjb4oNnScL
         r8Bg==
X-Gm-Message-State: AC+VfDxWBYehLh3caFE5wmBOYs/yIKCc4YHt52OJ1dP2glVtUzbdePJN
	Hl7JYtOdeU1knOvfRHTBPaspBOG0KCxqvd13w6mr2A==
X-Google-Smtp-Source: ACHHUZ5au/Vo+wSxMFwJFjI/9KWWlfBLe/b0UuwxkO/sVsdYW6os9E+PkdqReYK5feb3ykElLiD8ESJVRHb4HRFlL5A=
X-Received: by 2002:a25:d008:0:b0:b92:3958:dad9 with SMTP id
 h8-20020a25d008000000b00b923958dad9mr10268569ybg.40.1683544922857; Mon, 08
 May 2023 04:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683183860.git.quic_varada@quicinc.com> <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
 <20230506110918.GC10918@varda-linux.qualcomm.com> <CAA8EJpqg2htfa2QZ7q6SP58N5YAABa8knBn4c5eYqYOU6HQNiA@mail.gmail.com>
 <20230508051657.GA24472@varda-linux.qualcomm.com>
In-Reply-To: <20230508051657.GA24472@varda-linux.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 8 May 2023 14:21:52 +0300
Message-ID: <CAA8EJppubMsUrG3Vo=2W8Y6=MCBKd7OCViM30jdGAdCc8x65Ww@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_042211_077772_D9D765A0 
X-CRM114-Status: GOOD (  32.29  )
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

On Mon, 8 May 2023 at 08:17, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Sat, May 06, 2023 at 02:33:11PM +0300, Dmitry Baryshkov wrote:
> > On Sat, 6 May 2023 at 14:09, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> > >
> > > On Fri, May 05, 2023 at 12:29:54PM +0300, Dmitry Baryshkov wrote:
> > > > On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> > > > <quic_varada@quicinc.com> wrote:
> > > > >
> > > > > Add LDO regulator node
> > > >
> > > > As this LDO is provided by the PMIC, it would be nice to know why it
> > > > is modelled as an always-on regulator instead of the proper PMIC
> > > > regulator. Up to now we were doing this only for the outstanding power
> > > > rails like CX/MX or EBI.
> > >
> > > These are always ON because USB phy doesn't support power
> > > collapse, and there is a chance that other IP blocks might be
> > > sharing the rail.
> >
> > You are describing the software side here. From the hardware point of
> > view, it is an I2C regulator, which is probably also exported as an
> > SMD_RPM regulator. Unless you have a good reason not to do so, there
> > should be a node under rpm-requests, which describes mp5496 regulators
> > exported via RPM. then USB should refer to those regulators.
>
> Yes. It is a part of rpm-requests. That is why have mentioned V10
> is dependent on
> https://lore.kernel.org/lkml/20230407155727.20615-1-quic_devipriy@quicinc.com/T/.
> The 4th patch of the above series
> (https://lore.kernel.org/lkml/20230407155727.20615-1-quic_devipriy@quicinc.com/T/#mea3f0ea37c53cf5e39e10cd6cf3bed5243cec629)
> adds the rpm_requests node and this regulator definition is added
> to it. Hope that is ok.

It is fine. Most probably I was mistaken by the patch itself. Please
excuse me. If this this is an RPM regulator, it's is fine and correct.

>
> Thanks
> Varada
>
> > > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > > ---
> > > > >  Changes in v10:
> > > > >         - Add LDO regulator node
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> > > > >  1 file changed, 7 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > > > index bdc1434..1f5d14f 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > > > @@ -60,6 +60,13 @@
> > > > >                         regulator-min-microvolt = <725000>;
> > > > >                         regulator-max-microvolt = <1075000>;
> > > > >                 };
> > > > > +
> > > > > +               mp5496_l2: l2 {
> > > > > +                       regulator-min-microvolt = <1800000>;
> > > > > +                       regulator-max-microvolt = <1800000>;
> > > > > +                       regulator-boot-on;
> > > > > +                       regulator-always-on;
> > > > > +               };
> > > > >         };
> > > > >  };
> > > > >
> > > > > --
> > > > > 2.7.4
> > > > >
> > > >
> > > >
> > > > --
> > > > With best wishes
> > > > Dmitry
> >
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

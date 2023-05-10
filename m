Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E3DC77B7D
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 14:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGabiTzMYAcgHhZNea9iqSiszQbbxD9xtAU0t5AkP2s=; b=uyrapmkgs/a71e
	0upiMdhnqyucRy2uFy1sEpGzEk52ZLefcRm/CQHP2bsq4B+muLIHnYFIm/j87qzWwbR8kLsc7KRDC
	qdFCOLIdDvBMGtd7d8yszf02YRG+WmVIAdsjsYjXc4+bWnKRs3cDETTwLWxC5unC4JiGbiqWRcHi8
	DLxIFIfCEUtZtDkoDIfppzJbAHjwj/cEx2Zphd9RM5HNdy4Eap2kO9SldH2wQH09iYq8NR32x2ipR
	WAP8yuCaORbl/qxYvx4ITR6BlEVOMFdTTrv073ecsLodPCa8qm7FMMQh0Cre7nxkjBPgCo8rH7jt9
	xv5vTbGXdNUlHkTFhsAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwkXe-006K8P-1W;
	Wed, 10 May 2023 14:11:42 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwkXb-006K6y-1y
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 14:11:40 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-b9a6f17f2b6so36037524276.1
        for <linux-phy@lists.infradead.org>; Wed, 10 May 2023 07:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683727895; x=1686319895;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ABREL4RA4HQkooXBZ4vFWzYroT9eYO8/4h0/bu7hTPg=;
        b=nJecOsJyqcRvaPT9m6MbM8DDYx5vc8NikACtgnGDBMlsZ7jEUJkdiuqpUXSwJ+VDLR
         SV8mBBD/MDHq53G/wg7Y67l/cSYGGnu8Z5LWkidbHXZ8v0zSeOCnpwAO0nSQzFXbVY8z
         fREaKLtEXgrcDSUNKwxcbxQRHq4YrFYpLHlc8TcY4xQEqEyzykC24djuJbI5K5v9Q775
         05gR4e2Exo5gy8VpID15rkL7IZNqvJfmwHzeIixJ4NxhmP5fM1+neOLV9IfuD+TN6rBJ
         VR1FKFpkYm6OLaVPBErbw+bW+/4vfdFxt3vDpMvbuBsqA0C41Te1XXj6Ah1IcqKn+/B7
         46VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683727895; x=1686319895;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ABREL4RA4HQkooXBZ4vFWzYroT9eYO8/4h0/bu7hTPg=;
        b=N80vUg8CwqiMvvlCZW/5dbknZXPGVV2/F/JAnkdzmpFaQyCiK3+2V7mNwit5ojbkRD
         Pb3wG1EBg6c6c0JyriMabw4qZz7ogf6EjOmBe+iHSq7dl6jZuBFGOFuH+4KhC/AUXF/T
         mPGMMN/Et8TkVQD1URmbVG2jAsgt/XMYj1IH7KzT2Xbv4tiHaT3ma9RstHyJdlJkf5R3
         Q7sbxfxQFiboc69nl6WelfDhJTQ+vmXFcQvMcsD1uSkJshxSSKpOWS04ILhdmMTCJjTQ
         RPQ2rQOwxm7Lj6HVaF6LLYQpAynJ2a1F+Kc0CLYDUlYw0ELNDd6k8S7/ioMq5vGZq9h8
         j+RA==
X-Gm-Message-State: AC+VfDyJNZSO8PKlJGpNIbypI4FD7VqfszFGNpftTZUg21toioriaxwJ
	9trpVxEJav9hq7m3/uBkV7otBsHRHgPVeQ1jObcOMg==
X-Google-Smtp-Source: ACHHUZ6qSFZacUexcQkHcVAJ+XtxS7EGJ0Aso4chPxbPdm4XjwCwQpJtI34WDH2cWrBtoFXh8o5rCwC8gRl71XOUXuU=
X-Received: by 2002:a25:a87:0:b0:b9e:772f:34bc with SMTP id
 129-20020a250a87000000b00b9e772f34bcmr21231831ybk.22.1683727894999; Wed, 10
 May 2023 07:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683630932.git.quic_varada@quicinc.com> <42bf6244582d6208f51db1a9299fe1c8afab4e14.1683630932.git.quic_varada@quicinc.com>
 <CAA8EJpqkSNzx=73JS1Csw+ivVovhrFeM0R5j2tpruEfNqvT48Q@mail.gmail.com> <20230510102244.GA21530@varda-linux.qualcomm.com>
In-Reply-To: <20230510102244.GA21530@varda-linux.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 10 May 2023 17:11:24 +0300
Message-ID: <CAA8EJppgkHREJrBzhSDn9VT--RRcpcxMYvTWoYfkXkv4XFtK6Q@mail.gmail.com>
Subject: Re: [PATCH v11 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_071139_648100_D07402D3 
X-CRM114-Status: GOOD (  22.13  )
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

On Wed, 10 May 2023 at 13:23, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Tue, May 09, 2023 at 04:08:59PM +0300, Dmitry Baryshkov wrote:
> > On Tue, 9 May 2023 at 14:56, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> > >
> > > Add LDO regulator node
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > >  Changes in v10:
> > >         - Add LDO regulator node
> > > ---
> > >  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Minor question below:
> >
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > index bdc1434..1f5d14f 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > @@ -60,6 +60,13 @@
> > >                         regulator-min-microvolt = <725000>;
> > >                         regulator-max-microvolt = <1075000>;
> > >                 };
> > > +
> > > +               mp5496_l2: l2 {
> > > +                       regulator-min-microvolt = <1800000>;
> > > +                       regulator-max-microvolt = <1800000>;
> > > +                       regulator-boot-on;
> > > +                       regulator-always-on;
> >
> > This usually points out that there are other users which are not yet
> > enabled/properly specified. What users are there for this supply which
> > demand it to be always on?
>
> The 1.8v rail is used by PCIe PHY, PLL for Ethernet SerDes
> interface and PLLs that generate SoC clocks. The voting for this
> rail is managed by the RPM f/w.

Then I'm looking forward to seeing the patch which declares all the
actual users of the lane. Please do not declare power lanes as
boot-on/always-on unless there is a strong reason for doing it.

>
> Thanks
> Varada
>
> > > +               };
> > >         };
> > >  };
> > >
> > > --
> > > 2.7.4
> > >
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

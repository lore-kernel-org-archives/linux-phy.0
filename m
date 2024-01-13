Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CFC0C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 14:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0qkDX2wa79dAKoVNUAqx+bUpY1tKwErUFKZts6q+PU=; b=nIEAUfVh2j5HQK
	3tjD43dwTk24TI3OGa+KIC0jMmEMC3ihIGrl9jpPIi0OHJwXo6YyWczwGSCLC5SkyhGE7FftaaG46
	FoCPquPqgp2XYch8ru5+ekomcISssFBjjQ5MODrqW+anvgRg6Wem5mzVjiH3Z3kp+u3Eb6MN3nBYz
	VkgOzZc059SDDm7QGftHLRMJ++LM2uDlAyXa5DIPBentORIqTYm1Bw9eRIJm2skTNNWuwIdCNsqDo
	kdN+0HIqbFjeaT5WQtf/Ncw3P948ZZKw1+mcSqO/4Jbh9axINXqeULT8WwUlhxKxSueGIeYaI3ZMX
	hD6VHN9TMapG+feS8nFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOesN-005ESm-2X;
	Sat, 13 Jan 2024 14:20:43 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOesL-005ESI-1Y
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 14:20:42 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5e784ce9bb8so59030847b3.0
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 06:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705155638; x=1705760438; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jRR1fEiQ+S1I9X2qmIA0v7+k3czhnEi8Cft1wc0vvhE=;
        b=EL8xaZz2siCJrpUvNF88LJFW7CSfH1kC1RkFvCx+76/UvOsc8LJi2nSRJrlHeEgMWU
         IyooFvmmQieQ6VzB2xc2pHTu7lMOHLtT2jL0CHKyd+chiuSwcaBcw+0ZRNae3M0+tUXO
         FvHoGb4CLec3L6LjGutt9gbNBKOK4QboDGtajkF9Vf2Fr+KCA5bRvHATR/wauJ4vGcTG
         7eT5h82/nhqu/JMbUEq1ihnVr/nOVSjFIMWdznUa/6T89dMlBb9Yq42wjdOKlB7oX1HA
         a2psJ995fBNyGgeQdnLgHZLdnNTKEpNpjdHok94hNgGtY/IkIKhXDoUgfQzBhpX2vZox
         EwBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705155638; x=1705760438;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRR1fEiQ+S1I9X2qmIA0v7+k3czhnEi8Cft1wc0vvhE=;
        b=cilnidqOYpuJjBjHdJG6LZNAxQCel9oATz1B2j/CWq3OlfSEGQQua2srFm7txoBR/N
         QlqvTcgyJxee8BiRQZmRUrMFI+Y4ZLgjOAEch7RHcJXdsCHE1wuzDC07f1frGBRxN7fJ
         DivX2xXRmtlEXLbox2a9bRjutgkzQNXFAb3azQS5dlNpRQfezPqCDi63LW4m6q0mYKw/
         z4edQK+yEqmhCAam2ZenaC81gCYQqlSJBBhbPbsQ2eB9V0uHNPtLmKzzyfp+fnhVnOcI
         8Ju6iXAo18EdxIiF+OnDB/Bp0qAK2nWZn98wenahW4zzgXVtEZvGqLAjNusjL7UWyTzg
         mgig==
X-Gm-Message-State: AOJu0YxUTegpyCBWoTYG3oyWSm7qoKrqiZlVH0gF6SkVctjIew17Q7+t
	nr7GbTIxJLw5+vMcYVNXWLrcw9PM+IxdjPLiQCbB7rHapW/ttQ==
X-Google-Smtp-Source: AGHT+IGvo0IxPUVD2gocSeoHYbVLdOkAGs/NP7wXxyLktENyxzaCT4fyggCnTGZ6grFAcFnKiUnA42Y8RGlLW9f9i1w=
X-Received: by 2002:a05:690c:fcd:b0:5e2:78d8:f3a7 with SMTP id
 dg13-20020a05690c0fcd00b005e278d8f3a7mr2319832ywb.7.1705155638454; Sat, 13
 Jan 2024 06:20:38 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-13-de7dfd459353@linaro.org> <75fdcb64-69b2-49b6-a6a6-2e231e3730d9@linaro.org>
In-Reply-To: <75fdcb64-69b2-49b6-a6a6-2e231e3730d9@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 16:20:26 +0200
Message-ID: <CAA8EJpogN-Pq9w4pEyhPJ_S64ungSETd8YKMMNZ8E6DDeGpVCQ@mail.gmail.com>
Subject: Re: [PATCH 13/13] arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_062041_582146_1CF4C78F 
X-CRM114-Status: GOOD (  18.56  )
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

On Sat, 13 Jan 2024 at 12:52, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> > Plug in USB-C related bits and pieces to enable USB role switching and
> > USB-C orientation handling for the Qualcomm RB2 board.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 62 ++++++++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm6115.dtsi     | 38 ++++++++++++++++++++
> >  2 files changed, 100 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > index 52f31f3166c2..a96e3afb65bc 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > @@ -6,8 +6,10 @@
> >  /dts-v1/;
> >
> >  #include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/usb/pd.h>
> >  #include "sm4250.dtsi"
> >  #include "pm6125.dtsi"
> > +#include "pmi632.dtsi"
> >
> >  / {
> >       model = "Qualcomm Technologies, Inc. QRB4210 RB2";
> > @@ -256,6 +258,53 @@ kypd_vol_up_n: kypd-vol-up-n-state {
> >       };
> >  };
> >
> > +&pmi632_typec {
> > +     status = "okay";
> > +
> > +     connector {
> > +             compatible = "usb-c-connector";
> > +
> > +             power-role = "dual";
> > +             data-role = "dual";
> > +             self-powered;
> > +
> > +             source-pdos = <PDO_FIXED(5000, 3000,
> > +                                      PDO_FIXED_DUAL_ROLE |
> > +                                      PDO_FIXED_USB_COMM |
> > +                                      PDO_FIXED_DATA_SWAP)>;
> > +             sink-pdos = <PDO_FIXED(5000, 500,
> > +                                      PDO_FIXED_DUAL_ROLE |
> > +                                      PDO_FIXED_USB_COMM |
> > +                                      PDO_FIXED_DATA_SWAP)>;
> > +             op-sink-microwatt = <10000000>;
> So RB2 can provide 15 watts over the USB-C port, consume 2.5 but
> requires 10? That doesn't make a whole lot of sense..
>
> Unless I'm reading this wrong..

Let me double-check the properties and the docs before answering.

>
> > +&usb_dwc3 {
> > +     usb-role-switch;
>
> Since this is a dual-role controller, I think this could live in the SoC

Sure. Should we update other boards too?

> DT
>
> > +};
> > +
> > +&usb_dwc3_hs {
> > +     remote-endpoint = <&pmi632_hs_in>;
> > +};
> > +
> >  &usb_hsphy {
> >       vdd-supply = <&vreg_l4a_0p9>;
> >       vdda-pll-supply = <&vreg_l12a_1p8>;
> > @@ -618,10 +675,15 @@ &usb_hsphy {
> >  &usb_qmpphy {
> >       vdda-phy-supply = <&vreg_l4a_0p9>;
> >       vdda-pll-supply = <&vreg_l12a_1p8>;
> > +     orientation-switch;
>
> Similarly, if this doesn't kaboom w/ our implementation too much, the
> PHY itself has orientation detection capabilities
>
> Konrad



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

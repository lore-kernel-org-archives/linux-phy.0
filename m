Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04EDCC4707C
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 10:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35w1YALIycnvNlb+yP0OSB0f2ipsBaW5Dt5U62ng+QA=; b=qbVaFH4q2Ofztn
	x/NkaRyY1afZfVCf8xXHgP8SQYv6tiJ2+XctLSp5dhSB2U6fd6VQXuqdt0AkYZ06AkrnF/f79NW8b
	GYykzAsPPK6Yp2OelYDwtd8A4i50Xt/4qerueynqHTHBXkCdtnqmw3MHKbHnCaXRTI4F9nzAoTVn2
	tVRIOPjbN/HnF14geYAjOQTwl2Y5bSUb+3Zw5mGuoejN4d0NZpmWfaDamtlCfHJ3YzJZYK0pG/qWZ
	icQpy0NYTvmA7LzEA31eddzKoH1r14JgYJg8CGM5SPc81vg4md7mPZpHBwlMtP8AhiGR84g6Y4YBQ
	5jrE/CkJrJ8xz5Loagjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPKRj-008baN-1q;
	Mon, 15 Jan 2024 10:43:59 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPKRh-008bZr-1K
	for linux-phy@lists.infradead.org;
	Mon, 15 Jan 2024 10:43:58 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5f00bef973aso87484987b3.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 02:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705315436; x=1705920236; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HA6dETEZb2YlMZXe35z+WXi3pfyS/JU2XsCgeGueIkw=;
        b=SPKC7ihgbOVx2ffOJjuXJo8QFDKsTOaTlJnqhGLq4lqeFQTGjOId1I3eIxugJ55PIG
         rU2/geK6blqHQI845bxXfaeMRk/N7NvbPCEHP93WZDviwcuwX4Sy/iZGnr5qIvgfRco4
         uIbVQ7CB77oi7wAdUq0zBh8TbPpoBHiRDNchrvEXuJvPhCPk3p6DrKUrrAwWbAfcNPiH
         r7PZogZkLtQ9iOJKsfZ3r8R7LDZrTFuRh/Stny73Sz8bKiQa+lCvOZRGbsiovqiKnGxI
         g7SBPy1mhLHU39CS7wfHFv1vQwfF8djUyzyr9oPXF8qrCX2u2SahvuvKiXxoiyV+YT/E
         EdJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705315436; x=1705920236;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HA6dETEZb2YlMZXe35z+WXi3pfyS/JU2XsCgeGueIkw=;
        b=gN9P4WrB76+SJzUcFq7tNg/W5JIYiXBOBRvIgMSLuSXTiBh9LoCNygBhkPYMVdksmB
         U9d9NjawTcDnTrBev2WV8QER6lDPucST55NUZach3E8VWBT8DUCB2P5r3OhZ2dBdpi3k
         g3kBFm5XIBAPtWgEFVpR2ts/CHYKU7kacXrFELmQTt9P4TqLNwT6aAr+ozaoai9zfWbc
         o67H4xg3XVvQTpNmCTyAlwLgIAO8afsOliOuy5/n2G4BonOH3VJQAwa3pd/SE5nWWt9y
         iOU3DAXKyDzzgfXWZuxye+pD+G7G+XckV7plTghFiVTTDJzJmVCLMTYWdFf23HoB2qwW
         XZRQ==
X-Gm-Message-State: AOJu0Yy9ndfIwcLieCDpigcXQc1v4DufUM9ajB3OwzDW9w+nrZrs0li7
	4wesbwIIIa7/pKjEpUeo+rL/QUrWBlswG/OEIB3Dl7xGn9xtiA==
X-Google-Smtp-Source: AGHT+IGSoK9Aydw953TCiawvx9g+x41cQzH86HonYlpmGY30jz93dCBlM0QgZSjihyn5b4D/aw0E4Jtzzn6D1JGAHxA=
X-Received: by 2002:a05:690c:248:b0:5ef:77a2:c1ae with SMTP id
 ba8-20020a05690c024800b005ef77a2c1aemr3870605ywb.76.1705315435935; Mon, 15
 Jan 2024 02:43:55 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org> <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
In-Reply-To: <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jan 2024 12:43:44 +0200
Message-ID: <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related blocks
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_024357_474355_33B3651F 
X-CRM114-Status: GOOD (  17.77  )
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

On Mon, 15 Jan 2024 at 12:00, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
> > Define VBUS regulator and the Type-C handling block as present on the
> > Quacomm PMI632 PMIC.
> >
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> > index 4eb79e0ce40a..d6832f0b7b80 100644
> > --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> > @@ -45,6 +45,36 @@ pmic@2 {
> >               #address-cells = <1>;
> >               #size-cells = <0>;
> >
> > +             pmi632_vbus: usb-vbus-regulator@1100 {
> > +                     compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
> > +                     reg = <0x1100>;
> > +                     status = "disabled";
> > +             };
> > +
> > +             pmi632_typec: typec@1500 {
> > +                     compatible = "qcom,pmi632-typec";
> > +                     reg = <0x1500>;
> > +                     interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
> > +                                  <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
> > +                                  <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
> > +                                  <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
> > +                                  <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
> > +                                  <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
> > +                                  <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
> > +                                  <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
> This differs from the downstream irq types:
>
> <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
> <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
> <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
> <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;

I must admit, I copied the IRQs from the pm8150b rather than from the
vendor kernel.

Bryan, any idea which set of flags is more correct?

> Is it intended?
>
> Thanks a lot for working on this!


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

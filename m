Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9F20C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 13:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yi1AkTAClBtk3fFPzRmJQ3WWw+BoP13/pv+w7V2MJM8=; b=MJ1/4mxIg+pifQ
	Q/BPUy1+kK5ZTXTTdSHaGVfsNXEavlvRiFJV4eZZAH6BCUAA4/qopRaBOgCXxXWRTldiNFfBe9roA
	64/nUHmFd4bTwWxpkdYYqLqF6bUiB/dpRJFFSWqn+PPx1hqHnGaKPF6cQ9/33noA/VGNfYVIpJgZp
	3fW+aP0elUAPdnPiphQmS7k8xeWD02K49p9bupz6+XiYUhk52Nhtk4iJS4Ata62zE8/V0ppR0HFr1
	sdY/u6ZbGHqJvU+IjGUXcCNkJKmznhJtc33CVMmloQvDoxOMEZPvnzecEe6lJ2Xe/y/buBphq22RR
	RZYrQdfpOJMpVulLaldA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQSbM-002ryh-0X;
	Thu, 18 Jan 2024 13:38:36 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQSbI-002ryF-0Y
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 13:38:33 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso8581423276.2
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 05:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705585110; x=1706189910; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A4oOpN8Y3DEZ3CQYkWBnW0jH3tN+IO9B+O6AmYvwm30=;
        b=MyeBWjGK0dhuiDnf0OKCMPkXAGHUg7GTr37GXfOLumPKldpbSKRkphTGnb5pdozz6K
         5DGlLTFPtnB92gsuh94UaPh6R7Pembd5s1e2EDNDwmherOB7rQ894Ke7KZfc7Y3fTVre
         6Z2cGhGdar5eflUzdGapt2myfIjdpm/LzfUkC9w8TYK7zpkMjQLR/RBnhggZWyA1hr8Z
         LqmIHfS4WC7AxJ/9ZL2HPah0/O2bUtT2VQzt6A4chTtah7pVnZ0b5eoT71dx8np/3lls
         js8aepgX5r+hBa8ESlKWYe5Kts8VR68M9BYD0VPZiKXxTDQYmJrwwFvshchNseNk1cdC
         RHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705585110; x=1706189910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4oOpN8Y3DEZ3CQYkWBnW0jH3tN+IO9B+O6AmYvwm30=;
        b=jaqy3IIlB3zjUrj70NBYmeCez15VFJUWygAb5waHhAMaD2YeO1pH1pP+M6S6plLsUQ
         4NGdowNORM459Xa1mcw2ezy/bUSJH5b+WWJqpMAbKOOWtzP/JgXqbBJq+g4kZmAF32hd
         QF2MnjlGzDjRCgRlwc9BHx3vRrJmPBUzb2srMkimiW5BuH4tOwqqayr33xzNMxaBukKH
         0jH05HqY9CTdlMWP4qAnt7XOYgyes5/geA5yYyc799axguViBqHLHfaog4OHcPQZLqG6
         VejEVHQkL6LLkstuRlj8vtMoR/V/C0WaQtkptWctGFvqF7z6tmw/Gd2+Z+SXmZtdkzjt
         7Ldg==
X-Gm-Message-State: AOJu0YxjiVE8T86aLwlW1/uOkrGDn3/zWtRPLqBlMX7k0lXvyKhJvqHp
	rjQ/hZmjmZMnQwaGC1KJoYlp+WXVjrWfZ3Km55849L7uUf7I0DCfa113mmjD0fjO668mZCWhntk
	VraekErWpZuLJNg+u834Kpwm39Ls76Jiywg8JJw==
X-Google-Smtp-Source: AGHT+IGdy20i2CdAntPsHqXzGz66RuOXdG6qrXdmHo9xtm2eAIXSW6yR7iTaedJKEXIvZXfSQTfQ1EP5Lws0BWE9adg=
X-Received: by 2002:a5b:d0b:0:b0:dc2:260d:f00b with SMTP id
 y11-20020a5b0d0b000000b00dc2260df00bmr556118ybp.60.1705585107916; Thu, 18 Jan
 2024 05:38:27 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org> <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <20240117220153.GA649327@hu-bjorande-lv.qualcomm.com> <9a24a065-b649-4431-b8fb-78c733c07671@linaro.org>
In-Reply-To: <9a24a065-b649-4431-b8fb-78c733c07671@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 18 Jan 2024 15:38:16 +0200
Message-ID: <CAA8EJppEFSy2=GKgkqC3uS15cO51KfxDrHtxHhAnA10kScYKhQ@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related blocks
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_053832_232564_12921AFE 
X-CRM114-Status: GOOD (  17.97  )
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

On Thu, 18 Jan 2024 at 13:17, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 1/17/24 23:01, Bjorn Andersson wrote:
> > On Mon, Jan 15, 2024 at 11:00:53AM +0100, Konrad Dybcio wrote:
> >> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
> >>> Define VBUS regulator and the Type-C handling block as present on the
> >>> Quacomm PMI632 PMIC.
> >>>
> >>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>>   arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 ++++++++++++++++++++++++++++++
> >>>   1 file changed, 30 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> >>> index 4eb79e0ce40a..d6832f0b7b80 100644
> >>> --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> >>> @@ -45,6 +45,36 @@ pmic@2 {
> >>>             #address-cells = <1>;
> >>>             #size-cells = <0>;
> >>>
> >>> +           pmi632_vbus: usb-vbus-regulator@1100 {
> >>> +                   compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
> >>> +                   reg = <0x1100>;
> >>> +                   status = "disabled";
> >>> +           };
> >>> +
> >>> +           pmi632_typec: typec@1500 {
> >>> +                   compatible = "qcom,pmi632-typec";
> >>> +                   reg = <0x1500>;
> >>> +                   interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
> >>> +                                <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
> >>> +                                <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
> >>> +                                <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
> >>> +                                <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
> >>> +                                <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
> >>> +                                <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
> >>> +                                <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
> >> This differs from the downstream irq types:
> >>
> >> <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
> >> <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
> >> <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
> >> <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
> >> <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;
> >>
> >
> > Interrupt 1, 3, and 6 are level interrupts for which it's reasonable to
> > act on both edges. Interrupt 0, 2, 4, 5, and 7 are "pulse interrupts",
> > for which it seems reasonable to act on only one of the edges.
> >
> > To me, Dmitry's proposed version makes more sense than downstream.
>
> Thanks a lot for crosschecking!

Is there an ack?


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

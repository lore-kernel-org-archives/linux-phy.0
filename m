Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D65DFD6DDD5
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 06:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vqRZldYyNhF7CagwbUy5aHQJ9g9QDUlL2qXz9pXhN0=; b=NxnQhIdRCJBgAO
	J00giR/K1sl+0sqfdTpTjwO6LJboLzXYZgpRUi1On9OkU/DYIsdTMV8BSZaERsoYwSkWbJeFhj4g9
	pDeFNcyKg/0uxRu6yL2hYLIIEDT66/dFLw3X/rVNFQn93M7FGklpuocIGQM6cM4aR4UVcreqIiO9t
	tbUAcjcHXWWOxqKxA4Kf+VGW6xxg0WpXOrDeSILaAP/TYxqS2+rCtBASeC9n+0mythluR+fFTHWTb
	2lCgvKR83piu0YmCh5iQM4HuRuqtWG7SbvQM0RblFD3Wnk/fS1Hvft2ROfz7vWZE88qJ/gswsoIcY
	DGzcXwPlerox0g8WyoGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBqEj-00000001qlq-2UUS;
	Fri, 15 Nov 2024 06:55:21 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBqEH-00000001qgl-3B1D
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 06:54:55 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-539d9fffea1so1388065e87.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 22:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731653692; x=1732258492; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MjKLBvWETSBADZGUV6yqhakCmIaLRuQjCHp/Lt9M3AA=;
        b=NWkawXHZUuxGPWIOBszKcRm07+GAYNvwK6SNKg+kkL0SU80ab6I0aOZtPrP+RkFPqh
         XchlT5WCzzarjJ8H0WALK+XnSj8/Y2StbewHnhI50PXI95PhEV/smlHhzMJcr/CPFRFM
         xx+FXhYekqF8zKoPDNTTqqgq06cjoq66YavBSSHq70OuxP1R4fYcjHFExNLQ7nA2DgrP
         z7bdrrmOJO6GR+Tr/0NWrHU+nmAiJ4XziHOYqhEsMQbXIXOa+pVqyFzUAxXHZA8efO6s
         DDuhk8QPcVmaLnEJXMEfK0rWpttDqTa3UCO9kZZt7e/RoxMvetyULPDDM5k4BDHTlX1o
         BCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731653692; x=1732258492;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MjKLBvWETSBADZGUV6yqhakCmIaLRuQjCHp/Lt9M3AA=;
        b=NQGfOjZdNBP3j9K7D+fwZoMPYXVecBPIIxcM5tYzK+Zj3h8vNuGQTxiRswSCdnut+3
         9LqXC3vvO85CGnPqUuSOScG/zYd8GNRIElFAPwNwnFu9JH1lOKk5IKzFKQdFXr65NZqv
         6GSsaTsUec8Mtf9nA4IzKOFJKyI5vbFMywIuUsktdKeWbii7ftJJPUKRlJzc/pJKIcGY
         HWkQWjgI4YN1qMi8QVl2FRGEX3Bl1JFhHyJODzlD0I5n0/+DzD0OU4mhqDgJraioVsmI
         1cM+y0aFh9kHRGzSHBG5Um6Lf/Ow0ntDK19GqhwJAmkKRu+HesW6Lubw7DWLgzA91Si3
         shfA==
X-Forwarded-Encrypted: i=1; AJvYcCUpyekXGnS9TxnCBgm5aANesG503FT2tVLpSpAPbXGmQM+yOpcZYTF3BlGF519gjhMKIw1x0clCuZY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgF3K2DkSfY7hm5iem94F7knlkzOdnUZrZjjIxuwf2ufd+yPQu
	WZXkMCwxe9VFstM6lFl/FidRUdPO4Shd32Fs0QJQ4FJyjlAU976wB67PKv84u/8=
X-Google-Smtp-Source: AGHT+IFYT9QcCK1sZ7kStHf5ogo5eN6v02g0qjiZW9C6KciiPEArLV3TRbiCPgAuKP6fFkQC+XS51w==
X-Received: by 2002:a05:6512:3ba1:b0:53b:1f90:576f with SMTP id 2adb3069b0e04-53dab2a6022mr601193e87.22.1731653691696;
        Thu, 14 Nov 2024 22:54:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6548eb8sm457776e87.255.2024.11.14.22.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:54:50 -0800 (PST)
Date: Fri, 15 Nov 2024 08:54:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	andersson@kernel.org, konradybcio@kernel.org, mantas@8devices.com, 
	quic_kbajaj@quicinc.com, quic_kriskura@quicinc.com, quic_rohiagar@quicinc.com, 
	abel.vesa@linaro.org, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: Add USB controller and phy
 nodes for IPQ5424
Message-ID: <qx22rgezkym3guofdxwmvhrjjwjzshngb4cvpdhqahlykeeqhg@wc4zy3gicrsb>
References: <20241114074722.4085319-1-quic_varada@quicinc.com>
 <20241114074722.4085319-7-quic_varada@quicinc.com>
 <CAA8EJpr6xb=TPPgk7ERhKVp7OnYdPGCK6+1_2TBRLBt_eWM43A@mail.gmail.com>
 <ZzbZGnKEovwoDPrP@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZzbZGnKEovwoDPrP@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_225453_825023_C114B7AB 
X-CRM114-Status: GOOD (  21.88  )
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

On Fri, Nov 15, 2024 at 10:46:10AM +0530, Varadarajan Narayanan wrote:
> On Thu, Nov 14, 2024 at 03:28:36PM +0200, Dmitry Baryshkov wrote:
> > On Thu, 14 Nov 2024 at 09:48, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> > >
> > > The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> > > can connect to either of USB2.0 or USB3.0 phy and operate in the
> > > respective mode.
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > > v3: Regulator node names, labels and 'regulator-name' changed per review suggestions
> > >     Stray newline removed
> > >
> > > v2: Add dm/dp_hs_phy_irq to usb3@8a00000 node
> > >     Add u1/u2-entry quirks to usb@8a00000 node
> > > ---
> > >  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts |  66 ++++++++
> > >  arch/arm64/boot/dts/qcom/ipq5424.dtsi       | 159 ++++++++++++++++++++
> > >  2 files changed, 225 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > > index d4d31026a026..859e15befb3f 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > > +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > > @@ -16,12 +16,70 @@ / {
> > >         aliases {
> > >                 serial0 = &uart1;
> > >         };
> > > +
> > > +       vreg_misc_3p3: regulator-3300000 {
> >
> > Technically these names are correct. However they don't match the
> > approach that Qualcomm DT files have been using up to now.
> > You can compare your data with the output of `git grep :.regulator-
> > arch/arm64/boot/dts/qcom/`
> 
> Dmitry,
> 
> This name was suggested by Rob Herring [1]. Shall I rename them as follows
> 
> 	regulator-usb-3p3
> 	regulator-usb-1p8
> 	regulator-usb-0p925

I'd say so. Rob clearly stated that this is not a strict rule. It's
always better to follow the customs of the particular platform, it helps
other developers. Also in _many_ cases just defining the voltage is not
enough, usually there are multiple networks providing 0.925 V or 1.8 V.

> 
> Thanks
> Varada
> 
> 1 - https://lore.kernel.org/linux-arm-msm/20241113181138.GA1011553-robh@kernel.org/
> 
> > > +               compatible = "regulator-fixed";
> > > +               regulator-min-microvolt = <3300000>;
> > > +               regulator-max-microvolt = <3300000>;
> > > +               regulator-boot-on;
> > > +               regulator-always-on;
> > > +               regulator-name = "usb_hs_vdda_3p3";
> > > +       };
> > > +
> > > +       vreg_misc_1p8: regulator-1800000 {
> > > +               compatible = "regulator-fixed";
> > > +               regulator-min-microvolt = <1800000>;
> > > +               regulator-max-microvolt = <1800000>;
> > > +               regulator-boot-on;
> > > +               regulator-always-on;
> > > +               regulator-name = "vdda_1p8_usb";
> > > +       };
> > > +
> > > +       vreg_misc_0p925: regulator-0925000 {
> > > +               compatible = "regulator-fixed";
> > > +               regulator-min-microvolt = <925000>;
> > > +               regulator-max-microvolt = <925000>;
> > > +               regulator-boot-on;
> > > +               regulator-always-on;
> > > +               regulator-name = "vdd_core_usb";
> > > +       };
> > > +};
> 
> [. . .]

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

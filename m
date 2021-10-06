Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A9C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 12:38:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 595E960F5C
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 12:38:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 595E960F5C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArqVOwPd0vpHF/mZXbZWivni+pcwErtYS+0TWZZoWZ4=; b=m07goA1JVg86Yr
	aRDddDtDS8F1MeyO6yoolLmt8q2XBQ7XfTHsv0k/WK9gkazxbgDMXUlY8wYny8fg/RA1qhSw90L8N
	xGv37677Pgm71FTlPvIDN6UyrWktAp+92x+S4Z5S6WgPbYXj5Q4ROm/JnMZyffm3TQdwcyUdMCRJl
	PFuCHY4BiteRxpK1nTGGMxXHPTa7r9AJ7vtLo1QbgrBZB9ArzYKGriWMACUj3VhZ9Sm/kvHA6BIUY
	pA4LWL1v2Vpr3r2GcPGhB2B1dG6E9WLQg4eYtkgvNWVo2AjUpv7zO/EY+JAVMHrHOlff6ixQCTtt2
	ZtPktwQpTZROBa10MqvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY6C9-00EEGb-Ur; Wed, 06 Oct 2021 12:38:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY6Bn-00EEEo-4Q; Wed, 06 Oct 2021 12:38:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FAA860F5C;
 Wed,  6 Oct 2021 12:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633523906;
 bh=UHuY6TlmNNN+9dHIfYDo1fNOZhjqyzlZ9T9CCgL0xEU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FMaxJQcIq5dpx0Qm5GFBLQ+EdlaR9+9stYXn60nWTPBT4+9G15Sw2WVrQglTXT5Lg
 UMuJlHTdA400XqSJR6SBqYYYDzEOZefBcIRbZXGXl35mk3fKSzFfuCJxyd5GYResO7
 ahS4iKYkGJeNTes3+G23ZA+tDr3aUYYBRRjy5E+pk7NZFDgK8DcJ75zshZj4uNaTc+
 F2EODBK98Pmlu4rT5+n3adZq7r+iPrMzfgajeuJDGd+cKqx+SXySukbtPNYsse0UU8
 kGN2Xi6Riq42LXSc8b1bMRNQVrGiv50Tp84HsmFFl4rD6IrM7vOvbOicqi0hGHFtfA
 MFsZ3bfpp5MgQ==
Received: by mail-ed1-f49.google.com with SMTP id p11so9287428edy.10;
 Wed, 06 Oct 2021 05:38:26 -0700 (PDT)
X-Gm-Message-State: AOAM530czUKLAamGyaFdGb5R0U0fv1FR4lJF0YA2yifsT0BywGu8hYl7
 AOOqGu8To5dLCHsJg8zmgsd/NTRaDLI8EpAy2w==
X-Google-Smtp-Source: ABdhPJyAb9U55hRGrJFM5z+LO/Z/GHO9Bc2eJXtu9imIRuHnkqUJxRxM+FC9hlNN13H9dupCP+6z5hNjuJUGX5lXUSg=
X-Received: by 2002:a17:906:5a47:: with SMTP id
 my7mr31284501ejc.128.1633523904621; 
 Wed, 06 Oct 2021 05:38:24 -0700 (PDT)
MIME-Version: 1.0
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
 <20211005152453.89330-3-amelie.delaunay@foss.st.com>
 <1633473959.465401.106809.nullmailer@robh.at.kernel.org>
 <491ab475-e7dc-eb71-85aa-6d82543b74db@foss.st.com>
In-Reply-To: <491ab475-e7dc-eb71-85aa-6d82543b74db@foss.st.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Oct 2021 07:38:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLEPd9_4SgmDh8GakyNxQeuMKhJeGzaLbZSdxDJ_-dZYg@mail.gmail.com>
Message-ID: <CAL_JsqLEPd9_4SgmDh8GakyNxQeuMKhJeGzaLbZSdxDJ_-dZYg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
To: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Cc: "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_053827_246553_021590A5 
X-CRM114-Status: GOOD (  24.77  )
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

On Wed, Oct 6, 2021 at 1:51 AM Amelie DELAUNAY
<amelie.delaunay@foss.st.com> wrote:
>
> Hi Rob,
>
> On 10/6/21 12:45 AM, Rob Herring wrote:
> > On Tue, 05 Oct 2021 17:24:52 +0200, Amelie Delaunay wrote:
> >> This patch adds the description of new optional phy tuning properties
> >> for usbphyc phy sub nodes.
> >>
> >> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> >> ---
> >> Changes in v2:
> >> - st,phy-tuning property removed
> >> - tuning properties are now put directly in each child node
> >> - tuning properties are no more free form text and their name reworked
> >> ---
> >>   .../bindings/phy/phy-stm32-usbphyc.yaml       | 126 ++++++++++++++++++
> >>   1 file changed, 126 insertions(+)
> >>
> >
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> >
> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.
> >
> > Full log is available here: https://patchwork.ozlabs.org/patch/1536730
> >
> >
> > usbphyc@5a006000: usb-phy@0: 'phy-supply' is a required property
> >       arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dt.yaml
> >       arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dt.yaml
> >       arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dt.yaml
> >       arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dt.yaml
> >       arch/arm/boot/dts/stm32mp157c-lxa-mc1.dt.yaml
> >       arch/arm/boot/dts/stm32mp157c-odyssey.dt.yaml
> >
> > usbphyc@5a006000: usb-phy@1: 'phy-supply' is a required property
> >       arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dt.yaml
> >       arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dt.yaml
> >       arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dt.yaml
> >       arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dt.yaml
> >       arch/arm/boot/dts/stm32mp157c-lxa-mc1.dt.yaml
> >       arch/arm/boot/dts/stm32mp157c-odyssey.dt.yaml
> >
>
> These warnings are due to the fact that usbphyc parent node is disabled
> in parent device tree (stm32mp151.dtsi) but not the "usb-phy" child
> nodes. These warnings are not introduced by this current patch "optional
> phy tuning properties" but anyway.

Yes, I said that may be the case.

> The device trees mentioned don't
> enable usbphyc, so they don't have to set phy-supply in usbphyc child nodes.
>
> $ git diff arch/arm/boot/dts/stm32mp151.dtsi
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi
> b/arch/arm/boot/dts/stm32mp151.dtsi
> index bd289bf5d269..abef8b6be40a 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -1507,11 +1507,13 @@ usbphyc: usbphyc@5a006000 {
>                          usbphyc_port0: usb-phy@0 {
>                                  #phy-cells = <0>;
>                                  reg = <0>;
> +                               status = "disabled";
>                          };
>
>                          usbphyc_port1: usb-phy@1 {
>                                  #phy-cells = <1>;
>                                  reg = <1>;
> +                               status = "disabled";
>                          };
>                  };
>
> Disable child nodes while parent node is already disabled fixes the
> warning. But it means to add status = "okay"; in child nodes everywhere
> usbphyc is enabled.

Presumably, you already have to add phy-supply everywhere.

> Is it normal dtbs_check checks in child nodes when parent node is disabled?

I'll look into doing that.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

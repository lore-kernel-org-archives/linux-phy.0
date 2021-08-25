Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CED8C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 15:10:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5794761100
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 15:10:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5794761100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3GEfgoux1QysYwuO7st1zNDAGQo466wAioK5PIN8NE=; b=slopJq5uRPHtd5
	ndRvR/OkeVflUZUxWXPRmYWYQV2N3TEasagoA4e70vz5yBgbA3H13E6VyVRXZ2z1K8uTKhFLWAftp
	U8+c193HVgMxv5+vywemKm/IbiyeNLLkcM6JwyetzOVyVGE5ubIQEY+42/FOs/lNBQUxUzilseoD/
	h3I6LvdB6OhA9lQEdx3A0qbOLUlbZmlyyQT10z+PWh8S3QZoAzul7R7kr4C5KhDvykEGvEcXBh1pt
	UQ7msrbn64e/3e/HAX3OgUWswZJNn7Snqe6t4Y+bdfroZIXoRkDj5esFTIBWh8XOTwQ5bPq8TmlvX
	rrdwoEphOBLGZxj73GQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIuXb-007Sdn-Lu; Wed, 25 Aug 2021 15:10:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIuRh-007Pxx-Hj; Wed, 25 Aug 2021 15:04:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89A4B6112D;
 Wed, 25 Aug 2021 15:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629903844;
 bh=SQu8ZriBWtkrMhexm27oLfTLE3woK/0rAxCFoPeJSWs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IkW0uZDXe3xbv33KgBw8Bo8H2mB81KwIUiIRJgNP9/vTaKWXH2sxZJrN4+oO1nMxQ
 YplMbJk33i1nTVfjIzni2O6dVbOMkObGGFB8oEI0wE7XVQh5r1HHJ3fzyzv43b48E/
 s/1FBAQc2gRVVUILKtSOpR+AxQGCmSfQGqbQEK7NFCKk/cCWbKFIpsBozaZn81414n
 TeMharqkFIFQKYjkkMu62pMuUgOCwjxLCo4LgmfECxfA6LUVZ4THpARepXaPGu69tA
 Q2D/PyjaRO8x68LPnYZjWzI14snOQ+Z5kT2Vhrl2izpFPfCC5xTBHPj1SfSad++V6z
 //mmZeEZTboqg==
Received: by mail-ej1-f42.google.com with SMTP id mf2so33710025ejb.9;
 Wed, 25 Aug 2021 08:04:04 -0700 (PDT)
X-Gm-Message-State: AOAM530SLY0ji8nTGH/xTi6OyiTi4F2+r4Gkcrq0mhnb8sc9SKRU07/H
 yq/Atkj0skwYJcF2OzHT1RIYa/zSIvTPTTvh4Q==
X-Google-Smtp-Source: ABdhPJxewKcJ+3Eb7Es36Smt8z5TpesvKwiuyO4A/wqa6BX0T3ZI8RR8aZzlwJux6eaj2JM70CZMGA4Mxv1AsLONrLQ=
X-Received: by 2002:a17:906:ff41:: with SMTP id
 zo1mr16030386ejb.525.1629903843136; 
 Wed, 25 Aug 2021 08:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1620203062.git.baruch@tkos.co.il>
 <e17461407cf4bb79fed5925ec81196a0b84e7827.1620203062.git.baruch@tkos.co.il>
 <CAL_JsqKOGo4eXKA7FZK7AQQ24MDDbg2-ngUQF9CJK=8eH_pxHQ@mail.gmail.com>
 <87o89lahqp.fsf@tarshish>
 <CAL_Jsq+wkTbGjyk_i-_1Sad80xcJwAFdf5gBTGBR_TORRA-AoQ@mail.gmail.com>
 <87lf4pa9i0.fsf@tarshish>
In-Reply-To: <87lf4pa9i0.fsf@tarshish>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 25 Aug 2021 10:03:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKLijW0H-f0Ptd3EKrE5mRwtQK5StOTzs3b5UesuuVKdg@mail.gmail.com>
Message-ID: <CAL_JsqKLijW0H-f0Ptd3EKrE5mRwtQK5StOTzs3b5UesuuVKdg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] PCI: qcom: add support for IPQ60xx PCIe controller
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, PCI <linux-pci@vger.kernel.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-tegra <linux-tegra@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_080405_706373_A6DC3E4D 
X-CRM114-Status: GOOD (  19.68  )
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

On Wed, Aug 25, 2021 at 9:23 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> Hi Rob,
>
> On Wed, Aug 25 2021, Rob Herring wrote:
> > On Wed, Aug 25, 2021 at 6:25 AM Baruch Siach <baruch@tkos.co.il> wrote:
> >> On Fri, Aug 06 2021, Rob Herring wrote:
> >> > On Wed, May 5, 2021 at 3:18 AM Baruch Siach <baruch@tkos.co.il> wrote:
> >> >> +       writel(PCI_EXP_DEVCTL2_COMP_TMOUT_DIS, pci->dbi_base + offset +
> >> >> +                       PCI_EXP_DEVCTL2);
> >> >> +
> >> >> +       writel(PCIE_CAP_CURR_DEEMPHASIS | SPEED_GEN3,
> >> >> +                       pci->dbi_base + offset + PCI_EXP_DEVCTL2);
> >> >
> >> > Doesn't this overwrite the prior register write?
> >>
> >> It does. There are two mistakes here. The writel() above should set
> >> PCIE20_DEVICE_CONTROL2_STATUS2 (offset 0x98).
> >
> > No. Did you check what 'offset' is? PCIE20_DEVICE_CONTROL2_STATUS2 is
> > PCI_EXP_DEVCTL2 plus the status reg. What's wrong is it should be a
> > 16-bit write.
>
> Thanks for enlightening me. 'offset' is 0x70 here. So PCI_EXP_DEVCTL2 is
> at 0x98, and PCI_EXP_LNKCTL2 is at 0xa0. Only the second writel() is
> wrong. But since generic code handles speed, I can drop it entirely.
>
> I see that dw_pcie_link_set_max_speed() uses dw_pcie_writel_dbi() to
> write to PCI_EXP_LNKCTL2. Is that 16-bit write?

No, that may be because some platforms can only do 32-bit accesses and
dw_pcie_writew_dbi would be a RMW in that case. Or maybe there's some
reliance on clearing the status register.

> Why are pci_regs.h register offsets in decimal?

No idea...

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

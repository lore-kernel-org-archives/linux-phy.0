Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 760B9C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 29 Apr 2024 10:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKDtK9EIRcd0v+zYzWUhBQlhB4DLixi8j79IWTAgj6M=; b=0Tj8buhmnZpWko
	e8q/ZHH4PfoE/8PhD4ARQmxLNlr3rmmSFRs1ZZYB6lklhnzZfDwwlcOlzvg1GDjZwMrT/lPOBjmr0
	1HQRnW+MC9jiSAOoiRFgMvqsuEQtgLEL+g4+DrbzUab7yIrg5YNrWYnGZnB4eT5WlsNaH1IPBFQf4
	EYDPOEeAwd/S5FZt6PDB5O3ypCUF18e60fT5ZKbTIDGGiB7ziYUbd1NX7s0ei7dyT94IoktTAUnsh
	jDNZrZnJuY9G8nMEXvVncstzyWvJW8UFIfpUI0jZGOpivdMrb+cHeQqZmr+JwKWcP/Ea2DzRnCawD
	85lL/RepKx8uQV894gjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Ofl-00000002MuQ-2uJh;
	Mon, 29 Apr 2024 10:55:49 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Ofi-00000002Mtq-3xu9
	for linux-phy@lists.infradead.org;
	Mon, 29 Apr 2024 10:55:48 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-de46da8ced2so4927781276.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Apr 2024 03:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714388144; x=1714992944; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HK9OBY6JCsI5PbvjejB+IUXQa8uw72iX0OVXzGaQJV4=;
        b=sYe2X1wDfZo8HNUE5y4Gbcj1/gRnqurBEMU0CWWZtY5I9Bu0zfJJI1+hvpfGKm8rzY
         mVFZRGu5K5xDEhuYgxoVx7cjhpiCi4+Qug5QJco/YD+4gZItjuXJhz6xDWDUWO5Zq8m8
         Kr4DeDdXEEKMD6Gtr67raJ8b94BAhsJqQYxbHiLzWXw+wBHydmkQ712AE1GvhuRkiabz
         5oDfCpexjEPCHdVPEktfSx308isrqBIkYyzklqdmJDfutyzvr8ybqMXRcKBtJronecIx
         ts6O83aDHsRYzaVzum8dWhBgS4+/wsCSCtd3EwltaJ2qRDZNzCA6KnqxSmX2Dqd+AkEr
         Brtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714388144; x=1714992944;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HK9OBY6JCsI5PbvjejB+IUXQa8uw72iX0OVXzGaQJV4=;
        b=TAeMmAvmfe8P8jthx19fLY8CbmxczSS7cr1kgOzKPV6OENNcIDkZvCbJw76qv2NyyK
         fqvtEJJZGBxU2duzA1wb3H38/D8RSoNqZXg5/9PDAj80bHv5bwxe37vXm3fSps0NfD5S
         w8z5MiI+a9zgiU0otJUgSF/FRGFEznwFAncXNrwNBSmoBRdPOYdWG2iR38DAgR8Bx7Tx
         VZuDixsuLxDyVx9Bx58uOW1ZwdZdkj8k7ro5Nmvz5xpXcZNf2KMMRQEvXniTy3oQX3Gc
         5quW1yaQADjo6fHak7+Fl0BQXIeBu7gCfJK9ht7bT1dkSSjGeyd0DoV9ZHvg8qKeEPEa
         qPSg==
X-Forwarded-Encrypted: i=1; AJvYcCXWlc5GsM6aVfDuFDqRyBKdXlMjbI84z9imU6f90ncKHcXrbzJp9l+clUoEntWziTaT8BYVNfNQr2qUZR9Makhv9qtvdyCCL5JctQ9c6A==
X-Gm-Message-State: AOJu0YyMHyQzS8fmiMgYTlyIqEmmySYUF776UoEQOSUZ6h+kRML1E1xx
	Q5JSzsOp2VfqOLqgC+bmGgZdHCMw8aXap8qI7isHXqbw06e1wyntlubB8ulBPwhBwsYN6Dv+MrM
	NFP3hsbERWvSO2lKzEBg8eeNHcDeAF1mLXLqbqg==
X-Google-Smtp-Source: AGHT+IGnLAI/1mmfL0Yrtu3STdW3JZRgrtSe9fLYX4PwRR3wSZS0mEZbbEeASJOYhpilXlNLDeYA2jBBTzekDMQ4uOM=
X-Received: by 2002:a25:ae18:0:b0:de5:5d4b:1632 with SMTP id
 a24-20020a25ae18000000b00de55d4b1632mr9731287ybj.60.1714388144152; Mon, 29
 Apr 2024 03:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com> <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
 <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com> <Zi88Hdx6UgBo/gti@hu-varada-blr.qualcomm.com>
In-Reply-To: <Zi88Hdx6UgBo/gti@hu-varada-blr.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Apr 2024 13:55:32 +0300
Message-ID: <CAA8EJpq+Bbws8yH5Xq7rHyA+-=DaCcfEcgUa5RUt2+LWQW0kKg@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2 PHY
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: "Alex G." <mr.nuke.me@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_035547_065682_DAC892E3 
X-CRM114-Status: GOOD (  29.15  )
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

On Mon, 29 Apr 2024 at 09:20, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Wed, Apr 17, 2024 at 12:50:49AM +0300, Dmitry Baryshkov wrote:
> > On Wed, 17 Apr 2024 at 00:25, Alex G. <mr.nuke.me@gmail.com> wrote:
> > >
> > > Hi Dmitry,
> > >
> > > On 4/15/24 16:25, mr.nuke.me@gmail.com wrote:
> > > >
> > > >
> > > > On 4/15/24 15:10, Dmitry Baryshkov wrote:
> > > >> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com>
> > > >> wrote:
> > > >>>
> > > >>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> > > >>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> > > >>> being reused from IPQ8074 and IPQ6018 PHYs.
> > > >>>
> > > >>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> > > >>> ---
> > > >>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
> > > >>>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
> > > >>>   2 files changed, 149 insertions(+), 1 deletion(-)
> > > >>>
> > > >>
> > > >> [skipped]
> > > >>
> > > >>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem
> > > >>> *base, u32 offset, u32 val)
> > > >>>
> > > >>>   /* list of clocks required by phy */
> > > >>>   static const char * const qmp_pciephy_clk_l[] = {
> > > >>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> > > >>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> > > >>> "anoc", "snoc"
> > > >>
> > > >> Are the NoC clocks really necessary to drive the PHY? I think they are
> > > >> usually connected to the controllers, not the PHYs.
> > > >
> > > > The system will hang if these clocks are not enabled. They are also
> > > > attached to the PHY in the QCA 5.4 downstream kernel.
> >
> > Interesting.
> > I see that Varadarajan is converting these clocks into interconnects.
> > Maybe it's better to wait for those patches to land and use
> > interconnects instead. I think it would better suit the
> > infrastructure.
> >
> > Varadarajan, could you please comment, are these interconnects
> > connected to the PHY too or just to the PCIe controller?
>
> Sorry for the late response. Missed this e-mail.
>
> These 2 clks are related to AXI port clk on Aggnoc/SNOC, not
> directly connected to PCIE wrapper, but it should be enabled to
> generate pcie traffic.

So, are they required for the PHY or are they required for the PCIe
controller only?

>
> Thanks
> Varada
>
> > > They are named "anoc_lane", and "snoc_lane" in the downstream kernel.
> > > Would you like me to use these names instead?
> >
> > I'm fine either way.
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39DC8C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 11:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgOAXvMPOeY04DtYlay04HHNQ7BdXwVrc7rpu3MBrAc=; b=wyQV+atfqNKX+S
	u4duZCjgLx44pKMWgT/jg924ckbm4CFVt+IP+tC5onbnqlLkRAaSKqKeRZdYCDAHcXtEjSgwGSVMg
	cJ4La9DzHkcMSXH+w3KeHC8C3R2AD3d+0TXnlxjbUH6HzOwsz1cjt85omNX9XtiBT1vMgojq4cfe/
	yKqZeqlXoNUPOKtnnGsSkeLcnPg5tFsTAZeNlxjBzr5bz1i8ZqOnT+usUJET9hvNfiwuOPhoZZY53
	NjbamGYjDlDWm37J8uxjedVSvyH7OnwcblR+vyuoAOIXCnH2Hs8DKxfp8uXuc9gDOQe+8EF/LlTDl
	XYupWG4IlfZ04HQCoBLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okkut-0067Kl-Ks; Tue, 18 Oct 2022 11:37:51 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okkuq-0067Iy-Fi
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 11:37:50 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-3608b5e634aso134142417b3.6
        for <linux-phy@lists.infradead.org>; Tue, 18 Oct 2022 04:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5SYJElMcni83QoXO3JfkKIM38CI++pdR3umfQffXROs=;
        b=QRcjH5NWoUmotKpQ67Lk+5IDIykXm1h/xS/x8UePyHPCN06lGtAf8BjiatfpB6UjOH
         flElgdFVk4U2ZSY9/Wvq5hlWAu8u09VszSJqNJVb6qMzplgS7jACoDJyQxrectkHBuqb
         1aC7k/uw+YpPMEIDSqngqoNGnLHv7ob4nsRvJWLgiv/fJmxWAvot0n7RVqJLIZqAvBzj
         l2x3ALuoDOK5JdleUg6zok1JvqqoGAW2dXoDs+DBi/lbgSAVrfGxjxTjhI+v4fsk3b0u
         ZRzew5XhZSFdB2vfgCpCJKtUBOcBuAdNJBJtDySghjHo9A27F4v9zvlalVqU0V+ln/rP
         8dqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5SYJElMcni83QoXO3JfkKIM38CI++pdR3umfQffXROs=;
        b=oSs5WcOkNN/XNgBrDUjyBgpNDqjEGpSKh+arI9at1tZlDuvVUv+sFswyfT1O9DTBTE
         ZDf1qNuCC1AenrIRl3MARZ+a7Chbkro4c7bgvR3NHYlzZj0U8/ruGw7elaTkcmJCMn7g
         EuG9tZiAVtH/N+n1wxlPO2t3KuTBM6MBfkUmUT54swjeOCs/WE4he/xJrWHgPqKZBCuY
         SxZIzXDyAhyG1plt0X27/EOMVdKEkvIt7j4qPD+YMRFMAgxC8pYwYFdRh1fM8yIz0rLK
         O42bYBCqy3d+qNWo2EwgQ1ZEKQKeuUCinBx6wf3oLBcTldAMvnr2IJ/8VbpzikLdmbmX
         7q/A==
X-Gm-Message-State: ACrzQf0k1nxbBLKCiDtOU4gbakp99ZoLXZ0lBa4I3QRkhU96KuU5TA0c
	yPB73K4EC/oF7dTeBKmFfraQ0+lq8LXkAFPoP3ri5Q==
X-Google-Smtp-Source: AMsMyM7mU0Rp5oJUI5oyBw1mcig1QYLPCMbbDInRaNwPyn2zxdyaaC2ZPG7CWt9mvejqgqmCG9dmca6wSouxOAp1GXw=
X-Received: by 2002:a81:6ccf:0:b0:35b:c5a5:1df3 with SMTP id
 h198-20020a816ccf000000b0035bc5a51df3mr2081524ywc.132.1666093066203; Tue, 18
 Oct 2022 04:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-10-johan+linaro@kernel.org> <CAA8EJpqSWmy5Z4cmJnsdjMjkmACW7HSi-k5JxZ0gLCeUAWEnxQ@mail.gmail.com>
 <Y05+E90tmlq2tNFa@hovoldconsulting.com>
In-Reply-To: <Y05+E90tmlq2tNFa@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 18 Oct 2022 14:37:35 +0300
Message-ID: <CAA8EJprwhEvUfUr-zDir4zFh_NAyr0qPbrHi6Hf8=2HC1dAhaw@mail.gmail.com>
Subject: Re: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current
 bindings as legacy
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_043748_588316_F0DE713C 
X-CRM114-Status: GOOD (  39.53  )
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

On Tue, 18 Oct 2022 at 13:21, Johan Hovold <johan@kernel.org> wrote:
>
> On Tue, Oct 18, 2022 at 12:52:03PM +0300, Dmitry Baryshkov wrote:
> > Hi,
> >
> > On Mon, 17 Oct 2022 at 17:54, Johan Hovold <johan+linaro@kernel.org> wrote:
> > >
> > > The current QMP PCIe PHY bindings are based on the original MSM8996
> > > binding which provided multiple PHYs per IP block and these in turn were
> > > described by child nodes.
> > >
> > > Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> > > child node does not really reflect the hardware.
> > >
> > > The original MSM8996 binding also ended up describing the individual
> > > register blocks as belonging to either the wrapper node or the PHY child
> > > nodes.
> > >
> > > This is an unnecessary level of detail which has lead to problems when
> > > later IP blocks using different register layouts have been forced to fit
> > > the original mould rather than updating the binding. The bindings are
> > > arguable also incomplete as they only the describe register blocks used
> > > by the current Linux drivers (e.g. does not include the per lane PCS
> > > registers).
> >
> > I'd like to point out that it's not only a problem peculiar to the
> > PCIe PHYs. Other QMP PHY families also follow the same approach of
> > separating the serdes into the common part and rx/tx/PCS/whatever into
> > the PHY subnodes.
>
> Yeah, I already mentioned that in the cover letter.
>
> > For the USB+DP combo PHYs we have to have subnodes, however it would
> > also be logical to move serdes register to the subnode devices,
> > leaving only DP_COM in the base node.
>
> No, not at all. First, we may not even need the subnodes (the individual
> PHYs can be indexed), but even if we do keep them for the combo case,
> the register block should go in the wrapper node as the registers can be
> and are shared (e.g. for sc8280xp for which the current binding is
> completely broken).

Hmm, which register blocks are shared on the sc8280xp combo PHY? Could
you please lightly describe it, if possible?

> > That said, I think we should rethink and agree on QMP PHY bindings,
> > before renaming the bindings.
>
> Isn't that what we are doing just now?

Yeah, thanks for starting the discussion!

> > And yes, I think we should also upgrade
> > older DTs, keeping drivers backwards compatible (for some time?).
>
> Possibly, but I'm not sure it's worth the dts churn. As I mentioned
> elsewhere, supporting both the old and new binding in the driver is
> mostly trivial, while encoding the deprecated bindings in DT schema
> sounds like it would be painful.

This is probably the time where Krzysztof can advise us. I'm still not
sure when it is expected to encode both old and new bindings in the
schema and when we can update both the schema and the DT.

> On the other hand, adding support for new features to (or fixing bugs
> in) old platforms using the current bindings may potentially become
> easier if they are also converted.

Yes!

> > > In preparation for adding new bindings for SC8280XP which further
> > > bindings can be based on, mark the current bindings as "legacy".
> > >
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >  .../{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >  rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} (98%)
>
> Johan

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

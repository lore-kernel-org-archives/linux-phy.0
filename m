Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C55FC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Apr 2022 16:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9v0SYuqmDL/9YCMdIwTYsixIfVVOVVL048qjNtpQ6M=; b=LaEoUek7wTfXaj
	uqC9DOlKdTM+vAOBzhGxNeyNRe5by60dNiB4xihy2bfp7tZQUD2wKeD7QMnozN6qpC17iLMdOGYrx
	hsZbn1/By3I8QKal7Utolz4Lp23vgfBb65UFFZ3MUyW1X0S+kpSdKpMpJEACFG6YDpjFdI/RCdeh4
	PAbvFv0AtlkWsrOKIIST52gHk4+KPbAKU73u6q4ffHfjrB4uY9F5VBFBWxzB2CBCFIlbu8Tz/AHyG
	B+qdHoCfxOV5iw/wS8DPANgAUVPqlla77A0bRZlg6dY5u9Mr76zDVzZ79T3uHeM2ATVddnf1DbdSG
	rlvTbZdP8PnOoi/EcGBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk6nX-007s8K-Ur; Thu, 28 Apr 2022 16:15:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk6nV-007s6j-A8
 for linux-phy@lists.infradead.org; Thu, 28 Apr 2022 16:15:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 46A4162040
 for <linux-phy@lists.infradead.org>; Thu, 28 Apr 2022 16:15:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 254A2C385B2
 for <linux-phy@lists.infradead.org>; Thu, 28 Apr 2022 16:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651162514;
 bh=ITjlQ9g4B0gG723l683GuIOlpyn+saWXawbyT3upTSg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gydywKUF2PJ/Z+XCGdoURVO8Xu7MmunrcWN9ck3aC2UWj3xv/rAFHrMc4EA/Rb3/g
 dpRe75K6y46Jm5gEMux0dZl+qGHCu6SgDVHxR+6OeoY/VH6vWGB61e3ooREjaRPoDF
 b6eNMdhrK8W0V27HcoUtdk7zEVgndcfj+zezhqU9zGS1ZJY/ORJ0RvQcYBjATn2U/0
 IWLRejijOuO0bm5NVM0tvkj8USH6xGeqbiCQvpIz66SCo4YhlchLlGs/fWJ1TyITAE
 YFBhzjpF20pQe0PViDJD6TjSha4laT9JglwvI1kJJTrUH2Pm2c2KBmtmc5YE+n5U8L
 X2GQCoMzYH5vg==
Received: by mail-pf1-f171.google.com with SMTP id t13so4675507pfg.2
 for <linux-phy@lists.infradead.org>; Thu, 28 Apr 2022 09:15:14 -0700 (PDT)
X-Gm-Message-State: AOAM532gABLBQztsKy6+QGC0r4/XNhpwefmowVfLApJMf8gAv7blBjpZ
 Rw3cLfT1F0PEMd10Mp391NuYFzOv29V33mK8pw==
X-Google-Smtp-Source: ABdhPJxWGKldChLEEW78VL6JusmO+ABexzsxV/SQewmd+Y9FRmG85Z5pK95W6eSIzbOvdvdIEpSvnklBPlyKXQUKU8s=
X-Received: by 2002:a63:ff4b:0:b0:3aa:3083:5131 with SMTP id
 s11-20020a63ff4b000000b003aa30835131mr29087326pgk.148.1651162513664; Thu, 28
 Apr 2022 09:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-2-johan+linaro@kernel.org>
 <de4f9514-5132-f208-d43f-4c50afcda203@linaro.org>
 <YmKBgGHtfDcO1Mkg@hovoldconsulting.com>
 <CAA8EJpqTzcwAtxk+XtAWdZaKEx2=VduPiVBp+CWj=_C-921YJg@mail.gmail.com>
In-Reply-To: <CAA8EJpqTzcwAtxk+XtAWdZaKEx2=VduPiVBp+CWj=_C-921YJg@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 28 Apr 2022 11:15:01 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLmy1-=5=NpWuVo9RYBXAvLisREJoMp1cWEychGmfFN=w@mail.gmail.com>
Message-ID: <CAL_JsqLmy1-=5=NpWuVo9RYBXAvLisREJoMp1cWEychGmfFN=w@mail.gmail.com>
Subject: Re: [PATCH RFC 1/5] phy: qcom-qmp: add support for pipe clock muxing
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Stephen Boyd <swboyd@chromium.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_091517_479679_34C5CBB2 
X-CRM114-Status: GOOD (  36.03  )
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

On Fri, Apr 22, 2022 at 5:35 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Fri, 22 Apr 2022 at 13:20, Johan Hovold <johan@kernel.org> wrote:
> >
> > On Thu, Apr 21, 2022 at 02:08:27PM +0300, Dmitry Baryshkov wrote:
> > > On 21/04/2022 13:20, Johan Hovold wrote:
> > > > Some QMP PHYs need to remux to their pipe clock input to the pipe clock
> > > > output generated by the PHY before powering on the PHY and restore the
> > > > default source during power down.
> > > >
> > > > Add support for an optional pipe clock mux which will be reparented to
> > > > the generated pipe clock before powering on the PHY and restored to the
> > > > default reference source on power off.
> > > >
> > > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

[...]

> > > > +   } else {
> > > > +           qphy->piperef_clk = of_clk_get_by_name(np, "ref");
> > > > +           if (IS_ERR(qphy->piperef_clk)) {
> > > > +                   ret = PTR_ERR(qphy->piperef_clk);
> > > > +                   return dev_err_probe(dev, ret,
> > > > +                                        "failed to get lane%d piperef_clk\n",
> > > > +                                        id);
> > > > +           }
> > > > +   }
> > > > +
> > >
> > > As a second thought.
> > > This needs to be more explicit. If the chipset requires the pipe clock
> > > remuxing, we must fail if the clocks were not provided. So depending on
> > > the qmp instance/property the driver should either use devm_clk_get()
> > > (instead of _optional) or skip this block completely.
> >
> > No, the kernel is not a DT validator (and we have the YAML bindings for
> > that now).
>
> It is not about DT validation. It is about passing a correct DT. The
> file can come up from the kernel. It can come from the older kernel.
> OR it can come from the vendor. Or it even might be being a part of
> firmware flashed into the device.

As of dtschema 2022.03, validation of dtb's from firmware (or anywhere
else) is supported. Of course, as the old saying goes, if it's not
upstream, it doesn't exist. We can't control what vendors do in their
DTs.

> So we can not assume that the DT is correct just because the in-kernel
> DT passes YAML validation.

I agree with Johan on this. In terms of ensuring correctness, the
kernel does a horrible job. It never will be as long as it is done in
ad hoc code.

> So, as I wrote, the whole patchset needs much more care about compatibility.
>
> > > But this will not work with earlier DTS files.
> >
> > So this is not a problem (but if we really wanted to have the driver
> > validate the DT it can be done by updating the compatible strings).
>
> We should not update compatible strings just because the driver
> changes. Compat strings describe the hardware, not the Linux point of
> view on it.

Yes and no. It is the OS/client view of the h/w. If a binding is
deemed horribly broken we could do a new compatible string and
binding. That's not something we want to be doing frequently though.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

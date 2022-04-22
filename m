Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A34CC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 10:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBwKTiYCLPbfp/aL1TK4J53+ooI73sw0YH08h/KtkCM=; b=E6RBWXaufFG2B3
	ptjDEi4rfhMjYjUVbxQ1VMZKKCQ+TQWj7ONeXZOFFGGRXgzunxtpxFr/DqEQIOc4pM3SkSRf4xAeU
	02j0s+slwSRjDGy/xjmzIRUIHag2rq3gFANXoQgijf1g4hSuLHshw7/xj6/V4HH9DkqCLqcS3M6EX
	beqxIC9zvQ35Jy+J+ccYph0+KHQ1HEmsukXWWaD5jg4MAhM9xQr9uYHoqZqEgtjJ7/1UTYh0kAB27
	rxRB0bsuGrMaifUcApRTyih7CLLShuJ0+LosZibCr5aK8gHM35QH9JCvNcgucP5EQ5A945REnRvPw
	bTwLacJG8Ce9OZLGaFsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqea-0002or-Or; Fri, 22 Apr 2022 10:36:44 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqeY-0002nO-3L
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 10:36:43 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id b95so13738974ybi.1
 for <linux-phy@lists.infradead.org>; Fri, 22 Apr 2022 03:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4zcLXpCy7SBjHdgWPDMiVMAfSv9GgL9PPHTJHm95g50=;
 b=TlZWQKiYpTuDxECbeXwF6tJvJGze7xTFNWlQD4B2jRWUPyNtSO32rIHpFbOH95KpZM
 s26ARO9kRKdZUXaE9W+5GAk4Biz6ra37er4NWm9KQgbRawLZiJ4N62G0EB9Mm35+FIPt
 VE0ppUmp9NOUmWczcYULL7OuU3fw+9RKxiZaP87uqLCwucSFLVBH5/tryhvBmqajwmoC
 dy7swc3bCfD7Q+nwTUg1K9U7fgliOrmqEuFIfYXlrNb6gziSxffXs9/Ac4SEgpIBkQwS
 hko+HrFRO72KcUP7tdIswvVyCkaDPDTJTQ4qtmZ3iuoFZRelgls7PmWUdYDm57FAvOFe
 jd8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4zcLXpCy7SBjHdgWPDMiVMAfSv9GgL9PPHTJHm95g50=;
 b=Npwm2uo3/+C1VtqeSYB8RIYXoeojZTSQ0JbBPaiHmFFUjheZCzbkTAxMUhh//pVPaZ
 /FRLZHnZ++KBT982khS4mCDMmLCz5J/fwLZLe9nal0bi8V5hEN99zmWwMRIhnKuPWQTw
 x3P2wpW1ksR0wiJ+CwR+sLqTWyMlvONQvpTB/vX4qzOJynydtvC+2PBdMbG+2Crq7+E3
 me0QMmxkNapzxf1cQn6cFf+ABTNgp0BAf15wveAhykAHZDN6Ufsa5IXt9rbP5fg/8nKs
 k62wiqJo5GWogZ3M9GzmFtwYJD8DashIFrePt8Bkzbo5mrTtOXe0tS070HrRi1K2DqOd
 SRew==
X-Gm-Message-State: AOAM5306lyxI+kMaJgJzrlrAJHGjmwUO+3f8/08YBmlJONY7go6Qxi8n
 5miuq2Q/OPb06Mxq8ZHxdWbGJf0RSKemXVGHLdQyXg==
X-Google-Smtp-Source: ABdhPJz/ZFLFWoRZflZmG53V5oTsUDnKFJ76SRaHRYdcW5SRnzL6Jxlv23hnpEE1sIZLnoSq3Xe3/OdvM8uV/u46Xk0=
X-Received: by 2002:a25:84c1:0:b0:63e:7733:f95a with SMTP id
 x1-20020a2584c1000000b0063e7733f95amr3370991ybm.234.1650623798744; Fri, 22
 Apr 2022 03:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-3-johan+linaro@kernel.org>
 <55d6e32b-9cf4-384c-1036-1adfb867ece8@linaro.org>
 <YmJ+Ti81el2MzsHG@hovoldconsulting.com>
In-Reply-To: <YmJ+Ti81el2MzsHG@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Apr 2022 13:36:27 +0300
Message-ID: <CAA8EJpq25Oi8scffT_u9kGN5CYM7nK4Wxh0Kep+eRFg8xngiHg@mail.gmail.com>
Subject: Re: [PATCH RFC 2/5] arm64: dts: qcom: sc7280: move pipe mux handling
 to phy
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_033642_179173_1916F6F9 
X-CRM114-Status: GOOD (  23.30  )
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

On Fri, 22 Apr 2022 at 13:07, Johan Hovold <johan@kernel.org> wrote:
>
> On Thu, Apr 21, 2022 at 01:59:04PM +0300, Dmitry Baryshkov wrote:
> > On 21/04/2022 13:20, Johan Hovold wrote:
> > > The QMP PHY pipe clock remuxing is part of the PHY, which is both the
> > > producer and the consumer of the pipe clock.
> > >
> > > Update the PCIe controller and PHY node to reflect the new binding.
> > >
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sc7280.dtsi | 18 ++++++------------
> > >   1 file changed, 6 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > index c07765df9303..b3a9630262dc 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > @@ -1837,11 +1837,7 @@ pcie1: pci@1c08000 {
> > >                                     <0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>,
> > >                                     <0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>;
> > >
> > > -                   clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
> > > -                            <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> > > -                            <&pcie1_lane 0>,
> > > -                            <&rpmhcc RPMH_CXO_CLK>,
> > > -                            <&gcc GCC_PCIE_1_AUX_CLK>,
> > > +                   clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> > >                              <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> > >                              <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> > >                              <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> > > @@ -1849,11 +1845,7 @@ pcie1: pci@1c08000 {
> > >                              <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>,
> > >                              <&gcc GCC_DDRSS_PCIE_SF_CLK>;
> > >
> > > -                   clock-names = "pipe",
> > > -                                 "pipe_mux",
> > > -                                 "phy_pipe",
> > > -                                 "ref",
> > > -                                 "aux",
> > > +                   clock-names = "aux",
> > >                                   "cfg",
> > >                                   "bus_master",
> > >                                   "bus_slave",
> > > @@ -1910,8 +1902,10 @@ pcie1_lane: lanes@1c0e200 {
> > >                                   <0 0x01c0e600 0 0x170>,
> > >                                   <0 0x01c0e800 0 0x200>,
> > >                                   <0 0x01c0ee00 0 0xf4>;
> > > -                           clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
> > > -                           clock-names = "pipe0";
> > > +                           clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
> > > +                                    <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> > > +                                    <&rpmhcc RPMH_CXO_CLK>;
> > > +                           clock-names = "pipe0", "mux", "ref";
> >
> > This will not be compatible with earlier DTB files, which was a problem
> > up to now.
>
> That depends. The above wasn't added until 5.16 so we may still be able
> to fix it.

That would depend on Rob/Krzyshtof. But the whole process should be described.
The driver can nod depend on the clocks being there.

>
> The NAK you got from Rob earlier was when you removed clocks that have
> been in the devicetree for several years:
>
>         https://lore.kernel.org/all/YgQ+tGhLqwUCsTUo@robh.at.kernel.org/
>
> and would still be needed by older kernels.
>
> Worst case, we need to keep both sets for sc7280 (i.e. like we need to
> do with the pipe clocks that have been around for years).
>
> Johan



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

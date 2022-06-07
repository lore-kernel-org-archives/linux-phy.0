Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C27E3C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 23:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5JuCgLGmUCaWxZSTS7tQe6xRsd1z5rU+CbyhXAoEWw=; b=Hed8JHeUga1t7t
	4x5KbsTB7W2hP4XXKLbUakKTfZLdfR1QPLnlSEDJJPzJWQg73RJs7jy2RHERjI/Ptko+DT2ag1p1L
	n0Lz1TQLcNu/vwX3ZZO26lomeDvNrLZvev0VyRERz8+YXvnneBY7hb6hcem/tJ8gAfYQzEMdMMxBW
	18XDS5QheMxQ+B4DAv/GhTQogYsPYUuQg2dazaEXmLp9v2AFFZ0s91+xzbSun24qp8CCv/UG0px2c
	wX8uWo995f073FS/j6d9GLlDVXB5VE96k8PQB5eabS/d51IFkFq+stCIsQ0YQY0T+/UOvGo0CUZjR
	7AGY0/dpRLF7tOG2FSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyj02-00A2D2-07; Tue, 07 Jun 2022 23:52:38 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyizy-00A2Ca-I0
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 23:52:36 +0000
Received: by mail-qk1-x730.google.com with SMTP id o68so14414505qkf.13
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 16:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I5bIA8RovZ0OK8PNlEOCrd8XWvxVcrOKgYX0lsRMHs0=;
        b=KTfI2qFLJ+aAHRXp1Fk+G2auRh0YeaY5jKt5RMRNbLOXBXdmxmYzqTIxcyN30yQGQ2
         8LzXgVmswee+4+r5DbL0cYffY4N1/883lIpTOTb9kcIz4fuphFY0SLktL7tMOT4ZIxU4
         rwQw+qwo4XLB9tGwHE2Nt66zTrt1EzBj7QECltOIVKwaLsQ0UR+nrIlp/jVCb8ok2/nM
         mlU2WxBH23u09BZK+VG8vbgdQ1bgp5TnNEJlyTCr7R99ZgnPzm2D0gZ7uUON6m+DJm+S
         38PrqlVvCEMzw6Ao8zd+u8m6KN3ITXaZdnxxNMt0OwvV4R7KNAedS7CQKML09xH+71he
         Piwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I5bIA8RovZ0OK8PNlEOCrd8XWvxVcrOKgYX0lsRMHs0=;
        b=DgB3k75+SOC3A7xELGwO5ncGJtpGC4E0xnH5Dm5P/naLizmiN4MiDjzZRun/QG54KD
         mDNsfty/SuWIAMkcc0Kv/TNuSekCqC1khSLmMSC13WjC4AwANcJxJ1gaTEeDiBKyGcVu
         5bxJASez7nrl8xU/1U91ACYwIVNGzhOaU/EruP/wq5iuE/fck4WMerIBhrD0+tH8fl/X
         cCgd+6DSsPrG3k2rWvzPpxQTfVzPMVhX0B0cizucRVPWJiq2ZmZzFfzLSbzoxFmfPJJy
         8fmhUzDutmu8iFhm4U7rktSfc1rgewVUzfBnl5Gx3DbvyNqbcagd5BY5tw0CKZQw30ad
         vnkg==
X-Gm-Message-State: AOAM532P0laXkfeea+V6dZ15y1Yk3qYts5L/A/qS1/DtG1I6XMv1EJbI
	XIau+UOIMbFZNRroWWxJa05wtEIGBfuFP4enKq8kJA==
X-Google-Smtp-Source: ABdhPJx9OS3WgJ7xFZVSzzuFy/GVj77eWoUolgeKliH+N0347n1Xtkzr+MVR+jabfBeySi2RA42Y4jrUEpLCwgNrh5s=
X-Received: by 2002:a05:620a:4311:b0:67e:8a0f:4cd5 with SMTP id
 u17-20020a05620a431100b0067e8a0f4cd5mr21887718qko.363.1654645953166; Tue, 07
 Jun 2022 16:52:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
 <20220607213543.4057620-4-bjorn.andersson@linaro.org> <d9658f54-e594-8f0e-071e-ef627285d281@linaro.org>
 <Yp/ZkxNltUgE79nC@ripper>
In-Reply-To: <Yp/ZkxNltUgE79nC@ripper>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 8 Jun 2022 02:52:22 +0300
Message-ID: <CAA8EJppSKfWXoNhqj+XOVV18P+uP=5fo7kaOGNWdYnN-NH8xNw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] phy: qcom-qmp: Add USB4 5NM QMP combo PHY registers
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_165234_670643_3B1EA33C 
X-CRM114-Status: GOOD (  36.29  )
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

On Wed, 8 Jun 2022 at 02:02, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> On Tue 07 Jun 15:24 PDT 2022, Dmitry Baryshkov wrote:
>
> > On 08/06/2022 00:35, Bjorn Andersson wrote:
> > > Add all registers defines from qcom,usb4-5nm-qmp-combo.h of the msm-5.4
> > > kernel. Offsets are adjusted to be relative to each sub-block, as we
> > > describe the individual pieces in the upstream kernel and "v5_5NM" are
> > > injected in the defines to not collide with existing constants.
> > >
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > ---
> > >
> > > Changes since v1:
> > > - New patch
> > >
> > >   .../qualcomm/phy-qcom-usb4-5nm-qmp-combo.h    | 1547 +++++++++++++++++
> > >   1 file changed, 1547 insertions(+)
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h b/drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> > > new file mode 100644
> > > index 000000000000..7be8a50269ec
> > > --- /dev/null
> > > +++ b/drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> > > @@ -0,0 +1,1547 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +/*
> > > + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> > > + */
> > > +
> > > +#ifndef PHY_QCOM_V5_5NM_QMP_COMBO_USB4_H
> > > +#define PHY_QCOM_V5_5NM_QMP_COMBO_USB4_H
> > > +
> > > +/* USB4-USB3-DP Combo PHY register offsets */
> > > +/* Module: USB43DP_COM_USB43DP_COM_USB4_USB3_DP_COM */
> > > +#define USB43DP_V5_5NM_COM_PHY_MODE_CTRL                           0x00
> > > +#define USB43DP_V5_5NM_COM_SW_RESET                                        0x04
> > > +#define USB43DP_V5_5NM_COM_POWER_DOWN_CTRL                         0x08
> > > +#define USB43DP_V5_5NM_COM_SWI_CTRL                                        0x0c
> > > +#define USB43DP_V5_5NM_COM_TYPEC_CTRL                                      0x10
> > > +#define USB43DP_V5_5NM_COM_TYPEC_PWRDN_CTRL                                0x14
> > > +#define USB43DP_V5_5NM_COM_DP_BIST_CFG_0                           0x18
> > > +#define USB43DP_V5_5NM_COM_RESET_OVRD_CTRL1                                0x1c
> > > +#define USB43DP_V5_5NM_COM_RESET_OVRD_CTRL2                                0x20
> > > +#define USB43DP_V5_5NM_COM_DBG_CLK_MUX_CTRL                                0x24
> > > +#define USB43DP_V5_5NM_COM_TYPEC_STATUS                                    0x28
> > > +#define USB43DP_V5_5NM_COM_PLACEHOLDER_STATUS                              0x2c
> > > +#define USB43DP_V5_5NM_COM_REVISION_ID0                                    0x30
> > > +#define USB43DP_V5_5NM_COM_REVISION_ID1                                    0x34
> > > +#define USB43DP_V5_5NM_COM_REVISION_ID2                                    0x38
> > > +#define USB43DP_V5_5NM_COM_REVISION_ID3                                    0x3c
> >
> > QPHY_V5_DP_COM_foo ?
> >
>
> My first version of the QMP patch used V5 defines and USB worked
> sometimes. So I hacked up a thing to dump the phy sequences of the
> downstream and upstream kernels, compared the magic numbers and then
> tried to fit suitable constants.
>
> But it obviously was a waste of time and I would have to make up a
> different naming scheme for the ones that doesn't match the existing
> constants - when we could just use the autogenerated files that exist in
> the downstream kernels.

I decided that I should write more about it. My main issue with using
downstream tables is that we end up with tons of repetitive defines.
Each chip generation would bring 2-4 sets of tables, wouldn't it? This
can easily become an unsupported beast.
I'd propose to follow the opposite path. Let's split the existing
tables on a per-generation, per-region basis. Yes, we'd end up with
tens of the header files. However then when new generation arrives, we
can split corresponding header files on a region-by-region basis, and
compare each region with existing tables. If the region matches, use
it. If it does not, create a new header. Yes, I can do this for the
existing header as a continuation of the QMP split saga, if everybody
agrees that this is a good path.

You can ask, why do I suggest such a scheme? Because it looks like the
lowest common scheme. If we check downstream, we have USB/USB+DP with
huge autogenerated tables. Then comes UFS, which mostly follows naming
of the phy-qcom-qmp.h.

And the last one is a PCIe. I do not know about the sc8280xp, but for
the rest of the platforms we do not have register names at all. When I
was porting the SM8450 PCIe PHY support, I had to guess the correct
generation beforehand. With just 5 QSERDES_COM_ namespaces, guessing
is easy. If  we had separate namespaces for the UFS and for several
USB PHY instances, guessing would be next to impossible. And then
creating a correct table would also be impossible. Well, as long as we
do not accept tables without register names.

Thus I think we should resort to using a single naming scheme rather
than following downstream here. If you dislike existing
QSERDES_Vn/QPHY_Vn, let's come up with something more sensible.

--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

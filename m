Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EED5C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 10:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prSFDyZi3Vjps3CC0wk9/2ePyQMwi6rV4jOUvuzUHs0=; b=nOoSgJAFGFtSd9
	2va4hv+wHOJh0tdcM/nNUxoYJ4mQZYl5rUUSH9qyNM4iH8OIAQSoijloaFhXUF/RbFMWZ2FNZfrZo
	NLo+9gNCbK772NR/0qbK5jQ1WmyjTArJj/IbzDKqJ9zpcpOKjve4D9f0nMj8CxSOsyxCw2MZmGl9Z
	2ZtTr1AFQO2tKBRx/5tbUqtBiGE3AtDkkph8Mh2JfDb6kBiNrFdF8ed9n3TVSj9rQbs3Qb6+z59Cb
	XekrTRqtDO9vW4XreWUGaJ93lAg+dyCdBLK18DSGzEBiILMjiYX9HOHYFGXrFPh4FP67oqXDnPno6
	JqVxwbPAHHm75c7Jjttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqdC-0002Tv-3S; Fri, 22 Apr 2022 10:35:18 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqd9-0002RH-IL
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 10:35:17 +0000
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2f16645872fso80818267b3.4
 for <linux-phy@lists.infradead.org>; Fri, 22 Apr 2022 03:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W1a63l7xhBoRHTCuZlMrqgXMiCx76hX8oxGNJT4mvPY=;
 b=ekebjoo5lFkQDlWsBX1ZfsGBvvIUYcZUfxvJmQEQbMM0fTiabYtP9ISWhJdPrrr7Um
 dLL5/Jh0RXAWvXEemfUwz3kLVm7cJTgrdQeTIkK1SfGHT0piRfcBEbiMKGEFntYsx/sa
 /eqM/p0SNUUflH8m8qW6ZFPAMApHOD4j2sL72S8lAKy5zmo6qcLpVpsbf3mMbxIueXoS
 YoseYf1948P84Q+4Jlq4hD/1YZeBRGXZW5yIvAp/Y13UaSyT/ABCr5UF4DuNr7F6T2qS
 NGOG5QffIPuKAwXK4QhuZF09NFhsZktNztcDFgGk5fx7qThwVWsU0vJZx7u9SFl6VFGd
 KyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W1a63l7xhBoRHTCuZlMrqgXMiCx76hX8oxGNJT4mvPY=;
 b=NJlqFCE+/H52kB8lV0hchaaFhl1FqrWg5zOpCEyopJ3RnDLFe67zuTYkXuIYxR44k4
 tlU1vMZIgmdlUKvftRWcj1ocoqbvsQyYW6lF6lQz4qBIFtf6/GqUSWLwHisuKAq27pIp
 SC7LIpEob6fyP/z1sefzUi/Kf6mPYSMtFNP4cgpbfZJoxwXTyZXzjHqMOjOmpVzMipK7
 tTdeqkYDg8XrmNOaPMtY6gWM29fAx62dc2J04sIym73FKCYqiW9vMCc0eVtLdeD5HjRp
 nVNI5M1NbXox/gJZgXoQqLeUP+k5LYK0I7uBbJHUhTVx+PQmTIueebfXd+kYIyrA6myk
 Y4Lw==
X-Gm-Message-State: AOAM530yzMlTOZ6/rCfk0Tr1/c4fnogifm9Tp9MMC/SesfnpAWDdsft4
 sHwHBXevUaEDzlG9bTUElcGhD+I3y9GtRynjsTZMVw==
X-Google-Smtp-Source: ABdhPJxff+t9e+dmQ4LGqXXOr+3yKds5iXTKx+5F5KSWKEjactT/K3yMRiQhJuXxmtEhHEybpyQdr0bwpbBEI5w7lzQ=
X-Received: by 2002:a81:7405:0:b0:2eb:e280:63ec with SMTP id
 p5-20020a817405000000b002ebe28063ecmr3982763ywc.278.1650623712258; Fri, 22
 Apr 2022 03:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-2-johan+linaro@kernel.org>
 <de4f9514-5132-f208-d43f-4c50afcda203@linaro.org>
 <YmKBgGHtfDcO1Mkg@hovoldconsulting.com>
In-Reply-To: <YmKBgGHtfDcO1Mkg@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Apr 2022 13:35:01 +0300
Message-ID: <CAA8EJpqTzcwAtxk+XtAWdZaKEx2=VduPiVBp+CWj=_C-921YJg@mail.gmail.com>
Subject: Re: [PATCH RFC 1/5] phy: qcom-qmp: add support for pipe clock muxing
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
X-CRM114-CacheID: sfid-20220422_033515_653675_700BD076 
X-CRM114-Status: GOOD (  41.20  )
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

On Fri, 22 Apr 2022 at 13:20, Johan Hovold <johan@kernel.org> wrote:
>
> On Thu, Apr 21, 2022 at 02:08:27PM +0300, Dmitry Baryshkov wrote:
> > On 21/04/2022 13:20, Johan Hovold wrote:
> > > Some QMP PHYs need to remux to their pipe clock input to the pipe clock
> > > output generated by the PHY before powering on the PHY and restore the
> > > default source during power down.
> > >
> > > Add support for an optional pipe clock mux which will be reparented to
> > > the generated pipe clock before powering on the PHY and restored to the
> > > default reference source on power off.
> > >
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp.c | 71 ++++++++++++++++++++++++++---
> > >   1 file changed, 65 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > > index 7d2d1ab061f7..bc6db9670291 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > > @@ -3292,6 +3292,8 @@ struct qmp_phy_combo_cfg {
> > >    * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
> > >    * @pcs_misc: iomapped memory space for lane's pcs_misc
> > >    * @pipe_clk: pipe clock
> > > + * @pipemux_clk: pipe clock source mux
> > > + * @piperef_clk: pipe clock default reference source
> > >    * @index: lane index
> > >    * @qmp: QMP phy to which this lane belongs
> > >    * @lane_rst: lane's reset controller
> > > @@ -3311,6 +3313,8 @@ struct qmp_phy {
> > >     void __iomem *rx2;
> > >     void __iomem *pcs_misc;
> > >     struct clk *pipe_clk;
> > > +   struct clk *pipemux_clk;
> > > +   struct clk *piperef_clk;
> > >     unsigned int index;
> > >     struct qcom_qmp *qmp;
> > >     struct reset_control *lane_rst;
> > > @@ -3346,6 +3350,7 @@ struct qcom_qmp {
> > >     void __iomem *dp_com;
> > >
> > >     struct clk_bulk_data *clks;
> > > +   struct clk *pipe_clksrc;
> >
> > Please move this to qmp_phy too.
>
> Ok.
>
> > > +   /* Get optional pipe clock mux and default reference source clock. */
> > > +   qphy->pipemux_clk = of_clk_get_by_name(np, "mux");
> > > +   if (IS_ERR(qphy->pipemux_clk)) {
> > > +           ret = PTR_ERR(qphy->pipemux_clk);
> > > +           if (ret == -EPROBE_DEFER)
> > > +                   return ret;
> > > +
> > > +           qphy->pipemux_clk = NULL;
> >
> > This makes the driver ignore every possible erorr except -EPROBE_DEFER.
> > However the driver should behave in quite the oppposite way. Please use
> > devm_clk_get_optional() instead. It would do that in better way.
>
> We'd need to add an optional version of devm_get_clk_from_child() for
> that due to the questionable "lane" child nodes this driver uses.
>
> The above works for an RFC, but testing for -EINVAL and -ENOENT handles
> a few more theoretical errnos until an optional helper is in place.
>
> > Not to mention that this code leaks a refcount on the clock.
>
> True, just like the driver has been doing with the pipe clock and lane
> reset since it was merged. I'll fix that up.
>
> > > +   } else {
> > > +           qphy->piperef_clk = of_clk_get_by_name(np, "ref");
> > > +           if (IS_ERR(qphy->piperef_clk)) {
> > > +                   ret = PTR_ERR(qphy->piperef_clk);
> > > +                   return dev_err_probe(dev, ret,
> > > +                                        "failed to get lane%d piperef_clk\n",
> > > +                                        id);
> > > +           }
> > > +   }
> > > +
> >
> > As a second thought.
> > This needs to be more explicit. If the chipset requires the pipe clock
> > remuxing, we must fail if the clocks were not provided. So depending on
> > the qmp instance/property the driver should either use devm_clk_get()
> > (instead of _optional) or skip this block completely.
>
> No, the kernel is not a DT validator (and we have the YAML bindings for
> that now).

It is not about DT validation. It is about passing a correct DT. The
file can come up from the kernel. It can come from the older kernel.
OR it can come from the vendor. Or it even might be being a part of
firmware flashed into the device.
So we can not assume that the DT is correct just because the in-kernel
DT passes YAML validation.

So, as I wrote, the whole patchset needs much more care about compatibility.

> > But this will not work with earlier DTS files.
>
> So this is not a problem (but if we really wanted to have the driver
> validate the DT it can be done by updating the compatible strings).

We should not update compatible strings just because the driver
changes. Compat strings describe the hardware, not the Linux point of
view on it.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

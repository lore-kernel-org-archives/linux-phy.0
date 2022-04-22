Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A67F8C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 11:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KGR26gFj/jAm8LU1IEnRLzG5f90o5qrkBVFNqMz0uw=; b=XwAt9WSrxfTQAB
	g6AuQN0mmy44VmB7d1tUx9Iwm52DQFEGbtjpB8tXwrTmVf0H63gv8lmduy7CFSlKY7jxXItJy14xQ
	eo7gL5jqAXMy5qED4J30tH8i4EQBCLDJx2f6SzJaeldc92MuuJAPLMk6xdjuvxZha61VBD1oxUXbs
	hrQmC9o9ZXM3CP7RkA0+oD6MXMF+rd+YVVXv4dkUmZiYJows2m3QR9ZgcYaWcjayPK5MXvGmX+MJX
	4aq6yIsz2AwTliMla8lUznHxOz/rmAe3ArHpKNRUif0xK13JHkJvzYI3Kh+1p8IkBNtuJEy+B9lwM
	4BrNLqbjk315icePo4uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhrMi-000BmJ-Vz; Fri, 22 Apr 2022 11:22:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhrMf-000Bl1-On
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 11:22:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6AC0DB82C15;
 Fri, 22 Apr 2022 11:22:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25151C385A0;
 Fri, 22 Apr 2022 11:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650626535;
 bh=SVW4zVvibn9z+IjAwyBEd5JkQQkXUtOD1zca6C1BokE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qqInEFY2cO4FTnCH8Gno5qENJk/44n3MG8a3wISfMNbDgBokbaZ7vvr+qaZVsI27K
 i/VwnIIIbXQceDYv0RAf7WYyxiTpWag2UFtrdfL2mC/attGJ1kr9GGgJxyTL35FDt0
 SVEs8jdWWJveITVcdjC1Z+BBasxW4ilFyxeyNQGEWMhhl2oarOsIo5ZRE/s7n8WK29
 E8FRNSTUeDUZ+HPQ7tnDqqlvzH/oG0ZspRVjbDvuzfsktZUAxzVXzMIUzFWa9ks5+Q
 QkvKB3D94/j5v/Xc8a3s47FqgRn5wUTZWUkSJzw+PhcuThk+V5rwoy4G28IWV7jeTt
 9sm4LcyOh1m0Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan@kernel.org>)
 id 1nhrMW-0002mB-2D; Fri, 22 Apr 2022 13:22:08 +0200
Date: Fri, 22 Apr 2022 13:22:08 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 1/5] phy: qcom-qmp: add support for pipe clock muxing
Message-ID: <YmKP4FXXm6NhQFYK@hovoldconsulting.com>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-2-johan+linaro@kernel.org>
 <de4f9514-5132-f208-d43f-4c50afcda203@linaro.org>
 <YmKBgGHtfDcO1Mkg@hovoldconsulting.com>
 <CAA8EJpqTzcwAtxk+XtAWdZaKEx2=VduPiVBp+CWj=_C-921YJg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqTzcwAtxk+XtAWdZaKEx2=VduPiVBp+CWj=_C-921YJg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_042218_146243_54869C6E 
X-CRM114-Status: GOOD (  33.49  )
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

[ Again, please trim unnecessary context from your replies. ]

On Fri, Apr 22, 2022 at 01:35:01PM +0300, Dmitry Baryshkov wrote:
> On Fri, 22 Apr 2022 at 13:20, Johan Hovold <johan@kernel.org> wrote:
> >
> > On Thu, Apr 21, 2022 at 02:08:27PM +0300, Dmitry Baryshkov wrote:
> > > On 21/04/2022 13:20, Johan Hovold wrote:

> > > > +   /* Get optional pipe clock mux and default reference source clock. */
> > > > +   qphy->pipemux_clk = of_clk_get_by_name(np, "mux");
> > > > +   if (IS_ERR(qphy->pipemux_clk)) {
> > > > +           ret = PTR_ERR(qphy->pipemux_clk);
> > > > +           if (ret == -EPROBE_DEFER)
> > > > +                   return ret;
> > > > +
> > > > +           qphy->pipemux_clk = NULL;

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
> It is not about DT validation. It is about passing a correct DT.

Heh. That's the same thing.

> The file can come up from the kernel. It can come from the older
> kernel.  OR it can come from the vendor. Or it even might be being a
> part of firmware flashed into the device.  So we can not assume that
> the DT is correct just because the in-kernel DT passes YAML
> validation.

Again, no. The kernel does not need to implement DT validation and can
assume that the DT describes the hardware accurately. If the DT says
there's a mux, the driver can use it. If there's no mux in DT, the
driver can assume it isn't there.

The only thing that complicates things here is the sc7280 dts which has
been released in 5.16. We don't care about Qualcomm's kernels and dts.

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

We can, it's a documented practise in case a binding needs to be
updated in an incompatible way:

	https://www.kernel.org/doc/html/latest/devicetree/bindings/ABI.html

But I don't think it'll be needed here.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

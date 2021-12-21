Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25FA4C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 15:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8KAT5lvb1iAq+QRW5rUW1vTE0SAKeqy/hm6qedWlJc=; b=vN7kHhqx/ofktj
	uqbM93P6GbCzYkaRrzFhLtrQNkD4NN6vBEBGCpQ1/7VGPICBWLjbdjY5ErMfGfxo01KkSzPUtmSWs
	16OoeYhGX5Cp/ZttQMrJLLTfNRvNX5Okf+n0FlKHryQDVEpzHXqcftw0DAKCDA0x2xhDxsmna+d0B
	HYOHOXE1+qjZtDngq6lEjbeZR/hDyqbEUDofhYYXSLQCOsylX45FcntHWuUMPEFjvMYi5vVdDpQhr
	SLb6wWP9dWfq07ba41hHvLo/YDELGnBJdK6OYVjC08Zgpi/gY7vdc/NLkFwZcfmqEztfs4iJohJQt
	cDXbxnTmRsHQ7vq8e7mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzhJ0-007QzL-Hh; Tue, 21 Dec 2021 15:43:58 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzhIm-007QtL-8Z
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 15:43:46 +0000
Received: by mail-qk1-x733.google.com with SMTP id t83so12902440qke.8
 for <linux-phy@lists.infradead.org>; Tue, 21 Dec 2021 07:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TM/EYNiDRj3pjelGxdOL0frKQz44QCfMf7gv+XrXNos=;
 b=F1zsFtSE/NrsuidTSveNM0gDl67h08lj4dDeshbc+YE7OSUlu8s+0Y5iQn23G3bhNF
 L7/wa0r6XY1bE9rXMFZfTu+Fly1u4zwbeabaGym5nNemI2EFNhoiXlaiBafNGzJ1pQTP
 2NOR8VcChlrzxpu+4bESwQClbVMPNNWZEmiSRYvtoPxULTf3nt37FlKW9Q6pfO9iYgbF
 RF4ZUgWzsXH2D1zT2fqvqSyfy+nAKOb2IS+rLrdYuLLa6toakJZdsUj51MwzHzPBkLlL
 HjQtQKKZ5i8anDKE5BUSwmBMZOsyOFDsDI7yRi2g62QjU2REivitJy90PH6tgx9HdEAF
 0qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TM/EYNiDRj3pjelGxdOL0frKQz44QCfMf7gv+XrXNos=;
 b=gsqQ+2sWvNjJ6UDkwex9bBYayWtlJ1Z/Sh/Dz+e8jchaJe0vAXS0PVUow0QnZc8EEH
 4y4gDZ3DspJmEJBSDYKeOl/Ubas0TeYiCYQtzAQKYvUmleklsdTaFineMinMnb8duASf
 iA/hEp6NpV1rtlhWdmT2wkO4u70eU3eXDad+h2VCwPrUyWmZrnqvGnMgD4WvAywduh3Q
 XLK3tj03Wg621G8W8PvMCF4mehfGXnDK6/346elG3eQskvF2K0qANL87OP5/WaUPOc0G
 EbDq25pxWmk33C9FNcCVPrKV7tFZNNRqRAIF1lrY8EzY+DqMd/k7TdxF/x2v+ISooUBw
 nOig==
X-Gm-Message-State: AOAM530vhNRL+sRhd+9QzmcAik/uq/1q7NQNQ5XF2xnhfRSRyDxYxddd
 2iY0tOBt/OY82ddj2W7wjw4BtEjmJSV4H2IWPCFADQ==
X-Google-Smtp-Source: ABdhPJwWSdSLT82NkDeKpmGZRZMmiKAk2WV6/DtmpRrClrcP7y9OglFbZ/77UwSWGk2t4gOg0h3W0exFjn2hG+lTn5U=
X-Received: by 2002:a05:620a:4101:: with SMTP id
 j1mr2357042qko.593.1640101422825; 
 Tue, 21 Dec 2021 07:43:42 -0800 (PST)
MIME-Version: 1.0
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
 <YcHr0/W0QqRlj1Ji@robh.at.kernel.org>
In-Reply-To: <YcHr0/W0QqRlj1Ji@robh.at.kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Dec 2021 18:43:31 +0300
Message-ID: <CAA8EJpr1wfW2CLSjBjJdMhhgBmcnMRkx=x5SAC_4LDQCHw1_qA@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_074344_362352_87E7DFE6 
X-CRM114-Status: GOOD (  18.46  )
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

On Tue, 21 Dec 2021 at 17:59, Rob Herring <robh@kernel.org> wrote:
>
> On Sat, Dec 18, 2021 at 05:10:20PM +0300, Dmitry Baryshkov wrote:
> > Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
> > to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
> > different set of clocks, so two compatible entries are required.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > index a0ae024c2d0c..0adb56d5645e 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > @@ -15,6 +15,8 @@
> >                       - "qcom,pcie-sc8180x" for sc8180x
> >                       - "qcom,pcie-sdm845" for sdm845
> >                       - "qcom,pcie-sm8250" for sm8250
> > +                     - "qcom,pcie-sm8450-pcie0" for PCIe0 on sm8450
> > +                     - "qcom,pcie-sm8450-pcie1" for PCIe1 on sm8450
>
> What's the difference between the two?

Clocks used by these hosts. Quoting the definition:

+                     - "aggre0"      Aggre NoC PCIe0 AXI clock, only
for sm8450-pcie0
+                     - "aggre1"      Aggre NoC PCIe1 AXI clock

aggre1 is used by both pcie0 and pcie1, while aggre0 is used only by pcie0.

>
> >                       - "qcom,pcie-ipq6018" for ipq6018
> >
> >  - reg:
> > @@ -169,6 +171,24 @@
> >                       - "ddrss_sf_tbu" PCIe SF TBU clock
> >                       - "pipe"        PIPE clock
> >
> > +- clock-names:
> > +     Usage: required for sm8450-pcie0 and sm8450-pcie1
> > +     Value type: <stringlist>
> > +     Definition: Should contain the following entries
> > +                     - "aux"         Auxiliary clock
> > +                     - "cfg"         Configuration clock
> > +                     - "bus_master"  Master AXI clock
> > +                     - "bus_slave"   Slave AXI clock
> > +                     - "slave_q2a"   Slave Q2A clock
> > +                     - "tbu"         PCIe TBU clock
> > +                     - "ddrss_sf_tbu" PCIe SF TBU clock
> > +                     - "pipe"        PIPE clock
> > +                     - "pipe_mux"    PIPE MUX
> > +                     - "phy_pipe"    PIPE output clock
> > +                     - "ref"         REFERENCE clock
> > +                     - "aggre0"      Aggre NoC PCIe0 AXI clock, only for sm8450-pcie0
> > +                     - "aggre1"      Aggre NoC PCIe1 AXI clock
> > +
> >  - resets:
> >       Usage: required
> >       Value type: <prop-encoded-array>
> > @@ -246,7 +266,7 @@
> >                       - "ahb"                 AHB reset
> >
> >  - reset-names:
> > -     Usage: required for sc8180x, sdm845 and sm8250
> > +     Usage: required for sc8180x, sdm845, sm8250 and sm8450
> >       Value type: <stringlist>
> >       Definition: Should contain the following entries
> >                       - "pci"                 PCIe core reset
> > --
> > 2.34.1
> >
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

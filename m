Return-Path: <SRS0=ge4I=MQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD9DC4338F
	for <linux-phy@archiver.kernel.org>; Sat, 24 Jul 2021 00:12:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 813DB60EAF
	for <linux-phy@archiver.kernel.org>; Sat, 24 Jul 2021 00:12:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 813DB60EAF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StbsMOEg94ukKjyAMMN6aC5Xytv8dsxlB60fKpygT6g=; b=43OUkC13FjV0s9
	h3SPLgSjUKqtxdIbJNnNi1cfor0fIxTIps+BE31OZjNIoQ872zax7wFIdQQRHPP+07AaR69Ro36xc
	RZ8bP+4JdzDabhZCXZVx5WgLZ8RGtlaNssu3rfs+A0GJH/JuEEpYe5ch6j4ZcgkYtZMXOYWx6TC1E
	Qi/iwdgmupgskY6EqBxKhDyI7yoZvu2eBaNWf4ehasyhr77ZYj1vRZVztOvt5lTdz66BDRbUXIjGf
	l7cC1LzqcbWw66qLJYVNsktTokkrOixZFHV+YziJ01EVEOi2sjUInNzAWmAk9fyAmrKNdZ/PmPKFh
	mVgCtM1/KOOd8Z0T26FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m75Hi-006SEX-24; Sat, 24 Jul 2021 00:12:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m75He-006SDt-TK
 for linux-phy@lists.infradead.org; Sat, 24 Jul 2021 00:12:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECE6F60E8F;
 Sat, 24 Jul 2021 00:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627085570;
 bh=tZzsGQbCVxqev5G3k7WUFXUgpMB0JBN7B4ZZPYZRAZw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SR2vuI6t07CVs99l+aQJu9Hkz1PJkRZ7xUXT+DJl70ukAsfxdbwZ33dUqgBLzlEpk
 /53ho9YnR/WKtmO+xlk8d2q2t7p6c8vf9zWRzc8IBchVLLXGFNNl8M9A49u8QsrBiF
 yFoVnKzj7UCIKDZZxaR4LQ7Ykygx94NrIQo4u8yCovX/HLL7NzhDn8E4CcTtIG2RQN
 Vve2EwSsDZTSeSX9LwKzBO6KFGnoN3vwt4AUcHrM5VK5vrlnSwwrXdF4GVkSV5Q/Io
 SOvcwEtszVHEe7CExGm8rc+bQyskVbx9yIcgig7tXtrXWUTVFDQJUFGfn1hoLGiwLA
 jwyss24F0Mw5A==
Date: Sat, 24 Jul 2021 02:12:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linuxarm@huawei.com, mauro.chehab@huawei.com, Kishon Vijay Abraham I
 <kishon@ti.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 06/10] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210724021244.780297ee@coco.lan>
In-Reply-To: <20210723225059.GA2727093@robh.at.kernel.org>
References: <cover.1626855713.git.mchehab+huawei@kernel.org>
 <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
 <20210723225059.GA2727093@robh.at.kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_171251_031525_D54D1E47 
X-CRM114-Status: GOOD (  27.40  )
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

Em Fri, 23 Jul 2021 16:50:59 -0600
Rob Herring <robh@kernel.org> escreveu:

> On Wed, Jul 21, 2021 at 10:39:08AM +0200, Mauro Carvalho Chehab wrote:
> > Document the bindings for HiKey 970 (hi3670) PCIe PHY
> > interface, supported via the pcie-kirin driver.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 95 +++++++++++++++++++
> >  1 file changed, 95 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> > new file mode 100644
> > index 000000000000..a5ea13332cac
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> > @@ -0,0 +1,95 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3670-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: HiSilicon Kirin970 PCIe PHY
> > +
> > +maintainers:
> > +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > +
> > +description: |+
> > +  Bindings for PCIe PHY on HiSilicon Kirin 970.
> > +
> > +properties:
> > +  compatible:
> > +    const: hisilicon,hi970-pcie-phy
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: PHY Control registers
> > +
> > +  phy-supply:
> > +    description: The PCIe PHY power supply
> > +
> > +  clocks:
> > +    items:
> > +      - description: PCIe PHY clock
> > +      - description: PCIe AUX clock
> > +      - description: PCIe APB PHY clock
> > +      - description: PCIe APB SYS clock
> > +      - description: PCIe ACLK clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: phy_ref
> > +      - const: aux
> > +      - const: apb_phy
> > +      - const: apb_sys
> > +      - const: aclk
> > +
> > +  reset-gpios:
> > +    description: PCI PERST reset GPIOs
> > +    maxItems: 4
> > +
> > +  clkreq-gpios:
> > +    description: Clock request GPIOs
> > +    maxItems: 3  
> 
> Again, this will not work. 

Just to be sure: you're talking about the PERST# gpios (e. g. reset-gpios)
here, right?

> It boils down to this fails to describe how the GPIOs are connected 
> which is the point of GPIOs in DT. This in no way captures the hierarchy 
> of devices. While you may be lucky that you can just assert or 
> deassert all the lines at one time, that's not likely to work in a 
> more complicated case (such as having to power up/down each device).

There's no way to power up/down each device, as they all share the
same regulator line (LDO33). So, when this is powered on, all PCI
devices are powered at the same time.

The original DT had names for each reset-gpio, but this was just
informative, as the only possible way for this hardware to work is
to send the PERST# signal via all GPIOs at the same time.

Ok, we might overdesign the DT, in order to consider a non-existent
scenario where it would be possible to power on and reset the devices 
in separate, but I can't think on a way to do that, except by maybe
creating virtual phy (or pcie) DT nodes, one for each combination of
regulator + PERST#, and have separate drivers for each one. Such kind
of scenario only makes sense when each PCIe device can be powered on
independently (which is not the case here).

If you have a better idea, I'm all ears.

> 
> I realize the right solution is more complex, but that's the only way to 
> handle this in a host bridge and board independent way.
> 
> If you want the simple solution, just configure all these GPIOs in 
> firmware before Linux boots.

This won't work. The PERST# signal should be sent after initializing
the PCIe + PHY and powering up the PEX8606 PCIe bridge chipset
(via LDO33). That happens when the PCIe driver is loaded.

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F304DC07E9A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 14:32:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDCA76120A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 14:32:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDCA76120A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfKAtNrV4bmjEDhrY82EW3DSg1lIp2dhojPUgabaqDs=; b=ZRNPzwRWUQPbMU
	xCfUqsm62fUbtCL87D5BHDAIFh66ht623P4znZjKvg0FGqB0X7KEfoVOl1BX2aktUs7mLMDcqzklg
	Huudy5YLDeLzXpXn19MDqyfHUzhQ9F4xn34XmrDj3g9C1Cxwm/DO/GqMMAdB6dJTNi9B3HDjhDNMi
	5irSs0e2ix9UbFctbsULga0o0YTDtivlrOIVZ5N0Fhmh5oJrV9ZAhxZRWEMIsNNibfChYgKCOubHC
	Cns/dRWuJnaaFJB0y9zt5cRxO4QnihTkdsgvzSJhX3MHO31SeeWLA3iSNuqNUl6wPQVkSpsQFWYsM
	j9oRuSWk7Q5WZSSaY+DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3fvf-00DqZr-B7; Wed, 14 Jul 2021 14:32:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3fvc-00DqZ3-Fd
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 14:32:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 794F6611C0;
 Wed, 14 Jul 2021 14:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626273120;
 bh=yOtNr7+suOgCN8lqCfrgSJAyiWcSVdSY6iRNrdbFZhk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CUy3JmLCk2IixwQv/YKxv0BOKrIP0Wng778B2qv0WWTi1D3mA4pwYuluzh1lT5sSH
 pUKvskeYOIZERqRWJ4F6TBvBz7GPpeJeRDTBiSLHmvu09MepIoWnlyu5zdfnHNaWZo
 jOHlJuG/JLPdGOSNyPSPU3s5SAIxvf+xEzmrCVHmVs4bh4pimol5Bi/q36n6KSmeKr
 FC+9YwtZ2RvfPaaVo/ekzvTcf5A8vKqP8ZIjegfPhq0vgOfQXdg7zoTGqVERwkf1to
 C/DHZQjLJw8xnjxNETTkpYJc2b8fRhIfRfAFRdfysueWqUmefn2K7e7akTXXzdqRpZ
 c/7Rh0WShWwhg==
Date: Wed, 14 Jul 2021 16:31:54 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Linuxarm <linuxarm@huawei.com>,
 mauro.chehab@huawei.com, Manivannan Sadhasivam <mani@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210714163154.02e7d5b9@coco.lan>
In-Reply-To: <CAL_JsqJehoGakG1kXs8XC_c4UHfVE9oF2M3Ww9eizCa_Jn_TDQ@mail.gmail.com>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
 <20210714022649.GA1324196@robh.at.kernel.org>
 <20210714091435.322d68b1@coco.lan>
 <CAL_JsqJehoGakG1kXs8XC_c4UHfVE9oF2M3Ww9eizCa_Jn_TDQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_073200_614212_8B150B84 
X-CRM114-Status: GOOD (  23.86  )
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

Em Wed, 14 Jul 2021 08:17:05 -0600
Rob Herring <robh@kernel.org> escreveu:

> On Wed, Jul 14, 2021 at 1:14 AM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> >
> > Em Tue, 13 Jul 2021 20:26:49 -0600
> > Rob Herring <robh@kernel.org> escreveu:
> >  
> > > On Tue, Jul 13, 2021 at 08:28:35AM +0200, Mauro Carvalho Chehab wrote:  
> >  
> > > > +  reset-gpios:
> > > > +    description: PCI PERST reset GPIOs
> > > > +    maxItems: 4  
> > >
> > > Hiding the 4 ports in the phy?  
> >
> > Rob,
> >
> > I'm not trying to hide anything.
> >
> > There are several differences with regards to how PERST# is handled between
> > HiKey 960 and HiKey 970.
> >
> > From hardware perspective, you can see the schematics of both boards:
> >
> >         https://github.com/96boards/documentation/raw/master/consumer/hikey/hikey960/hardware-docs/HiKey960_SoC_Reference_Manual.pdf
> >         https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf
> >
> > The 960 PHY has the SoC directly connected to a PCIE M.2 slot
> > (model 10130616) without any external bridge chipset. It uses a single
> > GPIO (GPIO 089) for the PERST# signal, connected via a voltage converter
> > (from 1.8V to 3.3V).
> >
> >         $ lspci
> >         00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)
> >
> > The 970 PHY has an external PCI bridge chipset (PLX Technology PEX 8606).
> > Besides the bridge, the hardware comes with an Ethernet PCI adapter, a
> > M.2 slot and a mini-PCIe connector. Each one with its own PERST# signal,
> > mapped to different GPIO pins, and each one using its own voltage
> > converter.
> >
> >         $ lspci
> >         00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
> >         01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> >         02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> >         02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> >         02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> >         02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> >         02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
> >         06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)
> >
> > On other words, there are 4 GPIOs mapped to different PERST# pins in
> > the hardware:
> >
> > - GPIO 56 is connected to the PERST# pin at PEX 8606;
> > - GPIO 25 is connected to the PERST# pin at the M.2 slot;
> > - GPIO 220 is connected to the PERST# pin at the PCIe mini slot;
> > - GPIO 203 is connected to the PERST# pin at the Ethernet chipset.
> >
> > Maybe due to different electrical requirements, the hardware design
> > use different GPIOs instead of feeding them altogether.
> >
> > Anyway, the fact is that the PHY on 970 has 4 different GPIOs that are
> > need in order for the hardware to work. and this is specific to this
> > particular PHY.  
> 
> This hierarchy could be done on any board. It has nothing to do with the PHY.

True, but right now, the pci-bus.yaml prevents it, as it allows just 
one reset GPIO[1]:

  reset-gpios:
    description: GPIO controlled connection to PERST# signal
    maxItems: 1

[1] https://github.com/robherring/dt-schema/blob/master/schemas/pci/pci-bus.yaml

If the schema will be changed to allow multiple reset-gpios, It should
be possible to keep this at the pcie-kirin.c driver with something like:

	static int kirin_pcie_power_on(struct kirin_pcie *kirin_pcie)
	{
		int ret;

		ret = phy_init(kirin_pcie->phy);
		if (ret)
			return ret;

		ret = phy_power_on(kirin_pcie->phy);

                /* perst assert Endpoints */
                usleep_range(21000, 23000);
                for (i = 0; i < phy->n_gpio_resets; i++) {
                        ret = gpio_direction_output(phy->gpio_id_reset[i], 1);
                        if (ret) {
				phy_power_off(kirin_pcie->phy);
                                return ret;
			}
                }
                usleep_range(10000, 11000);

		return phy_reset(kirin_pcie->phy);
	}

This would work for both 960 - where phy_reset() is not needed,
and for 970, where it would set the eye diagram for the PHY.

Should I send a patch for pci-bus.yaml via github?

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

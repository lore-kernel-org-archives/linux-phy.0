Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 080E7C11F66
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 14:17:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5AE361183
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 14:17:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5AE361183
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LiywHWFwOw2AgY6aOXPoi+v3H8iVBDkadvcCkvxzgI=; b=FSEP40cYkk+uVH
	WBiO0Q5eREZSw0wQpfc8kLRsAad+aIiy87V7gc9K/87ptNvjX7iJYILD+vZmrhKRUlveXAYEc3eqf
	Q/Uz6SP+vrpEEI3KUb6LRp/g6GwXX7WcUyhY+Jr2bFUQvjO4zSvSIdr11/0UFHDrrr8YKcn+gaZJg
	WvsU/lFAYr2yKtvSFV2a/LL1+L38t4JcpHhtWG79tVa9RiXoifCemnLDBeJWXz0/b1mTZxT8Xvd1p
	TsRNEF0e5os8x9GLcHmhFEw7mFArnfE5pMNPS7qR7m6uBdPnfzUN3g+ubkIXWtQVVJu60dS4ZE6e+
	rpHIqY15i3w1Ar19hAwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3fhT-00DpQE-7g; Wed, 14 Jul 2021 14:17:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3fhP-00DpPP-SG
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 14:17:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7FB83613D3
 for <linux-phy@lists.infradead.org>; Wed, 14 Jul 2021 14:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626272239;
 bh=uppVytZe/PF+h1BO83tiAZrIINXS8zKoOHCBNTsqSWY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c8OycKEqYChbNdGae3TpdVnjXYGHoDH/LydrE0UtAwGn+Qn6FtXlptNXvrRGfAvGI
 fszb1cqhwBgsqImzOQDET8Oh3F2aRiZpWPkwscdAr2gRTuhXvS5TAcL+F+/iO9YkkC
 xDV9ArVAm/RFrPtz+pPqBt04hfw6P+uECAINATxRUBNtLSCjn2B2V90+V904nY11aL
 SCywRZeA1/BeeAoJ6PDxtbBravCJvUJ+rjEPVBOzwKvDauJRqTutg7/tRk3oLRL+xW
 JxPSohodCsxrPWio8XEGK+Fctj4xSTorsgFvcRkpGsIR9kNZ9xa0ekbzieT5nLaFbS
 470NlD4y3B25w==
Received: by mail-ej1-f54.google.com with SMTP id qb4so3544545ejc.11
 for <linux-phy@lists.infradead.org>; Wed, 14 Jul 2021 07:17:19 -0700 (PDT)
X-Gm-Message-State: AOAM530pa/AWr8exKTbejFIYH8J23JCLpYQS7NW2V2QMKAMz96RPOpbJ
 VmGLpnsj8hqz6YeS9Jx6ciNY+uoDcb8vDZ7jDw==
X-Google-Smtp-Source: ABdhPJwA9SvgKi1BZBMLKChGZjsra8MvN0cP1B0B+dGmuuarbv1oS9eSOo2tgjhGPq5iEj0oCI0U2kWQ9tSDY4SZZ14=
X-Received: by 2002:a17:907:5096:: with SMTP id
 fv22mr12203806ejc.525.1626272238042; 
 Wed, 14 Jul 2021 07:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
 <20210714022649.GA1324196@robh.at.kernel.org>
 <20210714091435.322d68b1@coco.lan>
In-Reply-To: <20210714091435.322d68b1@coco.lan>
From: Rob Herring <robh@kernel.org>
Date: Wed, 14 Jul 2021 08:17:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJehoGakG1kXs8XC_c4UHfVE9oF2M3Ww9eizCa_Jn_TDQ@mail.gmail.com>
Message-ID: <CAL_JsqJehoGakG1kXs8XC_c4UHfVE9oF2M3Ww9eizCa_Jn_TDQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970 PCIe
 PHY
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Linuxarm <linuxarm@huawei.com>,
 mauro.chehab@huawei.com, 
 Manivannan Sadhasivam <mani@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_071719_998014_35E0621F 
X-CRM114-Status: GOOD (  25.00  )
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

On Wed, Jul 14, 2021 at 1:14 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Em Tue, 13 Jul 2021 20:26:49 -0600
> Rob Herring <robh@kernel.org> escreveu:
>
> > On Tue, Jul 13, 2021 at 08:28:35AM +0200, Mauro Carvalho Chehab wrote:
>
> > > +  reset-gpios:
> > > +    description: PCI PERST reset GPIOs
> > > +    maxItems: 4
> >
> > Hiding the 4 ports in the phy?
>
> Rob,
>
> I'm not trying to hide anything.
>
> There are several differences with regards to how PERST# is handled between
> HiKey 960 and HiKey 970.
>
> From hardware perspective, you can see the schematics of both boards:
>
>         https://github.com/96boards/documentation/raw/master/consumer/hikey/hikey960/hardware-docs/HiKey960_SoC_Reference_Manual.pdf
>         https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf
>
> The 960 PHY has the SoC directly connected to a PCIE M.2 slot
> (model 10130616) without any external bridge chipset. It uses a single
> GPIO (GPIO 089) for the PERST# signal, connected via a voltage converter
> (from 1.8V to 3.3V).
>
>         $ lspci
>         00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)
>
> The 970 PHY has an external PCI bridge chipset (PLX Technology PEX 8606).
> Besides the bridge, the hardware comes with an Ethernet PCI adapter, a
> M.2 slot and a mini-PCIe connector. Each one with its own PERST# signal,
> mapped to different GPIO pins, and each one using its own voltage
> converter.
>
>         $ lspci
>         00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
>         01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>         02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>         02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>         02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>         02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>         02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>         06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)
>
> On other words, there are 4 GPIOs mapped to different PERST# pins in
> the hardware:
>
> - GPIO 56 is connected to the PERST# pin at PEX 8606;
> - GPIO 25 is connected to the PERST# pin at the M.2 slot;
> - GPIO 220 is connected to the PERST# pin at the PCIe mini slot;
> - GPIO 203 is connected to the PERST# pin at the Ethernet chipset.
>
> Maybe due to different electrical requirements, the hardware design
> use different GPIOs instead of feeding them altogether.
>
> Anyway, the fact is that the PHY on 970 has 4 different GPIOs that are
> need in order for the hardware to work. and this is specific to this
> particular PHY.

This hierarchy could be done on any board. It has nothing to do with the PHY.

> Now, from software perspective, the power on sequence on Hikey 960
> finishes sending PERST# signal to the M.2 slot:
>
>         static int hi3660_pcie_phy_power_on(struct phy *generic_phy)
>         {
> ...
>                 /* perst assert Endpoint */
>                 if (!gpio_request(phy->gpio_id_reset, "pcie_perst")) {
>                         usleep_range(REF_2_PERST_MIN, REF_2_PERST_MAX);
>                         ret = gpio_direction_output(phy->gpio_id_reset, 1);
>                         if (ret)
>                                 goto disable_clks;
>                         usleep_range(PERST_2_ACCESS_MIN, PERST_2_ACCESS_MAX);
>                         return 0;
>                 }
>
>         disable_clks:
>                 kirin_pcie_clk_ctrl(phy, false);
>                 return ret;
>         }
>
> The 970 PHY, however, sends PERST# signal in the middle of the power
> on sequence, as, after sending reset, it needs to wait for the hardware
> to stabilize, in order to setup an eye diagram at the PHY:
>
>         static int hi3670_pcie_phy_power_on(struct phy *generic_phy)
>         {
> ...
>                 /* perst assert Endpoints */
>                 usleep_range(21000, 23000);
>                 for (i = 0; i < phy->n_gpio_resets; i++) {
>                         ret = gpio_direction_output(phy->gpio_id_reset[i], 1);
>                         if (ret)
>                                 return ret;
>                 }
>                 usleep_range(10000, 11000);
>
>                 ret = is_pipe_clk_stable(phy);
>                 if (!ret)
>                         goto disable_clks;
>
>                 hi3670_pcie_set_eyeparam(phy);
>
>                 ret = hi3670_pcie_noc_power(phy, false);
>                 if (ret)
>                         goto disable_clks;
>
>                 return 0;
>
>         disable_clks:
>                 kirin_pcie_clk_ctrl(phy, false);
>                 return ret;
>         }
>
> IMO, it makes a lot more sense to map this on DT as part of the
> PHY and not as part of the PCIe, but no matter how it is mapped,
> this PHY still requires 4 GPIOs for PERST#.

It does not because PERST# control is part of PCIe for every other driver.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A4C07E9A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 07:14:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F448613AA
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 07:14:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6F448613AA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znJWHr6/NXxs99/aloL9/7+ykmEN5KSNBoYriZKqEew=; b=k8aBsnmFAjTP0P
	uv46fe+EFNd/jQmSlkwG1DRwy/fUx1stfvK77z2LCGOWzDSasCs1BjBHu5jjIkLIyv4AypPc/9Hy1
	1cDPcjWKVcL1utbnrIRsQg0RnaPL3X/eTUU+asPvMpiULdcRBC/88rxhRrqipjRcsEIIX7/hjrXEm
	VeRlDVvnX0RXc6F2cvSkno1HXGxeJ9UQIZiV+N1ImWQEfHThabVIjj5pdALIcVzczbswjW4mRbas4
	ihvVMy1AkFeHqqqdNKf7LGmSizEsznPKXoAgSowLBLHrYj833UqEkoI8e66b7ukrwQ6qTwW/mXg7X
	8OE9eFsYywdEpnx7lecQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3Z6S-00CU90-Vz; Wed, 14 Jul 2021 07:14:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3Z6Q-00CU8T-60
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 07:14:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D55B76136E;
 Wed, 14 Jul 2021 07:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626246881;
 bh=0yl6LgRMCHVYko8d2lMXrL+3MvdopKXqIaK8azMmHiA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sy2D9hYch6cByjUdwHotcJLni9CRe4Udzfkjpi2g00LD3fWvpcszikx7+RePBWIFq
 oM/aB035M7JeWxNw4vWM4Og/tFTJZ6TMzVcZrnLG5cwMAuCZJvVijDojm9tGjvwXyR
 AR7DgR2G4qTSO2p+SJ3RYQO5RZQ2k6Zdicmkj1NvtM/pUhH1FxKGhIqdOs9AkJLGhT
 7lTEfr9K/fBj/USa0JL1jPHKVbj7cJwRg3ETQNt5blN4vr7Df5C9bPbRJGWHv2cfPx
 +DiIKcup2CS46vTssZXmjaSRGunEVThzDFcoGwjJiRjzsANJfA6vWpGh7NZceQGY0f
 aZDTjejDL90rw==
Date: Wed, 14 Jul 2021 09:14:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Manivannan Sadhasivam <mani@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210714091435.322d68b1@coco.lan>
In-Reply-To: <20210714022649.GA1324196@robh.at.kernel.org>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
 <20210714022649.GA1324196@robh.at.kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_001442_305605_68920012 
X-CRM114-Status: GOOD (  14.16  )
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

Em Tue, 13 Jul 2021 20:26:49 -0600
Rob Herring <robh@kernel.org> escreveu:

> On Tue, Jul 13, 2021 at 08:28:35AM +0200, Mauro Carvalho Chehab wrote:

> > +  reset-gpios:
> > +    description: PCI PERST reset GPIOs
> > +    maxItems: 4  
> 
> Hiding the 4 ports in the phy?

Rob,

I'm not trying to hide anything.

There are several differences with regards to how PERST# is handled between
HiKey 960 and HiKey 970.

From hardware perspective, you can see the schematics of both boards:

	https://github.com/96boards/documentation/raw/master/consumer/hikey/hikey960/hardware-docs/HiKey960_SoC_Reference_Manual.pdf
	https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf

The 960 PHY has the SoC directly connected to a PCIE M.2 slot 
(model 10130616) without any external bridge chipset. It uses a single 
GPIO (GPIO 089) for the PERST# signal, connected via a voltage converter
(from 1.8V to 3.3V).

	$ lspci
	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)

The 970 PHY has an external PCI bridge chipset (PLX Technology PEX 8606).
Besides the bridge, the hardware comes with an Ethernet PCI adapter, a
M.2 slot and a mini-PCIe connector. Each one with its own PERST# signal,
mapped to different GPIO pins, and each one using its own voltage
converter.

	$ lspci
	00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
	01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
	02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
	02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
	02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
	02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
	02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
	06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)

On other words, there are 4 GPIOs mapped to different PERST# pins in
the hardware:

- GPIO 56 is connected to the PERST# pin at PEX 8606;
- GPIO 25 is connected to the PERST# pin at the M.2 slot;
- GPIO 220 is connected to the PERST# pin at the PCIe mini slot;
- GPIO 203 is connected to the PERST# pin at the Ethernet chipset.

Maybe due to different electrical requirements, the hardware design
use different GPIOs instead of feeding them altogether.

Anyway, the fact is that the PHY on 970 has 4 different GPIOs that are
need in order for the hardware to work. and this is specific to this
particular PHY.

Now, from software perspective, the power on sequence on Hikey 960
finishes sending PERST# signal to the M.2 slot:

	static int hi3660_pcie_phy_power_on(struct phy *generic_phy)
	{
...
		/* perst assert Endpoint */
		if (!gpio_request(phy->gpio_id_reset, "pcie_perst")) {
			usleep_range(REF_2_PERST_MIN, REF_2_PERST_MAX);
			ret = gpio_direction_output(phy->gpio_id_reset, 1);
			if (ret)
				goto disable_clks;
			usleep_range(PERST_2_ACCESS_MIN, PERST_2_ACCESS_MAX);
			return 0;
		}

	disable_clks:
		kirin_pcie_clk_ctrl(phy, false);
		return ret;
	}
	
The 970 PHY, however, sends PERST# signal in the middle of the power
on sequence, as, after sending reset, it needs to wait for the hardware
to stabilize, in order to setup an eye diagram at the PHY:

	static int hi3670_pcie_phy_power_on(struct phy *generic_phy)
	{
...
		/* perst assert Endpoints */
		usleep_range(21000, 23000);
		for (i = 0; i < phy->n_gpio_resets; i++) {
			ret = gpio_direction_output(phy->gpio_id_reset[i], 1);
			if (ret)
				return ret;
		}
		usleep_range(10000, 11000);

		ret = is_pipe_clk_stable(phy);
		if (!ret)
			goto disable_clks;

		hi3670_pcie_set_eyeparam(phy);

		ret = hi3670_pcie_noc_power(phy, false);
		if (ret)
			goto disable_clks;

		return 0;

	disable_clks:
		kirin_pcie_clk_ctrl(phy, false);
		return ret;
	}

IMO, it makes a lot more sense to map this on DT as part of the
PHY and not as part of the PCIe, but no matter how it is mapped,
this PHY still requires 4 GPIOs for PERST#.

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

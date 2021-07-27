Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 159F0C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 08:16:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1B3460F59
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 08:16:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D1B3460F59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7VPiNI1X0rXgUW1uTWlj9dA4iiPkTv34Menx1dPGQY=; b=spgwkpgnigFPaa
	kI2XOs76jBRErv+yS7PpHwheIwTwPApA2aH2sYib6TB7tc8NOylI3GWzHc8Sfo9itNPsj59D25wog
	UmBfCj/tQXpifuEqzb4UEY843gBTHbo6atNP9QnxwJJSLRPXIKXmZ/PGqVtvjByyrnJSaBgYfEILG
	DqlSXhQhAYh80kKbqLE08U/8BtSr30LQFohsLVnR2hCTUay0CFgI327VzQshKjApJpUvntB3RmUWs
	3vC8CAwGnZK7FW9kNzKDmG8F9HxQB9If7Zsi0aPmeXYlgkuupFHMe5IOFJtEuIETg1oTH7/kgwfa5
	cH5vtOiySrVMJqxYuSTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8IG5-00E21n-VU; Tue, 27 Jul 2021 08:16:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8IBU-00E0cX-6I
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 08:11:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE01A60527;
 Tue, 27 Jul 2021 08:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627373487;
 bh=zVqEdy3HT0nY8M2r7ytmalbkDZCkuC6kKnk5DTAldt4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qkONxAMBkplh6w8TVbdOBYTugIGhUMN5hMMUiDc07rH6uelsS8P7180mk4IL81jDN
 irY84ozNrDsgpOxDqmffFLL2AwiwYFpRq0Ga+Nj+l4MIJUium7fqom5OLTQXUZ0TiN
 RX0qQldnNwXPY9zdkwdugsy+h9gvSM3QVQYbaSYYN1bIo0tPShH7Xz7esdn0xMxmAB
 GwhsidMKS+vfmqcE9Xgee4Nji1NIosmPKuu6zZZML+TtjhOHYc6QmKfs18gzNaL5e4
 EOFtjT/mWoYRe1xytqVi6GjaimnBepLNu58XwjuD64gDlm61J4/ruvzKsXjZcXRX0B
 uFKJxeCnWHM6A==
Date: Tue, 27 Jul 2021 10:11:22 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 linuxarm@huawei.com, mauro.chehab@huawei.com, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210727101122.204b6b9e@coco.lan>
In-Reply-To: <20210714174225.GA8988@workstation>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
 <20210714022649.GA1324196@robh.at.kernel.org>
 <20210714091435.322d68b1@coco.lan>
 <20210714174225.GA8988@workstation>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210727_011128_374547_2C25AC3D 
X-CRM114-Status: GOOD (  19.57  )
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

Hi Mani,

Em Wed, 14 Jul 2021 23:12:25 +0530
Manivannan Sadhasivam <mani@kernel.org> escreveu:

> I'm not sure about this. That fact that the PCIe device's PERST# signal
> wired to different GPIOs doesn't mean that those GPIOs belong to the PHY.
> Those GPIOs should be independent of the PCIe core controlled manually
> by the driver.
> 
> I think this issue is somewhat similar to the one we are dealing on the
> Qcom platforms [1] where each PCIe device uses a different GPIO and voltage
> config to operate. And those need to be active for the link training to
> succeed.
> 
> So perhaps we should aim for a common solution? The GPIO and voltage
> layout should be described in DT for each port exposed by the SoC/board.
> 
> Thanks,
> Mani
> 
> [1] https://lkml.org/lkml/2021/6/21/1524

After re-visiting this issue, I'm starting to think that this should
be mapped as something similar to:

	pcie@xxxx {
...
		slot {
			slot#1 {
				// clock, power supply, reset pins, etc
			}
			slot#2 {
				// clock, power supply, reset pins, etc
			}
...
		}
	};

E. g. placing each specific PCIe device requirement inside the pcie
or phy, as it should be up to the driver to initialize each PCIe 
child-specific requirements when the hardware is ready for that.

---

A longer explanation why this should be initialized during PHY
power on sequence:

On my tests with Kirin 970, there are some steps to be done before
enabling the clocks and sending PERST# signals, plus some extra
steps to run after PERST# is sent to all devices.

While playing with PHY split, I noticed that Linux and/or the SoC
is very sensitive to an specific probing order. If such order is
not followed, an ARM SError happens and the Kernel panics
with something similar to:

  [    1.837458] SError Interrupt on CPU0, code 0xbf000002 -- SError
  [    1.837462] CPU: 0 PID: 74 Comm: kworker/0:1 Not tainted 5.8.0+ #205
  [    1.837463] Hardware name: HiKey970 (DT)
  [    1.837465] Workqueue: events deferred_probe_work_func
  [    1.837467] pstate: 20000005 (nzCv daif -PAN -UAO BTYPE=--)
  [    1.837468] pc : _raw_spin_unlock_irqrestore+0x18/0x50
  [    1.837469] lr : regmap_unlock_spinlock+0x14/0x20
...
  [    1.837507] Kernel panic - not syncing: Asynchronous SError Interrupt


One example is with regards to the clocks required for the PCIe
to work:

	clocks = <&crg_ctrl HI3670_CLK_GATE_PCIEPHY_REF>,
		 <&crg_ctrl HI3670_CLK_GATE_PCIEAUX>,
		 <&crg_ctrl HI3670_PCLK_GATE_PCIE_PHY>,
		 <&crg_ctrl HI3670_PCLK_GATE_PCIE_SYS>,
		 <&crg_ctrl HI3670_ACLK_GATE_PCIE>;

If them aren't initialized at the expected order, the Kernel
hangs. The same applies to the slot-specific clocks.

So, basically, the driver needs to initialize them on this
sequence:

	1. PHY ref clock;
	2. APB sys and phy clock;
	3. aclk and aux_clk;
	<some settings at the PHY hardware>
	4. slot-specific clocks.

failing to follow a valid power-on sequence crashes the Kernel.


Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

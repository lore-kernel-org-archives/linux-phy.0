Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A244BCDE00A
	for <linux-phy@archiver.kernel.org>; Fri, 14 Nov 2025 06:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otwsp1IT1ixPbnlomvC16QP3oATkLJwrKYT3TxZ4f/E=; b=BoVXhj9pe0rJSZ
	4fEUpLgmKTJm5z70e4GVECq8FkgSZpcZo0fBA3dUoZgui6xXlM6iTtLGye2thQriDN0as75I8W5t+
	R0uznBYjgd6f2pye9k20yG1RdraESjRpxggC0uwnPXlmJemBOIKRc3SF8Vmfab6xU6a7lhSRh1ubt
	TcBBJ7qVN7zHtWJsTbOEVUxqOL3KDljDwdO0yoC9auRiy0jInhygn6PyFymXZ8kCoPtKKh2rjQTDN
	5I6xswEdOl9/Gw54VYYkmONwtOK9UCYsEuO+a2/vLrBtoFzJqtCxbZxbppf/HXReQu1b++Vnl31qA
	tuIR/sk3knemivskiS+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJmvq-0000000BdJM-14jm;
	Fri, 14 Nov 2025 06:05:14 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJmvo-0000000BdIh-0zlG;
	Fri, 14 Nov 2025 06:05:13 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 084388A3183;
	Thu, 13 Nov 2025 22:05:06 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id E36AA16002A7; Thu, 13 Nov 2025 22:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1763100305;
	bh=FLPhWREcGas7h61JNtnMUud1rXfGhd1AOpj3u+wNcjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Er6siCs663+JDJeYDjYQqeIxP4BezsNSAdtqW3SXX+XS+mYUu0M2tFcgoJt0rYJDc
	 XJag0ix53jzhR/ca26+GsG/BAPOMmZVAitu576jDVQ8zQhgq6FJVlvTBQ5TqUQaA8F
	 YbwEgKZBOI0p7eBXFFYNbgx2iyiaDwqpvJ6oLcx0=
Date: Thu, 13 Nov 2025 22:05:05 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Alex Elder <elder@riscstar.com>
Cc: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
	mani@kernel.org, ziyao@disroot.org, aurelien@aurel32.net,
	mayank.rana@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
	shradha.t@samsung.com, inochiama@gmail.com, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	p.zabel@pengutronix.de, christian.bruel@foss.st.com,
	thippeswamy.havalige@amd.com, krishna.chundru@oss.qualcomm.com,
	guodong@riscstar.com, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Message-ID: <20251114060505.GA25077@sventech.com>
References: <20251113214540.2623070-1-elder@riscstar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_220512_451905_CAA495CC 
X-CRM114-Status: GOOD (  16.63  )
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

On Thu, Nov 13, 2025, Alex Elder <elder@riscstar.com> wrote:
> This series introduces a PHY driver and a PCIe driver to support PCIe
> on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
> Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
> PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
> one PCIe lane, and the other two ports each have two lanes.  All PCIe
> ports operate at 5 GT/second.
> 
> The PCIe PHYs must be configured using a value that can only be
> determined using the combo PHY, operating in PCIe mode.  To allow
> that PHY to be used for USB, the needed calibration step is performed
> by the PHY driver automatically at probe time.  Once this step is done,
> the PHY can be used for either PCIe or USB.
> 
> The driver supports 256 MSIs, and initially does not support PCI INTx
> interrupts.  The hardware does not support MSI-X.
> 
> Version 6 of this series addresses a few comments from Christophe
> Jaillet, and improves a workaround that disables ASPM L1.  The two
> people who had reported errors on earlier versions of this code have
> confirmed their NVMe devices now work when configured with the default
> RISC-V kernel configuration.

I've tested this latest patchset on my Orange Pi RV2 board. This
patchset now works with the Intel 600p NVME SSD I had previously had
troublw with. Thanks!

Tested-by: Johannes Erdfelt <johannes@erdfelt.com>

JE


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

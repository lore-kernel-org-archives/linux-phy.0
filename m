Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DB69C54EE9
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oQK+beof1d/az1iPdqG2boE67lOv+ew9JrFonfR9pA=; b=z8Q64B3RKI3FoO
	O8+H9AAltANKIQnDQFJwrpPQQSpvP3asidqI1ar3KSFWP9E2rxHfzx7GuW1BTa5931kslm1CXjLLa
	m/MYuK2YhSd/8NixlLXPGjADweq5KiPQiutxi1GAD9AqmZ8v3+/5R5uNcAJEyEQJU4NeNbHbwpjau
	mrJfp6O1NWp4w/+osK5NlV2GRcKSpdsDLHKmDnKtQB+OuMjecxVJydidwoMMBmdxMzDoW9MIiscLc
	U8VTqsqxXbylKcRRgVs+05Sa28s0OXUSdtFgSOl7JjUCu/QZDbrMeDw9fviS/ldv1MudNLPNNWvkh
	gt22LCqy963lNhS74V4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ6bv-00Az6X-Hr; Fri, 16 Sep 2022 08:22:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ6bE-00AyVK-Ly; Fri, 16 Sep 2022 08:21:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 642CE62906;
	Fri, 16 Sep 2022 08:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E61FC433D6;
	Fri, 16 Sep 2022 08:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663316482;
	bh=dbtg1VkYcSH98eH1LXp4FuBWlKs7YoXiI6XVpWr2rB0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XOUxzKdEU7rgW5SA8OJPqpfk5OrodzUAUZnhGWz2y1KMZ7sCOWyb4z0hS+v/s7srn
	 LMsOIbz2q/H7B8DPlHJXuN4xr90c4MyJvlUiOb8vsece1wHk4u/ugO6KEr0VkMAdJD
	 /4g82w9BJSUyFZVnGqzWg9OWihMCOq8OAGEo2Tg9FSSLPEM69RQdQoYfpB9v6RZHIO
	 SES1uxqcIh/oFb86GFEmccsFOVZQ0NlPRmA0lWkxha7JYjSSrb4Qg0wngTM6DVaDqk
	 J9BDcZ+ww2+qC9qJRJsDHJlcLf6ZYgLBMH2IdBDqgiM4G2jGUiShURs8MMG6d5GhRD
	 xcgOLFO82asvg==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	l.stach@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>,
	vkoul@kernel.org,
	p.zabel@pengutronix.de,
	bhelgaas@google.com,
	marex@denx.de,
	alexander.stein@ew.tq-group.com,
	richard.leitner@linux.dev,
	shawnguo@kernel.org,
	robh@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-imx@nxp.com,
	kernel@pengutronix.de
Subject: Re: (subset) [PATCH v7 0/7] Add the iMX8MP PCIe support
Date: Fri, 16 Sep 2022 10:21:14 +0200
Message-Id: <166331646343.2896318.11776848065564134926.b4-ty@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_012124_817586_06BF862E 
X-CRM114-Status: GOOD (  12.39  )
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

On Fri, 2 Sep 2022 16:57:59 +0800, Richard Zhu wrote:
> Based on the 6.0-rc1 of the pci/next branch.
> This series adds the i.MX8MP PCIe support and tested on i.MX8MP
> EVK board when one PCIe NVME device is used.
> 
> - i.MX8MP PCIe has reversed initial PERST bit value refer to i.MX8MQ/i.MX8MM.
>   Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.
> 
> [...]

Applied to pci/dwc, thanks!

[7/7] PCI: imx6: Add i.MX8MP PCIe support
      https://git.kernel.org/lpieralisi/pci/c/81f66385ea1e

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

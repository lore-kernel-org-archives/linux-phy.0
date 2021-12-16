Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E29C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 10:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv+NyNMo63dZY0Uaa4GhsKvMfU5Xd+BITwjj8hCfBa0=; b=LctbrO5gb2uiPg
	v81NYU74SvVmTOtDiMp2cAUMUaqYcSb08JFI+tR2Faeqlw2NjWOjMHhKreLE9oyvTc6J/O8DCY/VL
	e6/B6XyWbDuon0/3q3hAuzaC46AqX8020eWuaQEyxnGD/oBDpi9purO6m/TwY2ynqiTnAILQQ7+Uo
	5JpVflKkUPZVt+Q8lnCpOd2hh6mWOLg/OHRE1BG+ofIZAtFLpeFltE+J7Op8qk/lSU7WYoqiTr2oV
	X/Se7wKXG/Mq/U9m5PoolDgDvyZMARHyshFfKolImC+vMldvPxDiu9GHOuDXNc+L7a29WEG04j7fS
	ML+GNIDxDFyM+vsMta3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxo5e-004s78-LE; Thu, 16 Dec 2021 10:34:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxo5S-004s3r-Cb; Thu, 16 Dec 2021 10:34:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16C8A1474;
 Thu, 16 Dec 2021 02:34:06 -0800 (PST)
Received: from e123427-lin.arm.com (unknown [10.57.36.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 450473F774;
 Thu, 16 Dec 2021 02:34:02 -0800 (PST)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: vkoul@kernel.org, tharvey@gateworks.com, robh@kernel.org,
 l.stach@pengutronix.de, galak@kernel.crashing.org, shawnguo@kernel.org,
 Richard Zhu <hongxing.zhu@nxp.com>, bhelgaas@google.com,
 marcel.ziswiler@toradex.com, kishon@ti.com
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-phy@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v7 0/8] Add the imx8m pcie phy driver and imx8mm
 pcie support
Date: Thu, 16 Dec 2021 10:33:51 +0000
Message-Id: <163965080404.20006.5241609551643501749.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_023410_518547_81F11F4B 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
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

On Thu, 2 Dec 2021 16:02:30 +0800, Richard Zhu wrote:
> Refer to the discussion [1] when try to enable i.MX8MM PCIe support,
> one standalone PCIe PHY driver should be seperated from i.MX PCIe
> driver when enable i.MX8MM PCIe support.
> 
> This patch-set adds the standalone PCIe PHY driver suport[1-5], and i.MX8MM
> PCIe support[6-8] to have whole view to review this patch-set.
> 
> [...]

Applied to pci/dwc, thanks!

[3/8] dt-bindings: imx6q-pcie: Add PHY phandles and name properties
      https://git.kernel.org/lpieralisi/pci/c/3e15f623bb
[8/8] PCI: imx: Add the imx8mm pcie support
      https://git.kernel.org/lpieralisi/pci/c/d5a8dec49b

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

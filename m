Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9675FC83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WS04V7/9XyFqSry5sI/hg/vgBQpC+6oyulcWM/jExEU=; b=aFU9sV+Dp9UC2z
	o6v2j/ttvL//U7XROi+fT7NQJcnXqesu9Y/MHHyoWsr81dZoDR+v152YQd+lRfxM3BzKxctmuPCv1
	DcfJ6Zg3wh44rdYGeGBdvJ7iNZaZC2IIsIq0/XfjILjL6/1jUxAZOwkouKKquR2fWTAWQlTGCeaDi
	YG4OBEmzKvzyQhbjkHe8BCDiNLAmkLGhLFE2XjbiYqcf2Ck9H42vfF7rOVYeYqzj3WyFR8hXZ45uc
	BzXqM8xeS4wdIgflqdUKirgFLxu5sXuufspcbRfpFCegG9WAIZbE8b1ED576uTAefTlWaBN2WXNDs
	IjSx9K8FMj9ZS8YypIhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lf-00000008Cql-0KfA;
	Thu, 24 Jul 2025 18:34:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBW-00000007vBm-3cdI
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 429435C6870;
	Thu, 24 Jul 2025 15:48:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEEE8C4CEED;
	Thu, 24 Jul 2025 15:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372121;
	bh=E9cWd+56yehgJKY/GSciEMexZ/xXlWXUW6cJwWeuDCM=;
	h=From:To:Cc:Subject:Date:From;
	b=b6nXUH6cY7SAQnJ2IPceEHNJ0PNktPOb81WmQL3iu2xCje9pPrnUK8vVxZmnSRtXu
	 6wDyqIp9+Mx+Sv/5YYIpdBdBmlxabyVRxHpf6LClPfHtqgiS/+KrDWMMTLiMiF12Gv
	 BIKGHxEvXr4DSFNDm86ncNZ/hiCUwCf14Ud/Aa1+LrKhDcuC+1Xag++KQXqCcxiFWP
	 rRptjkgV9gJsiy104d7kuTfJk3HNas6tT0muTHeHUnGgAVBkItzGWflDUWeR6J/w5C
	 AdYIIX4kqwKwQvckA42VsqVSFqVYp8Cqrk8LHBE8YrXinVCGvH9Ho7C+xfKMNgLETr
	 qZirLkkHV4bOw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBQ-000000004Aq-3Rkt;
	Thu, 24 Jul 2025 17:48:37 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 00/11] phy: drop unused module aliases
Date: Thu, 24 Jul 2025 17:48:12 +0200
Message-ID: <20250724154823.15998-1-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084842_960475_3BA997EB 
X-CRM114-Status: UNSURE (   5.66  )
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

When fixing up some device leaks in the TI drivers I noticed that the
commits introducing the leaks had also converted the drivers to only
support OF probe.

This series drops the unused platform module alias from the PHY drivers
that never have supported or no longer supports anything but OF probing.

Johan


Johan Hovold (11):
  phy: broadcom: brcm-sata: drop unused module alias
  phy: broadcom: brcm-usb: drop unused module alias
  phy: cadence: Sierra: drop unused module alias
  phy: hisilicon: hi6220-usb: drop unused module alias
  phy: qualcomm: ipq806x-usb: drop unused module alias
  phy: samsung: exynos5-usbdrd: drop unused module alias
  phy: samsung: usb2: drop unused module alias
  phy: ti: omap-usb2: drop unused module alias
  phy: ti: ti-pipe3: drop unused module alias
  phy: ti: dm816x-usb: drop unused module alias
  phy: ti: omap-control: drop unused module alias

 drivers/phy/broadcom/phy-brcm-sata.c        | 1 -
 drivers/phy/broadcom/phy-brcm-usb.c         | 1 -
 drivers/phy/cadence/phy-cadence-sierra.c    | 1 -
 drivers/phy/hisilicon/phy-hi6220-usb.c      | 1 -
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 1 -
 drivers/phy/samsung/phy-exynos5-usbdrd.c    | 1 -
 drivers/phy/samsung/phy-samsung-usb2.c      | 1 -
 drivers/phy/ti/phy-dm816x-usb.c             | 1 -
 drivers/phy/ti/phy-omap-control.c           | 1 -
 drivers/phy/ti/phy-omap-usb2.c              | 1 -
 drivers/phy/ti/phy-ti-pipe3.c               | 1 -
 11 files changed, 11 deletions(-)

-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

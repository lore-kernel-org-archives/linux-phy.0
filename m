Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03D4CC47077
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jan 2024 14:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=khsbJ00JPE5PKn3ymZrlSfBeVX9ERA2kze10EI9Pnpc=; b=e55MTqrGgjwOlL
	UX9LC9qzU6CQ4uxnubz5Euu5SY1+ZTte6M8mCfTWrNE+B70MSXP/6Rq569Kj1wwx9IwQhS82lvEkq
	7PRNG5wRnMg29GuNbbDaaM2dNlq7Tz8t1kv1bw6E1vv+RIrCUv25nq9vUz8Q+TQSiG1iqhautjE2D
	vrKzYgEFcMozYFOpMbFFQalTpF0rY2uzeEL6ZoOAzaa+1ny9PQk9yu3zYrybxGaR05f5nbw0Hl1Pm
	MA+pJlTnlPXDZW6aty8BbMm97qHcdJNJZOc5on+Q+EgGuIXlBeLtRXgXCAldhbBqRhhhya0Adh53f
	LMheUYAgpWWm0P41Lbyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvoe-000G60-1q;
	Thu, 11 Jan 2024 14:13:52 +0000
Received: from mta-65-226.siemens.flowmailer.net ([185.136.65.226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvob-000G5K-0V
	for linux-phy@lists.infradead.org;
	Thu, 11 Jan 2024 14:13:51 +0000
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 202401111413413003138c90d27313a4
        for <linux-phy@lists.infradead.org>;
        Thu, 11 Jan 2024 15:13:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=d8P5SF5niklck9uG6u8e0iLUYDzwhhYqU5LhoJl31Ws=;
 b=iGT8QY7rW2ewIQSYYXQwZwhs3xejTEGZKgyOHU0CF2n0zQth5OiZS9aRsuVfNsV9wzViKh
 ewJ+DYgDzwBgowFFoLnCeJ34qkh2YAkQtlbi3k4DkBNCe0GhxQ/Ukb+8voumQC5AbJ5j7j+V
 BlAc7SvPkzvRwFXp9pRVJBTWvVBmg=;
From: Diogo Ivo <diogo.ivo@siemens.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	linux-phy@lists.infradead.org,
	tjoseph@cadence.com,
	linux-pci@vger.kernel.org,
	ylal@codeaurora.org,
	gregkh@linuxfoundation.org,
	regressions@lists.linux.dev
Cc: diogo.ivo@siemens.com,
	jan.kiszka@siemens.com
Subject: [REGRESSION] Keystone PCI driver probing and SerDes PLL timeout
Date: Thu, 11 Jan 2024 14:13:30 +0000
Message-ID: <20240111141331.3715265-1-diogo.ivo@siemens.com>
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_061349_940882_355061B7 
X-CRM114-Status: UNSURE (   9.75  )
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

Hello,

When testing the IOT2050 Advanced M.2 platform with Linux CIP 6.1
we came across a breakage in the probing of the Keystone PCI driver
(drivers/phy/ti/pci-keystone.c). This probing was working correctly
in the previous version we were using, v5.10.

In order to debug this we changed over to mainline Linux and bissecting
lead us to find that commit e611f8cd8717 is the culprit, and with it applied
we get the following messages:

[   10.954597] phy-am654 910000.serdes: Failed to enable PLL
[   10.960153] phy phy-910000.serdes.3: phy poweron failed --> -110
[   10.967485] keystone-pcie 5500000.pcie: failed to enable phy
[   10.973560] keystone-pcie: probe of 5500000.pcie failed with error -110

This timeout is occuring in serdes_am654_enable_pll(), called from the 
phy_ops .power_on() hook.

Due to the nature of the error messages and the contents of the commit we
believe that this is due to an unidentified race condition in the probing of
the Keystone PCI driver when enabling the PHY PLLs, since changes in the
workqueue the deferred probing runs on should not affect if probing works
or not. To further support the existence of a race condition, commit
86bfbb7ce4f6 (a scheduler commit) fixes probing, most likely unintentionally
meaning that the problem may arise in the future again.

One possible explanation is that there are pre-requisites for enabling the PLL
that are not being met when e611f8cd8717 is applied; to see if this is the case
help from people more familiar with the hardware details would be useful.

As official support specifically for the IOT2050 Advanced M.2 platform was
introduced in Linux v6.3 (so in the middle of the commits mentioned above)
all of our testing was done with the latest mainline DeviceTree with [1]
applied on top.

This is being reported as a regression even though technically things are
working with the current state of mainline since we believe the current fix
to be an unintended by-product of other work.

#regzbot introduced: e611f8cd8717

[1]: https://lore.kernel.org/all/cover.1699087938.git.jan.kiszka@siemens.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

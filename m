Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF584C3DA6D
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 08:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DrSvyG+lqVyBIBIucn088MkkIROcpQ0oP01R0wkgExg=; b=Muj/tbaCtYAA1g
	krsq9e1nvo5bGJQspnXB0AXIyAHLfMVSwXgZZzx4G0CVSdmpiVoMiabHk4sWIOIhlbfO5lR02GXaY
	kjNFw2sCLAVc/jeR2U0XSXdz1Xm7DoDXWUuZAowFfy61UwfTyB1eyRSwu3x3ZBTin20GX1APhP8EW
	clN3Q21mCr0X93pCCE3OqtD7EVsiLRuZ3Ing3M+WQi9QmUNo0CUT8siiVntbiFbpv/omoiyeR48OT
	JX9Y76nnuhfatsQsh0ZE6WA8uMXVO2jq4/83bbAEjOmxh6+M7WgYiUI8V4R5KOZrh8FrgiZ1UZYfi
	gjSlAXIutBAOEuXC28YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5U-00000003LzF-2RS1;
	Fri, 23 May 2025 08:49:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5S-00000003Lxk-31zy
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EF95649DEA;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6059C4CEF1;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990145;
	bh=UJS0OYy0ef9mbviZ+sxQd1YSz71cZ9/kFDU1csLnVqw=;
	h=From:To:Cc:Subject:Date:From;
	b=FWz9trbdLY+aUWbXnbtR2nDar9Ve6QYzpBLkOsAJ4wPx5+YrwmQbXIxruFdElikfd
	 5PKBIrvhBJN/WeUzurJOB2pINI9R/sMK8/hUjHoeAkLg+alILUNoNNCTgpHiSipMjI
	 5XWhsjzlw7EgxzOLASaS01j2p5Mt13JhgAqKItHcXHcazyv6sI9w5NYzW3CDThn4v8
	 9zOAUbURK4d7+AEwBXLC82+SeSuQAvhNlU+rOLpIgzgGnT3qq7RD1z+Jsb/L9YjKHv
	 eq5kth1xThAmELH4+ioMfs9ufDQYDusaE2Psi0XIzohqW+9GQnWC+5wVyJ4tXPuscZ
	 asy0ZvV5cwE1Q==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5O-000000002sa-3Xze;
	Fri, 23 May 2025 10:49:03 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/7] phy: phy-snps-eusb2: fixes and cleanups
Date: Fri, 23 May 2025 10:48:32 +0200
Message-ID: <20250523084839.11015-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_014906_781203_5CDC1F9B 
X-CRM114-Status: UNSURE (   7.80  )
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

Here are a couple of fixes and some related cleanups to the recently
reworked and renamed phy-snps-eusb2 driver.

The clock and repeater imbalance fixes are not marked for stable as the
first issue was introduced in the recent rework which is queued for
6.16-rc1.

The repeater imbalance has been there for a few years and
could be backported even if this is now complicated by the
rework/rename. Since it only affects a resource leak in an error path I
decided to not mark this one for stable for now.

Ideally, these could go in along with the reworked driver for rc1.

Johan


Johan Hovold (7):
  phy: phy-snps-eusb2: fix clock imbalance on phy_exit()
  phy: phy-snps-eusb2: fix repeater imbalance on phy_init() failure
  phy: phy-snps-eusb2: rename phy_init() clock error label
  phy: phy-snps-eusb2: clean up error messages
  phy: phy-snps-eusb2: fix optional phy lookup parameter
  phy: phy-snps-eusb2: drop unnecessary loop index declarations
  phy: phy-snps-eusb2: clean up id table sentinel

 drivers/phy/phy-snps-eusb2.c | 39 +++++++++++++++++++-----------------
 1 file changed, 21 insertions(+), 18 deletions(-)

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94E7D2A545
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 21:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnylrFKnPOK5CrqCDZPHvoHQdRRFwp8qb+z60qYKWCM=; b=PfQ2eoU52oH3pJ
	1WQnEKLS6DQfoBNrUnYuJtCDitspQmBpVoHKJNN5UQxXUTpyYItvlkyYZmWMdq/UdWNaV/JCs1Tdu
	mBTS8Hxbe9f/wYubKdjRGUIvhqvEUxeInwy2lWVKNhHh2HL2KT4hRVrdn74yFDYGuvjhKnorXpLx5
	PcVVBDKxYK2X/n0drGFutf/5azIW9gIzl232ebMrhozWxA1QbXX42Z6j8YvE9ndRUZeoFbKkMcmSS
	W10tMgtxAbgP/B55yhhDt94XjbK5gPIzKyxqHwtLhAu7tfZPAkYKDtzJqVtqYF54WPBYpWq/vRAIA
	h5tCLS9Ae6s3r/fJJg1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0j-00000008gY0-1C1X;
	Thu, 04 Dec 2025 21:37:13 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0f-00000008gVe-18wp
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 21:37:12 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 636D26007C0E;
	Thu,  4 Dec 2025 21:27:30 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id BGUSO3u_jN07; Thu,  4 Dec 2025 21:27:28 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id E1D0D6007C1A;
	Thu,  4 Dec 2025 21:27:25 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1764883646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i2xJ/PFmcIyGi2LSxLsJ2Rs5bQ0h4NEOjIa44Tuehhw=;
	b=caq+uw9wNmaYLrBjvqhTf7/lFDUe9ka5PtWeIlUrVyBZRPzqO1ZGVGONmW90vhOTs05ai9
	VWJuGEz3e4P9WBw2C/r0pTi4Lo2QwyNWcNdB6qEKzULsY1KkKM4dHNJYOr/pKIfScQHMdc
	VLV/E1eHRACHg55Nm0phIWWkLVuaImKr+C2VF93JY+zc6CdASHVWBfCuUlxFJ1FdBjaThW
	tnXujGa92x5Gy5d+OAi7rnjJQ92cqhRqgMcAH0KScW+HVeGWKLzTUb8GBkCLjyFNQq6kCL
	DRv7Q+r63gQmfa2ONzwhWYOlXRw6h7Xbs60yopU7nHPlUccmR2hL4LrTLSfKuQ==
Received: from [192.168.1.151] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id B968436013A;
	Thu,  4 Dec 2025 21:27:25 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Thu, 04 Dec 2025 21:27:17 +0000
Subject: [PATCH 1/5] usb: host: tegra: Remove redundant
 pm_runtime_mark_last_busy() call
MIME-Version: 1.0
Message-Id: <20251204-diogo-tegra_phy-v1-1-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764883644; l=780;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=7Bhceul0Djmy/FTqFXQ8yH/nOs3uT2cr4R1ec8CPF5U=;
 b=MSFpWziUnBc/OPf/yhVMRKv6Ok/jVF90lG2n6xG4zPodbFDYWpxS6sqYuBVXaUgIVZHBYEOuu
 zcCx9l7YBjkBXgP/LpUKBo3mcNEBo57EXVFGdhxhMwKm+/I/7MbwEx8
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_133709_761278_0797410A 
X-CRM114-Status: UNSURE (   8.12  )
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

As pm_runtime_put_autosuspend() called at the end of tegra_xhci_id_work()
already calls pm_runtime_mark_last_busy() remove the prior redundant call.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
 drivers/usb/host/xhci-tegra.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
index 5255b1002893..9c69fccdc6e8 100644
--- a/drivers/usb/host/xhci-tegra.c
+++ b/drivers/usb/host/xhci-tegra.c
@@ -1399,8 +1399,6 @@ static void tegra_xhci_id_work(struct work_struct *work)
 		}
 
 		tegra_xhci_set_port_power(tegra, true, true);
-		pm_runtime_mark_last_busy(tegra->dev);
-
 	} else {
 		if (tegra->otg_usb3_port >= 0)
 			tegra_xhci_set_port_power(tegra, false, false);

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF6FDC83F17
	for <linux-phy@archiver.kernel.org>; Mon, 28 Jul 2025 16:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rtlC9N6TnfXJImBJ1UHjG/wiBNIzrc5sE1JcXAhOcuE=; b=ixF0gkaw3ng6bu
	fDbpkm3Z2XN1xr21IcTM6AJUJYv6iLiXBpEInW/aBldlw5kFhC50BE5gBV7GWge939xG6LdELO9x4
	iyXOYJ9b+Euu5NHPzuV/1EyVIJ6Xiaq8xn047eMLkoDoOKEyuyLYp4lNNNbHOj2CPdOjPvPOvzTJs
	xG2mOV6nBuwqQ/x3SeFBB+pBOjVXTsNihD0trVGb2vwmwlWRupZVrZKhnOFE4dN/A2PelZA+8hqWF
	LW6q/tXZ4rjbVl5vKoUzDKh/tdq8ts4Qlr0c5jOseypaldR/yx8OVsoBI1Aat/5l88PL/S0W8CXkT
	Pdfzq/0uIZpY7mecI55Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugQq2-0000000Ezne-1xv0;
	Mon, 28 Jul 2025 16:36:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugPwx-0000000Eqvn-2eeR
	for linux-phy@lists.infradead.org;
	Mon, 28 Jul 2025 15:39:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0779760007;
	Mon, 28 Jul 2025 15:39:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DCAC4CEEF;
	Mon, 28 Jul 2025 15:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753717178;
	bh=fJ8DxG6HN180rt/dWpJklk55wcUF3JkaqyPkKVekboM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=DnUOaRJECUrLLJ8i05tXMW18w+oA78dbQL9mE64Dib6L5cbgnsa38ebgnM0v15/Tn
	 VkcwMqHBvPnuk3RbXWHYIYWEbZAdaMqkCwEVgVCJpFdgKWvV/36RTay9Qa9gPcdZN1
	 PWgyhn3L57gjGqB+lNhbKdGyJYPR1FWuf50Wl4bbFx3dXqlWbr9YFrQiCzL0E2a+86
	 O7SU8cTHM+lKee4mplphkPbDSXe5nT8H3jQgvghE6sucEQu2yUmYuAZAOMZ+KEVymA
	 dT2a7sUvCV0GiL2VVJ0lEFFRuz3hg06leXWwzCjmEAmxGJtC0GFgm5UdUEKBT93rJG
	 i4cCUhpewVguw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D2C83F26;
	Mon, 28 Jul 2025 15:39:38 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Subject: [PATCH 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Date: Mon, 28 Jul 2025 17:39:28 +0200
Message-Id: <20250728-tja1145-support-v1-0-ebd8494d545c@liebherr.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALCZh2gC/x3MTQqAIBBA4avErBPU/qCrRAtxppoWKmoRhHdPW
 n6L915IFJkSzM0LkW5O7F2Fahuwh3E7CcZq0FIPctKjyKdRqh9EukLwMQscrUXbo0bTQa1CpI2
 f/7ispXz1AfMuYQAAAA==
X-Change-ID: 20250726-tja1145-support-d6ccdc4d2da3
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753717177; l=857;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=fJ8DxG6HN180rt/dWpJklk55wcUF3JkaqyPkKVekboM=;
 b=lUufaxZwR/txAdEzEBxXstUfbsDo1v0MhaMCRNENmFqiHgP4C4kqWYcjIFxM6//LzhIrfYy1a
 dbSDpBq/+0jAhwiJo/rbku+lz+BlwLiZQ5bm+vEvXssgvAZOw+6tPL9
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
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
Reply-To: dimitri.fedrau@liebherr.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
PHY up/down by switching to normal/standby mode using SPI commands.

Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
---
Dimitri Fedrau (2):
      dt-bindings: phy: add support for NXPs TJA1145 CAN transceiver
      phy: add basic support for NXPs TJA1145 CAN transceiver

 .../devicetree/bindings/phy/nxp,tja1145-can.yaml   |  79 +++++++++
 drivers/phy/Kconfig                                |  10 ++
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-nxp-tja1145.c                      | 185 +++++++++++++++++++++
 4 files changed, 275 insertions(+)
---
base-commit: 4a3556b81b99f0c8c0358f7cc6801a62b4538fe2
change-id: 20250726-tja1145-support-d6ccdc4d2da3

Best regards,
-- 
Dimitri Fedrau <dimitri.fedrau@liebherr.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

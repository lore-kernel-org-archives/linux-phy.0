Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8B4DF3C24A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 13:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM4nLD7lHbexd5t8b8SYMocmIuk+fkUReAKHiH/2gsk=; b=xUBAVN2j+6McbM
	9kAyfTaXIQQ7HENH2UZQ8Xa4uUvIs9T65IFQX7IcrfehWAiYL89mxV8byRYZGT795cOc5ijP1pwmn
	j7BPl/jIsld8uJr84VYt/3ABo2TPoZ7ZqJZyYFYe899ItxNiFL4utpyO9pDQ9v7VyBneGZVsZXLac
	B3bINr8hcdm6oX7xvPD/eW8l6t0pKenXylu26cf4kIHsMFZ19UBXAUqT2UAXBedkwuvyKhfniZFXa
	5C6KsxfdpPePax37lPvixMDcqht+VTDBS7qFlVvpBZe9eXwRNjy9mxG9AMswuOsAFETwKoKJrUtxZ
	ynhQn64KM6VkyzFCSNwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzaVz-00000007NNw-1Q9P;
	Mon, 09 Mar 2026 13:19:19 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzaVv-00000007NG8-3u8l;
	Mon, 09 Mar 2026 13:19:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 635EE286C09;
	Mon,  9 Mar 2026 14:19:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1773062352; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Hun8qRSx+c81aOcVRS1X8gTZpBZdlow4lndHrL4U0TU=;
	b=HF2R0jnbjMCjt6F6GTSzu2+49yojrI0X6Zrj5TWhd7IOb7azquDI4KpmVCYjJidlE+fbs9
	PlpRcqiMdtQUVp+kMkK4BvYZosqeBkjNAoMLP5VELJQmxVapM0t89pvSYy06I1l/FamsnC
	clUM+0seM+v5TkHAJA9fV9V4ADPusFG8FbabslvGnds/kwas6t4Hw2rS3y52LplGYgGY/Q
	qubTLRLk9VbsgyxT0iBC2XmcYjp55wKJfGaUVMAAgJPS5YgwFIS8HAKOQKlQku+bRkqoxu
	HtKitXkSJm6j+DE2yywDkY6lp/5+cnOjKM6Ci8PzkjR6v48sX7uKIHcESV/t7Q==
From: Caleb James DeLisle <cjd@cjdns.fr>
To: linux-mips@vger.kernel.org
Cc: naseefkm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cjd@cjdns.fr,
	tsbogend@alpha.franken.de,
	ryder.lee@mediatek.com,
	jianjun.wang@mediatek.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	p.zabel@pengutronix.de,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	nbd@nbd.name,
	ansuelsmth@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v2 7/8] PCI: Skip bridge window reads when window is not supported
Date: Mon,  9 Mar 2026 13:18:17 +0000
Message-Id: <20260309131818.74467-8-cjd@cjdns.fr>
In-Reply-To: <20260309131818.74467-1-cjd@cjdns.fr>
References: <20260309131818.74467-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_061916_157996_D861557F 
X-CRM114-Status: UNSURE (   8.59  )
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

pci_read_bridge_io() and pci_read_bridge_mmio_pref() read bridge window
registers unconditionally. If the registers are hardwired to zero
(not implemented), both base and limit will be 0. Since (0 <= 0) is
true, a bogus window [mem 0x00000000-0x000fffff] or [io 0x0000-0x0fff]
gets created.

pci_read_bridge_windows() already detects unsupported windows by
testing register writability and sets io_window/pref_window flags
accordingly. Check these flags at the start of pci_read_bridge_io()
and pci_read_bridge_mmio_pref() to skip reading registers when the
window is not supported.

Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
Link: https://lore.kernel.org/all/20260113210259.GA715789@bhelgaas/
Signed-off-by: Ahmed Naseef <naseefkm@gmail.com>
Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
---
 drivers/pci/probe.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index bccc7a4bdd79..4eacb741b4ec 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -395,6 +395,9 @@ static void pci_read_bridge_io(struct pci_dev *dev, struct resource *res,
 	unsigned long io_mask, io_granularity, base, limit;
 	struct pci_bus_region region;
 
+	if (!dev->io_window)
+		return;
+
 	io_mask = PCI_IO_RANGE_MASK;
 	io_granularity = 0x1000;
 	if (dev->io_window_1k) {
@@ -465,6 +468,9 @@ static void pci_read_bridge_mmio_pref(struct pci_dev *dev, struct resource *res,
 	pci_bus_addr_t base, limit;
 	struct pci_bus_region region;
 
+	if (!dev->pref_window)
+		return;
+
 	pci_read_config_word(dev, PCI_PREF_MEMORY_BASE, &mem_base_lo);
 	pci_read_config_word(dev, PCI_PREF_MEMORY_LIMIT, &mem_limit_lo);
 	base64 = (mem_base_lo & PCI_PREF_RANGE_MASK) << 16;
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

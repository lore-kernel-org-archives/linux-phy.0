Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D11BAC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4nKbVLyxsmyVNHEwEgrfnSri4HHmDmcZfe0HrxJICZs=; b=mfnoSDnybkAphS
	DvrocYaJ0lpXQclROdERYE39TvltyoQPOaZapqZKmHYiCLew9Sj/byBsZ+/Y1QMAadD8/VnLjKEEi
	hj7AF9gVJCK41aJ21sCt9+lXHjNnrRQr9AZcCnsTGv6e7CPSNVf7rD2Wt/3wdqgxnQ9Lf1AzgVhCY
	4/NGws5cTnOxut/ierXTyJ0+GeDWRwl15dajqgiUsRCV351iXL9I+TM3ntex5gvsItX7fsNJJ+SYc
	+iSPWg5KM5YadEN0m2RfUTaoHl0ZYxp7FD+x5mMEkiieCv6/4ccAXV20WVtRJLu/t9tF7ilrlJKP8
	AwCJ34wN9v2JI1Bj1+gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5r4-000OqW-8A; Wed, 18 Jan 2023 10:39:42 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5r1-000OoA-5O
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:39:40 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by andre.telenet-ops.be with bizsmtp
	id AAfX2900N2zf9gW01AfXTq; Wed, 18 Jan 2023 11:39:35 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5qo-005aKI-7W;
	Wed, 18 Jan 2023 11:39:31 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5qt-001Jt1-HX;
	Wed, 18 Jan 2023 11:39:31 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] phy: Add support for NXP TJR1443 CAN Transceiver
Date: Wed, 18 Jan 2023 11:39:22 +0100
Message-Id: <cover.1674037830.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_023939_363569_726C348B 
X-CRM114-Status: GOOD (  16.87  )
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

	Hi all,

The NXP TJR1443 High-speed CAN transceiver with Sleep mode is a
pin-compatible alternative for the TI TCAN1043.  Hence this patch series
adds support for it to the existing TI TCAN1043 DT bindings and to the
generic CAN Transceiver PHY driver.

This has been tested on the Renesas White-Hawk development board.

Thanks for your comments!

Geert Uytterhoeven (2):
  dt-bindings: phy: ti,tcan104x-can: Document NXP TJR1443
  phy: phy-can-transceiver: Add support for NXP TJR1443

 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
 drivers/phy/phy-can-transceiver.c                          | 4 ++++
 2 files changed, 5 insertions(+)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

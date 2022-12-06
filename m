Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA79CC352A1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Dec 2022 09:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t9dwmseFKJGwKO3Esfi5Yko0zCYSq5zUIVzhziPiuo0=; b=efEXkKpaklN1/k
	KW9WGq6Ivmvu4ji6l4HCM+o/8xYha8VLGNpZrIGQG6uppQNlQTwDt1OVCr4i3bQw4pYilWxFsBVqD
	/sLiyhIMEcIXtOnsFBnnBihXhqa1my3McLPNbauWA2oX4gf+OGgFjs1TCKCDAtijOkC/6juVhfUIt
	tXpRGzuQYRpSe3tnqOK+6DseR/DydgIT/y9VVjiYbUCWdiH/YFHDALUAqoOFbSfSS7iVDxNFeP8KD
	LDYSg+tUdjKNc6zGhcbvnrJv4TTN8bHHUr+qm71QPBM3rjiuf9ec2fHvsXETTm1XyZsz4pea2mJ7j
	YG+sclK3hwhuHrFImW1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Tzl-005amj-Ca; Tue, 06 Dec 2022 09:12:09 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Tzj-005ahW-AQ
	for linux-phy@lists.infradead.org; Tue, 06 Dec 2022 09:12:08 +0000
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 7C56421C0A;
	Tue,  6 Dec 2022 09:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1670317921; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bCMv579Ca0GHZ1g7GOyNT6VadJX8V1KuwwN3rCrRRj8=;
	b=eK0eKXFn8WwfW2GDP3Ko6D/b6hvgqWepjXeIzEe2dcp4mxS7JhBRmUkzmlJsM39ogQSn/a
	6vDm9veJFCEaLSgYnvyPSl66GHVDEcgkqLxFQE6CmO2mp80dgITdq37V+golvJtilkbjHU
	dJ1yprZPvOkqcanoR2b1OHijo0UuPEE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1670317921;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bCMv579Ca0GHZ1g7GOyNT6VadJX8V1KuwwN3rCrRRj8=;
	b=vzO1op7rDBR6nPRdKevMIkr+izKSYjfjFziVldyVEevfS6Sif3Y837Lv/94u/uQJ2V8r/y
	V3RBaEI6odhJJ9BA==
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id 4F01C13326;
	Tue,  6 Dec 2022 09:12:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap1.suse-dmz.suse.de with ESMTPSA
	id 33lvEWEHj2M0BwAAGKfGzw
	(envelope-from <jdelvare@suse.de>); Tue, 06 Dec 2022 09:12:01 +0000
Date: Tue, 6 Dec 2022 10:12:00 +0100
From: Jean Delvare <jdelvare@suse.de>
To: linux-phy@lists.infradead.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH] phy: ti: Fix dependencies on COMPILE_TEST
Message-ID: <20221206101200.3c26fb54@endymion.delvare>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_011207_551356_2EFB1043 
X-CRM114-Status: GOOD (  10.34  )
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

MUX_MMIO was recently changed to depend on OF. As a result, it can no
longer be selected when OF is not selected. Attempting to do so
triggers a warning:

kismet: WARNING: unmet direct dependencies detected for MUX_MMIO when selected by PHY_AM654_SERDES

Adjust the dependencies of PHY_DM816X_USB and PHY_AM654_SERDES
accordingly.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Jean Delvare <jdelvare@suse.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
---
Note: the MUX_MMIO change isn't upstream yet, but you can find it in
linux-next:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ea327624ae52936b2c0eccffd9369983ca2d08e3

 drivers/phy/ti/Kconfig |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-6.0.orig/drivers/phy/ti/Kconfig
+++ linux-6.0/drivers/phy/ti/Kconfig
@@ -23,7 +23,7 @@ config PHY_DM816X_USB
 
 config PHY_AM654_SERDES
 	tristate "TI AM654 SERDES support"
-	depends on OF && ARCH_K3 || COMPILE_TEST
+	depends on OF && (ARCH_K3 || COMPILE_TEST)
 	depends on COMMON_CLK
 	select GENERIC_PHY
 	select MULTIPLEXER
@@ -35,7 +35,7 @@ config PHY_AM654_SERDES
 
 config PHY_J721E_WIZ
 	tristate "TI J721E WIZ (SERDES Wrapper) support"
-	depends on OF && ARCH_K3 || COMPILE_TEST
+	depends on OF && (ARCH_K3 || COMPILE_TEST)
 	depends on HAS_IOMEM && OF_ADDRESS
 	depends on COMMON_CLK
 	select GENERIC_PHY


-- 
Jean Delvare
SUSE L3 Support

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

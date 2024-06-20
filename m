Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A59C27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 15:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a+LmuMhCDm90Tlrz0AhnFI+A2fL8FcwD0649nKXMK2U=; b=pOF3VJku82foKi
	uYLKF2EzXmrUZoXttKEYwC35ZNuzlCBrHLJPTacb9y9vn6OE+QAHg7uCBbqRxk9cABqSviIOrJWgs
	zl7izwWUGmMFnc1CtpbPxX6LiifmOPCZHAX8mBCh6foxG6VGpHMy6J+38r3yxe7Enl5RRmjNRQvxW
	O0mE5V7VloBppcPq35M/66Kp3jBIVUXW3R/phimZkOMNT/blGzogG3HbvCUezguw/tv4uQ+iR3atu
	cpM9UPnz+YBonOB4xjfS4wQINjAEbNayBLIkrBZn+fEPQIXw1wBgakmITZtXfDrRiJ/4DlpuL7Hn2
	vHpNeuQhSzFzVi714bdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKJbP-00000005c8u-0Dhi;
	Thu, 20 Jun 2024 15:21:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKJbL-00000005c7w-31zm
	for linux-phy@lists.infradead.org;
	Thu, 20 Jun 2024 15:21:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 439136181E;
	Thu, 20 Jun 2024 15:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53495C2BD10;
	Thu, 20 Jun 2024 15:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718896884;
	bh=8/TFVK6BbkaFtuuCTEO1cNehJdCtbENbX/plMk2ZWeY=;
	h=From:Date:Subject:To:Cc:From;
	b=n1/bWsLXWbvCjFPzJ3L6nFPy/fcfokpv2EoyJ5a9ffixVZ5V5GCAzoJfYNY0z0Q6X
	 OZtgsZy8IseX5K7xqNJ9QzTjYvEGtXUtB96hMBGZiKnRTHgc1/mHOgk0KBv4P8bG8K
	 KISGpyhrh8ys40BxwxSt0XUR0aZwg0yfCOXgDjeKjtUpJiKkX7v6cW5qSe9soZr4U7
	 ccPHjWbGMvChUJ/Xl8xQHFKQH2hVix1XRu1UKLC/2SUXR1v+/r0utmeCeHlKnz2RH9
	 RZW4nKKsRniIoxn5LMZzUOZ61oPD+ZzYUFtQ6r3bcbRuUwFUqMOx0R8aeP28HMy3qD
	 mKQNfrrwtck8A==
From: Nathan Chancellor <nathan@kernel.org>
Date: Thu, 20 Jun 2024 08:21:15 -0700
Subject: [PATCH] phy: freescale: imx8qm-hsio: Include bitfield.h for
 FIELD_PREP
MIME-Version: 1.0
Message-Id: <20240620-phy-fsl-imx8qm-hsio-add-bitfield-include-v1-1-5c7c09ed87e6@kernel.org>
X-B4-Tracking: v=1; b=H4sIAOpIdGYC/x2NQQqDMBBFryKzdiAGKbVXKS4SZ9IMxNQmKhbx7
 h0Kb/MW7/8TKhfhCo/mhMK7VHlnla5tYIouvxiF1MEa25ubNbjEL4aaUObj/pkxaoCOCL2sQTg
 RSp7SRozODz0PvvMK6NxSOMjxv3qO1/UDMkIpiXoAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
 Richard Zhu <hongxing.zhu@nxp.com>, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, patches@lists.linux.dev, 
 Nathan Chancellor <nathan@kernel.org>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1366; i=nathan@kernel.org;
 h=from:subject:message-id; bh=8/TFVK6BbkaFtuuCTEO1cNehJdCtbENbX/plMk2ZWeY=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDGklHp+vxvTuUeGex1hv+rdJrmmbxKkcPcnCo3zMe7U/V
 nZ90TrfUcrCIMbFICumyFL9WPW4oeGcs4w3Tk2CmcPKBDKEgYtTAC5yl5HhmtWXZ6cj8xyuPvlx
 eWHz5D0WR8OsbV4f+sbMs1Gl1ypwG8P/sqdL1jxjyUo8dCzEJyA6Zd3hr+17WQ+8FqtQX/1lU48
 GHwA=
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_082127_863572_B13C628A 
X-CRM114-Status: UNSURE (   6.85  )
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

In various configurations/architectures, bitfield.h may not be
transitively included, which results in a compiler error because
FIELD_PREP is an unexpanded macro:

  drivers/phy/freescale/phy-fsl-imx8qm-hsio.c:459:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    459 |         val = FIELD_PREP(HSIO_MODE_MASK, val);
        |               ^
  1 error generated.

Include bitfield.h explicitly to fix the build.

Fixes: 82c56b6dd24f ("phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY driver support")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/phy/freescale/phy-fsl-imx8qm-hsio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
index dcf9c45ff5d6..5dca93cd325c 100644
--- a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
+++ b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
@@ -3,6 +3,7 @@
  * Copyright 2024 NXP
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/io.h>

---
base-commit: 82c56b6dd24fcdf811f2b47b72e5585c8a79b685
change-id: 20240620-phy-fsl-imx8qm-hsio-add-bitfield-include-ab94e9b1bb1b

Best regards,
-- 
Nathan Chancellor <nathan@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

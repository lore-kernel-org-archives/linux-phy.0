Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D86ECC6B01
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 17:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POWW0qkLtQIEuPuB4LnSG6mVBLMFo3W22+veiup585A=; b=rmMjCmcBHKkEch
	rEvRD8EVmis07uOTm27jdw6G7Wx2jbcxDEGMDyP/vFn+Et9Ea1ctmRRB8C3pInlY2zY307ZSYgM1k
	aUyrAnFZGBv4Vxs6XBCvidBvfRnjw6KcNinzbJPwPtKqLtdFa4XIW45TP+eRNVIlRT0o/XM9ZITuv
	ueYTxOzuRzMrFnYb4Qt42ElyU8HiGBORjcV4doCX3/ZmdqMomGY0OaXnJNu3rR8wDZpZ/EDKNYaLV
	/URCWEimYHQmkAztqBvc6fBj6hB7Ln3sShjCbPeFFMk+h5p6BVlROmdeoQwc8FXRkydhrhGRv/SYM
	uKvsOWbwWNAz6A0z1/4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGJz8-0000000B89Q-0j40;
	Mon, 12 Oct 2026 17:38:50 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGJz2-0000000B87A-08ZQ
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 17:38:49 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E2F8D82BA8;
	Mon, 12 Oct 2026 19:38:33 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hBFwzB_zyDAN; Mon, 12 Oct 2026 19:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1791826713; bh=gQxRqRAcTBBtn+Pdf8s6VE+j9Sm8M1pZxvO62yYs9oE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TTCj5AUC7fRtR9PmHHfCRIK0SNV/1By2/LFFgNsprNDhAHlL/icMCKML2WrTK7G5z
	 sobDxLcXIvi+CVH+lze4BXwD+JRpuYuT4T9o5/9IYTHpkMCyQqC05qDkLRjZMAR7wG
	 hn091RHeXBBHWxYfmARUk2NmuCejuaOMrA9UpJmBcvoiStpQF1FqmtrZV1hU2d58Ma
	 nRGHHp6hFkZy8J6rronzHA0w6D4uXK3MyGkG+Zs6rDzBzL8yWJD3AgabSxl4FGaleE
	 BoygoXIZ66bwRl5Sr8OGYSPkj+NRCIQ2818XDlYCRyw9vTg+zB3FU/qrWRa3h0LbrT
	 TALMxEz/NW1rQ==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v8 6/6] phy: realtek: Make configs available for MACH_REALTEK_RTL
Date: Mon, 12 Oct 2026 22:37:39 +0500
Message-ID: <20261012173739.36377-7-adilov@disroot.org>
In-Reply-To: <20261012173739.36377-1-adilov@disroot.org>
References: <20261012173739.36377-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_103847_561766_DC0453CA 
X-CRM114-Status: UNSURE (   8.41  )
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

Add the MACH_REALTEK_RTL to the if statement to make the config
options available for Realtek RTL SoCs as well.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..76f9215d8b94 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,7 +3,7 @@
 # Phy drivers for Realtek platforms
 #
 
-if ARCH_REALTEK || COMPILE_TEST
+if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
 
 config PHY_RTK_RTD_USB2PHY
 	tristate "Realtek RTD USB2 PHY Transceiver Driver"
@@ -29,4 +29,4 @@ config PHY_RTK_RTD_USB3PHY
 	  DWC3 USB IP. This driver will do the PHY initialization
 	  of the parameters.
 
-endif # ARCH_REALTEK || COMPILE_TEST
+endif # ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

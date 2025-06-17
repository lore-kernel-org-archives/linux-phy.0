Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818C2C71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1NaAJLORYNx6YzC8PwzR4kb1kue347IcMloNLnFakIU=; b=Vqkzye3ZFbQoKg
	jXcCp5Lcx8+a1B47cjQZhKONgWSR6s0XO6yPs3cvcbq7imf2PaMujQIq3b/BfIdvhLDhMeiE888Al
	eqp/BqseZm57NfgnQJ9ocQVDlGqVm91K/ygq2djzxN7J2a9P/92JJDnplGfV7PPI1bisCGM+JHHq6
	EwZ0yEsHkN2fADy0dx6gT7KxeYHV0mxUKhMzui+z0lUJjHhhDbF83xdjat3Dylbhks61hjru6f2oW
	lUtRrF9yHQXytJJrAu1B9t9/dmR+keDUvSp4Tb5G06RC/2QFOkPdP1Pt36o3lAwQ1id2fKSOERVl9
	i7TS4lnYELLqNzwGXs4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRIn-00000006XCI-0TcN;
	Tue, 17 Jun 2025 08:04:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRIk-00000006XAv-3OC0
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:04:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BA8585C4B12;
	Tue, 17 Jun 2025 08:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03605C4CEE3;
	Tue, 17 Jun 2025 08:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750147454;
	bh=dy3g+x9GMVU2qM2eIBhOZSDgOoVRonZrdei7KKM23c8=;
	h=From:To:Cc:Subject:Date:From;
	b=hzNQLXT42HWnVyKirQstzWcC2u/4MdikTSkt47AyMB7HiAoJud62cKQZUAdY8clCR
	 6Sp9QGMPxcXt9BRwwictMfUBPyIDGEkT37gSV6CEVtz5aQePTBIwDf8VFg2vkOmyp0
	 RRk8wzR0CI5Jx/AREaTfJVsAqg4/xzAlBXTtA0XaqzwoFl089br8Q4HhUt5rNYcdvR
	 NDYZgp5BBKenLUmZIf8oWsFCVWpYWIzaEZyMPFyAW8GvTF0Dbs3Jv4pWSPsgcZAuY6
	 3FazJyOSR/uyfR8/B9Gc9F4PWwi2zmUqHf0vWG0WrNS3Ea1ZyvB9nlX70QaSsgXOAl
	 pLuvstd8RhIMg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uRRIh-000000002uN-2Aya;
	Tue, 17 Jun 2025 10:04:11 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom: m31-eusb2: drop registration printk
Date: Tue, 17 Jun 2025 10:04:01 +0200
Message-ID: <20250617080401.11147-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_010414_883958_A717199F 
X-CRM114-Status: UNSURE (   7.56  )
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

Drivers should generally be quiet on successful probe so drop the
registration printk from the recently added M31 EUSB2 driver.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 9f02b8a78f6e..9b987911fcdb 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -288,8 +288,6 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 				     "failed to get repeater\n");
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered M31 USB phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

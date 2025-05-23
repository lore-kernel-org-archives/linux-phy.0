Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07CFCC54F32
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Im/RAe/xzmb6s5mNffhQ8dtYyYv5H8Do9UgptLDCJto=; b=MdCVbbi1P4eScp
	kYfS5CZIOc/qLljy8wS0uDWp5EZrisy5AW40VT/QEV5BQOn7Lr2pADVvbwv+/qyMr/3fNFl+y4KXA
	EMiDSxD3Fd/jiDcuZXqrUsMN5MBXCCx+ZNxf2V5nJLcDL7QPOuVtoNBm6AfbZLaGmrM9XR2Cm4TEp
	vbs0WX9C9DBx27NaHRcZqDalhyAw0vuVAWCdoYLMx1y3cChMW89gQ8F9chMY2Q79FmlVftT8+ZuCo
	ccrPa1AvEDSfRRbdVWVphw5NT60CmqzMWooWzD578Kedr6a9VMQKQtU/N9swQJLXP879HuwRDP/cm
	S/4o8jq9VqBIGEGfFIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIP5d-00000003Unj-3FNf;
	Fri, 23 May 2025 09:53:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5Z-00000003M1P-3yTu
	for linux-phy@bombadil.infradead.org;
	Fri, 23 May 2025 08:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=C8hPupIK4vYIh6gcPUxD5mYbR2STrcgK57LKQ8O0thE=; b=CN9kDZq/1zOzk/mRmqVB3jCsUj
	jkkxfp29znHDCYskBleIURhkEH9IKXl9bFzozNAPCM17pALY+isXW3mXL7+wlKH9UMjhbSe39plF2
	K5Ehbid4bYBZw7OwS/hGB+CVHnhwdSWIlmpHAjM5xhhdkP57iPb3Qh9irp9o3yCcpahf6Vp+jijgs
	a8u2D4OEREV1hSpx2QiLdO+aywupr0RfGVoOQEpQ+ZLyiu4mkSYINuEwVJdvUi0GvdqO4dYimOEWR
	2/ZxaenAionwnqByu4VjsiuTuak/Mzo/1gyXIGph7eX2rTHAXqu5sU5MXDizr+cnWXCiO2pB8wieC
	0XcSHxkw==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uIO5W-00000001EMG-106g
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5EBEF4A9D5;
	Fri, 23 May 2025 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE4E9C4CEF3;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990145;
	bh=scH8O9z4KQYnM947y3bsoS+So4c5Zz9w9UFXE+CEqv4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZrdznUlbhfdkx9n83B2ICMemJH2MC9UE5EjfmcOMl47j6tlN998RCm4iytyyiqHNf
	 qbVQps2x91FEF5Eb6rwUJ5yiogcA1LSIS1TrRFVJyRPXa0ztyZmKkeog3Vbewk79ey
	 P2FaDonQwhFwKxS/B40zlpfhOA3EjpSI5oAfiyfZCkNzwW3iOqxNr8u5YBtaK+643Z
	 GrmLfc/12EBq4jhNeKNK9UZBBKbB+147y50Fo2GoMrdPV9HjrhF2dju0X3SIPyEBCE
	 MTZFY2TrJ5whZv2rCJDx33W1WvZQsz6K9WP3HtXDG4gC3UwFYpWVCwSDFlmDlXz0to
	 1yhXZf5IJShIw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5P-000000002si-3wOg;
	Fri, 23 May 2025 10:49:03 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 4/7] phy: phy-snps-eusb2: clean up error messages
Date: Fri, 23 May 2025 10:48:36 +0200
Message-ID: <20250523084839.11015-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_094910_702374_22E3EC95 
X-CRM114-Status: UNSURE (   9.61  )
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

Clean up the error messages by using a consistent format with a colon
followed by a space and an errno (or unsupported frequency).

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index c8f14f8fb9ac..232c5e8a554f 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -256,7 +256,7 @@ static int exynos_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
 	}
 
 	if (!config) {
-		dev_err(&phy->phy->dev, "unsupported ref_clk_freq:%lu\n", ref_clk_freq);
+		dev_err(&phy->phy->dev, "unsupported ref_clk_freq: %lu\n", ref_clk_freq);
 		return -EINVAL;
 	}
 
@@ -293,7 +293,7 @@ static int qcom_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
 	}
 
 	if (!config) {
-		dev_err(&phy->phy->dev, "unsupported ref_clk_freq:%lu\n", ref_clk_freq);
+		dev_err(&phy->phy->dev, "unsupported ref_clk_freq: %lu\n", ref_clk_freq);
 		return -EINVAL;
 	}
 
@@ -461,19 +461,19 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 
 	ret = phy_init(phy->repeater);
 	if (ret) {
-		dev_err(&p->dev, "repeater init failed. %d\n", ret);
+		dev_err(&p->dev, "repeater init failed: %d\n", ret);
 		goto disable_vreg;
 	}
 
 	ret = clk_bulk_prepare_enable(phy->data->num_clks, phy->clks);
 	if (ret) {
-		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
+		dev_err(&p->dev, "failed to enable ref clock: %d\n", ret);
 		goto exit_repeater;
 	}
 
 	ret = reset_control_assert(phy->phy_reset);
 	if (ret) {
-		dev_err(&p->dev, "failed to assert phy_reset, %d\n", ret);
+		dev_err(&p->dev, "failed to assert phy_reset: %d\n", ret);
 		goto disable_clks;
 	}
 
@@ -481,7 +481,7 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 
 	ret = reset_control_deassert(phy->phy_reset);
 	if (ret) {
-		dev_err(&p->dev, "failed to de-assert phy_reset, %d\n", ret);
+		dev_err(&p->dev, "failed to de-assert phy_reset: %d\n", ret);
 		goto disable_clks;
 	}
 
@@ -588,7 +588,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 
 	generic_phy = devm_phy_create(dev, NULL, &snps_eusb2_hsphy_ops);
 	if (IS_ERR(generic_phy)) {
-		dev_err(dev, "failed to create phy %d\n", ret);
+		dev_err(dev, "failed to create phy: %d\n", ret);
 		return PTR_ERR(generic_phy);
 	}
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

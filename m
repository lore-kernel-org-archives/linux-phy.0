Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D00C54EDA
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3C51hEwARvW1H7ggZ11LHHxoc3tbsuzhM980aV08dI=; b=PcAdFVaOYJ/rz7
	MPOhCAcazF9UjkUVxS6Evs4rDYDjwC9YzpQ054CPUlVM7GpFYuSaLYYcexuNmQEkt7abbT/0DEAU+
	Rm2M6jbd+Aegf9clYHtBQ1dv8vP2L0zUOiNr77SRLExr1UsxIDGKxmiRDG39/sc+g2QJbgYZwy5oe
	hn7x1oEHVzSB1+ZIddqI/JGgkOohvyY3H1+7gV14v4MCNalqV5CyjCHURqW9Af0lX11HJCWMrqI7M
	QBik7KYLV3IW6mVaSpVKCJniU0OaOzEz6SzEd3MJ9Z73X49faLOkOYPoHXz7xmsNlqWaxNkHJ6vwB
	z+3xwZ8uFV4WNyLLbCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIP5e-00000003Uo8-0AZl;
	Fri, 23 May 2025 09:53:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5Z-00000003M1Q-3yJz
	for linux-phy@bombadil.infradead.org;
	Fri, 23 May 2025 08:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Mx1Yf2gkacmMpb8ifLf4/xjbVVGNuT2wSicWUDjSdWc=; b=LLj6KwuUerQpMWWVq6BlnPmXo9
	fsbk3QMuZ+0rNSWXitCkbtQGfsgpM4pa6WhZGPl/O7CT1123Jd2CAQbOY0BM4m8mCc8Mx6RqdlL6W
	tRyEdQfy4Exbq8JNLmi2ihvx/leQstTh0XBU+aVs8NFuPM7yzI9TxiuFWwSw4U7aU8nXApBiSZBba
	5ivlBmEVlFKVLd4ySW/ZDzquXG88L6GudMEW6BaE4WTTh8aWN68JuCKeP/SAqGqXrgEvbTttZdrrO
	iOQlbfyriAkb7UR0FtJhptjSqX3rsB9gUFbrZyOc+zrzF/aGu/ua0YIQfK9y5y+AuBqPPgHYBF6DX
	x22aSTIQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uIO5W-00000001EMH-2ctx
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 89F895C6F4C;
	Fri, 23 May 2025 08:46:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00623C4CEFC;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990146;
	bh=O49xnH+Zi4MGHO24pslMdx6btGMUWu06sVjFRwGHYJs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nWKuKRgq1knioksANTiW9BBMhLK/qH/lkCV8zXAwcq4XJckB7KM9kJvKVp+GIVgYG
	 b5wxgjx40P8ZUlVfIgl63OVxD7pVEbHsN204Yqy47EJf12DpyEVvIHK1R4Y1b+AwW/
	 V19N4kybih2yjCuq1jdkBXIkIBTg4XRTeBIcg2oC2FF0KBv9pxsIULL8D++blj66XI
	 JnFDKLyZf417lHFpshosvPC+YsTY9cHOJBWik+J4Yd2kYcUPm7cYsHYmpeugd0HFle
	 uJKQR/CmepXkuemHZIZ++od6ZZrqT9FwHwngGnxNid46YolcvAZmFKcbBMKWcto/FR
	 0ij+TKHXPHFVA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5Q-000000002sq-0VJj;
	Fri, 23 May 2025 10:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 6/7] phy: phy-snps-eusb2: drop unnecessary loop index declarations
Date: Fri, 23 May 2025 10:48:38 +0200
Message-ID: <20250523084839.11015-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_094910_911683_F8B99A14 
X-CRM114-Status: GOOD (  11.87  )
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

There is already a loop index variable declared at function scope so
drop the unnecessary overloaded loop declarations.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index 328e67ebfe03..c67712bd8bba 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -552,7 +552,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (!phy->clks)
 		return -ENOMEM;
 
-	for (int i = 0; i < phy->data->num_clks; ++i)
+	for (i = 0; i < phy->data->num_clks; ++i)
 		phy->clks[i].id = phy->data->clk_names[i];
 
 	ret = devm_clk_bulk_get(dev, phy->data->num_clks, phy->clks);
@@ -561,7 +561,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 				     "failed to get phy clock(s)\n");
 
 	phy->ref_clk = NULL;
-	for (int i = 0; i < phy->data->num_clks; ++i) {
+	for (i = 0; i < phy->data->num_clks; ++i) {
 		if (!strcmp(phy->clks[i].id, "ref")) {
 			phy->ref_clk = phy->clks[i].clk;
 			break;
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

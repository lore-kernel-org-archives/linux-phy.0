Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531B8606A337
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 19:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kGzsZI2H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=AINF7SHT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=O8iPJYwLA70HBqnOblKtUinUGqNnhbAVh/F33EZ/xiY=; b=kGzsZI2H6t/Vq9h7J4F+faMlBE
	753ZJk1lEbKf2puIjMYq1wzmurCXQnpbv9CFXqRij60ZxYENb9yLHZDpav8iwxxPatfXYO2zJs+5r
	Jzy/ag98tydROvP+XgHYfMIIDqzwtvGr8RDfCIZlSkgYR17Ti0fXBreEUCgGCe/S+6WClITxkygwD
	bMi2U86E6Y1/vfh464m2f8ael95XdNFnuWDEYDfpBn8OJRK+RSgjufHbSXfS4vpMgVCystwUwWing
	fqi+DAU3C/U0yuLWnzn4w398YT1/fen56cvMLZsZZ9RwyZKcmQLZkHsF9BxoSeU8ZRI0+y+oOp/4d
	6B78GoeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKWZ-00000003ZQU-06TD;
	Tue, 03 Nov 2026 19:50:27 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKWV-00000003ZNg-22Aw
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 19:50:25 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4a20bdaf39cso50859145e9.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 11:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793735421; x=1794340221; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IUC8h/pS2sKKAgXqYzGDb5np/7+oqUMjSmtqPXIKCmE=;
        b=AINF7SHTXF2xQpXgc9vp0OWVe/ZehAQQH9LhGiFAJl2zwQc9CYzZWE2MKvEWnI0+MU
         HBbsYKUbOHEeTAWPFhKCGtqnuKvNS3oMH9JGXkLYGB+giN3AGnGife4aOwS/5n65ItwV
         Xnixw3fox0Q6fwzSA3y0enwbu80S4ayhkJObL39NxLveRurVjJado9kcFVeaph7jx9SQ
         93Yv3Td3xim/I9BNpACIYQ7Rr89tJpsHYnQeRitt3s0F6KQ26tuaELK4nCPK48b/83No
         XrseVQeu9O0WZdf9cimWqxtfeBH5uxzx6wDOjlDT5qHKbovqNZ2OpwGlN4soQjD9o9hH
         yFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793735421; x=1794340221;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=IUC8h/pS2sKKAgXqYzGDb5np/7+oqUMjSmtqPXIKCmE=;
        b=x0qnMIvySy0qoo1R5eMjKTKCgVfa9Rrz3tRIahPtUQDyd35SW2zHUM1Q/Ek9aLaPZL
         9L7V2AgwoMyzueYNQU1VYxnjwmo2kEGct4Fy+QobDCQZTVN5HG6tUj23ztSWjKP7gZnV
         B4/skYsmVCKH/brWxKRcVEqBsd+9Uc/AjRWuyJHJtWPACUSfxNB4+s726Nv3caIaJrav
         irbYiR/DDHTXTLwM7YFtZzTLHxXWV58Kclkc7axOlThMK//WILT4rxSuZb0JlD/Efzln
         qTXLPjdow0/g1L4g5kanu059mmLsUQE1AV5xYyeGoIRrWsw0rk85XF00HlNFOkC/biRw
         LIZw==
X-Forwarded-Encrypted: i=1; AKwUvBwcbjK4H2rxI7TxRUK6WCwqNyQ9jGXV/m0eY9YFp1hZ5/A1kQ5XgszbxLWUSHbU/Iw9FuZPpcGWJjw=@lists.infradead.org
X-Gm-Message-State: APuU4Z9YPH9RORiaEBbxV71zNsNFqDqvjl54f4jZsjKZvs3zzZb2WBGy
	rplWet8ZzSgU08KZP7JU5PyF9zG7Wud08UZ64fokzzC7YWgj3vK3xBl/
X-Gm-Gg: AYBFou0ANVyXpOaYe/avaN6AzwUi3ni/ntI7M46xBtiLb4EbNiViAc8NWjhUYvhKpbi
	tn+04MAfgfF29CshOH3zvzs4OZpILNPaHfVt1KiKNuMIRiOdArZNj1Wgz5PfKDYGBjXbyGpcux8
	2GezHRCY+0PB/adzIvNrNqEfrdnl7XXYn0M/i/OL98utexwloBLOPIUuZlebkgY2oKWOnco9AZy
	CqGsBxjsGqBy7+NnjgTI/5QjJW7Ybn9wlTNvhbySoVWNLd/utPDMGwbeBa/p4YFT9xdwgHgWzhR
	aLg2h+rlTXzAYFKT7UNYyUdhTk057fgPA94n8LZT0HRjpGw8Zl8YQxeFX1SBXZG6o9O3mnI9iqC
	cfhkyoe91dG26YkUd4grNQ05nGFj10kkH41+tHh0Q7N5NLqOehB6Pw5KCkLeQmzU2mHfqtt784U
	n6+b1NEUGI2kMRVv2PdralPDnFnhw1oKX7e0Ik8+PdhNppg4L14zbysZ47xujl0I6msj2lC0SOf
	NmSBgaAQyUKMN9bfatrFFB4pd+zKiGxgqjLPqvQdgk1spK8dr2tcOFLW/dggMo3jvhxVIAboiIU
	H9ZkcPIlTmRV1CL7wthQgYUqkXphnWy+TEmVGcQln6Lx/m8JgWVkaVAvXbx0oOHmNGOtyvF8Fyg
	OSyvDUtHjVjOcFen5kLnM/P3Sm/XmgBPxxw==
X-Received: by 2002:a05:600c:a107:b0:4af:e04f:cbaa with SMTP id 5b1f17b1804b1-4afe04fcd89mr143567615e9.29.1793735421412;
        Tue, 03 Nov 2026 11:50:21 -0800 (PST)
Received: from Ansuel-XPS24.localdomain (93-34-90-148.ip49.fastwebnet.it. [93.34.90.148])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-48fc9d6b0aasm417802f8f.2.2026.11.03.11.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:50:19 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/2] phy: airoha: add support for AN7583 PCIe PHY driver
Date: Tue,  3 Nov 2026 20:49:58 +0100
Message-ID: <20261103195007.9721-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_115023_571829_2D742B4B 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This small series introduce support for Airoha AN7583 Gen3 PCIe PHY.

It's not possible to reuse the EN7581 code as the register changed between
the 2 SoC and also the setup method changed (different calibration logic)

Putting the PHY in a dedicated directory is also needed for other series
current pending that will add USB PHY support.

Also a dedicated schema is added as the register names is entirely
different compared to EN7581.

Changes v5:
- Rebase on top of phy/next
- Add Review tag

Changes v4:
- Add REGMAP_MMIO to kconfig
- Better handle exit
- Add additional info on QPHY usage

Changes v3:
- Improve example for Documentation patch
- Deinit G3 PHY on QPHY error

Changes v2:
- Drop move patch (handled in different series)
- Rework to regmap implementation
- Rename files to more specific name
- Add .exit logic
- Drop QPHY in favor of external PHY handling
- Update schema with new requirement and improve example
  Link: https://lore.kernel.org/all/20260827122127.18874-1-ansuelsmth@gmail.com/

Christian Marangi (2):
  dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
  phy: airoha: add support for AN7583 Gen3 PCIe PHY driver

 .../phy/airoha,an7583-pcie-gen3-phy.yaml      |  65 ++
 MAINTAINERS                                   |   8 +
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   3 +-
 drivers/phy/airoha/Kconfig                    |  14 +
 drivers/phy/airoha/Makefile                   |   2 +
 drivers/phy/airoha/phy-an7583-pcie-regs.h     | 377 ++++++++
 drivers/phy/airoha/phy-an7583-pcie.c          | 823 ++++++++++++++++++
 8 files changed, 1292 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie.c

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

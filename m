Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DA7C5DF94
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 06:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/TfIowFlKQe6TPbEntiAhfWoHSSh0dQQ6d2eVU1QxRM=; b=sr0k3bJRfnN4t/
	0puOq3qv8VF1BwhJdWqfoxBnwDVmobVRQqsI6j77Vu82mUmfuO5ZBqFEkRooxNUq0abXWpentkvCS
	Jk6Cl0OapVjkoLff0C8GPuiHUU6eL3A69wCORJLCFAly/p0sA5EhmVl3CoppycqEN4mZzyl6zMGmQ
	rHj9h7gmoImatS4tK2SmfkruR0gn4Qb/OXIYINd5a5AhjQhh9vFtQHZ+eu7KDrTp14GGbORPAAZwB
	2FseVO7cN3ni7ZJfOgLcnCb7gHa+VPAtMPmBgImqbcYM/I7s9cnxjDgaf719tU8YWyCzEFP4lPLew
	nDsapQG2fpnV19IUDkSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wykzA-00000000F13-11Xc;
	Tue, 25 Aug 2026 06:50:16 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wykz7-00000000F05-1c3Y
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 06:50:14 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c1671ec8692so623614966b.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 23:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787640611; x=1788245411; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=K08wIoLpKqBSGnc7x1avgOkXlHWiSRY4zZXK6Rw84Yw=;
        b=UDkeCKP3aBgTeUV4fLi85yuyIfwG3LHh955hZtIEsEwrrbfVv2SepkyYVpi95Q9vAd
         Xykl7ye7C6Rdnut8jxCuKDnlq7G+g4MFqnRI3vZd13Qs6krGzx9S0AqouSDvNph2PV3K
         TB2nnnnP1rBHvfu+rExbRO8N46+VX07VjojNE+u//15DNNAA1KYMhbD/PMS2ngVk0dpl
         inkhpxu0eCeDUQ/4Ulsb+HhtgHqfmAz/NStsQWAKRNVyfdXdioXIerfL1x3Az+CIkHhp
         O6j+92OFUUBDueq/htkR/pjwRYtpk0aR4lNWNYvYUH8bnuf/QqKP1+bEP42qcVj5nESX
         sE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787640611; x=1788245411;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K08wIoLpKqBSGnc7x1avgOkXlHWiSRY4zZXK6Rw84Yw=;
        b=NuiESjyybfGc5ci0snL1YPGKFReeyfizB75Pg0QB2UYEOVEsv7HZr6zSm6+sH0tcrl
         9oMIOgpif8jy5lz5ySlBm2uAeQbmuA82beCwM16xBt5nba+5f5DvycMsz1ssFeffwSDT
         eicOfL1ZU5MVs2ySirrLS5fEHibglZvybYCqNuJBpIjR7WX75M0fnXmDXMcDTaM9M+4/
         cnicSnZbj6OV8yhjoqtjJ1fAU6to2VC8rC3dT17hSUlLD4v6ihetrd9+zADAWg1bKwoj
         HosVfbQtNSXhPJyt7g+wpNIW8O6utPO+tO26A1cyJOEqVPMW3p60DebSKWZIbofUs21T
         goXA==
X-Forwarded-Encrypted: i=1; AHgh+RofPSXUWM/TiIsjlfgg3RdwI9Sm/skkLvSJi7b8skb6pOYZZsdjPi9XZ0psaCelpXaI0M6rZg/LcWE=@lists.infradead.org
X-Gm-Message-State: AFuF++kAn0zEdtMwcRI/Q6bY8NasklGHNtSLy6Jd2U+ND0rmINKAgiGu
	SN9c70jFshmdaio5DwvPZ+U5HOz+gdPC9eg9kKHxpJR5+IueuKNVW2c+
X-Gm-Gg: AR+sD13RSCKh96V06oLG5Wo7X61Vk8LFCaFO1MHKjEo2YvzBkEtkTlaYQGvpzkPQY0T
	d43xL+d0UseQKTwo8EXuog8jhWkxAW1UbUtzrgkHtAlJmEFw4o13xCX5wlt9OHiwTrI7vgdnxVg
	kScT5fvlSIn+srvbQ5NRdqbsuL/NByHqnGytb3tzs02KPZIOSByCoNiTW27HV4JAEt0lKvDpjJs
	UZmnaDQWTzzZ73zL+EsuYH58DK8jl8PAZpzXd+KnabaYtxSxeU5hEoKc3YgPWWyv2M0w0gZAUxP
	u+MK+CEX+MCtH6Pqy/7eq2CyglR6PpO9WsqOysDbv52JS+qYnVY6l6/aOi8zsf3x22XhvIDO3gO
	FaGBq0H6wCUi8YGj7sxommZ/gvtX60koaxrNhhWdS1F8W2BtTQ1vSgZ1DBWgCzpxClgz0jys2x4
	eDgGiTcRHSZVT9LhkHld/AUf9ORMW5oUb1PbWtuFWpRhLGMgJ2CgL/3GjZ8gG9Ibjj76xYSLXCU
	NXLn7KZ9oIe42YWxyOz/fUg6hu/uMnvTDH27CKL6wEQTTBRBGzwMvBT9Q==
X-Received: by 2002:a17:906:eecd:b0:c20:f871:1018 with SMTP id a640c23a62f3a-c24920d5db2mr2716175666b.21.1787640611076;
        Mon, 24 Aug 2026 23:50:11 -0700 (PDT)
Received: from GOLDENAXE.office-radnicka.localarea.network (c82-214-103-66.loc.akton.net. [82.214.103.66])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249672becesm1658627666b.42.2026.08.24.23.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 23:50:10 -0700 (PDT)
From: Bruno Banelli <bbanelli@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Yixun Lan <dlan@kernel.org>,
	Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@riscstar.com>,
	linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Bruno Banelli <bbanelli@gmail.com>
Subject: [PATCH v2 0/2] phy: spacemit: fix and enable the K1 USB 2.0 PHY
Date: Tue, 25 Aug 2026 08:50:05 +0200
Message-ID: <20260825065007.69353-1-bbanelli@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_235013_460975_F7DD1B03 
X-CRM114-Status: GOOD (  10.23  )
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

v1 was a single patch adding "default ARCH_SPACEMIT" to
PHY_SPACEMIT_K1_USB2.  Automated review pointed out two pre-existing
Kconfig problems in the same entry, and that change makes them easier
to hit: enabling the symbol by default means configurations that would
previously have left it off will now build the driver.

So fix the dependencies first, then enable it by default.

Both were verified against the driver source: phy-k1-usb2.c calls
devm_platform_ioremap_resource() and devm_regmap_init_mmio(), while the
Kconfig entry has neither "depends on HAS_IOMEM" nor
"select REGMAP_MMIO".  PHY_SPACEMIT_K1_PCIE, directly above it in the
same file, already has the HAS_IOMEM dependency.

Tested on a Milk-V Jupiter (SpacemiT M1) running mainline 7.2: without
patch 2/2 a "make defconfig" kernel has no USB at all, because
dwc3-generic-plat cannot get its PHY.

v1: https://lore.kernel.org/linux-riscv/20260825052158.66367-1-bbanelli@gmail.com/

Changes in v2:
 - new patch 1/2 adding "depends on HAS_IOMEM" and "select REGMAP_MMIO",
   with a Fixes: tag
 - no change to the patch now numbered 2/2

Bruno Banelli (2):
  phy: spacemit: fix K1 USB 2.0 PHY Kconfig dependencies
  phy: spacemit: enable K1 USB 2.0 PHY by default on ARCH_SPACEMIT

 drivers/phy/spacemit/Kconfig | 3 +++
 1 file changed, 3 insertions(+)


base-commit: 66498c75b4f8017f62d720d9b59675bdf3abce91
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

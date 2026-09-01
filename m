Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD17AC624D4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u2tNHVSsMmxQuy8UZ4b4e29uVXHcUVO5uzxX/Syzbm4=; b=kKaoFOIarGqjXL
	Ohfx9rsbAhG38e3yaJjdrp85xA8X8joBbaGBihMxLGKxclaTB5jFpjrP1oTBpklla+n+8sJgpm9Ev
	A3ng0ut1bGKtqZG7Zj2XF+Z+6oljZFZv7J7/n1Vg7R6cLRBuu1FTdEzhoit9ovAIMzAX77f8Gt5U3
	ZU09Ztin1ht1uRkzEOJOKbpY5F0ECK95v6u3GaEEzcmwxAgA7f97J2QZEwif3j5hnN1S4WPfUJ+Kr
	SdN4FNpNY2l+c3RpqKX5BQ/q5VQbeKk2Xmr/V7Ga/s6XjpVyMJPRlw0LuBijSe91vptes7jy3/U+0
	ryT5kUbsr/MBan6J9Ldw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1O4P-0000000C9BX-1PcK;
	Tue, 01 Sep 2026 12:58:33 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1O4M-0000000C9A8-1bFG
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:58:32 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6a374bea882so700102a12.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788267508; x=1788872308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ld2dHDdDQiF6ur3QIWVOyuCBe04N1lf3nFHFqeQJu60=;
        b=ng7KKaWqT6/XV+FiKt91qszscZP7rzjhs9fJpFKCziWCEAMH1WAl4+e3rXES4L6A+I
         qo3Zy8Yx+C1uTgFZT1comzOSe8fqFmKzzIf7SLO2fyMpaihRi0ByYdaDQkuFRQiWVvij
         F84NjGGVIhDdRdzEh/RObWkg+L3h9yb2VZHPxuZ2CeRvVSL1pb3j+4Vl9k3CTauHNhHl
         jNgFWh/rAG5iIDiua1MHnZDYlGXnUwDUyqg/amBZd8dQLYf0PeJl0gjVJE/JUcbuaYwV
         IGLysUq3OyJkHxI8VfCfnsj7BGbsau4qpkuQ3l6bQ7QI0YgxdluU6FmUlv79awzLJde3
         8/GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788267508; x=1788872308;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Ld2dHDdDQiF6ur3QIWVOyuCBe04N1lf3nFHFqeQJu60=;
        b=bHKIjrpf6W+jJSscsbuxLb7z0wZl2rgQVyPQy+SVHONyffIHo1V6G7yzRQEKvtYk40
         RTzJM9x8p0BPLQuzpKXb3BY2tG8ElRgSWdk9A8M3lTJEFsPKNFIJ+ZCUBy4OI6eF1wkv
         9d8eThMpQnMQMRGed2ZpS3BJbOAe7raUUHY2dTt+pAHg7MASxKV11ZBPhqcH8+/1i0A0
         vjdy9UGKwJz+UslbgbDcZbq2Zcujv+fMEg8Yh/XA1qUsXwUGaXjQ26eRdkLqyQ9Hdybl
         CH2XJt6uB5brnTGOW55PacTsa7/Yf8Wj178IVUckv85NaRTv+RPtfB4XO6fTCh5hn+ya
         tIkQ==
X-Forwarded-Encrypted: i=1; AKwUvBxv3nQrnvGHKCFIWN7MsZNzE0yLHB3CD0UtJ/TeyrczKKPoGkbpiKbHSNuy3WbRZmjlVOnYGjjIapI=@lists.infradead.org
X-Gm-Message-State: AFuF++lnv485TWMhSZaE8yZAOb+k1wPcaDLu2yBe0xT5hC/Gvl25OErA
	5wklamNrjjY2uryoyKcU/miGpVFQUjyeT22ijfHWeLYt2lyhf5dQCEAf
X-Gm-Gg: AYBFou2kiGtlRcf4rkN1KM4GlzRTvVnzjqQC+GMdnWiqEuf+K0Q/I1xg3HCgGsoSKQ/
	FTWffVUINkYbwuAr5M6N4TpirkRiDSv95kFEkG67HKt6E5BShFmxR86Asf6XXlWb1uGIf8T/OvB
	W7T9oQRkajcjHkKpUKrTvjkY1McZy9kpPZNWGiaLvs1a5r0UnHAvFAgahLSwDDbXxSPwaV+Gf5w
	6HLbu5M6O3cCPApaONDl7OL1Zr0efbFo+Wgj6UUD8gwO/OJa7NrQZaR4yqvCNovXNFsHccrqKSg
	0Z/ydnf5iJcMBGB6WesnLOaIKQqSnTlFehyB406GZ0+l/QxxZZTj/Dml97DTxoMutkgQqsKcSoh
	FK8Jj8euCrgxSM50C9Vz/OXylm1Smw3H+swf/YzEqFGnOSRtiVxskupPXsBdzZFXC0WQ0SA2CU/
	5kXPN9Uj+W7kWTbiMSWXDxV8bSIhXX8lnGcUjLxdza0K9sIBEVKsF/w2LjaHdnHvJktZ5n7Nvub
	UgUnD8KYnBbDyGkarAqoW6hZ63Xv5L4iihhRS/DTQXvhq6Zti1XVAIeLNFHX7s=
X-Received: by 2002:a05:6402:24a5:b0:6a3:95bd:143c with SMTP id 4fb4d7f45d1cf-6a663a26d14mr6639703a12.5.1788267507997;
        Tue, 01 Sep 2026 05:58:27 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-6a66d15d10asm773959a12.28.2026.09.01.05.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:58:27 -0700 (PDT)
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
Subject: [PATCH v3 0/2] phy: airoha: add support for AN7583 PCIe PHY driver
Date: Tue,  1 Sep 2026 14:58:16 +0200
Message-ID: <20260901125819.20378-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_055830_440736_4A6EAFA0 
X-CRM114-Status: GOOD (  13.36  )
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

This small series introduce support for Airoha AN7583 Gen3 PCIe PHY.

It's not possible to reuse the EN7581 code as the register changed between
the 2 SoC and also the setup method changed (different calibration logic)

Putting the PHY in a dedicated directory is also needed for other series
current pending that will add USB PHY support.

Also a dedicated schema is added as the register names is entirely
different compared to EN7581.

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
 drivers/phy/airoha/Kconfig                    |  13 +
 drivers/phy/airoha/Makefile                   |   2 +
 drivers/phy/airoha/phy-an7583-pcie-regs.h     | 377 ++++++++
 drivers/phy/airoha/phy-an7583-pcie.c          | 826 ++++++++++++++++++
 8 files changed, 1294 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-an7583-pcie.c

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

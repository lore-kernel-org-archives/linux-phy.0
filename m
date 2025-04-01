Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E891AC36010
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 21:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=asMWzt9qiki3AdKJoxXUV9zbO80XMyP7poOgKPPo8RE=; b=sfvhqG0b+A7tE0
	w0eGQIY21f+77lL88SGKAzIR6HNmNYZzIsBVMMCjjRTLnGmXLdcwaA2+UZy2UimU0x9Cfr1UpxSLL
	K95iOaMCCHt1Dgn8n7UcnNhq0p5EqtShm0Ei/0nbl0HGVEEz1B/b1tFA1kIdtwAR1jIQwBzZNX1JV
	3HGHN5YiFaTzFrbeBLLAmwL8/l794UHHCciUas/QeyBoM99UAVTwUZmWJz2ht16n2pjJJPrYwZulI
	a7M6Far4ofHSCGgjSXvOOLqzIHFd4Bep5wj7mR6jp40mHSYzfC8Hegx6B6oivAsK4FFD1rAsiM9/V
	vV6bZNM9TdeApyxumllA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tziuO-00000004QAz-1N3n;
	Tue, 01 Apr 2025 21:12:32 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tziph-00000004P2T-0u2l
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 21:07:42 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2295d78b433so25638245ad.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Apr 2025 14:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743541660; x=1744146460; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lVQoemYUlfCPwZiQBfRAg9BVnj4fMqGZfUkpdiHtqKg=;
        b=QFvy9sFY6Q8rJ8tZOuaNifcrtLqeRmAuSjA/rCINziSbWskJggITf+JEV/Rrr55d5v
         Y1VaOCU1t0ZGNQ1qPkgKubQmp0QAZnh6aLq/s1lAGA/gLo2+yqi0FX/8YNav1yMk/kXe
         UD/RvGJgFaJNd7WM9g2ftCts/ekbWUIrQH/C8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743541660; x=1744146460;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVQoemYUlfCPwZiQBfRAg9BVnj4fMqGZfUkpdiHtqKg=;
        b=Ee4w3fqU0dmghXMBm3v9Nyim5rpkU1c7l4m9oEYkU8kNz2wMVf5mPH9q+4Ol/+CyWX
         ZHJK2/sJgQQCPTusFS4/HelwZ28R1bEznuVS2ubTykNep3vcO6JAybqJttu+rRHN6O21
         tVccLnqe49yppiET0kJwLkh2uE7IvoqifLlMiDiuqt7+zI3qIfch/+54zN6hn2b/uVkx
         2Ukq8W4ymXfAplvRVqg9Cw3AXvk3vurGCCyVwP7sjKUqnvkISAgyNX2Bqtc8Y+8GniII
         laDtAhbz48RS+L/gs8tMbHPjuEi5vP68rF2l5uyldUG7HWlFtY8QY1uM/ooSAgrqaclp
         uxmg==
X-Forwarded-Encrypted: i=1; AJvYcCV/n69J6MHhsEVReVzDgpmCXIeHavUP+DseGLnW0fhiKZKfOtCopjMMatDaSCfru5ER8e1IL/3luRM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz097Tk8Y3xBDEi3bFkeFHD4ok7qXQtUt1ayDwuCBGhd4dB0ybA
	tBkzFjoX8gpmlWMORT5XNOY/0A8j0Xf7HQnfiCueatuOsq15nIEk7zhJoXxW4Q==
X-Gm-Gg: ASbGnctEklaQP7AlV0x711K1VcWomKbBpNpCSxNvOjPTxpcdmVnloKkXxWF4CRTEKJk
	C2p5XMD4s+JI1YPEGoX4Q+HFS2u/Zig6t+/EO82D0smGf1d4hOzgBMVWvyym5WOFDXqE1yVlKBS
	dxvMXQ6ZYsABKyauieRC7iPfl3/h/9GJ9dK6T+hu37GB7celE4D4TlNSVp5Bh9SQfN5ihWiNagq
	nVkvWCIu/zetnpmEN5M+rE6H/AHnqhUD4d3pJT3zoZ2eRZj8k0uoHjzlvIEAdYPnTh/NBy6qwmR
	2sTbyVGyrVQyHcFBYwuTOWwjyZt7LS3GirQIdw5VkXTjdCepQ3Fa1bRxaCD9G4PwPbFNL4iQz54
	ZmD9hhdCeAlztvlJJQKPwcg==
X-Google-Smtp-Source: AGHT+IH0PQ7taRoykgUfWzcSREeHMofrh9rV4j0LFTSx412vSYptiSojp7iGvTEFiYHXeqxqmv5rHw==
X-Received: by 2002:a05:6a21:3a4a:b0:1f5:7710:fd18 with SMTP id adf61e73a8af0-2009f609379mr21130355637.17.1743541660157;
        Tue, 01 Apr 2025 14:07:40 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deef7fsm9414995b3a.9.2025.04.01.14.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 14:07:39 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 0/2] phy: usb: add support for bcm74110
Date: Tue,  1 Apr 2025 14:07:34 -0700
Message-Id: <20250401210736.2613748-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_140741_259254_4B80E7B4 
X-CRM114-Status: UNSURE (   7.97  )
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

bcm74110 adds a freerun utmi/ref clock that saves furether power during
suspend states. A tune is also necessary to pass USB compliance test.

Justin Chen (2):
  dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
  phy: usb: add support for bcm74110

 .../bindings/phy/brcm,brcmstb-usb-phy.yaml    |  7 ++-
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 4 files changed, 81 insertions(+), 2 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

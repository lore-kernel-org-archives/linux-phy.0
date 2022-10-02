Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD558C433F5
	for <linux-phy@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X9s0mFx7A0JOgnFZosKo3s1xLdtSx9zEW2k2UJno9QE=; b=bV0PtrFRpD+Apz
	ARF4gmwvUuf1Q5gnlDgSqHgU4Ns33eXIy6tdywGegyTqq2zJTRw5KURL5Jv7A1PPIU2IVzH7HLfWU
	RN79WEXCMO2AtRnL3Wga2CKBZf2znQiPaD/NmassPIGuLV0+mdYLB6VENhDbib+daZh1en3QplBPd
	a7MVzRA577Ntvg5yDpHqxklDTwaIqn0fRq3DUGj3H9DOlzF7rlILAnf3LB/cCy/G3jIq3Ldb4upZH
	YCNXbj2kTFcTHefg0GRvYTAcsmNvxxX0vlLjDBKOxfKoeYaWCer4dkBuSKEr6w7g+GhXT9x/2XA8+
	+RvVVV3mbX8iVKXiDbkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjn-000405-P3; Sun, 02 Oct 2022 06:46:07 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjR-0003mg-Rb
	for linux-phy@lists.infradead.org; Sun, 02 Oct 2022 06:45:49 +0000
Received: by mail-ej1-x636.google.com with SMTP id sd10so16586216ejc.2
        for <linux-phy@lists.infradead.org>; Sat, 01 Oct 2022 23:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=8DoxyrrNurSSCa9HyAR/BM9iY3WZi9m5+lPpxJ0Uuwo=;
        b=PODqI7EtFcGiZpzJBCGkv4ktWLDnRU9EOapB6eH3P9+9XM5qNC7Gyoku5e5dYaCD2k
         5lPV1udTtxuYEW3Ye2pn7Gs3ljboJN3ezbSriC7kNh3YWMNL5jZZ+UhsX97qVqmjXXhk
         SCvB0/xkHPFxkHg+UK1Icwm5mHCknJ219+W+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=8DoxyrrNurSSCa9HyAR/BM9iY3WZi9m5+lPpxJ0Uuwo=;
        b=GfsWUasp6Kx8v0lScabUoJ8zxlEFvRoVxiI8shJEZHw5dpTVubXWtlXuNuv6c9ntjE
         UadvIlgA47gBO6wP5DfdheKynxnKcCo9j/Qxcf3gVBh3fY6oUkRPVzNwBzwgx/AEBp5r
         GSGqKBVbVJNIr8MfgboSQdFWODw77V7yYSL+oVucM+ULvZYJAkpIpz0nVHavTPgnnJEc
         EFGh4N2bocY2kEkp71f4FA+CyFSxTg6cI+bXCpFFsqE6oqNPu4UG1OoHsffE3VZ2Z8O/
         PqaXdptRIfNbs20c2mBn62szRfkKrkL1dN+t8DBDvx/yhvOt1aEDD6B+JlJOyGpWTOO/
         qsVA==
X-Gm-Message-State: ACrzQf1cZyr1go9jn0/D6EIV2+sRhWVwCnUwwv5gKrM8z5adzW0FAzw/
	VgY7fuCdM6yLZSeJEieB+fVj+w==
X-Google-Smtp-Source: AMsMyM4/ckulTLgZqHNHnMxdJWtdBMFlK4rffsHgscSLjCkKU2bBfQg8KGjFilHHLfjxdWmKDWM1aQ==
X-Received: by 2002:a17:906:5d16:b0:783:78d5:e47a with SMTP id g22-20020a1709065d1600b0078378d5e47amr11572855ejt.453.1664693143152;
        Sat, 01 Oct 2022 23:45:43 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:42 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 0/4] Add RGB ttl connection on rockchip phy
Date: Sun,  2 Oct 2022 08:45:36 +0200
Message-Id: <20221002064540.2500257-1-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234545_901387_369FF2E9 
X-CRM114-Status: GOOD (  12.44  )
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

The rockchip phy can be convigured in ttl mode. The phy is shared
between lvds, dsi, ttl. The configuration that now I'm able to support
has the display output on some set of pins on standard vop output
and a set of pins using the ttl phy. The solution is not clean as I
would like to have because some register that are used to enable
the TTL, are in the same register area of the dsi controller.
In order to test I must add the following

dsi_dphy: phy@ff2e0000 {

	reg = <0x0 0xff2e0000 0x0 0x10000>,
		<0x0 0xff450000 0x0 0x10000>;
	...
}

The problem here is the second region I have added is the same of
dsi logic. Only one register is needed by the the phy driver

Michael Trimarchi (4):
  phy: add PHY_MODE_TTL
  phy: rockchip: Add inno_is_valid_phy_mode
  phy: rockchip: Implement TTY phy mode
  drm/rockchip: rgb: Add dphy connection to rgb output

 drivers/gpu/drm/rockchip/rockchip_rgb.c       | 18 +++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 72 +++++++++++++++++++
 include/linux/phy/phy.h                       |  3 +-
 3 files changed, 92 insertions(+), 1 deletion(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

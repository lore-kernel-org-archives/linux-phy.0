Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE1BC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jan 2022 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LRrzunKkNkYUtfFfGj+bKH64nIG1k4ZOnvB+rogfHQY=; b=fRRORJzgWVSFTF
	BLfKyawP6tz9QKfFF/tlemTApJT/DbUv9TMdYYq2ploAl39WpQUlJl31z/IgTiJP1eDoYLvqoy1IW
	ptf6/ZkftCS3Pbxhi/5HkEys2pQ4nsOhIFVx2M+ZHTBNHuV/uSokzgqQ4+pGaQWp052FEpbNHM+cH
	J8+HZtSPk+vN69BTWfqgAGjGAVrNtOlgNNa9/eTVNxjrog25W4EVr6aX6YskAnemoBKZkUzL4odY8
	rITnN4ELInYyNAqo7AJC9IeyfEyreGZ3kQ9zQboZmlUCWLsHj5Lt4BbOpiBAyuvodJzrs6r8Mo0VL
	pPk30zpK1G6T6dh4K1Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7DqC-00FfVI-QK; Tue, 11 Jan 2022 09:53:20 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7Dq9-00FfSS-8t
 for linux-phy@lists.infradead.org; Tue, 11 Jan 2022 09:53:19 +0000
Received: by mail-wr1-x42a.google.com with SMTP id q8so31754783wra.12
 for <linux-phy@lists.infradead.org>; Tue, 11 Jan 2022 01:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hG9rUK4IkVrQ+8ACrhWPxZRakkSjKpRWQoFCkTNn/X8=;
 b=DFFuwIP1QgjMS3n63C11s7si82MBSKADwXDsS6TttMcsW/l7YvB4ym40GSsD2V+znz
 ABi6b5LyWhV0M7JYJCuGU2JJCu6YMwDcP6pDnCAGx17QJxSXaptukJviXcrBGtLVx/xT
 A78CeKN/nP9s3tRxbekgxmuNFJ0BrhKuTEYNYB8UjRPlSz4xw/zhvPqOZoD7ntmFSF45
 Y4pyJuunlxo09nA9LuD9NzGasP+DTw26KFLJsdMNH+Sg1c+IvLPQAuk33JwLqH047A+4
 JB3xwuFQXa65G3sRtEwG0YN6YUrarvT3V51QmKVrt7cwPZe8PXvodzzCvEAwOPSppFg1
 2p3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hG9rUK4IkVrQ+8ACrhWPxZRakkSjKpRWQoFCkTNn/X8=;
 b=msz8aXDbUOmGQyOQ2pnBeFZWXxEhAHl/os8dru5bTZdQC4vt+950rblMPJd5eR0l3h
 Nt1h/0Uc00Gg+1qC9Cp/znKqeEDP3a5S+2NTYRPNghaQiWgLL2hjLIn85R9YtvL/r4al
 yqHEzIVpvL04yTwNQkGba00swqg7e8ue0+LhF0Bueu59zqnErPGj4IjFY2aXSX9RdOXn
 OoG9VZJpVtjTk1XVyYYnyWXsRZW+2u3atapFf7Nzu0ZUuboX5bz9VdMZAlJPFsP4UXj2
 H8IvngxNnpBeg1NutU8Tyyv+Xsfyvr6npiCFNdMFC7Ubynuzri3qlEUx42fw7DjGvQMr
 cpzA==
X-Gm-Message-State: AOAM531pRf4iED2Bj52yw5mjkqI/o8jDPAXkHpmsBDkDECf5OBBz4L6N
 d/9HdWL5iYlhht63PLaqsRRFmw==
X-Google-Smtp-Source: ABdhPJxvFffbttIKz7Na7DPiLiYm3YnyCQTdRoBJ+lM//JF3O1XkLpBPZEnlqZ/8dg6bspbaSdHVAA==
X-Received: by 2002:a5d:6f18:: with SMTP id ay24mr3114077wrb.694.1641894794812; 
 Tue, 11 Jan 2022 01:53:14 -0800 (PST)
Received: from localhost.localdomain (203.247.120.78.rev.sfr.net.
 [78.120.247.203])
 by smtp.googlemail.com with ESMTPSA id l18sm1248916wms.24.2022.01.11.01.53.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 01:53:14 -0800 (PST)
From: Amjad Ouled-Ameur <aouledameur@baylibre.com>
To: kishon@ti.com
Cc: Amjad Ouled-Ameur <aouledameur@baylibre.com>, p.zabel@pengutronix.de,
 balbi@kernel.org, jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, khilman@baylibre.com
Subject: [PATCH v6 0/3] phy: amlogic: fix shared reset control use
Date: Tue, 11 Jan 2022 10:52:52 +0100
Message-Id: <20220111095255.176141-1-aouledameur@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_015317_376538_E3D7FFA2 
X-CRM114-Status: UNSURE (   9.88  )
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

This patchset fixes a usb suspend warning seen on the libretech-cc by
using reset_control_rearm() call of the reset framework API. 
This call allows a reset consummer to release the reset line even when 
just triggered so that it may be triggered again by other reset
consummers.

reset_control_(de)assert() calls are called, in some meson usb drivers, 
on a shared reset line when reset_control_reset has been used. This is not
allowed by the reset framework.

Finally the meson usb drivers are updated to use this new call, which
solves the suspend issue addressed by the previous reverted 
commit 7a410953d1fb ("usb: dwc3: meson-g12a: fix shared reset control
use").

changes since v5:
- No changes.

Amjad Ouled-Ameur (3):
  phy: amlogic: phy-meson-gxl-usb2: fix shared reset controller use
  phy: amlogic: meson8b-usb2: Use dev_err_probe()
  phy: amlogic: meson8b-usb2: fix shared reset control use

 drivers/phy/amlogic/phy-meson-gxl-usb2.c | 5 ++++-
 drivers/phy/amlogic/phy-meson8b-usb2.c   | 9 +++++++--
 2 files changed, 11 insertions(+), 3 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

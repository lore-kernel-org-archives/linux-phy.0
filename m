Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4692D0BB5E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:References:
	Mime-Version:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uHtTVoTi+csgoP2FyF09uv5nfZA+dh93Ln8kBEKxtCc=; b=ICkJ/AeBhPAsT+a3IrXcezfWkA
	I2SBh8WdWiKdJHVKf2t1Iv8FVqi/w24y94pyPt6Z691AyV2cDOZ/P+CEOZyzs7X4y6dqkmQxYf6R7
	KzMuX8xyyGVo7J/fa/OGY3o5yHKSNEhFU1ttnVHp59IINlkbedjeUZEwqXTT26u691xsGp6MVC2wG
	kp99eoUlhLG3kRe3w2xofmzMtXclPP0hDralwXXewo9tCOErgXbqSCkeLNP9p0xpr6y4ubGbK2zEZ
	l+ozxLQpOVgZlY6J03g+bDAJbDdT90QoZpTysMuNOnuW7rbiNGgTpsg2W/QEynpsK5OD/s5NTDsm8
	E8vahpBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3rBC-0000000GtSp-1IPp;
	Thu, 24 Oct 2024 06:18:42 +0000
Received: from mail-yw1-x1149.google.com ([2607:f8b0:4864:20::1149])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r6l-0000000GsY0-2Mru
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:14:09 +0000
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-6e31d9c8efcso10585367b3.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Oct 2024 23:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729750446; x=1730355246; darn=lists.infradead.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=RirtA7EgN4fQOOKugcSYCvUnz6k6FXA4tnIv667SP2U=;
        b=xLakp9LDgPw6u/JgaXLpCgqQgG97e1imMYD3tlOJh3yzwVzXsDBUFJazeDdsnYaa18
         I3TEhbYtt8mibexjODfu5FZYPGwjG/a/g/y46yKd6XuDJQ0SCblBTrH+paKoTVMrbkcd
         optt0D0JEVQbHUNo5LneZE+7ABdZ/BwbCnd7ZlQR+RaiFuvyTo8FycOdmV29InVyGEQB
         5/Da8JnZFPm1OJunqZqHesEt9cP6uRodTFVFNOlR2RLY1OsZhD2D99tO2hXIYQR9lWOo
         9FdCDuzp4xzqABDPeoOfO075gM76IicVhnBAJnSRQsSJAwSioytaw1GSoUffJJXFvLDP
         swGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729750446; x=1730355246;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RirtA7EgN4fQOOKugcSYCvUnz6k6FXA4tnIv667SP2U=;
        b=TTxHvZwz4SCeUvYLX/SeAogEtsAUU/w/3ceFMlwaoiFEGCuM2cUiXrXypVIDWcvJuI
         5dMl3/xk3bTBWk5RWMonHX3lpnscMc5NGctUgF6w1MhegejV43nayHK+cJDEwJojyZxP
         jfQP4Uj5H4j68bZ5FGnleHQ22IzcQw93NHLMzSm3tvXQwrOqSPXCzIqqsibIrXclrqnK
         wx3axLLTmeQLYd0brcDy+97OiJjNJC5ma5PHgZQmDXesiPHO5I6q2Wj3HN8UH7Sv8l2w
         6kav1vu3V8ibnR8XtlLmzecrql1jrCNHZ/Q1o6nDXVPn8N+d7ugLXI+SvCJnr4oPBUpX
         mkfg==
X-Forwarded-Encrypted: i=1; AJvYcCXE/0COPX78OJIr4LfspP13aR/3hjBQgmuivwjxTkHV86o7KLv/39w226X5H93QYAp+cUYQ5o+IFbo=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywog4kbqpY4Vs0xVX2TN+mvaOVw3i+iWBxt+lW1gIzIe2cyU7r/
	sPxXYeSxvMhSfp5i30qanOT6Z6iT7vULDSGagoJ8cKaPGVqaMNKyvFPR9/rQrwd6yrWlyW9Y2B1
	QQppftJlpaEbuwQ==
X-Google-Smtp-Source: AGHT+IEJXaAAeZpuDAkTsefFXLL2kex4B2AlfwjdclQcvPn636A6m5nX8BurNhgR4ykV7U+QaaWd5sb2nHuey3k=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:965e:f81d:c9fb:b352])
 (user=saravanak job=sendgmr) by 2002:a05:690c:3749:b0:6e2:4b3:ee22 with SMTP
 id 00721157ae682-6e866359b6fmr171667b3.6.1729750445961; Wed, 23 Oct 2024
 23:14:05 -0700 (PDT)
Date: Wed, 23 Oct 2024 23:13:44 -0700
In-Reply-To: <20241024061347.1771063-1-saravanak@google.com>
Message-Id: <20241024061347.1771063-4-saravanak@google.com>
Mime-Version: 1.0
References: <20241024061347.1771063-1-saravanak@google.com>
X-Mailer: git-send-email 2.47.0.105.g07ac214952-goog
Subject: [PATCH 3/3] drivers: core: fw_devlink: Make the error message a bit
 more useful
From: Saravana Kannan <saravanak@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Saravana Kannan <saravanak@google.com>, 
	"=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=" <nfraprado@collabora.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_231407_626056_C785B63F 
X-CRM114-Status: GOOD (  12.29  )
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

It would make it easier to debugs issues similar to the ones
reported[1][2] recently where some devices didn't have the fwnode set.

[1] - https://lore.kernel.org/all/7b995947-4540-4b17-872e-e107adca4598@notapiano/
[2] - https://lore.kernel.org/all/20240910130019.35081-1-jonathanh@nvidia.com/

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index a4c853411a6b..3b13fed1c3e3 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -2181,8 +2181,8 @@ static int fw_devlink_create_devlink(struct device *con,
 		}
 
 		if (con != sup_dev && !device_link_add(con, sup_dev, flags)) {
-			dev_err(con, "Failed to create device link (0x%x) with %s\n",
-				flags, dev_name(sup_dev));
+			dev_err(con, "Failed to create device link (0x%x) with supplier %s for %pfwf\n",
+				flags, dev_name(sup_dev), link->consumer);
 			ret = -EINVAL;
 		}
 
-- 
2.47.0.105.g07ac214952-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

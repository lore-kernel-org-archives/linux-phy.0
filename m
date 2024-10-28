Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70186D5B847
	for <linux-phy@archiver.kernel.org>; Mon, 28 Oct 2024 22:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETSwjRmrGTt6CC3mRPZmN8qYCJUS5an2cqUQ6JHedFI=; b=NO69oEcABim7fE
	HqmXhDx6eqGtaN6nJRzBSsNsXiFquBGK6QoEWFnWT9WeFJ6EQv+oOTLJIZQpGPAeH5fFgjIud+DKk
	q6MKBvbcBHffZ0Ehb9nQxzE9GsV/M2k1ptRPTYQxLhKTAQ66KQmfZBaphCp1qkt5CRJbob6ysgASn
	FXnCrIudrJj0vjEQzu0ZpD3fi/s28yrjDyNRnenKeCUzRAtCdWQ1HopBAgCXqp3V4Lzyvdepizusq
	42981rKI2eLz8D5a0WkS2ZUiKqBI+yNqrQi16rgEDJ+sIbD4E9+ZtvgKRBuqtqffTxHSosbjAx7m+
	CDE0eq9l0RislLOoFPqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5YJt-0000000CWxP-302H;
	Mon, 28 Oct 2024 22:34:42 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5YJq-0000000CWvv-0iAi
	for linux-phy@lists.infradead.org;
	Mon, 28 Oct 2024 22:34:39 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so49484325e9.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Oct 2024 15:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730154876; x=1730759676; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K3K5jfKAz+0lJ+9yVU83P5b7BV0bnKpsmzNSdRQX9b8=;
        b=jsuiukEh2+XcT4gl9eY1H5Z+F4Jjf0JJbGRPaO38BUdJCYZI8IIs9cnjucZW2KbRpO
         wn9ASQZ0TG+SPrFwIJTbsL+wjIgLIsVe8dccfck8gh4GGcCl04wsROdyfdc7wF09R/+E
         XZECCCbovrYBu/cFqkqqylRnCjp5/3R4MW6c+BmE0psG9WuvlzDWYwJSYKgDslocnprV
         nvCzEDLTFj6JK4Vv/A3TAsg8nkNxVu63xJjtLF+G+D123IN7Jt3TYUw0pv5UfgkbS26/
         h9//TlOYwIokQPmQlQsGR9Luv33VS4ljrvjsI45AQV7RxJbFGU5KO4LyRje/l/Azr2+S
         YOHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730154876; x=1730759676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K3K5jfKAz+0lJ+9yVU83P5b7BV0bnKpsmzNSdRQX9b8=;
        b=Ub6eNRDfN5p9skzsc3GTs/cuemZQ9SAi2ebm0jAhZdFRVu+TfBd07Y/IY/i/i2OOtj
         ZinBEvv8tVxaBvx61xH9gjLSHkz5Wx44mqaKXfxIINKg/G0fWHR6+jwhIqbtAsJzH90c
         wWKQZumuwsVfXCuRDup3iFyIsOLd9ihiUVRt2NeqD/QQoLE4JXj+uo2LdiwLAdDNtklu
         qZHGLLP3bQWp2XzOUF8AklsDDfBaWSXlKw4fT/Qy172pXPHtAsglPOsaCIzk5A5g69BV
         MFsrbVu8KebRr73NAV3WGwbsE1A9OCgPSblEz90XwZDycd+RN4ef4xEN9mlfKVgmHp6R
         Vg0w==
X-Forwarded-Encrypted: i=1; AJvYcCWV6xtijsu2yHaEx4rAE2EXfV8x+WDWVRpD8jht8U+T/rkHno7wFIW7aqZWIV/7WBkSFx7spdxs794=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKMqRtB1Rjl+2Go1xNZaQJ/O0nWA/xwBFAuCOBb9dbwgGELx+t
	h7jMlH9Li9r9KBS22MhVR41ydHIS4EpLwpqVp5zGlIfVnA9nsoKJ
X-Google-Smtp-Source: AGHT+IEde5iw0He7F0LFyazRrBmm2/W/T0eRjGPmeLjtvDNEqAOpB5BmIqMtQsyL281eqhTV69MTow==
X-Received: by 2002:a05:600c:1390:b0:431:5d4f:73a3 with SMTP id 5b1f17b1804b1-4319acb226amr63557385e9.18.1730154875937;
        Mon, 28 Oct 2024 15:34:35 -0700 (PDT)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-b273-88b2-f83b-5936.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:b273:88b2:f83b:5936])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431935f7213sm123899495e9.32.2024.10.28.15.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 15:34:35 -0700 (PDT)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Mon, 28 Oct 2024 23:33:59 +0100
Subject: [PATCH 2/2] phy: tegra: xusb: fix device node release in
 tegra210_xusb_padctl_probe
MIME-Version: 1.0
Message-Id: <20241028-phy-tegra-xusb-tegra210-put_device-v1-2-28f74368c9ba@gmail.com>
References: <20241028-phy-tegra-xusb-tegra210-put_device-v1-0-28f74368c9ba@gmail.com>
In-Reply-To: <20241028-phy-tegra-xusb-tegra210-put_device-v1-0-28f74368c9ba@gmail.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: Thierry Reding <treding@nvidia.com>, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Javier Carrasco <javier.carrasco.cruz@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730154870; l=944;
 i=javier.carrasco.cruz@gmail.com; s=20240312; h=from:subject:message-id;
 bh=gKmGr/5ZnbM158J5N7jUh0J54APzNpxKlRD/E0i5/nw=;
 b=KpcDPrw47pH11bD3BEXoFXs1mAg0X+fkMwnitv4El8oVws91tHTegbMBR8eatX78+ife0YUKS
 wYuBrsZ6YOlCVGkVRhAhsdX9BmDmUtpEHYFJGUsxyFE6FVqn5E5TqYm
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=lzSIvIzMz0JhJrzLXI0HAdPwsNPSSmEn6RbS+PTS9aQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_153438_249434_3754B53D 
X-CRM114-Status: UNSURE (   8.44  )
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

A device_node acquired via of_parse_phandle() needs a call to
of_node_put() when the it is no longer required to decrement its
refcount and avoid leaking the resource.

Add the missing call to of_node_put() as soon as 'np' is no longer
required.

Cc: stable@vger.kernel.org
Fixes: 2d1021487273 ("phy: tegra: xusb: Add wake/sleepwalk for Tegra210")
Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 9c7fdd29b7c4..a77127d6c4fa 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3164,6 +3164,7 @@ tegra210_xusb_padctl_probe(struct device *dev,
 	}
 
 	pdev = of_find_device_by_node(np);
+	of_node_put(np);
 	if (!pdev) {
 		dev_warn(dev, "PMC device is not available\n");
 		goto out;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

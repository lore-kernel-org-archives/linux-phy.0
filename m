Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF294D5B845
	for <linux-phy@archiver.kernel.org>; Mon, 28 Oct 2024 22:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6L+44yUy4ehjmbjxbGkzNiUypOh/65hVvwOeiYCXbA=; b=oQm0s6BXbOMtgP
	tm7DoqZfhzRTSp1AlrH/C+tdenxD0bzsZ7tCdUJo9OGoAJRVjDgFHMnrJSQ8KiG1ejjdZrfnto4bJ
	NTkErEqLOjVr6+3V3HSV35mNwgGaWTFnnDxwmCaF009aBujrWhNi4VMSEqrrrJU/aE8kG0rrIR0Cc
	65dX3EBhcofO9KvwIIKwt4XfbqU0vGtO0gzpkGHp5/7LtBoOQ2gJfmfFscmDRpRjaugwked3KyybD
	cCAnm6bWurgaJowZZRQkZVrZ2RWF6OE1YD3mclft9Lipy69BDWR5iXDjAq+Ev7y4peG3xLO6UBIPw
	+kI6lKDA4z915m9VVJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5YJt-0000000CWx6-1a62;
	Mon, 28 Oct 2024 22:34:41 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5YJo-0000000CWve-3a1Z
	for linux-phy@lists.infradead.org;
	Mon, 28 Oct 2024 22:34:38 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4315f24a6bbso47059165e9.1
        for <linux-phy@lists.infradead.org>; Mon, 28 Oct 2024 15:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730154875; x=1730759675; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Umbi077YGFKFtcJYYJqpH70S/3kQKJNrTf3ziqRBrzQ=;
        b=NVBaZeiFvsr2i3/1lTQALBNZT7anlP4YSlUQQTcXsxsg1zxBWcn4KrGHL0kRcJYRte
         nseIO8Q406uAizt9SxaMaBc1/bx3kfnwbqOeVF283SZ+WyqSt2Qucvu1/AU80qCwXjLX
         eOAjvlIaabzGQ7slQtelxFdu2lTcAgzVjJEW/rFou6Un0JqADRzvXIjPJSDROrh/OaKX
         jR5/cYsOc0/S2qGtmGaabf6RvJwhbgtE9vRfiWWYE6yIuaaaJUdbtn5I+/uWJfH1bpAm
         fu2Q+CMM3LsxtnK47hUIXflPtSL3lH4hR/VAaU0fIz+EhkY/hfYO7LLUtadOOEy6Ttfc
         /tTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730154875; x=1730759675;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Umbi077YGFKFtcJYYJqpH70S/3kQKJNrTf3ziqRBrzQ=;
        b=EY/tUbcMmlqzDAr+o4OUCmR6IQ4ulNekHVuM2Tes5YAztrswlrPf8B/sRdLGaN+qsh
         mDWnOpa1hruXhYLTwZ7rPp4o24OhKzXcj+J5qMwMIGMV0b7rhxjwQh8VdwOPS5rWDr3k
         ZWyA7cl+hoUOdGZmu2C46fNwYyokEc7Hui4/SQ6HWgSExGoP4h9Hkoa32SrxwFOd0Y2g
         DMVJUcTlc4FNfpqQbwO86p/3xkX61r7HzFr+M20Z+scqYhlD1siJZ9RevO0Yt40x0aaU
         bIGO2bDrrRdR4/+7Q+Zaiv4KYmXxX0/jAcpwuHBOk6jTC8h6x3yuqi6HaP2Ixcy0rpUY
         nQmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw+AnKIhKgjt4lsWR5AhDmTDAELPxNJjmGKizY3isZ4W+qxxiYCj4eJ1bGSl8k38xQrBBW0baHm0k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt1PdiqvYbtO7fZGHSs0oeqQBqhFL2w2Wj/kR0yGFf26v7GAyk
	2HOuc+Z43d/R/BexMDS559KI4OuA29UhdQiQOA9QLXfcJLVfWJGr
X-Google-Smtp-Source: AGHT+IGCjkJZ9eJSF/Sc7bAu5q1bN/kYQ/lyfVC4BotHVNbJE1py9x0UYLnUH92QNn97PY9pFtQU8A==
X-Received: by 2002:a05:600c:4eca:b0:431:5c1c:71b6 with SMTP id 5b1f17b1804b1-4319acad842mr107185795e9.17.1730154874410;
        Mon, 28 Oct 2024 15:34:34 -0700 (PDT)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-b273-88b2-f83b-5936.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:b273:88b2:f83b:5936])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431935f7213sm123899495e9.32.2024.10.28.15.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 15:34:33 -0700 (PDT)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Mon, 28 Oct 2024 23:33:58 +0100
Subject: [PATCH 1/2] phy: tegra: xusb: fix device release in
 tegra210_xusb_padctl_probe
MIME-Version: 1.0
Message-Id: <20241028-phy-tegra-xusb-tegra210-put_device-v1-1-28f74368c9ba@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730154870; l=1220;
 i=javier.carrasco.cruz@gmail.com; s=20240312; h=from:subject:message-id;
 bh=ShLgN2bKe4JPnIwWKc8bL7okfKb596zokxGFYpN8MrY=;
 b=CkUGA0g9V9/hi4kz0/FdhdlF68Sq5yOTG7pgrsPGdhuQfPzIqy3K/JA1kPIs5LQiP9EYbaGmh
 QgBISNz3DEXD3rkLwdrhr9h2sixv9p9sG85wxwHzFrJ7fKGioXLJ/jB
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=lzSIvIzMz0JhJrzLXI0HAdPwsNPSSmEn6RbS+PTS9aQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_153436_941002_153A0E8B 
X-CRM114-Status: UNSURE (   9.75  )
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

A reference to a device acquired via of_find_device_by_node() needs
to be released when it is no longer required by decrementing its
refcount, which avoids leaking the resource.

Add the missing call to platform_device_put() as soon as 'pdev' is no
longer required.

Cc: stable@vger.kernel.org
Fixes: 2d1021487273 ("phy: tegra: xusb: Add wake/sleepwalk for Tegra210")
Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index ebc8a7e21a31..9c7fdd29b7c4 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3169,13 +3169,17 @@ tegra210_xusb_padctl_probe(struct device *dev,
 		goto out;
 	}
 
-	if (!platform_get_drvdata(pdev))
+	if (!platform_get_drvdata(pdev)) {
+		platform_device_put(pdev);
 		return ERR_PTR(-EPROBE_DEFER);
+	}
 
 	padctl->regmap = dev_get_regmap(&pdev->dev, "usb_sleepwalk");
 	if (!padctl->regmap)
 		dev_info(dev, "failed to find PMC regmap\n");
 
+	platform_device_put(pdev);
+
 out:
 	return &padctl->base;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

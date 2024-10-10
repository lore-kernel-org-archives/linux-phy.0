Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B34ACF07DD
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 09:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DCu6jUkcYtPvSQpfpysosc2YqjNQTTtVReeO5HPSNyU=; b=ZLZ4SfSGQn9r/a
	LSgXxbmJIcBb6yPkFbe5z7fxb61/hD9aJTpZUaBw9RUClq+cm93JbouL/M/e52XF236Q/uR9q10ib
	ZOVWsE4aVnSn2licbSNTmEEK3yVpO2VqVsFy+SV53YbZQqVHIw7DssgHY6m2fhwT5FUHpQqsLO5IN
	mpC0YPcUyzIoYgKKcUqiyCSjmRG96iwNN61y0ADTPhRyEOC9zftb+Ele4+LXv9jchm0kfksKAzJDX
	kunfxtr5oBZLp4A1s2hYH+N/jeKp2beGkFYdtnIdtZO9Q0NKAEaAPQMfgFvJ9fetlH+jf76fQ0wZr
	dD0kMiM7XG14uG9wMPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sypFU-0000000CBPt-0Ltx;
	Thu, 10 Oct 2024 09:14:20 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sypFS-0000000CBOg-0Mmk;
	Thu, 10 Oct 2024 09:14:19 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5369f1c7cb8so934292e87.1;
        Thu, 10 Oct 2024 02:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728551655; x=1729156455; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iS1oowt3gWPxEnT3I7D8ZHwjyqV0wJkTaD5F8v/SXSs=;
        b=ZgHN02O7NwVOkiUAjCEhN62RNHO2RMT2IfgSruCns3LVe4V/JUTaUFLz+Ge2mCVCfr
         2X7BmSwUlFdFni7NYvNr6W1uW/Pm/6fPwJpCjoYEdwPFOhYaD6Wz17/uXXDx5Y6anjv9
         xLN6BidWdRGNuXCCc9LyiCz80VcGI8AWXqi4TOZ+kpd6iQhh2CwWxUJeahBWbDpNgH7h
         4fIIAeEJZw4t5UvosqP/8Vcf6t/9mGMFLnehK/x8+W80HztQafdDiq0qD+9LuYFzEghp
         1wUsuoV1hcZoY8+qsNZGpJ02p6KjOgQjBdVAUoZjJOfqprjnBrndNcU4obGnhXZ9iROr
         puSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728551655; x=1729156455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iS1oowt3gWPxEnT3I7D8ZHwjyqV0wJkTaD5F8v/SXSs=;
        b=PQR+GVeEgD11jGU1oIz84a2qMw04bJX4+K2ZaHxWsuLKdxH4sG7N+g1ddd3vIC/3VJ
         2U3j1WY6+cf/3CgSxEgKGadiodl6QkeVQSheTQScWlPKRW9B79O6/EJdfKzQ4RCfQJbD
         O9atK87tCpE0k6/nuMNf+IRLG7HYp1K15YHcESikRkC1sprE+G4iV4d1S/DxQueYcTFR
         Owmc4zHr7rnTB1E26ukBU7YPrT3Z2rsfs9Ex1e0RBq9GaEJUQmZb6NhmxpB9iCy8rpN4
         N7nFFIRnvqYGkqmdE8QHYesDeVUh74bh24Gz2qDJj5gw+oFLI0/ms1KDCdDzQlchiCb2
         jDqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXYa9LunXtUjYgIMIvlqR6K3g7zT21D6NqoX9GNW4dZlZ38el21aaMDiK/2NSdoQYIX54Sxz85p9uk/2MjArFy@lists.infradead.org
X-Gm-Message-State: AOJu0YyIqob5I9pzW5izFgRzwaxV5B0dSvJdIkxfnUCrRmNui6HpFiGf
	9O1/s8T/bU3TwR2bzkZM0JIWeaFOyLpxuI5sKcH62oXTSt6H23E1
X-Google-Smtp-Source: AGHT+IEabdPS/80LwHHvN4O9JjXcErRt0X3jKi/SEPXwMmL1sjvbwwX0uamKQJdfuWuquTPkH2rYfw==
X-Received: by 2002:a05:6512:104d:b0:535:6cde:5c4d with SMTP id 2adb3069b0e04-539c48926bamr3578673e87.3.1728551654907;
        Thu, 10 Oct 2024 02:14:14 -0700 (PDT)
Received: from void.void ([94.230.83.74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-430d748f0a5sm42337895e9.48.2024.10.10.02.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 02:14:14 -0700 (PDT)
From: Andrew Kreimer <algonell@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Andrew Kreimer <algonell@gmail.com>
Subject: [PATCH] phy: sun4i-usb: Fix a typo
Date: Thu, 10 Oct 2024 12:13:55 +0300
Message-Id: <20241010091355.8271-1-algonell@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_021418_148340_97B010FF 
X-CRM114-Status: UNSURE (   9.65  )
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

Fix a typo in comments: wether -> whether.

Signed-off-by: Andrew Kreimer <algonell@gmail.com>
---
 include/linux/phy/phy-sun4i-usb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/phy/phy-sun4i-usb.h b/include/linux/phy/phy-sun4i-usb.h
index 91eb755ee73b..f3e7b13608e4 100644
--- a/include/linux/phy/phy-sun4i-usb.h
+++ b/include/linux/phy/phy-sun4i-usb.h
@@ -11,7 +11,7 @@
 /**
  * sun4i_usb_phy_set_squelch_detect() - Enable/disable squelch detect
  * @phy: reference to a sun4i usb phy
- * @enabled: wether to enable or disable squelch detect
+ * @enabled: whether to enable or disable squelch detect
  */
 void sun4i_usb_phy_set_squelch_detect(struct phy *phy, bool enabled);
 
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

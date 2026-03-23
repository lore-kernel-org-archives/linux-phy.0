Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8961D58CBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2COM9Pi76rbpb/JTi+g37Gt1oFIwnMgUom+AbetQKsY=; b=maXSV6LBvgVJ8o
	PtSrGuScyEbZ+EP/ndWmFsKL8h3Acj2mOaxXgfwc8mspZ6qlqigAXJDn8WfIdIz2HO3fcLMMW3BJ2
	Z4JTSWdVmPbtAs9RJ031rmmJZy+nnmdLepu5SJ+as5tzOgGEzxQTcQfblP2WjnaWpAJeR18a10+5g
	vEMi3Cv6l3BwUqqWuNoAfBkUZ2mWI9SSJLEwUKKjTzJ69H0y3UDyv0SIMTW3WespBBvKwCQktq45c
	7Evy68E+EeIgZ8YvPXppf4nG0/wAZHYCltQr0VN8pfsB4jj53k5MCCahiB3wT6YgGXrHicXQGhPlc
	Hrict+nmRXU0PLjwqoog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVC-0000000FsBV-2qnH;
	Mon, 23 Mar 2026 01:54:46 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UV8-0000000Fs9o-2LsM
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:43 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2c1092cc08cso1024186eec.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230882; x=1774835682; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7X8icAi5hW5PHcS4B3NheItH86dqdd76W8IY0AZdTSQ=;
        b=ckMfik60FA0sy8HhloyZK1LPu0VXNGcpOGN4vMHph9ArOXooP+ii61sOCQ7tm8c1cc
         jUOV1BFHdQjBy2Xp6fMys/LCVO5/RZ5NIVP+uudPW/zpDxT6nRLbesC7w4Pw+g5TJ4Ta
         UpoeEnIgp2WiwhmLA53vJBdy5RBVWwJuMaoZAW1FT0JKboiJpPiiT2bEWqDXaWWfonix
         hpGrSG5lPxBy16Vz08usEPsymJ09DMpXADizI85WN3P5o5wuKOAiZNtBGYzklmEJ61+h
         3wBjEPZ3bYT5t4tJqAenVhnOmdE9a6QgCRwuT+NOiqX7+mNN7GrsE1CoJmxyGnlazEjn
         XZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230882; x=1774835682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7X8icAi5hW5PHcS4B3NheItH86dqdd76W8IY0AZdTSQ=;
        b=BEQ9vIVFwjHFZGnEuBWzvS/O3A9I5lVSCcMZiDeTWoPjFR+QFgPvYYplvJhtz9smlJ
         KR+jzTWTnTML/uuwiYQQkzlg6p7REuhRes28ttzQUhY/kRV0NQtzfuLk4x3sCBEXVAIC
         NjQ/4fDqNEGRXKjyHv77mZLOuXo85jpc1uETLnBU8fNfs29gpka+jOOBt3dgTySdxAiV
         ObkjcUiY0rLYRzCQlzJzTVoaaeqJgXZzxv5g94Ae0fypGSEqRs/6NfNUlDcssOxlSQHT
         6unzkbeL3zhbMnTDCZ/yfDrUxgamVWVQygEl42QwSdnZagAMO9TsyHlFtHSd/ftEKUqd
         aciw==
X-Forwarded-Encrypted: i=1; AJvYcCVXbI/iDjuN+YW/3IGbyTtdrwEljzZGIgQ7709gAZrxgnF54/pRBrTs9u7eHJKDBq64t5qZW+aSpDY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAeCofLMlzc3uD2GnYKqDU9Yjg/657Ffj5uSsTAl4ElrbL44YE
	UFAzZjxh9ADt57x10V5vC1mpF+YmEo8nx9k7j/IJQ+7xmMG6u/lytVI6
X-Gm-Gg: ATEYQzzsNkGiteftT/kN2e3SM2KI47gN9KcmW9P2rESz3gUjJ350fks9v5xDdYZ/ATL
	BMOYMKURuAqfq6X5hJNfK2dWOSxOmE9sdWI61zNdyhHAONzFVk51kv487ySJJamJGKXYlozlHtL
	HYivT6liMm6eu30GkyjFUJtKwK4SfBT9cWW7yJ/MXNcfzp5iMZvN1QiC23vZ2BrwHOxDJDXbGzE
	yV6i9Zadwpv2JQpGp0ITCfamEQiFngdTt2RueKBCgb9UJ7/hpGOKtoaFsTwAJ3zMO5moOF/K3YO
	863dWnRZJK5ZYyahyKw2qD3hI0UWEDDSxraRV+XY9MPu+PMmY8nF8qzJMw96RPpEkIXUJhpOTqm
	55iG4aduhq+fe3V3A3mG1qHXgJBy3/F54UNq6iuw37ByHJkc2fYDVjFzpWw1guUtBj2ffAp+PW8
	4sQ5w2btiFYYMKXOyoh5BRwu3jBPPo4NOT4tSt1fv21SCpdeY6UmKi3glMFG8EyT6/luUTJOsjw
	4QO1xyrsiMGG2A=
X-Received: by 2002:a05:7300:e7ac:b0:2be:9d3:c8c5 with SMTP id 5a478bee46e88-2c109816b87mr4889998eec.34.1774230881836;
        Sun, 22 Mar 2026 18:54:41 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:41 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	driver-core@lists.linux.dev
Subject: [PATCH 02/10] phy: core: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:20 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-2-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185442_614627_85DA8D97 
X-CRM114-Status: GOOD (  11.60  )
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

In preparation to class_find_device_by_of_node() going away switch to
using class_find_device_by_fwnode().

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/phy/phy-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53..57bce6b63a31 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -761,7 +761,8 @@ struct phy *of_phy_simple_xlate(struct device *dev,
 {
 	struct device *target_dev;
 
-	target_dev = class_find_device_by_of_node(&phy_class, args->np);
+	target_dev = class_find_device_by_fwnode(&phy_class,
+						 of_fwnode_handle(args->np));
 	if (!target_dev)
 		return ERR_PTR(-ENODEV);
 

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

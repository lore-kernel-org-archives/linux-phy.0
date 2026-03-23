Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AF3BD58CBF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I45JPq7j/pWMzaFozhwwNncdDIfeihEXxBGDt9xmeTQ=; b=l2tn4VZQmas/vT
	CzjdNBN01SzX6r54F064XiL0pneheukYSy3RdLO2fNcLNTCQCfX3CJefQsj2+K7vp5GsA5F7zZBm7
	fT6/XL+Fq3PAUKGiwkgTMSqkYuj3jz8X03SM6y7AuvIrE5Lm19Owj+ld0vJ/fOX5LOKhOsZvAg6dC
	SD826tS07nzCPKYbAVClNrjp6BlJQG6T/t64/NKTGBNWRKBJ9MgaBoRs5QjCC4Z9t00wqKYLH30Iu
	aA/gDj5cAZmuf92s/VCMfkP73pvxeM04wOP0hbGQgMkMlX3LJw0WsLXzm+MQ7WSQW9UR7r2+zhTU5
	bzJXDeIKQ2UQ0S8Y69YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVF-0000000FsCT-0rZu;
	Mon, 23 Mar 2026 01:54:49 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVC-0000000FsBK-2UGZ
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:47 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2c1092cc08cso1024271eec.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230886; x=1774835686; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HAxXxv6aPc5DTLbEJ2x2im/U0EJHM/Tk3mhYybeVkPQ=;
        b=YR2Wpl+AyIOxAdWA1dOHRxtgCZUS+eFXPXAQfsGmi0KhI8Ez3Nyx9HSxNLFZmqFvJM
         snXBC9Gofy/D6G/Xd7mt9WsVrLe9Ul34oNHKUCx6Das/EzB693UutWMbjh/OjHsLHcfM
         jvOVdGQZqXnN0AffUsAraSG9Z3aaSBTeBkukfY+1rCU8/G77E0vQ3BniLDcP2z9Cc+Cv
         cgKYnkpn2+5gdEuJvvzUQhFARcxs0gX0/zUC71tIRxbIrf4+1kNOnexqRLKD4CUz6S7h
         /e6mBXaUtTww27KTfYcjcI0mZNUXgnus9954LJGZewq1tDQN6EXIJ2u2k3IWc/3kD6CR
         B/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230886; x=1774835686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HAxXxv6aPc5DTLbEJ2x2im/U0EJHM/Tk3mhYybeVkPQ=;
        b=FYamy6CsFfsCjMD0lgJtL9gDGtkOEawuWzT4jrVMTnjPudbFEPmsvdFR/jWwqcFYGk
         rhwm0JLJu2hUnzziRY+ujVbsM4CffvFcw73k/uuz9zfI5vIHHQTqcB6mu0AIaW3AdzTi
         iz3KITy2NyslOz7tOlykLGFL7+lhChHZ1RZlaEzhj3DEHBnvn7QBBdWrQgcCXBWBzA5V
         yubmhtsh6Xy6UOyEoCYd1qqoeI38XMA0gopjaK9V7VH/geld6KOfIYlVy1k/s8IxyJZw
         2YZkKVPgyBAAEoj1RN8SIrMzeO3cIvsd5ZY5Lb910/ON5VHMmp0vDLeBFoYGwEtkLkTp
         CbgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHvC1c26H/1Es9JDNjlxGXz5SJR+5eh4OoGMkx0P7Wfu/Imzy9R5x0VUiNcinL4JDmf+9jKLoqz0c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3Llh8852DcBxdQ+rpayd58kbPTfOmRTBYaixAhagdHvJHDvKx
	nrlj1WoK7ki93Jgg4SKKgZ1d9VSbzDOuGI0tAdbWONJQ8Xlx7RMM9VlQ
X-Gm-Gg: ATEYQzy8SIkd/y03n+U7r8KElsKP08AH9b1NNlJoU4sK+dHGVQbSqmdWKsGskW1zGBR
	8PKvMWEnlrTge3m4BQKNBze9Ge2rnByvj2Z3Q900hM7KKsDaShOGUPhKA+eisORidact56ABj4a
	e1HVgUVNwLH2DRm2aSyJBf3Gx7g1QQm9klSh2DWI7lHncIqzSF5dE/rvrabQj/D85P3gL2dKD1n
	yeyg7UKtPYChSmcJn1ZkEzEH9PPSbwi6F1RVM5KlDd8gIbUPu22QOQKGVTz7aWreyi6ZEP5pRVB
	ZyddQSdLAmQVWQrIh+MHvudvjx+jH8YRZTlTkrcVNbYuG8EIKwGwK/LRYBG/QYoLxWvcM2iSyKm
	SfEVJwRGeZm1BCY83GGXGJfOop9HjEBweMckzrDxUi+RSqG/QbqkvGLiBTqqP+akUIbQnJVBhm9
	V4IY4GfJn8pfI8qfgWkvF7KqV4UHhFqIvfx4vHSRZg581iFPPcoass0EcoL/j0Tto+Cl7uwli9y
	167O4rsuB+SqZnFUuUG77ugRw==
X-Received: by 2002:a05:7301:3f07:b0:2b8:30b8:58cf with SMTP id 5a478bee46e88-2c1095f867cmr4580068eec.8.1774230885998;
        Sun, 22 Mar 2026 18:54:45 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:45 -0700 (PDT)
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
Subject: [PATCH 04/10] regulator: of: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:22 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185446_654150_4204328D 
X-CRM114-Status: GOOD (  12.16  )
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
 drivers/regulator/of_regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index c0cc6cc0afd8..43ec0845c940 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -637,7 +637,7 @@ static struct regulator_dev *of_find_regulator_by_node(struct device_node *np)
 {
 	struct device *dev;
 
-	dev = class_find_device_by_of_node(&regulator_class, np);
+	dev = class_find_device_by_fwnode(&regulator_class, of_fwnode_handle(np));
 
 	return dev ? dev_to_rdev(dev) : NULL;
 }

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

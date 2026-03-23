Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 075DDD58CB0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfSq7/iBDM7R9115PBSpbUJwGKAiXRjAeolpaLCJnoM=; b=xqnHLZM4h5eb6u
	9Zde5g8F/amXxxElTHlKnZRZnLj9z88j1JM6uLHIvbk8jmcT87kStZtuBE5YeZj17zAAmhs9OoVG9
	9kp4LwyvQraytCSWI2of6v4XEk7euUhJ9tO3DBvE+71O2VgXBTE2t9XsygLRZMl4bxgdeh01caR/x
	SIsTMEX1cGWrxdLubIodQFuBqQNACOGvKQ20MnrT/8i6ysEBzlTg7FLrNagbLX0dTZ+EbrEplJtL7
	njNgLRcmEQP64FYPUiFfzuGX+uT86WS4ejxdUNsmzv0kPlwE9zno/I1McM/kMS/qYzN9o4IYSvOgU
	yi/gXSg0x+xd53WUvWIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVS-0000000FsH6-38cQ;
	Mon, 23 Mar 2026 01:55:02 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVQ-0000000FsG6-3Q6C
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:55:01 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so3471410eec.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230900; x=1774835700; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBYbOsFewxAK/zyXErJyI2wWdOZnO5pIFOiKOKYi888=;
        b=BmOVNfi+UJP4e5t420zhcBLQkNAiyGShkhxfbCaddGxszc3Ls7H1Ekh5TfoZ5zoIw2
         OrvTk+TQU6DSUuQsGWcjkWP8KVXLfATjiYA5m+4MgXn06lmP5Kp6vOIbBpY0zJc8/4fM
         32kRu8G4WeTxy47kh1j5k6ZCxH/06dZliZVjKnOiy7gIsIAt4mozDkHPkczIfKvQZCOw
         5tuVlntzzyWQlxqde12KWrCe1E3Q0LMA7ScFELV6xkR3CEsQkuJ4xZladNV4N1vuJMbN
         JymauOvjsYDZLSu7HcKpbbE8lM60NrXaEP/a2HB1pemzKB7wOrUbzRJbcvTui7a6pleg
         aTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230900; x=1774835700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uBYbOsFewxAK/zyXErJyI2wWdOZnO5pIFOiKOKYi888=;
        b=i5ilqilwAatNV3VzFBuCqPF+hbLtr5IV4XCpbTMpMPmyqTgxRAMhD1g0dR8kvy/7Vx
         LbLjL2rjQK9fvIi+S6bpJ8O5AewApPzIla20pot+RVGPdoNubUp1MOvBFSquMnGLsOgG
         QdM0XyjpJ0t/L/npiv4WzHkcHiMHhsU8/CnU5azMrx1uM1xh6ZHJhJDp/VKwJ996XgOy
         TcoPh51ZiQjoG8xxmzFqlk8DbOBKgNYAPpoFtHeU3ze1VKZXEzGpMd69YqdOwBGrziM1
         S+54aduT8Gt1SPpYgS6DRunBrgjxjXZ5FcbnGK2LnWnH4zx/DUnyvNuQOcxgC5DuRhk1
         BbSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfYzQ6Cb24XLmUJ+3KgxTB2Mc/RFdH82IDS0C2qwCljB1e5I6NVMqBddS80M6mOLqMzZCeMKNHwzk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYgmtCn/V2dzZ8x6aGHNmQ4k5LBWRT7TcQKa6O0S6nLEtQco/f
	ErPp1Pmj68IfPKMvtotRMhRutOJWpVVGE6vUiG5y8d/c/PdUJAMAkU3V
X-Gm-Gg: ATEYQzxF4EBdNEA8ptguSZN+KCiEUGmTTUpxOH/K4TskU+81WIOYpq3mEDnZ3EZb8sS
	lLFGcVLv/zDEHf7JXLo0UF3tJ4mV6G/7NQDAnPvVjIeTy1u7xIowwIeo7e16fOjipnbxMZMM+DN
	UD2fLM1GqUDr+Ta0pGkacZe5oz9UkT4dZuFF3V7mVv18HdmRMLwnwVJSQYVkd7ppkHQv3e6MSVB
	aenKBXI+L7Yo+WpMbzK/DftmjJ+CA8YfU8U8GbCWl28Z1ivw+N6u6jzM2pWCjiXNvhqeg05i+D4
	FJ07LEwuD5orXoZgUUZFSNWWj2p5LCAscFE7AhApEpvfsUu1jn47hCkpN+r6pkWcpfEOmhfqADC
	Tq6KEmpUSrYRsyIn7buW8fYG8bMuE1LG87XEZ3X6ToeeOTjztQDn6DhREX02812Zn/aNllL/JAW
	EvpsXYfbJerQWBM3GEUnGFrotIkWUuBbVx6Q5LpoY4ijZSCIhct7JC+QE8NF4VxfPM3rLXc9641
	5+P253Exk+Vd0s=
X-Received: by 2002:a05:693c:2b06:b0:2bd:c8a2:954 with SMTP id 5a478bee46e88-2c1097b8ae8mr5509864eec.24.1774230900153;
        Sun, 22 Mar 2026 18:55:00 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:59 -0700 (PDT)
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
Subject: [PATCH 09/10] fpga: manager: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:27 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-9-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185500_863331_5FB22914 
X-CRM114-Status: GOOD (  11.39  )
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
 drivers/fpga/fpga-mgr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/fpga/fpga-mgr.c b/drivers/fpga/fpga-mgr.c
index 2672070ced02..1e7585a4608a 100644
--- a/drivers/fpga/fpga-mgr.c
+++ b/drivers/fpga/fpga-mgr.c
@@ -716,7 +716,8 @@ struct fpga_manager *of_fpga_mgr_get(struct device_node *node)
 	struct fpga_manager *mgr;
 	struct device *mgr_dev;
 
-	mgr_dev = class_find_device_by_of_node(&fpga_mgr_class, node);
+	mgr_dev = class_find_device_by_fwnode(&fpga_mgr_class,
+					      of_fwnode_handle(node));
 	if (!mgr_dev)
 		return ERR_PTR(-ENODEV);
 

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

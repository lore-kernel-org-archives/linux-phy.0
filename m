Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80AD1D58CBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=no2NP/yxEQnRmL6/EJECmwy1ZFGpjsxLlkoXi7FWMWQ=; b=I5YPi7LU09Q5YJ
	RxjYIg86DqiUAJw/D21xWFfnd0r/O4bwFRHT9711dJqP12ngyveCoXTOd4RCiM00ARZDKOwnkjwng
	kMcmMEETYl+/1acuD36cM+DbHO0eN7RviI2VhAIZIlKeD+IeHEZEtPx0zbgOXrUbtXzSpoxrDP+DR
	4j8avgZ0f1srYA0iBmi1tKym5CBunpv6y1w6dxCYNo+fclRhFxX1FUOQcRI1B/Zg/zGWwu5YtR3RK
	5HB5kL3paAGsLuuNTx8CpuPBsUMRqtayi11BLYT9+w06MSg0kRGS3gUcpyiOdkn1X6yPwfPwBPRdJ
	csAssMWOH1fndazMxX+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVR-0000000FsGR-10mY;
	Mon, 23 Mar 2026 01:55:01 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVN-0000000FsEp-3OZO
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:59 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2c0e3a2605fso653000eec.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230897; x=1774835697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JV33ceOiC1VxLFfbHMOp1tzZ4L73tAWczcXKydNsu3s=;
        b=Eot7GmTgCAOKDpwFqBvZRHAew19FYFisXNsMv7nEnDmw2HM2/BW/ssbp3983dRzAhT
         o4nV12J45e1C0XDLAi5+UR/anHTmiXH3lZXEi2KJZd+3ZTq8QQj+UZVm9lrlYtECy0P+
         tI0XoSQAe4LtlpEOVwq2EoepYNTsuCcuIJj08/Y3b0/A2Q5tALBn5WwUPKuKolePc79h
         QyzENQOF0zjMlDJpDCTvTGFCH6a8R5yqkw1iZ9vLbNcut9ZS5qd876SawPxObHrLDgJM
         REhUZ1NKcdBJOSjCOTdfoImdZKX4l4a49bKCQkaxKCb2iSz8kiOfWQbRriOLV/N+5VVu
         g1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230897; x=1774835697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JV33ceOiC1VxLFfbHMOp1tzZ4L73tAWczcXKydNsu3s=;
        b=VuGbtndzQFOT2/e6spzwJxIYXDP6wVT4XnBFSQbLmZMIa+wk0kDw/XtDcTWxFiOWbA
         mGXNDmDyKu6cFPXdMhNFknTfMCWu5eCaXqu/diytLQv0+yUuA4CbP2hojGOHb5WhFgRm
         7+oi145Jku/cOWNjvfCUO9v7vi41u0av9v53dmPBcZtQpJzOyuyATr1l99AIg8/+qWJ0
         KKoVOhzQAErtgP9YhaMuHur8IYIHQpy2o0dZvdVrbPqqbRC7j2IEBxPqll/+bD7OAoca
         BXEKoQYUzg8a7deFp2eP2Ay8BiH5y4bDGd0JUDdn0tDB0NXbhRjyZWfHqJOPGghzIQWX
         UFyg==
X-Forwarded-Encrypted: i=1; AJvYcCUeSUD50w894Z4bDi6mNkshaSvRDeWEhmF4LUXNWExrO7X9mTbzKzaD69UmWrZ+aJoj/SiddagT+Y4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx13PZnqbEiOhmP66ACPt2wiXRhvgqY5MklJRD27B4lF7nWolzV
	dB0XWkWQc0wrzGQLwPzP6uMX5tjQa5sReLERZMwQn22JVCi4VsaoC1Pk
X-Gm-Gg: ATEYQzx6h/0uI7uu1CunGKMKmkOgzdOIhV7ETUwa62O9Y9bgDy6at/ruPdF07DHPsBV
	HfMbCIrK8q5Yy/2yGu7BDnjoIP22tLucZDK/eAE4v1iiK9fARxjCbFnUEJBi79f7/lX2GvWeGGp
	lQA9I/FvHn+74rGZs7jkIkHqpLmNIEazdShMLDVOfs38lmTUxTTAfG14O/lzDbZWzWPvcJG+HvT
	Y6AfB2qzKY6NJ9iTDlwYLRsQ910reyxx2LNF/OqHWG6TXCulMuLM4DCz3CgpIfU27AHAGfDPMki
	aa/iC0BNiYDRwNnpRpf19ZBrdPx2gZOzqiBFmWsG0zpXVxRC4Xva7oP7zZteGXHbbknajQGGNS2
	CbM0blJZtjeBh/gakOlclhHz1hsmJg5hxG0iSb79ziXJ2TC4mhbjDLXT6NkfWeQAi66Q2DHiL+0
	Y7D5M8G8bFtixJDHI5Y9Y7KclhdeDukHtyr5/wyAhM+osKq5lSLnatS01vdCKhArMDbjKDrT/x/
	RYEs6wOrO1borg=
X-Received: by 2002:a05:7300:e2cc:b0:2c1:27c:75a6 with SMTP id 5a478bee46e88-2c1095fbaa9mr4810786eec.10.1774230897161;
        Sun, 22 Mar 2026 18:54:57 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:56 -0700 (PDT)
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
Subject: [PATCH 08/10] fpga: bridge: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:26 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-8-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185457_965287_708185ED 
X-CRM114-Status: GOOD (  12.39  )
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
 drivers/fpga/fpga-bridge.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/fpga/fpga-bridge.c b/drivers/fpga/fpga-bridge.c
index 8c275bd48a0d..3e04bb4341c7 100644
--- a/drivers/fpga/fpga-bridge.c
+++ b/drivers/fpga/fpga-bridge.c
@@ -9,6 +9,7 @@
 #include <linux/idr.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
@@ -94,7 +95,8 @@ struct fpga_bridge *of_fpga_bridge_get(struct device_node *np,
 	struct fpga_bridge *bridge;
 	struct device *bridge_dev;
 
-	bridge_dev = class_find_device_by_of_node(&fpga_bridge_class, np);
+	bridge_dev = class_find_device_by_fwnode(&fpga_bridge_class,
+						 of_fwnode_handle(np));
 	if (!bridge_dev)
 		return ERR_PTR(-ENODEV);
 

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

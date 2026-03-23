Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 209B2D58CBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/u7dE5JXrS8Veci9XzMiod5yRO8mtMU+/T3y/x51x/M=; b=jO8gzRrqGbfdqM
	k4EEQtamKSVU0/34EP4boMw5h/WlBSJfwDfhI1JsMKbgEoygc+QQQno1E6AtFMQXwF7IUJFiTAnic
	VqVvVAYcE6Bvpz8ZGKOEMCkhcmnfu9olhrsBm3V++LsTVTxhNGqbq0BuBxj2k9s8R7CDmHG3Xqc7M
	8KbktOyaVDTNcanBZTb7z43gEvmMX2GuLpccmaB/QMkPZls6R9u7PKtua7Hp1Xjp/milNiLAqynTh
	fsOgpOpoiqx6hoHNJPy6dN2Q4R+PqbLg+75rr2BQcBWGMISWQmhlfWcAupglfBueKyf1/Fv1766cv
	XtdfyRN0SyX+RaNC0OqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVI-0000000FsDQ-3cMv;
	Mon, 23 Mar 2026 01:54:52 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVF-0000000FsCm-40Me
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:51 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-2c107ef474fso4398389eec.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230889; x=1774835689; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xQXLY86FxuKQON46KYMFrgiDaURA8SjvslLPqZRssqU=;
        b=S59wGHl+SlZk/rQCAW1vuUhCry9iJ/0nT5NeUY52G5l4ncuAoR8J8T2OxbaXUINz6S
         qXTKKbQH/212zZ2XETW5AlF1cVoHpXrvBBVocTb9a7geRfO38ISM4ha9HuogIZoeuAMC
         lH3UJZcHmjLa+9gVQXeupdumev14RDVzg1Ta1pEBc8ZH6C1aedw8Sw2iSEDJ0EofjsqG
         aC1g0ScsbdlXVQ1Lh5VfTmC4PSv1jkA6yAZNCya6BMs1RsKqPwx17TrONVy7lzk2EUUH
         GOtrIoqVfyStPeRh05FGQGpIKVn3k7lnB7eed0+33zB+ORh+SFW/VdKya1KjxKj7oU9a
         wI/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230889; x=1774835689;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xQXLY86FxuKQON46KYMFrgiDaURA8SjvslLPqZRssqU=;
        b=asSj6gU3KBXLYTqx0tS4fN40ZDAEaiZkfbvFkUyV5l2qt3duTqN0OTuztluBHmq5pF
         FIWbELBbYaZlmh1jlIpgECk2K2ZrP2zT+UezGdUG3lDryrMp+keb0aoX76/yEi44xWk7
         OnCjWjadT6vWtjpcAWz/jHHLL2aLRLXrkrmv/uorSp0Nhchv9T8ydxpYXZlLy1egfTif
         XtqL4jym5Sq5KeTRDPxAWyluWNAA42m9A0uZUGk8KCZury9dFXBOAguKNm17CUJBSAZQ
         lLwUOz4Mxyk4/R+R0fDl6W8Q7GFOvR0La/WwRbUlpabgbCxVlmWmSX2k0cqBVuW9GuYc
         l4jw==
X-Forwarded-Encrypted: i=1; AJvYcCVbOOBCR+x8IoaAhkGlkbAWQng+RL+KcrQgla/M+26mxkc6+y47ftU+xnfmFdNaDrxUTP0FD1ZDfUY=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz9DZKmbKaQndqKXodgR0uaOVGXit08EweDPhTslC+C1hcOgGD
	QyAOpDlmgEv5r0U/54VTt0QFwA1L4IwTn7FGMN5g/u3NlBHSOFQVNK6G
X-Gm-Gg: ATEYQzyk7L2tbbu0k4Q3RFRyHXDu9aFnoxcqs8ksWiUs2R/md0DDKVwCwYxa7B1O1Wa
	hV/lRA76ycK52xWWm31DRJBSfw5e39q4Q3cSwTkg8uVupBjzPyQIxhukvWghyiAEt0DVEj39IBz
	4MIMqkadeqMxBlEOP/+qMGrqmgmdV7wWzHCBz9GZjA2J6kp+Wvb6L27eX2jO8UanCzteZqYZ9yb
	aK1O7cwjN0sT+Oa2USi6MgAeUnmKEdAJL5j3bbKF8FiguZLFbQbaFXYrTX1BwJIUXhrSc2TOBGJ
	TnixHQYZmcLYv6CwCE9DG3KcCOYr9O83oxYDZd5N7YMoO++hrlz59y9q1AR+ywqM4JWQaOutoRw
	ph3/+xym2rQ4/Y8wrU/P3h9uKqZDXE2pgBVr3StASMD1kVnomuqP7UVD7hY/aFxK0p6KB+x/juR
	02vkdXpfrG1pHDJLUsypSxAykTjxNGoIOENHg6eIFnwICz6+pEmEIEi3GqvHoadVs9nnY0dsA9m
	bA+IdT9qyygi60=
X-Received: by 2002:a05:7300:572a:b0:2c0:bd6f:42a3 with SMTP id 5a478bee46e88-2c10974f0d6mr5302324eec.22.1774230888985;
        Sun, 22 Mar 2026 18:54:48 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:47 -0700 (PDT)
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
Subject: [PATCH 05/10] leds: led-class: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:23 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-5-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185450_087777_F67D3EBE 
X-CRM114-Status: GOOD (  12.05  )
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
 drivers/leds/led-class.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/leds/led-class.c b/drivers/leds/led-class.c
index d34a19453560..8d7ec9ccb173 100644
--- a/drivers/leds/led-class.c
+++ b/drivers/leds/led-class.c
@@ -273,7 +273,7 @@ static struct led_classdev *of_led_get(struct device_node *np, int index,
 	if (!led_node)
 		return ERR_PTR(-ENOENT);
 
-	led_dev = class_find_device_by_of_node(&leds_class, led_node);
+	led_dev = class_find_device_by_fwnode(&leds_class, of_fwnode_handle(led_node));
 	of_node_put(led_node);
 
 	return led_module_get(led_dev);

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

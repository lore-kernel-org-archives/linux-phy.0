Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F13C44500
	for <linux-phy@archiver.kernel.org>; Sat,  4 Jul 2026 07:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLlOHVm2Qo+2nllgzsihW6fOviYvVDQCi00LlE66rto=; b=iPfCZyFUcYunxY
	JnVCSQ81rvqMK1qQAm8w3Sfmdmmb8afYZ1PAnKBfAYkzUFZydLcx5m2razSh4zD1VJ14/ic7aal9b
	0ybQ4rOkwsOzq+gSRRWTqti9IYaz83O2JP2TY1NR1lVVXinOvD0XxaHgqDyK2+TZ8Ru+tnPfv8RBD
	SjJzJhOpZW0/ZSRUQO7b0YycIhyT22PRdfUd2HHNUb7DRNvVl3cjHrNn3PbR56/EXIWlHnW/f7a8D
	TywBaA4deQ5jwLyXbZ3TzXuwDS3owI3aATsHMby33nvO1FpE8PlwbsXTnd4IV3LnTIaiRvVoLFDyw
	GLMo413+KtkexY1Et5wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuy9-00000008GPu-1DSk;
	Sat, 04 Jul 2026 07:39:21 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuy6-00000008GOd-2id0
	for linux-phy@lists.infradead.org;
	Sat, 04 Jul 2026 07:39:20 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-46ed4f66256so1174747f8f.3
        for <linux-phy@lists.infradead.org>; Sat, 04 Jul 2026 00:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783150757; x=1783755557; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bI47Dpz0RBIpr5k7Gwsk0lZ7yNT7k5Nfr3De7ezpTc0=;
        b=OGHsEtpalyCUQbDzvTfUnscSNqdC3D52Faf+831MmJvFmwo9s5WCzHt/SvX/enq1rq
         Kep1NKpnXwENwnMkbrMcvSy2duNWYsXR+Ta69dpBPEdkREuLMGbXxVuyNiuwlBUrxjqs
         goGLrtM6LECE0lwWjf5nGRWSf3NeuWnHqyr/c2i2MiXOsKfxw2w4yigzUnQ8MF0I4O+V
         m8re/onit5Qv0Ar+5S5FU6ar6V39XNX++WSyMQV8HLgq5aUG8v8P9dt4OW++H1fLreOe
         I8gC8nh4mwDQ4TOXhpp0NsHx3zL58NXJNTLPmBICeITzwV8V+yIS3hRqsRfVz8jW5osi
         p96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783150757; x=1783755557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bI47Dpz0RBIpr5k7Gwsk0lZ7yNT7k5Nfr3De7ezpTc0=;
        b=B/0Q2EVQtvMTfyc81UZNAAsSVCPHHmNHFeIQ8t/BZ5mGHKeex6t3FUXJ3v9/zj3x0o
         8/8reRJ4Oy1ezOBWHLTkyNfZCZAwtOxFUvMryEifGpkSVQhcIn1oRkTBhCHSAmw1RFoB
         O/0zwMfjrv3zEH3puHDBR+edE6mnvnEa3M+6RlXfpEUZnslMXQfipygl35sEJcgNbNFl
         v08h6Qjk4dMql1SA4RuiyYTA+Ta7sDkKJXEQlfXYk4o2SGOaF+nsUv02HkgqaAmeDg66
         FMBtUp26kquEjAQbHQbNn5XM1nkceA39BVMeR4xEyJ6CM2Ric9Aov2GYkALolB48d7W+
         oKdQ==
X-Gm-Message-State: AOJu0YzmD7thevzmv+mpBby0thJszNNqQfqS7h7AH4NZrMZ6jE3+r8rg
	ivwZ4bPftRPc9Qb+1Zx644Gjd141WpnFc78XCUmSRwbKDKl2eMo/sl4a
X-Gm-Gg: AfdE7cnk2EA985jXGwM9Am1dsftlXV4kLz34e2f5MdfX+zit9jP9O79ZtskHu4IkVu0
	gOWueoAXg6cqfd1iQNKxqgtLUopTfNJa5eipd/N83V19GmMERKg+AUEhdOokxCNWXG03jNOXaoo
	XJN7fI/KjcBzTPjX1LxN2lNI/gvXFHq9FbJyHdNVLLJlExK5wm7qXh/oexZXE/1L5OwGVAraHeN
	7igZa3OLGKhqT87RTvLVYB3RQPxg0GLr4wgkoHKU4qhQLK1n3ZPzWUehgwFfWBEmkMQvFU1mzG8
	zSzdNJXsIR7zgYtEEcVeUgxTEUApvlog8jsy+Zj667kR+XUmj4SHbEoZLRnV8aIwSEGFSFMQ34V
	Yj4nBK3nPCjlQs/Xm5d29Q3nHnAf6TqdHZK4jX4AFeM9k2ci7Bm1j+VPB/fp+CQs54IC4hfEBg3
	CgtJh2npyJBzrWTvchbaCpdfonayypcju5eA==
X-Received: by 2002:a5d:588b:0:b0:471:2631:9d7e with SMTP id ffacd0b85a97d-47aacab5251mr2777565f8f.27.1783150756651;
        Sat, 04 Jul 2026 00:39:16 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1e736sm6565488f8f.7.2026.07.04.00.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 00:39:16 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH 1/5] phy: cpcap-usb: Prevent line glitches from triggering sysrq
Date: Sat,  4 Jul 2026 10:38:39 +0300
Message-Id: <20260704073843.1750458-2-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
References: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_003918_702720_C0A24A8A 
X-CRM114-Status: GOOD (  13.10  )
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

From: Tony Lindgren <tony@atomide.com>

We can get random sysrq events on switching from USB to debug serial
port mode unless is temporarily disable sysrq for the mode changes.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/phy/motorola/phy-cpcap-usb.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/phy-cpcap-usb.c
index 7cb020dd3423..c6cc8fce6940 100644
--- a/drivers/phy/motorola/phy-cpcap-usb.c
+++ b/drivers/phy/motorola/phy-cpcap-usb.c
@@ -20,6 +20,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
+#include <linux/sysrq.h>
 
 #include <linux/gpio/consumer.h>
 #include <linux/mfd/motorola-cpcap.h>
@@ -413,7 +414,12 @@ static int cpcap_usb_gpio_set_mode(struct cpcap_phy_ddata *ddata,
 
 static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata)
 {
-	int error;
+	int sysrq, error;
+
+	/* Disable sysrq to prevent random sysrq events on line glitches */
+	sysrq = sysrq_mask();
+	if (sysrq & 1)
+		sysrq_toggle_support(sysrq & ~1);
 
 	/* Disable lines to prevent glitches from waking up mdm6600 */
 	error = cpcap_usb_gpio_set_mode(ddata, CPCAP_UNKNOWN_DISABLED);
@@ -448,6 +454,9 @@ static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata)
 	if (error)
 		goto out_err;
 
+	if (sysrq & 1)
+		sysrq_toggle_support(sysrq);
+
 	return 0;
 
 out_err:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

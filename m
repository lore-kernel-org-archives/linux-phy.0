Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91F560A3801
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 07:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wVjx9BMG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ffroot-co-za.20260707.gappssmtp.com header.i=@ffroot-co-za.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=s0mXVK7/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XB0P/Vc8y/S8tEvTpzqVEUMI/6QlGcGy207d4FPZsIQ=; b=wVjx9BMGmqHDdP8eySugLBygos
	9+xG/XjptjSmQN8IY1QfQa0Gzmo4kQIyo94ZSpsvKz9lbZiJaR01fxhLTRVts6VXv0tREqQFGIZoC
	iJe2mw6pomNMmPq/b2gORSyNlgV8N7dMbtUYNffuGGxKeYpQhA3jVXYlLsKCsIsOKzXZ8zCRlnw5a
	qqKt9a5V3dWmgttQB9ccrKhDd4zp+UbLlc7A2AnHPJ/PVwrCMAXkrK2SlK/9NGY/bxvyvQT5t738B
	D6q/VEAEpYVeXV6lLlmGviCZ3BauXrq25yL5HC0Ooib+fe6MI2ljQetzqgypzGdwtKichduut89gi
	1w7aZxzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSrK8-00000001RJA-28BY;
	Mon, 16 Nov 2026 07:40:20 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSrK6-00000001RHc-1Qbv
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 07:40:19 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-491f34b4e0fso1227058f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 23:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffroot-co-za.20260707.gappssmtp.com; s=20260707; t=1794814816; x=1795419616; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2wEQ6p+0nkuHO38MDrTEOQ8Mro1bcRt+pQMVL3kDrCs=;
        b=s0mXVK7/+yIKcesKJIWF9f02r1GBeis2e1YCy3hihhEZRkYh43AW6Vz3Cy9prY8DSq
         K947EH16SuBWGev06sdoH2QrH0OkDdTMNUl3JwF7xR4jvCo0pacMN6X3tnFKiVoIPP9o
         ApF85MWpVq6doZcgOgHcN9sSKo67RhJeNEs50SScwcRo+iBqi9Af0bGcfYHEC9mjW6nR
         PKNUnDQw3Bc0Not6Tq0qxuh5RLuLJZZ/VXZgIov7jHINn+t21R7SoudoAdtrYxc7exxH
         Iq7dFOufdnggRrGSrHllGg96X1vvMmsAGOc0y+b6U68AddgAXwk/Omcyxs7E1l4FOwcj
         UqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794814816; x=1795419616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2wEQ6p+0nkuHO38MDrTEOQ8Mro1bcRt+pQMVL3kDrCs=;
        b=hZDwQ2MQIII90ZNXHd3DjzG69SAF6kg7vI5UYE2LnM84p/8SZezZDsL4hPVjXng+DI
         zKi5/ElvwiTXXTXI9AU2l6rYjR9/IFadtZhJCURGSYMMx6G7x/w8B1ZwgpPgmUD8IVVO
         O4VR92Ll5DUM5asAw8psgOUSaVoHCzwr8roS6yFRLtp1d/1FDCXeTMrFoYyi6H9k/YNr
         ZaznES37DgHId+YwGO3MwxeGqXhL5K3yX1ihi3VDCa3UdjW2tVTEHF9Hv9G8tnzSQlwh
         yznoq21qdcfReX5zKjJqo+lymOMPVncKitHYlFVwDX8dZMcaVGoGiEp+M6S/VZ8+OD5o
         /jBQ==
X-Forwarded-Encrypted: i=1; AL+hErEd6XzIL6EQzGMvGEv+5yq0t3vkRT8Se0csjzS5HWtPxyXiq4VZOzzqGaUkA+3f1J1mlSmKthrghzE=@lists.infradead.org
X-Gm-Message-State: APuU4Z+VQBlHB4v3mosJR5G4S6j9bW6P7uD07Jz0U0qjGpJjC/purq7z
	fmg6N5IzULxHX8coL8Pv9j/cjdxNyonjhH/GvLd6Ph7jtzQKWQPQP0QIyDSJW8bTNzI=
X-Gm-Gg: AYBFou2uG3p5GWDJKJEXU4SnqXCN1n5scWNkQlaqXT7pYwwKIB+lNSP249BgMm/A6TW
	L3EKXmBHTsWg+o/4/PW1rNPM/qTi+Q1u/Fpf5k84tTAttK+JgSoUJ9xWtBFuZk6H/EaWo7j2Ht2
	TlrGVMCQuMJxWx8toqn75GmxKwAyPPYDPSdH+wapiD8sqdb3qsUSH7jpg0uw/S3fZRXcEtI3Sgv
	6qvNyXzMWgPbT96qWDJN97pe3uuasQ4rRBF2X6zdHgx+UhfimA/8mKIuKSDLBTjnUbzn1+cEH0j
	zXQwefdAHXbZ+TWflRBc/K4xukG0O2lYXgB2MIaD+MGsO7UZKbsCeZj7uZNpN1jLaS/mmtf2elS
	7CevfxaduO2WNHnXpZv6+k3foaNYXZY8tvqwZPBKogh37OKxrdr3BU5TV70pGu24Snxl0WpmZxX
	oSIevcM3c+9T8NQVaYMv4ulETe5+N9CSTbdA2ust2oxKDtuQ38yfHUvrM4YlFIaQu4q7w92+EzU
	6GlQ9PD+MRtnFZveWgUpN7U6tI3keuvLQRz4+L41TenMWF99K6Q557FGYAv3zIupNC/w0S5bpWV
	/UE/n0hJSK52IScJinmDKggtgpN9Dk9xn5qchpMHO4qHeJJLCPGJ00EJ7sv8XaQWCr2gDHHBlQ=
	=
X-Received: by 2002:a05:6000:29c9:b0:49c:192f:cf34 with SMTP id ffacd0b85a97d-49c740bcf38mr14158063f8f.41.1794814816003;
        Sun, 15 Nov 2026 23:40:16 -0800 (PST)
Received: from localhost ([192.145.132.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c605e4a2asm20106374f8f.39.2026.11.15.23.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2026 23:40:15 -0800 (PST)
From: Andrew Gaylard <ag@ffroot.co.za>
To: Vinod Koul <vkoul@kernel.org>,
	Vincent Shih <vincent.sunplus@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: sunplus: free the disc_vol buffer in update_disc_vol()
Date: Mon, 16 Nov 2026 09:40:06 +0200
Message-ID: <20261116074006.20357-2-ag@ffroot.co.za>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261116074006.20357-1-ag@ffroot.co.za>
References: <20261116074006.20357-1-ag@ffroot.co.za>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_234018_407309_7ABC1C65 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

nvmem_cell_read() returns a buffer that the caller must free.
update_disc_vol() never frees it, so every PHY initialisation leaks
it: at boot, and again each time the EHCI or OHCI driver is unbound
and bound.

Free the buffer after taking the disconnect-voltage level from it.

Tested on a Tibbo LTPP3G2 board.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Andrew Gaylard <ag@ffroot.co.za>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 52d80a06abdc..043feeb6e267 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -20,6 +20,7 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
+#include <linux/slab.h>
 
 #define HIGH_MASK_BITS				GENMASK(31, 16)
 #define LOW_MASK_BITS				GENMASK(15, 0)
@@ -97,6 +98,7 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;
 		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
+		kfree(otp_v);
 	}
 
 	if (IS_ERR(otp_v) || set == 0)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

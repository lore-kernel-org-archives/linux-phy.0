Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A5AD58CBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwtnE+yTw1Ec+1LJqqNFmhNoS/IdTKvxg62LFRNuJdg=; b=jnUBurRE29Kv9N
	8gYHpiyXm065MRHy3DgL0DogI68IpmD69fccBhEAjDkTLofCdqTmFpBvNrtcb6uXuqzgxmq6mk7DU
	h3hq1yFOcTrBu4DxxINdpgIWUg4CWmd8RZknafMI1zS8WWTJR/wM1/JarQ8T5PrUZwcY7eLJKsGb/
	pbVD+4X0qOJlwsUS3OgqdnFi09iRPbmUnMUZKQREgRTcrpUAWwKgHXdOv7+W1zzEstvsnD1B61+SD
	X2LTEcWccL3GXRSG9Qm5zeU6WwSNPsWGc/LJ5tEJWeffBZ1nclt9B2ZzIaR5I+4tVN3mXHAfVqRRr
	E9RZvty86A3eWYHHh3aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVM-0000000FsEG-0S8R;
	Mon, 23 Mar 2026 01:54:56 +0000
Received: from mail-dl1-x122d.google.com ([2607:f8b0:4864:20::122d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVI-0000000FsDJ-49G8
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:54 +0000
Received: by mail-dl1-x122d.google.com with SMTP id a92af1059eb24-126ea4b77adso3523268c88.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230892; x=1774835692; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0G/uhHXfu21xXv3gnOSiW9nh+0t2XQiNOcz2tPqgk4=;
        b=D8sL+8ThXQLGNlQa1CeKvGaIUcd1Nro+si4mIFMUnMnuAsv61fiCRnR9EzbWuWiHW5
         F0dVHNcybKoYqWIlDTZgzHTKRvNZiy1Mu+ff1hfThoSRvAXTP/KK1A0hKk2USkz4Gpxn
         SLThPAllrhC1w1n0dhDvFGU/Jockf8tyZMmBB/OSVYSaGjENYB5ZqhoR5m3yh02+IyoH
         qFA8fg1L/yGWYXc2jJPHcU4fxmRwcYaLXxtymUUTnDrNyKFL4FWM4LyC/pjRNIA1kuOl
         VNP+39uYo3lFdyYfNVpSee6+EAFZ/8C9lUAkQnISbolXNaArXYGbSeliAsTiKqAUzNlb
         sb9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230892; x=1774835692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L0G/uhHXfu21xXv3gnOSiW9nh+0t2XQiNOcz2tPqgk4=;
        b=FipuOb8Jzpr6epFPzN9x2Hyb/ykvCOH0mIEQ9Y5TC3OvYDP3QRwXpN7432VJa02+WW
         IYZbx466uAFymSlAbCnQ3w0T+v6Ed9Na/TiRtmsYL8q8ddYhf51CIGlRZhmWBTln6ubp
         ZSW/UZBEPJmRuahaE3WeOEh2fEcNRqJNcsny9y8kz7pDLd83wHd/YrGPKgvpVtJcq4R5
         +/L4fziGJRuVcOBc7VXLnkSNs1W8qNbHISyhx01VpLpMRn0JfkwYgq/NnZlrF/Ac6giH
         9pB+tvraMoSfLT947x6yM0MtnVw/tArVQxd2w+YKnUebfa+D9WzTpmkoNPyYBZST/2Tw
         QRzA==
X-Forwarded-Encrypted: i=1; AJvYcCVqei5t/JD/aQ334aAsKU7As8zX3nc3oEnW6to4Y1hlPiECqbqAyiffBzyy3KACWVnHxFMziO7WNxw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwESdW+M/kYlTfrjqDnQJLqVBXTBrnQ528l8RNMnAxf7sRjTIE3
	WgTCQJuMjEgpHCnv5++HfJyrfe4Eh3gHvviBnABfSq3By5GZMzAqp+yg
X-Gm-Gg: ATEYQzyw8WBdh+Sd8EoZ1gzGJe2RLLHBEoX/cD8iauDZ78SE4z9oaUq6MV/1UAXSLtO
	84MARxQ0meZEyV4e06/xsyBDJ8TZCLlTvRMvvHCFnIYbki3Cy+vv3ZFpeWlepO4Z4vdXOhgdZLf
	YgFYbrN4Tvvf0MaY71J/Sjh9ZZhhmGGSuo/2T7BZZ/vPFCfyVO3BTdvcka5n5iM6dOuvxoQ07mE
	1wFXAh+NWh7tAWllgq+sMrjv92WKsj80zFVHfUcc1NtNggIqX6ZGDxK3oCIZti+qDiGiMvPttQS
	oApYZlBUOStSieu+crXQZ8YOtzcagtIPc8LGhYccmQa+v+HsqOSFy6oEX6D70Ozc1KRpno2mdEt
	IPhTIjnElhYnVQnwlpUiHr4cbcqIPB8SrMyZT66ODoKNkrIayZDGX9Msif8II29N8sJnF0Bigh6
	4kVzcaSFXOnKCfEuDTiEQ07aeeK5xGMIWtGpGu2NaEL/FviQ+ozoeCcL9ZP5raVddsM947JcHTD
	O8BLBlbii4c9fg=
X-Received: by 2002:a05:7022:eac8:b0:128:d3de:c9e4 with SMTP id a92af1059eb24-12a726db2ffmr4311793c88.30.1774230892088;
        Sun, 22 Mar 2026 18:54:52 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:50 -0700 (PDT)
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
Subject: [PATCH 06/10] mux: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:24 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-6-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185453_084291_58F7AEFE 
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
 drivers/mux/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mux/core.c b/drivers/mux/core.c
index 23538de2c91b..774d4cc67cc1 100644
--- a/drivers/mux/core.c
+++ b/drivers/mux/core.c
@@ -521,7 +521,7 @@ static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
 {
 	struct device *dev;
 
-	dev = class_find_device_by_of_node(&mux_class, np);
+	dev = class_find_device_by_fwnode(&mux_class, of_fwnode_handle(np));
 
 	return dev ? to_mux_chip(dev) : NULL;
 }

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

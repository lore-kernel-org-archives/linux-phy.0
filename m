Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA68C982FD
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 02:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZX0Fw70cz1r/cGIbulpbIQQWRv0tZ2rq+ppudh0BCI=; b=DSylPIElFxj9K1
	xCtmwjeAShUj5o63GG4le74Y9CpvCP0G0/uYfBAr1CqW9+qoR2YQ42ucyYdvMPbVueBLtFtg1aNMO
	+d1tcRRIH/9n+n29drlGfKYiAnkZHlpC+MVfvNUA5ltJf5KcfrXzkmzb7fHu4i7bcOvqrQIeKgB07
	FhdbUebgC37FeD6p3bcX4bUGKjbqzSFyzhcNrecutlwoK68/24h28gj6onFbcjp0RPqo6Mplx4JxZ
	4ljMbCJJnXg6pEfZpo+j8I3K6m5L9CmKd2kz5+AHtzCUU/4/iEXmbN9JYWKX7FbjrIIjfUCaH08xo
	/0lkI+kTgPX31fDdirlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYf-000000041dv-1bg2;
	Tue, 22 Sep 2026 02:48:39 +0000
Received: from mail-pj2-x1e.google.com ([2607:f8b0:4864:39::1e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYc-000000041cn-3IoB
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 02:48:35 +0000
Received: by mail-pj2-x1e.google.com with SMTP id d9443c01a7336-2d8fb334e72so33194195ad.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 19:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790045314; x=1790650114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=26rOLZ6VAdNb1QMWubw0rV33TxsyOkNQWkVFzg0YEAw=;
        b=oVAVgdU3LNlw1Ale3AdBTpCeu882adJO4poveY11AGjNcngxopNJU7lVv5ZBozNK9g
         /HjWXpY7jl0a4uvXbutCh2OyfokjCL4Uyp40g14k4aCee+52VV5zN5KguxcwNd/kD5R3
         nM9DkRJZ/HcCUa3og3bdcmpAg1ATRtb2/V9484mweBCM9udP7Yx1b9sJBogl7N8sM1rG
         gB69dW6VI2ZZgnDS/Cp8Du4ghWZYkrVjQjiFCD8GmHRplaoOulQ/DCvwmkpO5KEeIK+d
         P65DnIuL0FSTFzvX1XnjX+WP4INArKie69yGpujIDR4PS2ef3ow8RBDms9QoyHCLhCTs
         OuAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790045314; x=1790650114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=26rOLZ6VAdNb1QMWubw0rV33TxsyOkNQWkVFzg0YEAw=;
        b=C4EnwvAWU4e9r613qwfjxVHeIgmhi8EOatZhN3xfZ/uL0DONkjahQLqWATFRInia1I
         /1OsinR2cYzDiyxofuUNNedEmN7WPPeqfulCE2HHRV37isnvA58tziZNJdNaaWHJG61b
         xTENyzobxMFrijrBt0aZ7f0eJBygYNr9Es5dEGJtDN04bBSi6/M+tIEYbxdgkZmP645z
         JIhzgWAPDdsCgfXIPuYUWWZ7+4zL8kbOVblkefO3dPz2KnDdhgtF/YJ26UahUs4CvWhE
         Xez56eTBpvLlHSxwD8D/28//DN19qvbyGQCZd0ygbSxSWXynZb/ABKN9mMoiys/p917Q
         brMw==
X-Forwarded-Encrypted: i=1; AKwUvBwZb7+yAopZWcHxu0G0XmC0VzkVZ7MbIBT9cTWORWrNCmuKqKmKWyqOmkOkRkSKO0V+DEljN5NOJKE=@lists.infradead.org
X-Gm-Message-State: AFuF++nhtiGbcK6ee1hUulpZ7ML6rxCUaU/KWRtjA74dPWv6vm/VyaU3
	JRjrh54xiE+U8HSXNyfeFtrJFzv3uiUvz9DLoIugQUB+KVAmzCDDqCMB
X-Gm-Gg: AYBFou2fKkhrUa+KvcguXRC6uZuu9mULpPE8oiiSNLuSz10hCn7xv+HYlIrQWHasImg
	FtVimNvPjtH8jBTpKnU6UTMH7rlyluu7aCY3Q/CYjpLWYadyfdaGtb5vgkdtCfxoPgoUT6TOC9Z
	FFotL5f6okzpKnnFH+pxUD7MmSlwHn27TUV6+djq5Qcgct/oKZrfOZztBRwjQdIhFOg3TJH2fJM
	Ve2BsipCkPgAwsvhOiyn7EpeqPCyLickPUf0UPXZtDnB0JXGNlE1SDYOAikR2ZUyTwUL2vSXbuk
	PE4C1dfbqhz9oQUsjCNaPceA4DHV2xgxgo9zFn1XI+VKR9OkA1pp3TVhzooDmmz46Om5WmutP61
	WJqN2bmIqZueiMVBKwZHfVkrR0vpwaNN+x58wZY1ZKiVs4um7wcHlorGNUyyx4pRmOmGq4PbXEf
	8l2r+MM6MWSKE7UZlecumGJ0FqF3ng7FdQeUHCYH49JVrxknFe+2MaPyKyuAR9cWrnWwmGfg==
X-Received: by 2002:a17:902:c402:b0:2d7:3f6e:5cb9 with SMTP id d9443c01a7336-2ddb1b7a04cmr194077855ad.8.1790045313882;
        Mon, 21 Sep 2026 19:48:33 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df5d06808csm1648645ad.83.2026.09.21.19.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 19:48:33 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Hans de Goede <hansg@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [RFC PATCH 4/5] usb: dwc3: core: Adapt the return value changed for disabled blob
Date: Tue, 22 Sep 2026 10:47:19 +0800
Message-ID: <20260922024724.191412-5-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260922024724.191412-1-inochiama@gmail.com>
References: <20260922024724.191412-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194834_837535_E4E2874B 
X-CRM114-Status: GOOD (  11.46  )
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

Check EOPNOTSUPP for disabled helper function as the change in phy core.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/usb/dwc3/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index fd5c2cd36c59..6d253810c71f 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1588,7 +1588,7 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 		dwc->usb2_generic_phy[i] = devm_phy_get(dev, phy_name);
 		if (IS_ERR(dwc->usb2_generic_phy[i])) {
 			ret = PTR_ERR(dwc->usb2_generic_phy[i]);
-			if (ret == -ENOSYS || ret == -ENODEV)
+			if (ret == -EOPNOTSUPP || ret == -ENODEV)
 				dwc->usb2_generic_phy[i] = NULL;
 			else
 				return dev_err_probe(dev, ret, "failed to lookup phy %s\n",
@@ -1605,7 +1605,7 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 		dwc->usb3_generic_phy[i] = devm_phy_get(dev, phy_name);
 		if (IS_ERR(dwc->usb3_generic_phy[i])) {
 			ret = PTR_ERR(dwc->usb3_generic_phy[i]);
-			if (ret == -ENOSYS || ret == -ENODEV)
+			if (ret == -EOPNOTSUPP || ret == -ENODEV)
 				dwc->usb3_generic_phy[i] = NULL;
 			else
 				return dev_err_probe(dev, ret, "failed to lookup phy %s\n",
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

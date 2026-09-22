Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57748C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 02:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ji25/b+ct0JhX907aipUw44QvKBGKjzC1c9ouybZLy0=; b=Og0AlXjGMLHHJW
	AwcYp00dqgEdw1W7Xee9stcNmurBE4UQ6E/dpwAdtWlGZo5MJWxp64yJ3mOC947W5+S17bq5OFeAL
	Ppz/Ok8SU0Y/BABTiYV9eKYmRfS2a3WbmB3EJGZNuvGftcGmhP5nzYgZp8tUudnBE41jO9UTbbF6y
	V5SO8xz+fgh0z0KDWh9AWP3P1WSKS2GvL3IA6Y/qpXWqKFaCPczwOS8jikZ7YLYB8iL9QrG6NsZN8
	s8wGQ1350FzEEh0J9iIy3PqARn6O00bA4TafPF6jCfVsjaNXPy6nSwIlY/rADQOcmPZJLykTnCPyC
	tuWPFlyaIEoLjjF1RaJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYk-000000041f8-0B95;
	Tue, 22 Sep 2026 02:48:42 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYf-000000041du-1iYh
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 02:48:41 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2d747f066d8so13480025ad.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 19:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790045316; x=1790650116; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JQsnO6nBZnTmHd9o3wzHwpj6ldm3p0l1ScGQLsRwCts=;
        b=ruhy/1kYjKx3BEuXIzSOWRmjwWceSpIrIXMnF4glyaLGlzqMm3X82Uud03znzcqoV1
         TSxHJAqoUY2N42meB/wndDTsAWehETj8Zuc4gxnCZAEvHt5px78HCzKpvE6H5M3j6vPk
         mjOzm12kSEouKIcHt8GM6G/UeuDKams4Wrai2JsMge7TglvkB5OuGz8/14+ZTvV7uIn4
         sC8dX5QRtDDd/6dqyZGgY7pnRCc/wOYjDZ3WrEYwAS3LmSaiaLoSAOxYktTYi7gQBchI
         jpEjrtCRCv4steBMW6/Xwro9EoO3rdcDh3SddPrRMPYtvJwEzx2Q2ZJr7DU95D5IvGJ7
         qi0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790045316; x=1790650116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JQsnO6nBZnTmHd9o3wzHwpj6ldm3p0l1ScGQLsRwCts=;
        b=uI/wVgC4kYB6/zyEqLzV/jVRJZ/l3qEi9nMwEs0AmmDwXCQBoq6jmn8dbN+CB1t3mh
         07DqQFwf2ZT0CmXs/MQaTDQlljZUdWYJZPwm9tpOXqNeHR6PBcrBpVnZizB5X+9MrAAz
         pWDrqc/5mgJpdn8AMN4N/sknG6jMogE/KEWJYKMYxQRGC2O0WkyZm5W/5+/Gqrf36k20
         pnHUcWJ/hv1PqxmdRgPGpDMJ/tOgS99rnwNx/diYNXBMDGbfAHdcV2Xctit7leZ1nFha
         iOY0UQGYim/P0M3MTbQmu7ITaZ4wJplFQwGPTmI+yl4p7ydM9hpDoTb90UaIw11Kilif
         VyPg==
X-Forwarded-Encrypted: i=1; AKwUvBypG4+UdcttY++3LNEAb5+GcgBkJyA+MYiJsr/tomNWYzYqvVVg4zFF7CqC8XIi5y1H272xGdZzxF8=@lists.infradead.org
X-Gm-Message-State: AFuF++lnCziAmZnGHB9NC8SL7eEp1NQZKaEsry1/aqqTJA2H/9Ckh2uU
	mXkGzYAeFEpv1rxCaXX+qoaL8GVO0PSZrKGAmgYIOuLH/184EKouM7JC
X-Gm-Gg: AYBFou2kISzZyhOJ5VRjURhLCBu/nHqqWcBEbsuOYfBQ2xDiYJ6SAfLT9MzDxCEKh4e
	VDIYkcv6yceHrod8OBMU/adN3mXkQtfpJwxEPNvMxyXyY9wM+jc0mnNH5JXw301nVtljPjCoUob
	izUAoe1KxQd8Cge2F/9oH/oXvpBN8A72bSi7WnNYq9Rc7Oghtk+9Vfdt8jUKCrDKUbeXkVUhrzK
	ndjWQC2kg2PJX77CaGEDrT6PXusNH/GVsz8I8DFmDM5Mku2t/tyVbkVys5OrT8xnfqbcNw/VYwR
	dR/Ep+8VuPrr8LrW6VbWZCC4eNpVM+8Q5eq+CWfydLS8J/4Z7KhTXzzkoqibxbqDeL6ZXncOEz8
	OFnod0g82PoUGcHKBVhFgPFM0FxEsEduJbr/DmiNTZAGbSh8QqiUnp5JUro3hV+BRsLzyEArigw
	1dL1l565BnoGaCYfq0z/8qbk6rV0GS+VqSJcpK56mtZUz129VZCU+uBYVe+RLBYLJdo0wFZ4Brn
	EqeqS+T
X-Received: by 2002:a17:903:2ecf:b0:2dd:c100:251e with SMTP id d9443c01a7336-2df59a72ef5mr12835995ad.39.1790045316497;
        Mon, 21 Sep 2026 19:48:36 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df5d02e929sm1619035ad.33.2026.09.21.19.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 19:48:36 -0700 (PDT)
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
Subject: [RFC PATCH 5/5] drm: bridge: analogix/dp: Adapt the return value changed for disabled blob
Date: Tue, 22 Sep 2026 10:47:20 +0800
Message-ID: <20260922024724.191412-6-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260922024724.191412-1-inochiama@gmail.com>
References: <20260922024724.191412-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194839_983182_CBFE3E08 
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

Check EOPNOTSUPP for disabled helper function as the change in phy core.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 30c0c0b41d5a..8e26cd772482 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1360,7 +1360,7 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 			 * phy itself is not enabled, so we can move forward
 			 * assigning NULL to phy pointer.
 			 */
-			if (ret == -ENOSYS || ret == -ENODEV)
+			if (ret == -EOPNOTSUPP || ret == -ENODEV)
 				dp->phy = NULL;
 			else
 				return ERR_PTR(ret);
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

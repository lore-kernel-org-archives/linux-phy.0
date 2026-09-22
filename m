Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D8EDC982FD
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 02:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcTM9O2D66b3AK9F5M6iCuYqppCHyUvkC8Z6gRCUcxY=; b=aAVafl6yVkX9V5
	O7n62KSgK3Lg/RsVWb6FbBZe+5QGGAP8Ff4Ci9XWle2Wi9R93LWEn+JqjlznogakAKLowMXDqmcLU
	VFLUL6hfaBG9OyKYy9KsuoNgLcqyRPXGVbpbLxoX8BTTwYTF5mafa0CLRfFUn5ubHneKuj7urxMYw
	99gUYOU1adQzkV4TlSKgO8tpG1ibMTKtiDUrda+SZltRzAE665kEaGbCbx7DMrGgr3blMYFUDGKXI
	3Un2H61Vcnosfpfb+onGM3hr5sCKA/QMtaifCjdCwutVMDnyaloNQqqXMHk7Dxkk+kZNHQiT1c5cm
	eGlnyLpLS00xKuSA8hlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYc-000000041cV-14YZ;
	Tue, 22 Sep 2026 02:48:34 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYX-000000041at-1kqN
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 02:48:30 +0000
Received: by mail-pj2-x11.google.com with SMTP id 98e67ed59e1d1-396ccda24afso2627416a91.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 19:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790045308; x=1790650108; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rWmT8GXNkKIjtVq2Tp5ZmO6NxHuTlquOEZj2eN8N3GI=;
        b=b/UsjQJxqEbfH0AmZxXMyDl8+sK7BdASaWPsVYbS1uRoJQClS5G87NVEBKBRwGaF/A
         whoZuRNc8dkKlZFjAY/0MWdoLRJEqsT6009LnVWMBpac27s3utfYMShijMLCCf8DMtdZ
         rwVqJ4jC/5jw1FMb2/EYHkpnxSShoEwjRbKjV5gqD12YPFqKkL4xIuJRRvF/fojQ0g/3
         tdJqthCpcoV4qVbul3QFJUl5jHUrEm/XYocHgwBn78H3MLHlNe9YPGj98NXgRgemN9B8
         YMZdOCp+Y2xH+3SENLy590v35Qd6wZ2ZCGDj7yzEIhsFQ5KR4hvIyiGnZw1yuNqGu+80
         D03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790045308; x=1790650108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rWmT8GXNkKIjtVq2Tp5ZmO6NxHuTlquOEZj2eN8N3GI=;
        b=HDNpxKdENgPX1e5TOsJIp973Iw51lXSYIhXVIxZDjDP8nhQWI/idRa4gEkpzrWbZdS
         vaG/J0QMhAvo5jiF5B+uEkb9Z1CpbyQzhuT9GEy4x4XtBuKnPU4l4CgAS1zWJ+OlFsjl
         VzlgJwfqYQA8UKxVzTDnZ8kgc9BTEHfli0tbCAeDcNfuep/bpWJsOjmpbxeun2tE0uL9
         EOP6vKMuJikhl403wmKYunoSelBlAPlQPN8QJEQ+S+rLcc+370Z6UHO/d7ZEw0kRYpoH
         gkHCx3rTKZjH4bv4ygDDCIxiCyAI28YdtBv8Ges77DEFK3GEyiS5EYfKgTzrYtOR411p
         Ucrg==
X-Forwarded-Encrypted: i=1; AKwUvBzkEjyOFpDv6EMOukLsAHSa1uzGYkvJ9ZtINfarK/rmef/B+Qx2d7+LJCDTabOxhMSV9oK2nj+dcvE=@lists.infradead.org
X-Gm-Message-State: AFuF++n2mlBsQGyL1t9yfWvzzEAtkpIx19Ze8amZKcW6Gi4u2BCLgnbb
	BZ+WcB0MLAx2kUO6eAa1au8r0g1KTIXBg5oEExY1qy4n9iHrtRKAm8w5
X-Gm-Gg: AYBFou1gfqxDlso78xbOVHqFK5EXMpsIOk1DoWpfPm2N21yD5kZQinoYsSA6IN2Azqy
	L306ien/4M1IeJVnZCUdTqgllbLpGauK91GV0/REdcVj92bN9Ka0joPlwK+QAKDABCfDfLDe9W7
	isMNBB300jeTXpyBS+QuZG98ZJUShrkUKGo4ksThD6menODBmJoxUaXKv79HG/J6tTbf6U+B4Yb
	OuvDrA+x6jg2iS1AIVOI70/xhvxbtn/gGGjQagaU72qNBQPaFJW/sLf1v31NHHjzfF1Nc4mEXAm
	0n5H7Xx2yv03eSgRWjv2MfdcN+IXF4JfMDXfiWUp3uvN0pATo47osIex6MJvTORjfbuyMGmchqh
	75iywEcemBuet2gCbtvlOwP1VfnA/Bm86bhywLUQjKhy2o/h3lXM0U09nI6J5o0Unr6y2pl25qH
	EKBN+sWx7YKHNzn+Wt/qoVmAcs0ThN6s6ycTS2gjd3iCeUPvS4X5kOhZTrUCDCjT7nuLiIpXVTA
	Pn1OdGi
X-Received: by 2002:a17:90b:224c:b0:39d:f317:44cd with SMTP id 98e67ed59e1d1-39e54eab3dbmr22577003a91.14.1790045308578;
        Mon, 21 Sep 2026 19:48:28 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a06caf4a73sm297312a91.2.2026.09.21.19.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 19:48:28 -0700 (PDT)
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
Subject: [RFC PATCH 2/5] ata: libahci_platform: Adapt the return value changed for disabled blob
Date: Tue, 22 Sep 2026 10:47:17 +0800
Message-ID: <20260922024724.191412-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260922024724.191412-1-inochiama@gmail.com>
References: <20260922024724.191412-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194829_471436_166F3CC7 
X-CRM114-Status: GOOD (  11.56  )
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
 drivers/ata/libahci_platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
index 6e072d681341..3e8ddbeb49b3 100644
--- a/drivers/ata/libahci_platform.c
+++ b/drivers/ata/libahci_platform.c
@@ -371,11 +371,11 @@ static int ahci_platform_get_phy(struct ahci_host_priv *hpriv, u32 port,
 
 	rc = PTR_ERR(hpriv->phys[port]);
 	switch (rc) {
-	case -ENOSYS:
+	case -EOPNOTSUPP:
 		/* No PHY support. Check if PHY is required. */
 		if (of_property_present(node, "phys")) {
 			dev_err(dev,
-				"couldn't get PHY in node %pOFn: ENOSYS\n",
+				"couldn't get PHY in node %pOFn: EOPNOTSUPP\n",
 				node);
 			break;
 		}
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

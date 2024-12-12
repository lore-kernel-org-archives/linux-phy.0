Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19074E7717D
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 02:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aB4PJcbF5kDLD5gVHJ58NMuuEo+vw+j4dhIg3Tf5JV0=; b=v+dCDmnbWPi6+2
	EhgdBdfHpIwpoKr/D2K9mN7hG/dKL8D+HaKNNV0XbNcs8N7ouyO4xxSchWHS9ZGoELFhRtFuBuuqj
	biVOdv7JkbPNfCkAM7Z14fIqkH+kdd8soz5DqZIBZxoJmwbZpVVC0s6D3LTkxzS8eGtL7HtjFcO/5
	d9ezSWFV/HbaxzHhFsctyG4Y4KOoWnTUFdvWrnYNz+2/a7Marlqz5+f64U5mCAVAa+qiTxAjbzjo2
	zQPOuAeuLCDNSBqIOTbRCtXJKWuPmwZthxgiC/6xqP8pygtOgCvj71ZEM3LeUjabFVCWGZaPcf3qd
	iO0f8ChgA8K5jdzLklDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLYfh-0000000GipJ-0ozy;
	Thu, 12 Dec 2024 02:11:21 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLYfe-0000000Gior-0RKh
	for linux-phy@lists.infradead.org;
	Thu, 12 Dec 2024 02:11:19 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-724d23df764so89622b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 18:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pf-is-s-u-tokyo-ac-jp.20230601.gappssmtp.com; s=20230601; t=1733969476; x=1734574276; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E65KBC7f91KgkavJ5Qiy1kBsgZOyZm0R3GiOc9R7E7g=;
        b=Esfx7kjaEPU8WaEPOZiGRCT6c0Hmj76djjjP32kk4qwFDuWWo7E/FMw72SaE3S9Nq1
         A1yboDeUeg5U37itmkrVbolbZQMUcDbmd3q3O8REaZCqKEYGw1kCi+NIef29qiYB/KQV
         Da7nyaVxexPhX1jHVWlCr9IL1lTzM5o61n+KF2rhg9pM6Z9XdzQVHXbfmfGn8YfR9Qws
         4IVzs0Re/yb3vaiMFmW2QCRz5QjK2pYwLQlLJ0AY0UqMaI/M9xwPFLjN3ZNKXK4FbadE
         /Rhf1uqetZpM/KCClotyWFzx5uxeDPIQLQP9m21XfPc9K3dX8H9pUJ6gHY6UfeXeqq9x
         +JzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733969476; x=1734574276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E65KBC7f91KgkavJ5Qiy1kBsgZOyZm0R3GiOc9R7E7g=;
        b=JaPgPYytAzL9n5LrYOKnVSVOsyHMsoSmJ6CZvq2oKCiA31ZhTTxWmINwfxNjZtUxa0
         Y3xfaDseLXTdZ56G1mBAujbt1n94noTyi0B++KYdd1rF8C9Fld9PBxdX7Jc7BG7T2RUJ
         V+50+j+PpE9cozbFsPL7lTchUgc4zHgN98X6VbZX5M/vDpZGnYKRnvbnaOG9R3nKZR7O
         TCjzfMxE5g4vFKUaJ/CdN7ohvAJFAxF+W0Xx+K6qqMjj6s2uQzraK/ip9fHEQ6QYyH0Z
         FXqTLJtf2x/kj2oo/RW34oSOhMpExCZD20qQ1s2FnPQ0ugKnmwEJ0rJ6KaB0ozT8t2+C
         sbKg==
X-Gm-Message-State: AOJu0YxzYnMvPtBNnCho+XfNJT8IKbbd5DQgOCm2feVsNd0ZI0g8BgSg
	aTcXCoXev/WDmFwQcZvCQ7AyFURcywIeqloN8qnTwe42K+yI767CmsP2G/5P/50=
X-Gm-Gg: ASbGncujONpqmod3XwyI6HtvNKbFNfn9zYaMHceh+rp2LxTpWZzftxtLiFNB8bCuy/0
	gWMhr6HfWCBnxRDSJTm2uO9HptY8XhtFTSKAtr7/DaJlZiq5B+uaEVyivU9ZqaSE7o8LTehZzlC
	me3vY6MEC20Q1vwrJtkKjrZhcBEv1QUGKUBXi4w2RLss2Gg6T9jr3Ev28lQ5XGJUngnQTxcYWB6
	VSOOEa74rMQT31eMjyGsVmvYR5UyP5pqni7KdXCbyG9/Los+eOj7UOICLIdxFwDySVagQ0tU8Ke
	OtKlJddpc+Fc+UnV5UCczcENDPB5etPqMSW/ntaUO04=
X-Google-Smtp-Source: AGHT+IFzGm0zYHOtfbxZkoX0mMJNquZVNETp9tuC9rG5p/5bQPUUlG2RCP5ElZtt2GWyJWP4aY0J7g==
X-Received: by 2002:a05:6a20:d50c:b0:1d9:3b81:cdd3 with SMTP id adf61e73a8af0-1e1cea71c61mr2131757637.1.1733969476313;
        Wed, 11 Dec 2024 18:11:16 -0800 (PST)
Received: from localhost.localdomain (133-32-227-190.east.xps.vectant.ne.jp. [133.32.227.190])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725ef4078e1sm6112661b3a.65.2024.12.11.18.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 18:11:15 -0800 (PST)
From: Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
Subject: [PATCH] phy: core: fix an OF node reference leak in _of_phy_get()
Date: Thu, 12 Dec 2024 11:11:10 +0900
Message-Id: <20241212021110.3428320-1-joe@pf.is.s.u-tokyo.ac.jp>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_181118_373128_EE7C2583 
X-CRM114-Status: GOOD (  10.88  )
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

_of_phy_get() does not decrement the refcount of the obtained OF node in
the error path. Add a of_node_put() call before returning.

This bug was found by an experimental static analysis tool that I am
developing.

Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
Signed-off-by: Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
---
 drivers/phy/phy-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index f053b525ccff..bca303d51fd2 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -629,8 +629,10 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 		return ERR_PTR(-ENODEV);
 
 	/* This phy type handled by the usb-phy subsystem for now */
-	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
+	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
+		of_node_put(args.np);
 		return ERR_PTR(-ENODEV);
+	}
 
 	mutex_lock(&phy_provider_mutex);
 	phy_provider = of_phy_provider_lookup(args.np);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

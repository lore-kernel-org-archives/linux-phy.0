Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 419DACDB479
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 08:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIWktD0eeCp9icCXZqe5FGNWvPloYA+gy+Dme/9hQv8=; b=F9tB3Sazk4jBqt
	5N2JSYwvZCqQAtEC/DIET4wO2tSvYlNFfhO5O4zphE5Ehc3PLxqXqwucHtbj3D2GR75i9wBBoYWrb
	3P7J0mdq+9cR6i3wvpIMMU9BfnCzVKnlovOCVMcuVa8GCDYoDHYkk0MRlTsZ09NhyM+F63bXg2e5D
	R35f8mnvKqp8fjJD3J2RlWlYUgWeuuNC81lobtDywQabbQoRcp6A6NP6j9gq8dD0VGZcF5w3+VneN
	tKjGRYYaRZ4hfhImNcacsV+BavqzIoQKBjH7Lnk/38gMXSTnYdyg0fj2h9Wk6FvAbV2sweSYQe3wB
	W97395Z25Wz0ThLRDwvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJHU-00000007QlO-3yZu;
	Wed, 24 Jun 2026 08:48:24 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJHQ-00000007Qjc-1tTv
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 08:48:21 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-45ef189aa1cso581343f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 01:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290898; x=1782895698; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=82FA35TCqJ8Eddf8LJXiGKVbEkzxEdof0NFAzA1rmpE=;
        b=arqLqYYcjPuQwUjrWWgoSXUPwdcJ0a7IHnqDEJM+a2Vvv0PQjWvOo51EsjTmJ3Ownr
         K9AcA/Tg5KSxscFmwjVmiD3cCIst194whTnqeB75/bq1F093e4tUVWsEwCWyr6AsLPYp
         Ma8w8RMsD/zc03X9p+cEFApid1kraFwPIDOJdSa22K6GdJbcyjdglYTj+Gs3Ig6+E6/8
         x9hYV2Kvg9+tGzfnsfNACsmHi2I7hQbK0pbbJ+KV+yrRLDxGGplTektCHhJjiv24Vu9N
         kvSle01/AtVtnhoHekygVL2+hiYKYOAeYoy5iXW71kA/mmdiVfQcmH2L81UKJIhQ6MNv
         YhBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290898; x=1782895698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=82FA35TCqJ8Eddf8LJXiGKVbEkzxEdof0NFAzA1rmpE=;
        b=UPN0uvYVJ7OeJ5w7EAipQygeAMHBJBSVVzIaQ7SwRTc+PUrEEy05V2T5DqvbRjpgTq
         iVJ0pZnjMVcXo765d9gTi6TE7Eig5F4gkbv22Rl5hnyClsAs7DMlCLy2r0GBbYDLHrF0
         Xp22Y0WGGQmB5yAvE56xwyyJEcMEJbqaZNIUrnE8TafFtDoSoAQgUxVORPshOFsWLR/V
         pnjJiSAxFyQLxr3I6GNYh3HKJ2EKlcBOFRFrEJcDuNcpO33vThzSPGq8Kp/iOZVguaPj
         gVF+VQq63u43GlR6ihZlOloNDQWGttjRA2hj4Uv+0I9U9NnalHIWVYyR8WJDJ1tJkx1e
         FLZA==
X-Forwarded-Encrypted: i=1; AHgh+RpkUkLYgVdJHZfWOaZmaTBu/7D178QQBr9iwu6uCXERpzA4JJwnaR8wNVpY24GvJ17X4CcPpADh/g4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3EDVGXMNJC5gG4uwJXjGUtuYR5gdvLWCqA6oaVQ0L8ObOXhTs
	DM5L/EcejTCn+tB1CJbAXKR4gxoXuJR9PFFymWqGZJ6HR/DVVoQhvGWT
X-Gm-Gg: AfdE7ckP1Ln/FkZa9G7tGr1QLuR69wQgE0mTWuxN7ryt7MTR+DLhkp9jO1is91aj5aB
	/kXkNBKm8xacQesGp34SRTCjVS+g3T/EWCr+VL5V6lEaDV2LYURqTUXVlo1/WUK69qRIKVZkvc6
	kdjEAwRpnByKav9e8qfimITSnm4WfacUQzBAXB7BkPX5cAUxnssFT0lCxvOmQPpG4BRpfDECdSq
	r389y2vEigLi38qTSVqqalTJPFQNKpsVoIzEfBzgu57qyMqdzM94WbUssFt9k2mGHUQx/2cDt6d
	GCjrQvZAjeuWqfOMm+HN6IvPZ0CQCEIU57BzUSH7xaJPEkVSmRLOEwd5svPVg7p9Ne29DL4joyc
	GlDKh1pG3w7MVow1PkBY68+gTpdlD4Jb/NjQi40GK+qLJzxy5jFtxE9/F42kwSIpP+CFX6JcRIJ
	uQjk82WtwUKmdV9WMN7+WNm+mYIPkvZfkgRQ6JTmlnxN2LcOf7oI1Cj+uL5wqnxq54qOrBuYYHO
	HB8DzE=
X-Received: by 2002:a05:6000:2587:b0:45d:41e0:467b with SMTP id ffacd0b85a97d-46c0951d92emr3798306f8f.3.1782290898438;
        Wed, 24 Jun 2026 01:48:18 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c221d9371sm5065849f8f.21.2026.06.24.01.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:48:17 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Bjorn Mork <bjorn@mork.no>,
	Aleksander Bajkowski <olek2@wp.pl>,
	Marek Behun <kabel@kernel.org>,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net v4 1/2] net: phy: sfp: free mii_bus in sfp_i2c_mdiobus_destroy
Date: Wed, 24 Jun 2026 10:48:13 +0200
Message-ID: <20260624084814.20972-2-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260624084814.20972-1-petr.wozniak@gmail.com>
References: <20260624084814.20972-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014820_502978_069AD016 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

sfp_i2c_mdiobus_create() allocates the I2C MDIO bus with mdio_i2c_alloc(),
a plain (non-devm) allocation, and registers it. sfp_i2c_mdiobus_destroy()
only unregisters the bus and clears sfp->i2c_mii without calling
mdiobus_free(). As the only reference to the bus is then cleared, the
struct mii_bus is leaked.

This is hit whenever a copper/RollBall SFP module that instantiated an MDIO
bus is removed: sfp_sm_main() takes the global teardown path and calls
sfp_i2c_mdiobus_destroy(). sfp_cleanup(), on driver unbind, frees
sfp->i2c_mii directly, which is why the leak only triggered on module
hot-removal and not on unbind.

Free the bus in sfp_i2c_mdiobus_destroy() to match the allocation done in
sfp_i2c_mdiobus_create().

Fixes: e85b1347ace6 ("net: sfp: create/destroy I2C mdiobus before PHY probe/after PHY release")
Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/phy/sfp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index 03bfd8640db9..c4d274ab651e 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -963,6 +963,7 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
 static void sfp_i2c_mdiobus_destroy(struct sfp *sfp)
 {
 	mdiobus_unregister(sfp->i2c_mii);
+	mdiobus_free(sfp->i2c_mii);
 	sfp->i2c_mii = NULL;
 }
 
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

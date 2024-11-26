Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0576AD59D92
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWK1Yf0x0vj63qNTqgPCojSBvvqJKnWLefqVDJvR2AU=; b=ZmfeaKHtQgXzd4
	1lRoxqlk/nYzoigQ6+8qLF9m2gMpvc8QJiFrVcMb3bZ2bW53WjcQxysQcUzFtNKSJH4FMTwkm++A/
	Y12DsQ9YADzXYTsm6PZ2lNTZRja7Kqv/dicS0Uhhe7woB5uRfWOI5hGPVmG2w7HCsQMyU6IzWSHKq
	nT8OU5JpQgC5SJG7zXr7+xwrTgqXzlaQ4lRRBphpK905kdaMaP7RLGCLUR4mjJXsvSl10dlgB8MyG
	DXzGUZ5bMDM+cdq/MzsqqW7IuLvdRsXrXOR5jcw2jDeAkpBhoF/HoQZ0MbIozTIo+YSbxknYAcsyj
	zx4JRQC5LKo56ieeme8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlG-0000000A7Lw-2QG9;
	Tue, 26 Nov 2024 09:21:34 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrl4-0000000A7AR-35db
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:24 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43162cf1eaaso67088545e9.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612881; x=1733217681; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TAeC3TsRl4RzsqjkZc75Uu8T1ZZEFzes6iwcvWtBHs=;
        b=g2AqE9q+FOJQxdabcOywL4aWGnrYV76w8dd8d/5HptnPXhBvhszIkcx6kfauUQoW0d
         rspKDWTGB/869CSe+Agpwk74JQACdC321/lYWJb4eQ3j06yfmTQ7zb1ASUGKW6cK6SNE
         ouqDcCM9BLWEYBFpkxOCvnGb8fTXF1WTZPROsVF/Fs8qEtMDW9pF4OiekgkQOYZUO5CK
         GkCcu+mSztGHaRE33M9vQ6voFkaCWT+UO8VkdrCM4X7WswxjIZ8HSbvvX6Xpek40aFn7
         TkSFuVwG1wIT54Fc/k30ftFoJ3FGZEs7QN8jxdkghmAFyAC/idwjUx8p9FMRuJ9k43vl
         eNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612881; x=1733217681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TAeC3TsRl4RzsqjkZc75Uu8T1ZZEFzes6iwcvWtBHs=;
        b=qEJFQyseMyao1La+FCJhNkjYRhijLEsP8Dci5o/w35dXzKAgjGXahXfK+NfhvW03O3
         i49iyjxJxZBpzRsAjZK5wNiv4vbQsoaK0uIAmRQEZ2o3NoThBtAxSWKHArCqj8iyYsvl
         GpIip4F3YxelIyXAWzauOMXAUZ+h0h2BhnjYFc+xV9KLkcIPfUOO6uztPLyAQtdaPxwK
         UuIYMzQXvVFowKlu3r5mj8/bbmQ4OVAWVfcK3C+iahExn9u4efovoY3KJPWoM0ZVaP4n
         TRc99vOr+8nk7eE4gEwv+jIqIiTp03/MeAnSIn5ayjqDI6eMxpSGEqqsn0kAhUEdojzD
         oLNg==
X-Gm-Message-State: AOJu0YzYr/xzwj93xXI/fUA7cO+0snc98T6vpeM4vSIdzCb2LxMbvFd7
	m3XFGREyZPinp90K/cXePrQFz/etTvhFhk0Tt3Gip3bqgYqCkcSd5/A0kj8qqbg=
X-Gm-Gg: ASbGncv7AwWZ4b3QFryC9/nstlnVhlM0YUWSUBE7H9EuYDXH5iucl7prGteurXpRX7v
	jRoAnv6FIC2TWsLqbCsl1MQ84qLEBYtUVo07UAgbqCGOkznX+js29bl+78+it683Y5H6LVMTMNv
	1aezY0yAjc4LOvpf8rAyKa6dliMfeGFPAlufDES6/vXfJ9+NOCqTcvPWlO/IlelkChnyNPPjL47
	kprDxWn0GLRx2NcfSit2rQaT7+AKSnkkRUlLJlSWCQ0jxJpS6cpWtm6MfuaBh2WXhO3h2U5zeIo
	7Ks=
X-Google-Smtp-Source: AGHT+IFQeadsuQ2/OEFHNB2hCpcL0kFnKhATIbhwU87IinDBEjK+aOIArcqyehdnhZrcXQg6gOKtyA==
X-Received: by 2002:a05:600c:1c25:b0:434:a5c2:53c1 with SMTP id 5b1f17b1804b1-434a5c2564dmr15857425e9.23.1732612881055;
        Tue, 26 Nov 2024 01:21:21 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:20 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 09/15] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Tue, 26 Nov 2024 11:20:44 +0200
Message-Id: <20241126092050.1825607-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012122_887078_A96BE3E9 
X-CRM114-Status: GOOD (  13.80  )
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

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

If an error occurs after the reset_control_deassert(),
reset_control_assert() must be called, as already done in the remove
function.

Use devm_add_action_or_reset() to add the missing call and simplify the
.remove() function accordingly.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
[claudiu.beznea: removed "struct reset_control *rstc = data;" from
 rcar_gen3_reset_assert()]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new; re-spinned the Christophe's work at
  https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outlook.com/


 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 775f4f973a6c..59f74aa993ac 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -668,6 +668,11 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
 	return candidate;
 }
 
+static void rcar_gen3_reset_assert(void *data)
+{
+	reset_control_assert(data);
+}
+
 static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
@@ -686,6 +691,11 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 	if (ret)
 		goto rpm_put;
 
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert,
+				       channel->rstc);
+	if (ret)
+		goto rpm_put;
+
 	val = readl(channel->base + USB2_AHB_BUS_CTR);
 	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
 	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
@@ -815,7 +825,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	if (channel->is_otg_channel)
 		device_remove_file(&pdev->dev, &dev_attr_role);
 
-	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
 };
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

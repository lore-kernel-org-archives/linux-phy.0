Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFF94CAC5A7
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jj3hmoUoHkJi+xXmCN66ZUAr3DoMMiQ3OX+J8+bl8GM=; b=DJsxYnfNP9cEQS
	Gxs0MR6lkoduYSIeyqk/cop2erIwwBTaORxSRqpkP9oxEyBL6fziUw2O8gzwlVtbu8G7uabcnrGqE
	FGjYhPL1WhLDG21HFP9QLSSfkri2sBspdMMIKAeurHTbIaQS5/tbnoeajva3Da0gynDLxIvJnw9F3
	8yyIX/igWLMQlesm2Fs2o/u1v8n/jTyWJmf5BMzOyJxBsqyAyht+NvGzh7+7PlAceHaiFKFhyse29
	eUGu/9/CNaxtUot+wFZ6pRgDnj8Sv68EfmZKY9MKQ4pOIEqwLs7i3JrDgfPi2A9Obt1mzfd1UtzCk
	RrIWjvAK7VCOosUp+uxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipc-00000007txx-36sP;
	Thu, 25 Sep 2025 10:04:08 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipY-00000007tsw-1Jkh
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:04:05 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3f2ae6fae12so417938f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794642; x=1759399442; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6a2Orro9dC+tTpehWSMqFbpqcjs/UMiQK/3nAw0F/fM=;
        b=Ga7WBd658pXFj/jL8QB9gRxot1o4/FYEBStjOzwVoast1IDeweYu/3RByNNa528e5X
         dMv28HBq2CcaIpxoC5cyg1AdCpfdlSRtXqQmK63awH7WgFyUsETX05DgoVusR9sINrFw
         tcHjfelRKJAqenUxSYScqTmMhwuQE637XfOMOBH5+MvzC6U5uxFj8S8xanIIBjfdTMoc
         Vo50zAPtWPNXYgF+/0DhNBtrr030pe/4GSOu30FTH8XShmn7csbpb6PcjlAAsqhhV6lg
         Oihhr7XD+6FBIS2p6c9b4GgGrSrO/0fE5h1tTTxQlDWFXMAhJDxNf2itG5HoXVg7wdeh
         ZmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794642; x=1759399442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6a2Orro9dC+tTpehWSMqFbpqcjs/UMiQK/3nAw0F/fM=;
        b=ra74yJze5G7+0b7nihyyKrYOjaDmyDyN9sIq3zFgYXk+7KICYn4lzYbM1zDeWQsjY0
         yTLqNNwWSRzAFed+nL89QSzh1JlyGfCciDvt3Hy4Xhd2mD8xKxpLqvbaDGGZJ/fLQHfb
         jupMfMfVgUx+zi2qlr0kYUbIJNbNYGMOwTz5HsNvFdOLeFGPzlWTvN4lPSXM9z3kjaaq
         BGklPdIanPLW1lB3rEI3crgGrkUY/JqcBOJQqYkQXTiZ1wXUuxdX/0JZepCFrwYPTX2a
         +mypdIUees9LlpQYNmL11M2hNF1vKmh3j38M249lAWX9SFOyfsw2u+KoVBjFH0Ekqx+h
         lF7w==
X-Forwarded-Encrypted: i=1; AJvYcCVDlYtJgg8N/4NbT+W/fnK9njOUSL/cqqEq2RY9Vu3pNG1Kfke1zeWQxiuH2PQNJrd5Afv5QMfysEM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz35H7qXW1RJY/MAEQsIfU+hq2nAb9L3b2Li43j4jTEpmU7PX7F
	auKG3Mp4W1YcllY6a52PhYZC4+xLjjD/WN8lYiC8yc9Fj2u/N3a0k6mtGq0JLQU6aDs=
X-Gm-Gg: ASbGncspOpSvns/apsYzu3pGN3qmzwaIc/wx0l4QEmvnNA8F4k879ncxksgEmOxeGzm
	B5ND48+cv0l79V2AKU5z+lyOsiswOUHu+IU4xG28Yho7Zj9ct4H3D2aZlP7pftX8Ujg4jGiIVA+
	5YlTdPA7T5Eef3n534OD3qjFZic0W3lQKseXwMpxK5NV/7KT9oaxciKgFJ8PSN11FLos5TGnGQx
	fp2CzUtev2oANEQwA+2wm3GwZk6aSyfaQf+NgB2a9UnA0AQmRMe8N0eSMMYLoalaNOGVM/fq5cB
	lwMCQcqaKB4E4Wqkp+ufeE4iw0uL92EhAgSAvHuSLLnEkdNoKw2t8/ea0iyL5prKajwDdS8lODK
	ZMg/0eyrU3uHqkofdiU2O1judL2dha82azgQ/nalUS3+IiLZKM2b2
X-Google-Smtp-Source: AGHT+IFCkCUX1Nhiu4z+bRR45isAzd2DfgEkYuZkUigXlnjJNugaaDklr/VgV1+VGrKsaVyGgmulGg==
X-Received: by 2002:a05:6000:290b:b0:3ee:1368:a8e9 with SMTP id ffacd0b85a97d-40e4a7114a2mr2803142f8f.17.1758794642473;
        Thu, 25 Sep 2025 03:04:02 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:02 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v7 2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Thu, 25 Sep 2025 13:02:57 +0300
Message-ID: <20250925100302.3508038-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_030404_377943_946CAA56 
X-CRM114-Status: GOOD (  16.81  )
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

While at it, drop struct rcar_gen3_chan::rstc as it is not used aymore.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
[claudiu.beznea: removed "struct reset_control *rstc = data;" from
 rcar_gen3_reset_assert(), dropped struct rcar_gen3_chan::rstc]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- none

Changes in v6:
- dropped struct rcar_gen3_chan::rstc; updated the patch description
  to reflect it
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none; this patch is new; re-spinned the Christophe's work at
  https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outlook.com/
  
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 3f6b480e1092..a38ead7c8055 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -134,7 +134,6 @@ struct rcar_gen3_chan {
 	struct extcon_dev *extcon;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
-	struct reset_control *rstc;
 	struct work_struct work;
 	spinlock_t lock;	/* protects access to hardware and driver data structure. */
 	enum usb_dr_mode dr_mode;
@@ -771,21 +770,31 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
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
+	struct reset_control *rstc;
 	int ret;
 	u32 val;
 
-	channel->rstc = devm_reset_control_array_get_shared(dev);
-	if (IS_ERR(channel->rstc))
-		return PTR_ERR(channel->rstc);
+	rstc = devm_reset_control_array_get_shared(dev);
+	if (IS_ERR(rstc))
+		return PTR_ERR(rstc);
 
 	ret = pm_runtime_resume_and_get(dev);
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(channel->rstc);
+	ret = reset_control_deassert(rstc);
+	if (ret)
+		goto rpm_put;
+
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, rstc);
 	if (ret)
 		goto rpm_put;
 
@@ -924,7 +933,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	if (channel->is_otg_channel)
 		device_remove_file(&pdev->dev, &dev_attr_role);
 
-	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
 };
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

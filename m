Return-Path: <SRS0=qRVw=ND=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF573C4338F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74FC4610CD
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 74FC4610CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/dmMqQiLD4nARwFWWVu1nwOeIws9yQGyftGbEigV/g=; b=FAVYQIg00h/GWd
	20GO+1gxZZZ79yz3lI3MguE4KZWlKhmwfdgSpdFjeDRL2ndJutjW9gZAvYYwviNcxzLFrWX7F2XKk
	Gcz66Z1hNUlltgZPOTdSSVSCo/IHljZhyjbNGO3EhrnpR2B1CTxUwbYFS6qG/JtrRH9LhdTdPYsU1
	pTMn144ZcKAvzseHJYWRSXwiS9L4dv0XWOw3ieh12SST5mWTAYckFU0rlQF4oI6pq9cvtPoY8/vti
	cHLuI0ojszA8B3aoXjWrenzwX7RraeOjxHKrG8KQuYOx7UAKp5SLeIQZlr8JEt+W9YNFjMP/wBx4R
	UkZhd7R7RUUqenYo8GoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHXO-00BBmz-Gg; Thu, 12 Aug 2021 20:42:50 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWb-00BBP9-2n; Thu, 12 Aug 2021 20:42:02 +0000
Received: by mail-qk1-x734.google.com with SMTP id y130so8265002qkb.6;
 Thu, 12 Aug 2021 13:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ggW256M3SIcZiGvGqGuspKz5dguh2TkojKgtWRP6iJo=;
 b=t1W1hIvV0te5vPrxMds68WtR52qT21pqllsiWQ4EdrsevpXRuUZnxXIl5qHRbeUKud
 9PN6GoVqsYPuDsx7pi32SNuSqOfURq9S31XUJV/AlJd0iywelRrQmbl/OkkSbSIU9aj1
 Mtb23C5te0dfzD8gkBPfn7Zn7O1BmMZZ2Vj2ptM9z69YebxBooi4wimZ4liyXX2ddbch
 OrYgutQBIxSZfehRX8I8oI6UUch0Re8p5DMgGbrbTH6AehG0dHunC65FbcJV2TSgrxQc
 RbHAseLHF2JwHcI2FEDLV18o9MijWzchENcsVLda2q16CcVzVCETsEAeHlmbl+LQ+vxn
 Es2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ggW256M3SIcZiGvGqGuspKz5dguh2TkojKgtWRP6iJo=;
 b=Mv5lmooHzVmusl0cSE8DG/HPU2sCb97MgRPMj19ik00U3dMyXeA2sEsGAYmhekzIxY
 JHBZPnRqay585gY/d2sjH2RgfLF9nol7VC1pfkN/+HqR9VCZrcvqdQqBDrhphc200G0B
 Zix2TQTyz4BphUcPNPJ34kdx2s8Tp9s9JeYvrPhIg5xlywQ+azIPrOp9G8nStqbw1G8Y
 jLRmDnFEV2iKVkWnotlpaDgho2hHZTp/RzZ2Uw388bo2JQpeZEh+2ob1A/OYo7SLxhmO
 8tI76o9OBQ9eimt9pjNSu6ww6t2FCm0hPQVaZHBvFPIapWsw0HQbbVO1rXVI+9mqie+r
 qY/A==
X-Gm-Message-State: AOAM532RFUlMhZ0OixsZxtMdx8X4yySraRCShr0xlRQBHka5kWfCaIpW
 wu9NspyP1Wo9fNdOK1iqmGk=
X-Google-Smtp-Source: ABdhPJwz50s1sUzGtczLj6lnVE9J9Egy2qsDbNPpOk2wPPVMdrvu2dFxJKuLLxvmd8wuc8hmQwDo8Q==
X-Received: by 2002:a37:9643:: with SMTP id y64mr6224821qkd.213.1628800920037; 
 Thu, 12 Aug 2021 13:42:00 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:41:59 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] phy: phy-rockchip-inno-usb2: support #address_cells = 2
Date: Thu, 12 Aug 2021 16:41:11 -0400
Message-Id: <20210812204116.2303617-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134201_169002_1258E73F 
X-CRM114-Status: GOOD (  14.41  )
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

New Rockchip devices have the usb phy nodes as standalone devices.
These nodes have register nodes with #address_cells = 2, but only use 32
bit addresses.

Adjust the driver to check if the returned address is "0", and adjust
the index in that case.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index beacac1dd253..5d2916143df7 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1098,12 +1098,21 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		rphy->usbgrf = NULL;
 	}
 
-	if (of_property_read_u32(np, "reg", &reg)) {
+	if (of_property_read_u32_index(np, "reg", 0, &reg)) {
 		dev_err(dev, "the reg property is not assigned in %pOFn node\n",
 			np);
 		return -EINVAL;
 	}
 
+	/* support address_cells=2 */
+	if (reg == 0) {
+		if (of_property_read_u32_index(np, "reg", 1, &reg)) {
+			dev_err(dev, "the reg property is not assigned in %pOFn node\n",
+				np);
+			return -EINVAL;
+		}
+	}
+
 	rphy->dev = dev;
 	phy_cfgs = match->data;
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

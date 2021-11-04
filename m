Return-Path: <SRS0=3fcd=PX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5918C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  4 Nov 2021 06:55:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9992C60F56
	for <linux-phy@archiver.kernel.org>; Thu,  4 Nov 2021 06:55:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9992C60F56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OqLyrW+qkuu7ex/C3NSB/598M8fxDMVoc8zsuv+PnF4=; b=prk+YjlpDhzbb/
	s7A8DR0vk3LuRkxxegSfcopzKAfuet11oqiHJkwjZt7e3egsOdYiHYoSlZsKsOUbSDqntIuDiQwbi
	Di9MgQ/yBNUo74cvzrkXheYRAwmQs591rFDgaqUOTmfvwqrc3uwUhDJAfeIR9BeIq17Okt7ukUrG5
	RSU+WiY1/vVP40FhbFH/ePn+Yo2iujP+A1lgiQ+AKK77OfypVuuYjTrxWA/ZYcJNvDJFhXFXvlfm4
	On+GJLkBh3pgnrqFmOoCvMBiu6U9asNrz/rZy4CO054Yz6H9d1SleRRpd6457bu5+dSbKZy44Sdhx
	IllgC/+tcc4B6cu4oDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miWeu-00857T-1T; Thu, 04 Nov 2021 06:55:36 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miWc9-0084Uy-FV
 for linux-phy@lists.infradead.org; Thu, 04 Nov 2021 06:52:46 +0000
Received: by mail-pg1-x534.google.com with SMTP id f5so4597202pgc.12
 for <linux-phy@lists.infradead.org>; Wed, 03 Nov 2021 23:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=97HkIATvrXALCqUv25iSceKHB9vr5nNeTL//UX0Vwbc=;
 b=krZaMoMzrcgDc8XhtCnoyCQMDm3QcQzl/SpgVBjX015UIZRG0ZL43RSw1n0JRNARDH
 j4xoaFrT3oSQ98Ude/dhrBI4otvutN0Jm/xDoLaGJV7eLFPdNJBTFJc7NzpK4U5qIKzy
 ys/R5JyY+pyWon2ykPCht49SSCSWAiKIaN6141zdzq+VqCrn9ZHNYLob20UTIT6H2DJ4
 EyTdsdkXPXoh6mM9u4JGadRxRJJSbWPrnD1qDqbDZ4Mf5WKZJ446CZd4oL2RQ9W6S5TW
 UhgQPy7DkIqpbVRCoCBDeJy5b6vQEr3laR9uyL1BdKKZDr3t+i0oTJi8/i/zHv+bRmkO
 ytAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=97HkIATvrXALCqUv25iSceKHB9vr5nNeTL//UX0Vwbc=;
 b=iWeAN/2uR3GvSRdptHk8BClMIREWqSniqGagmEKi0CJ8THPScW9B3WEO5QnorIO3Nl
 zZ3luMkIWcQ4QznO5GNq94X+m/cU729ZmrrQZuzJ9znZ6J0sinG8VQLfImQYPjLRZvOk
 5VRTC4X2c4oPHy/tr5y7adZ0Mjn+OYFD5nLjpi3Ha2x5vMQQaNTWe6LDSLhoa1Nr83A8
 +G3AH87vvgINV/hoP/Eir4mszYNJ0SaX0QASOLslS3Hx3C3YHcdygVr4YNIpoNxeVNhs
 nuBea9k7bAtu/KujM8izusT31KxQ1qam3Hw1XtN8UHlaBzEdrVFjbKjj3JWiGcosB4d8
 mTyQ==
X-Gm-Message-State: AOAM530bJ/Zvf1g3swfEbCDg5zI6dVaXGRfn5aBeqMUYwqPJx4Zhw2k9
 n9dg56xMtg3gyC8Myrlywpo=
X-Google-Smtp-Source: ABdhPJxUlDVGMvpv0DAhpGuY6d+N7paM1BO5zZliH874uCa4NpDQVzkwuI3Q0TGAQ0OjFF8423gc6A==
X-Received: by 2002:a05:6a00:888:b0:44c:c00e:189c with SMTP id
 q8-20020a056a00088800b0044cc00e189cmr49918547pfj.79.1636008764422; 
 Wed, 03 Nov 2021 23:52:44 -0700 (PDT)
Received: from debian11-dev-61.localdomain (192.243.120.180.16clouds.com.
 [192.243.120.180])
 by smtp.gmail.com with ESMTPSA id j1sm3338773pgb.5.2021.11.03.23.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Nov 2021 23:52:44 -0700 (PDT)
From: davidcomponentone@gmail.com
X-Google-Original-From: yang.guang5@zte.com.cn
To: kishon@ti.com
Cc: davidcomponentone@gmail.com, vkoul@kernel.org, sjakhade@cadence.com,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yang Guang <yang.guang5@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy: cadence-torrent: use swap() to make code cleaner
Date: Thu,  4 Nov 2021 14:52:33 +0800
Message-Id: <20211104065233.1833499-1-yang.guang5@zte.com.cn>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_235245_559617_D5E3E844 
X-CRM114-Status: UNSURE (   7.43  )
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

From: Yang Guang <yang.guang5@zte.com.cn>

Use the macro 'swap()' defined in 'include/linux/minmax.h' to avoid
opencoding it.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Yang Guang <yang.guang5@zte.com.cn>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 5786166133d3..7c4b8050485f 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -2278,7 +2278,7 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 	struct cdns_torrent_vals *cmn_vals, *tx_ln_vals, *rx_ln_vals;
 	enum cdns_torrent_ref_clk ref_clk = cdns_phy->ref_clk_rate;
 	struct cdns_torrent_vals *link_cmn_vals, *xcvr_diag_vals;
-	enum cdns_torrent_phy_type phy_t1, phy_t2, tmp_phy_type;
+	enum cdns_torrent_phy_type phy_t1, phy_t2;
 	struct cdns_torrent_vals *pcs_cmn_vals;
 	int i, j, node, mlane, num_lanes, ret;
 	struct cdns_reg_pairs *reg_pairs;
@@ -2304,9 +2304,7 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 			 * configure the PHY for second link with phy_t2.
 			 * Get the array values as [phy_t2][phy_t1][ssc].
 			 */
-			tmp_phy_type = phy_t1;
-			phy_t1 = phy_t2;
-			phy_t2 = tmp_phy_type;
+			swap(phy_t1, phy_t2);
 		}
 
 		mlane = cdns_phy->phys[node].mlane;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

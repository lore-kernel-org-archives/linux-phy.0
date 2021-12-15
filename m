Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC2F8C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0onquYIKtFz8yeiJXAV736/hkmn4YV9AuoE77STgFdQ=; b=kguqxOoxxdxaxW
	8r9SCPXO5mUk+T27CfjdoYagUdTUcEPXb/aVUH1M6wCIeTv6xCIO3WFOPGyrY7hi3xvJ14xVwvBus
	P+VWx6scZ/4vfBnaobyiuYXf8+bpSD/4zDv+kVAR0vLLZuTwAErsRZ1umSjhwNNQSlivOCQj6eHPl
	8byJLA+iGVy0ColaD3zqbpJl6PkVafFaXVeOuFKB1IlhsDVaTuphorbmVIL8PC6Ypqo80Zjz/GpdG
	STBIp8PrwEB7eYOph3wGoEnAcZ98AW44UqfuOLxY8qxLoOd5WljQs27wi8zL87K14aHOaUBAFcc2U
	jgl9MCBl4/hyY+iAIn7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbR4-002ikx-52; Wed, 15 Dec 2021 21:03:38 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQU-002iWb-Uu; Wed, 15 Dec 2021 21:03:04 +0000
Received: by mail-qv1-xf33.google.com with SMTP id o10so1033725qvc.5;
 Wed, 15 Dec 2021 13:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=df9+jLGWpWWmT9NM3fIUAh5IVXi+6QBCR7ad2jz9wxs=;
 b=JzeCQwWGA2Y/dMp1IC8Y1WVUbgo5GqL9++OUCRZzN+3uREgW8CmSli1xUFG3hD34VO
 iSBckW1mjWpPLH+TBXPVe6C6AS1b1PybBiFfJ8rk20C0mvzdZgF0CvrVNV/RUNZK9lot
 DzhYCTou5DyMyM2BJ1LcwYhitMfRUqCyjSGTfV34Ds9fR6sDjdgDYvtIQb1VM205cM/B
 LVjPh0E2yPZzstwuuj7IQWmnvoeeC1bN3CKwZ56z7Ht2BFD1X6HZQZuqRQCk3P60p9it
 UFG4VxenQrnkUCWtDvqRR8PazIl2VlYuQ3nkKfSXWR3jjTvlut3hHx44wvIzseEC1Kt/
 Tijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=df9+jLGWpWWmT9NM3fIUAh5IVXi+6QBCR7ad2jz9wxs=;
 b=qPY49BKZlfFFTgAoO9cSkKz4WklFjZHIrrjwgn05nU7mjSJgombrpOHY1lYBZ0E4tb
 VNHN1F7aAjb1Act8cxlIDyd8nMUPiTPA7HpANdw9KJ8BJfgvVweukv5pCDze1ocK3Vrl
 hEp7pihuiQijIvpRvzAvANyK4zMrBWbljNs32dkEgInLDYAZP/Oapaz2eS19XuYEGSHo
 1kiyBBHttQPw2URIJacMmYviDKZHVsWErttdgjIh3gDVl0mx8jBAGSIrqEiaOF67wlMF
 UYK89N1Jtz3XQ5ItbQw4BRh7UXnNWIU1mUQi7k8/C40BwEArRK5ZoPMQaLQz3ThbS4A8
 JMBw==
X-Gm-Message-State: AOAM531VkeNqjvX9cHaUVceFTfQMKDptsXnaEp0sX044Wa5FTVoSGCof
 rJbf7P0v1TRcROwcg1OLjVHEgifqB3cY0w==
X-Google-Smtp-Source: ABdhPJzHXdQm0FRg98q5/QgMAlc0JVYTPSGVQQd9VCPiFNJsnjMNmYl5B1HSmn6brcszCZCQc+qC+g==
X-Received: by 2002:a05:6214:260c:: with SMTP id
 gu12mr13331158qvb.87.1639602181519; 
 Wed, 15 Dec 2021 13:03:01 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.03.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:03:01 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/8] phy: phy-rockchip-inno-usb2: support #address_cells = 2
Date: Wed, 15 Dec 2021 16:02:47 -0500
Message-Id: <20211215210252.120923-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130303_024002_1678481C 
X-CRM114-Status: GOOD (  13.03  )
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
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 1938365abbb3..5cfa7169d879 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1091,12 +1091,21 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 716A4CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+DQSZWc54BircdEk3WsrFX4gw+nf5WBzBrNSaTmikBA=; b=G1/BtDwgiUKvUU
	aa6mpcDOOu9erZmbYAvGAGLJN++0elFlm/YDWojvewsvA0+8wuJa74jFiWfDc2BHcD/5820+jTIpc
	0YJx8G4TNcNBTodoEfC96RW5ru0cxF836uE3q8DgVKBnsf0HtqNHL6oc6tF+DDDMxeRUuSopE9Z4t
	MxJFGua3DB+AHHTTH6Zuetlim+dQhqYUUjP2l5nVf3pOOWsUV6K5Vwl3gtLKhyNQgRrq1rApTPvZv
	khYfZIrDmJ4gz1L9h/7KqXyPtxU3QVs7aOuxqZo79jexlsHS/4H//bOtHVtxcXKyHbx5b56Tqdyln
	7i76LNoJeHJXFzzOhIpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTDL-0000000BNar-0sDZ;
	Mon, 24 Nov 2025 09:50:31 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTDI-0000000BNZX-2pJd
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:50:29 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b737502f77bso576735266b.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763977826; x=1764582626; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0DekikVpLnsKsiER1THEE6pO3XdOQLJ+lM0HCKbOyV8=;
        b=KohHrrkU0MiaUfMlCcQfhxm5C1yaYJwXWC6CXfuvS8uXr7I6mtN0WZC4zcurxZDzIU
         n9S6+XzS3hVwg+z2L/mdiZKqS64fLqLR3+OZkDQrroAU9o85oQCAESJdjJ76ah3DZ8kU
         BAIkH8bozye4tnTbqVZ9+Hi4QPdRHGARdG3OBmcEvfd+xg7BIcMcnoO6Fu9tiy/pPShf
         LpfyiGLoLOGRAdUa23IzU0VXRDo0D46k+Rymqs38xXoLNLi93J4ZcvbBSXqiVUHoW3f9
         b9Q7LfjzKS6uPUtAww+uZ++RbGdqDEplQF3xtOE37yR8XG6NQwUG9a5tpm62rlZm4YZ4
         eBsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763977826; x=1764582626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DekikVpLnsKsiER1THEE6pO3XdOQLJ+lM0HCKbOyV8=;
        b=W/c/mpDDS6Ebhf+CUMXiiLB02+XhUUv2rMeDkoJ9TeKDSdrjZ0cXZxUU/IBYbk0YBd
         crDGsIU7I98Z4w9Lb0yf8+Lw5BCQnXFSq4DHy4eXT7EbYXmwtodDtgp0a4Pk31CQNgui
         onW4Z1y51SFWiXy5UvpC2z0RYWncWSttIIb77DEvw4C/6VT1xFIS9VBwXIlBHTcF26yh
         kcFFbm6FUltSzzevyP1Lr/cqg6S4zcdCojGH2wTtSppOxnRWjobzpQb9qHAg3VF1IG5/
         1UGvsoYK0uZtUKcOX0vFV7VxYiHQzEJvrw9cHNdJlWDKdV8wzcKV2/gA6TmluBCBNd8g
         G+mw==
X-Forwarded-Encrypted: i=1; AJvYcCVt8VUDu+JqxNu7uHkUEwAo7noix8MmJbQMW51QNxHtUP8oY4dK4yebqBFQGp5Ye/VjEX5FJ4kQr4s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMuXbeUZfmy3WhXLec6ei4B3xCIuljSUJfT8r4U1brQdI5P3c3
	qBqTLqWbV6j8Ev8ffPsc3UpLnqrIw8Vu10isUgWhQlM9+6wbjoM1yBs+
X-Gm-Gg: ASbGncsVyO2raIDUqpFyPvCyMUhD3A87zKxUN0MVCdOgM8EXEs0hgpYlb7FnjBMeu0a
	PYn8A3D+q8Hv4V7XSdldTjo6RpTbzrd83IlILuXQmPKxOaNRi+/fV/0JCC9O1cqmCsGRMlUEGSe
	JFR/4FiSwhd+y6x+NlZbg6agAZEvQjgEYAiFKdwY4MR3YrymUqjpuYSxwPXXWFhDE3UGAR+2ucI
	jCGi1tln9Rsiy+zylDqBi0NoaK3qeubLoJ2WbmAscEfEP2qMZGGGYxGqD9QRa+YgSiwimEgbf8D
	WD9K1t9YYQd6aiJs2SfssaMihxbkooW1JsIp2MXNyhf7xHWgluRN1CJ1VVgru2eDu5L23DCuINy
	rIPhJhm3EoQT9GnR5L694fY1JICok58zuZ/5Btw2JqfuCLFzA0PWxuzQ9XyZjJAr/h5vYmjzbvy
	DRi/EJr70UsUoyFx4UPxnoo0wCDofDURoilOnHkWYt1LetlKU7S0F0fa0TBMEvlQumLxmR7SXtI
	ujG0NtzCh3O5kmkU/sqbQM=
X-Google-Smtp-Source: AGHT+IEL8+nySp0VAycSYHZn+I7GwxBVv/UyrBmMEYYVlEgpR7XzCQyUy/x/1//vDbu/fyhX+j6fpQ==
X-Received: by 2002:a17:907:7f19:b0:b73:6534:5984 with SMTP id a640c23a62f3a-b767158cd57mr999143066b.16.1763977826184;
        Mon, 24 Nov 2025 01:50:26 -0800 (PST)
Received: from franzs-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654cdd5e0sm1309608566b.1.2025.11.24.01.50.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:50:25 -0800 (PST)
From: Franz Schnyder <fra.schnyder@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Franz Schnyder <franz.schnyder@toradex.com>,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	stable@vger.kernel.org
Subject: [PATCH v1] phy: fsl-imx8mq-usb: fix typec orientation switch when built as module
Date: Mon, 24 Nov 2025 10:50:04 +0100
Message-ID: <20251124095006.588735-1-fra.schnyder@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_015028_727515_46D62D9F 
X-CRM114-Status: GOOD (  11.33  )
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

From: Franz Schnyder <franz.schnyder@toradex.com>

Currently, the PHY only registers the typec orientation switch when it
is built in. If the typec driver is built as a module, the switch
registration is skipped due to the preprocessor condition, causing
orientation detection to fail.

This patch replaces the preprocessor condition so that the orientation
switch is correctly registered for both built-in and module builds.

Fixes: b58f0f86fd61 ("phy: fsl-imx8mq-usb: add tca function driver for imx95")
Cc: stable@vger.kernel.org
Signed-off-by: Franz Schnyder <franz.schnyder@toradex.com>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index b94f242420fc..d498a6b7234b 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -124,7 +124,7 @@ struct imx8mq_usb_phy {
 static void tca_blk_orientation_set(struct tca_blk *tca,
 				enum typec_orientation orientation);
 
-#ifdef CONFIG_TYPEC
+#if IS_ENABLED(CONFIG_TYPEC)
 
 static int tca_blk_typec_switch_set(struct typec_switch_dev *sw,
 				enum typec_orientation orientation)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

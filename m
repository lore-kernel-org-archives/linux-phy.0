Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 001C2C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 04:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNTcwO1f+CA1l3+J5HZCxtbHE3lRMcT1opQ+qOL3Zfs=; b=dSafdHfjuK3NUk
	CWrNgg/Giwna5lwi7AIyLZ5vcIPqwhfbCBnFUuwE8DLNO2YH/jwvfmj581Vd6BxqJl/TJwly4PR8N
	l4GmCrWWQsG80OeBP9XJiph9rPZkHFNU8Dp2tfrkYbtT0zBh+EtLc1la/ivIsac2i6Wn66L5QgUxp
	K6+JMH7oqSIQFv87oqpDCnQ0erMgdbx0Ae3bzLP4i7N+j9MIEg0XYFvhZInyjCr/D0LnTEMpPF7lc
	aj0l++mF2u6p3KEhHGY6/PagT3iISHNre0RYxUVNCUxXxeABVz0k5j3nKsdXREP+a4ofZAeLLuOwY
	WoYvLwMTf8tmIYhjTzWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np0VW-009xn0-Bw; Thu, 12 May 2022 04:32:58 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np0VU-009xlj-8y
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 04:32:57 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 a15-20020a17090ad80f00b001dc2e23ad84so6730157pjv.4
 for <linux-phy@lists.infradead.org>; Wed, 11 May 2022 21:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Uc4xBWgLXbLJMyH+huZ6Mz3VJQ2nWjRyAfnIg3aZiQ=;
 b=oxcVRMOM881LdBYCU30dlLdCih7eOom1/eJBRocu7FvqlnMUWhM4x4n4Y/EwJE1olU
 VQII192HRJNlZfi6N6rZ9u851ZpOc8MWvkNr3PewicA8pryF4PBL4W5P+zkm9gqgeddI
 TTnTDZeGoArtP3U8jmz74bncxK60Xld7Fb7s8YPiO/fucxmyN7yBoOm9BQi2mdD82s5p
 kl83J0VASbqv5ZpMPiMuYjmAUImuiUhW9FSHzQWcuCSlPOZA10eq1J0KvpsIrcg3npPX
 E9VFtr7LHp5izVioeknY/Itlne5s/x750DuIO6Y1ARwojNt4v4a43fqppUtLdlKXB+hX
 4f2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Uc4xBWgLXbLJMyH+huZ6Mz3VJQ2nWjRyAfnIg3aZiQ=;
 b=a5XpXP6qXw90aDvLczOSafrVBEkHs3v4BtC3UV8I6aeHaixkq1DkH7uKHZP2tXVp8D
 JSMHegsw8g0eMUFoly4vQC4J9r4e8okXU1eFeAQ4GgRLv7DDrfC/poXyCPbJNH24TLBr
 3GWkQyGu6E7GpKoVan7aHl/hGwlnYOjENCUm7t+Tp9xFMVXnlF2zYIwllr6zrIVs+2+b
 qv44iitf90jeNic3tgy9T2Ap4SYOwZVjd6h7Yg760/gc4hUB9Ry7RCXOLV7Ite91+VQU
 jGJOSVZPqecQSmRdpJTaP3/d97qVNNnKbnlqDatlSNaYos1cv+OQjH3PMl5PmURMn0ef
 NRhg==
X-Gm-Message-State: AOAM5323OkKyGNX1WafivzEVrct307xobK6tl7tV/R9Sp6wrhfUwtmhV
 IB5PAIlHzzw47zqNgVvY0UM=
X-Google-Smtp-Source: ABdhPJxMOc2HWrWVi1oHSB01QOZcOR8Nqm5Dh9k+Q40lirt3i16jlPiGR102+ferGO+gxf1iQhIhOw==
X-Received: by 2002:a17:902:ba97:b0:15f:16f9:30ad with SMTP id
 k23-20020a170902ba9700b0015f16f930admr15778824pls.12.1652329972039; 
 Wed, 11 May 2022 21:32:52 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
 by smtp.googlemail.com with ESMTPSA id
 u21-20020a17090ae01500b001d5e1b124a0sm798724pjy.7.2022.05.11.21.32.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 21:32:51 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Miaoqian Lin <linmq006@gmail.com>, Liam Beguin <liambeguin@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: ti: omap-usb2: Fix refcount leak in omap_usb2_probe
Date: Thu, 12 May 2022 08:32:33 +0400
Message-Id: <20220512043238.63252-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_213256_348218_A4230700 
X-CRM114-Status: UNSURE (   9.51  )
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

of_parse_phandle() returns a node pointer with refcount
incremented, we should use of_node_put() on it when done.
Add missing of_node_put() to avoid refcount leak.

Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 31a775877f6e..98133e5fc9de 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -421,6 +421,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
 		}
 
 		control_pdev = of_find_device_by_node(control_node);
+		of_node_put(control_node);
 		if (!control_pdev) {
 			dev_err(&pdev->dev, "Failed to get control device\n");
 			return -EINVAL;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

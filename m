Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9782C433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swSARA4+GQUPMF4aepSDiAfoaQA/kSAVMbAM6vQt080=; b=IrNT/JM1lTXamW
	pxKuvAZPUGogxVZ5m1+DDLBwEPPYODyWHI6CCxAxsjR9ulaKlnSe3D8z7/2uRe1coTkNjB3AyGJiT
	3DUR80d4GVXo+8Wr57IqsbgDOLN/vxhHo0TS5Tj06/CbNQnt/Ha2hzAlDiFjJECZnx6HQKNmUqEkw
	/32FWiWfiWuvJZUO9wRYAdA/2uRY5y5lJvQ2sjWOjCLF8irvxHO1xbrdOq9I3ANDaUz2qf/VTkBJm
	p+PEW2B99nczfYw098G/pDDcyoGk/3DvtV0bhggb9rPJQIGETTqSJI1dB0vitH2UJnZZnnq5w7ICl
	6chsd7tjzqx04srIs8JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQr4-007GfJ-Ub; Sat, 05 Feb 2022 19:36:18 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQEC-00708I-Gw; Sat, 05 Feb 2022 18:56:15 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 2DA42240018;
 Sat,  5 Feb 2022 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087366;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SMCULc6HrPXZzioFZHc2jhN/9bV7Xz9OY1iLkG08uy0=;
 b=UAZbgpiHK+JaZAjN3tWaPhzuYQq9gDsTD1qOGHDu8X8VGU6xO75SBLRMKvegGnRaUANpb5
 GAU6cJUKJ4umnbDElxMuftMtiMmcKH1T/9/9S7tB+TSa5qVnyLk8ctCCpnPXYW/sxFkpJw
 gDWLC5jHHwXVZHp+wYwMG7zIzwjYoTQGIFxFLQudM456XwzPlJQPlhBTr39YQfT86KzuJF
 RJgcydfREpUn9bEm2vpktZoKLE8919c2Tqme5jgb7kix9Z84roEpoItpgGBEsWDluKkObR
 N6LXSxwTPK7s78fK12sJkXh6Ra7kVoc1TmHbYZRQ2LZ+uDy/ZMK0yDrBRQhHsQ==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 51/66] media: sun6i-csi: Unset bridge source on capture
 streamon fail
Date: Sat,  5 Feb 2022 19:54:14 +0100
Message-Id: <20220205185429.2278860-52-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105608_781841_39B9BC6C 
X-CRM114-Status: GOOD (  11.15  )
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

In cases where the media pipeline start fails but our bridge
has already registered a source, the source remains set and
the bridge code is not called.

Clean it in capture streamon error handler to avoid the issue.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
index 4315e197d53f..6033acaa9564 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi_capture.c
@@ -628,6 +628,8 @@ static int sun6i_csi_capture_start_streaming(struct vb2_queue *queue,
 error_state:
 	sun6i_csi_capture_state_cleanup(csi_dev, false);
 
+	csi_dev->bridge.source = NULL;
+
 	return ret;
 }
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

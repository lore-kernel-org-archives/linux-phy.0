Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74248C4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lgYVyImvL5CfQoVe8MpySOgqTf/xmHkhXtCHPVyEPc=; b=G1Y74y++DRmIow
	8iM52mQFxN2R5w9pZo16TJEEskQPoBjo17/qt64DUHi8OK8BWMbjvgeqvyKKNq2tkinS4yozE4lHH
	jiVbV7e2yhFlRGFr+10YQtRhcfsF6iZIDgF9Xe7U2QCQeN02UllHnZ/Kb4roeHF6ecqCGaPMu98aT
	MAPyNfIqFZyaKnhHt9vamr5cf65UIg0wsLlX3O0/VzVfTy6/iJLQAgpQEHxBnHoo4aBEib4EiZDNb
	VOoXOIXN5jqFdJtEdmE0s/zTqyN+6h1lrrPvbu3KJokoG8cUGj9MBOsmbuwZZhnwquxUjyEEapZXw
	TsZO1V/0Yw26jBGfcp5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHF-0000000GqKL-3Yyx;
	Sat, 03 Feb 2024 16:54:01 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHA-0000000GqF3-1wJI;
	Sat, 03 Feb 2024 16:53:58 +0000
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-7bed9c7d33fso126091639f.1;
        Sat, 03 Feb 2024 08:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979234; x=1707584034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xTz41youk0MNhd57tDHSRqDDcqb1mXikbXnVvCDl5qs=;
        b=GyCkgMu+9Hzq07xQCyIa4o4Ap/r0b6ehmKFjnUgUlwKLCxG/Ah83/BO33JzduVpzA4
         FUM0L13bkU4YIZG4lZcWsgTnUFppB1EyOL12eQhq1VqarOaGj3czoDarywalCiKium1E
         uVZBNIvWav8gt3gsOVAp51O3J0pP2+snn340x1pNi9iBGWADuxgyuyaK/pkqlSsN0kDj
         sjBAD9EVglmVHHgBP8ZUyPD9DidZ/midq8UKLQx+oASB5IbBuaMHlpA73p/MYRvFf243
         XAWiV6rTYi2D4mO4KuUwt5o7PoUAWoN9U0KQuGVfqxMG/5PUqhl5E7LhwRV1oMe6HH//
         Y4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979234; x=1707584034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xTz41youk0MNhd57tDHSRqDDcqb1mXikbXnVvCDl5qs=;
        b=tG+Z1gpx20wihZ2FOgukM87umKk/n0j7gCJ6FqSOj29FS7ou6yc0rrAEaiNONWb+UB
         CtNdmAZyc3AjK3sMVRD5C+sPWPQifM9VXz1QCYQOa9ELcvAfRqU+XFWFfSL5dVAz0wNX
         3xb24VbzKH+BHP+JQkac2D/u/WaOfsHnWlU3vr4796UWUotVj+jb503Z0YctNG6TBUfL
         xrFEaPXulBQCvdPL49ozRj9dNM09rDQ55rFxYqYTUSHVLmRQd1Kzt6yxrBFxaqjcVPBG
         mSs1Z5UNQxKDo83uMXSp7JD1mT/68NBPNIvt6q1iGENXc6iLnTl+9N+oLpuCMO3Q5RyH
         CWsA==
X-Gm-Message-State: AOJu0Yz3AjnJmvGnvgdrNlGMSmyTCv1RCGYV8mMmCHwZZRRm0HvG3tl+
	8r0s0YUGjPHjOVlbADMlDfDbMhBlIUgbNVFxdlbUEncZb5LarGG1dJMj0rIMClg=
X-Google-Smtp-Source: AGHT+IFyEA0Xii6DxXVLQmKqTt50wj06h7R4pQOHBCC/7rAn9AxwjHk/98owuv5mKfuaCa0UFjMBEQ==
X-Received: by 2002:a6b:fb03:0:b0:7c0:3e75:f46d with SMTP id h3-20020a6bfb03000000b007c03e75f46dmr4802889iog.1.1706979233728;
        Sat, 03 Feb 2024 08:53:53 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVZdVoNbFEdixs+13RcadW8GCllVZ7xKVTj2NXM54/anl1fBuhrAHCat0rqnv3RhPASNx1opDJMA21l2z1ij3X8Rx12yVkcQF3JZTOK/TdeH+RaAtahnLEJQFr1EBEUsLv9uMvFjgkQj5cv+aAdNFwFbShA0kgja3hR3iG+/3YWHfTuV/1S1mP0chXWaEzo1MccDnVMn18czRjOnRdwS7S8EUhB/wt2V5/2+DD3jLoPD1YGeWMWIWwvNSPDn99bqMs6krYj7WIBM8uXm9uPmLjqWgjON/i6J4pg7Gd0ha42QIp6q8ORyMPm+DNgUlu+ZnGaGNxp7pw/60q7lPdfXZAwTb4x3OFApr+MUxTmbZOXDfUy89W0rZix+B3E3fOytm2w1Os/SuG+zS2jWyWAG49gtmBoWgVC9EN0+CjvIUNdxiAk0NCabImRXO4kvDZ/05GrkGmjNjwhmCwOHTNxNJ/VYPYDz8C+m20Zh3YXaeRs/ZzFi1qNX6Hbu6nGQgB53BFrrE7DW8wy7BerDEwfQN7OF6Lxf3q82TSpWlsu+op0Si2PXXkMX/A9CMmDR5IQNaxVjjL4V/4Ykpc/iOapGlUYY9hGaC4h9/BtwNDpSpu9qJs5ZIS6Pds7A8ARxvis4/LecvT0lPDtItXD1lA9gzCH9fIkyLGw/tO9z1GQdU5fJzgUlbZQcdA1S2vN/dobTHOkGlgkEkBEEypLuGbX/OJCO0DBcGp7xE8+MtJradWpWSB7zSmA0Sp2ghrlum17CIgR353mLSHpuhim31D3HFt5reRqCIhlV5aClUhtcLqzM/ACrx3JM79u06NOcVklVWAb5WPhjkdTaw2RJA+/DBN7RMsH9Ruthu4++IamxsZN0zGXu94y3o/HqeWtxxec24GM6y7XWNJl1u7NWvSf9ptVeauIDMqfUwFnszPpQr0AR4e3aUVEVEPFasL8tlOP00vcN+
 mpGj9R8UMZ1+rT0d+JO6gXS+Yd+LDUMkxu/IWny7gVOlL4rA/IwaPBq/NnhEmmHkNPit6gfH7urCstUx8uEBN6/fIb4pnzHC1PX52xvzvlMLFrlSyowHFSRg+imxQyt00NhHYnbLy7R8EvstG8GndKToyv0053jjyytesykhtwZRO2JKVkUX/w6GQUERQnIpcKJZJ6aWP9YjuMSDPAxUDfkw/dQPb++belRYOp318rrcFN+Sd0dXaZDCDwVPT5KRGQZqg2zIermNjiPcM=
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:53:51 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Adam Ford <aford173@gmail.com>,
	Jacky Bai <ping.bai@nxp.com>,
	Sandor Yu <Sandor.yu@nxp.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 04/12] pmdomain: imx8mp-blk-ctrl: imx8mp_blk: Add fdcc clock to hdmimix domain
Date: Sat,  3 Feb 2024 10:52:44 -0600
Message-ID: <20240203165307.7806-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085356_604163_84D2DF99 
X-CRM114-Status: GOOD (  14.63  )
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

According to i.MX8MP RM and HDMI ADD, the fdcc clock is part of
hdmi rx verification IP that should not enable for HDMI TX.
But actually if the clock is disabled before HDMI/LCDIF probe,
LCDIF will not get pixel clock from HDMI PHY and print the error
logs:

[CRTC:39:crtc-2] vblank wait timed out
WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_atomic_helper.c:1634 drm_atomic_helper_wait_for_vblanks.part.0+0x23c/0x260

Add fdcc clock to LCDIF and HDMI TX power domains to fix the issue.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
V2:  No Change
---
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
index e488cf79b800..77e889165eed 100644
--- a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
+++ b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
@@ -55,7 +55,7 @@ struct imx8mp_blk_ctrl_domain_data {
 	const char *gpc_name;
 };
 
-#define DOMAIN_MAX_CLKS 2
+#define DOMAIN_MAX_CLKS 3
 #define DOMAIN_MAX_PATHS 3
 
 struct imx8mp_blk_ctrl_domain {
@@ -457,8 +457,8 @@ static const struct imx8mp_blk_ctrl_domain_data imx8mp_hdmi_domain_data[] = {
 	},
 	[IMX8MP_HDMIBLK_PD_LCDIF] = {
 		.name = "hdmiblk-lcdif",
-		.clk_names = (const char *[]){ "axi", "apb" },
-		.num_clks = 2,
+		.clk_names = (const char *[]){ "axi", "apb", "fdcc" },
+		.num_clks = 3,
 		.gpc_name = "lcdif",
 		.path_names = (const char *[]){"lcdif-hdmi"},
 		.num_paths = 1,
@@ -483,8 +483,8 @@ static const struct imx8mp_blk_ctrl_domain_data imx8mp_hdmi_domain_data[] = {
 	},
 	[IMX8MP_HDMIBLK_PD_HDMI_TX] = {
 		.name = "hdmiblk-hdmi-tx",
-		.clk_names = (const char *[]){ "apb", "ref_266m" },
-		.num_clks = 2,
+		.clk_names = (const char *[]){ "apb", "ref_266m", "fdcc" },
+		.num_clks = 3,
 		.gpc_name = "hdmi-tx",
 	},
 	[IMX8MP_HDMIBLK_PD_HDMI_TX_PHY] = {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

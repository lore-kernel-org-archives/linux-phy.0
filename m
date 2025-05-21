Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DFA5C54ED1
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=093TCObwRlB6xMf8FbL6tgAMDpMYnT0cCmWZl15hDmA=; b=cZCmFxAbIkISK3
	ovf+4tQhRGa/KJV+rX5oAu6lwsQ/OrUoXWO4OxfMIZWf/4adqNFtF72yI8qpLOtitX3ZpJoKckurC
	uGxiVjslU3p0BkWklGrs8hizMDoeo+M9sW8Rt7tZ+wIYV2ZSxyO458VRlWQb0lrysCLpjLE6XNP3m
	Vu9amA8du+JegsyUDFbtD2u8iceVuy9nvU/CDCStP2Qns+qZsG3utjN+s96Bj4K+l2606GKdlc/2X
	6m3UeCtCkwmLaIsPNp9ZrYu+rVWjZxFDW0hVMRMfJQesRFJePGakaAbAadesRRGcbwHCiiQGjlm/z
	0v7Tpd8Zkt7EqKTP/pDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNZ-0000000G6Qu-3LWB;
	Wed, 21 May 2025 14:25:09 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk8v-0000000G3Vj-1Z3O
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:02 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-601c5cd15ecso5671756a12.2
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836599; x=1748441399; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZb8t0p/60BOZFK+73UBXY9hEJgsc04mR3HhJl60lrY=;
        b=Q1e7kEt2ddqyFDAqPIvr6pPreXkgfSNkc5Hi278AZpaU6QeLG4oIDfTYDPCGzNhgH8
         30A6SIBU5OOU5aDnpvZA2bBM7tcFQ91PP6Ky5L1uK55+CQl6zECJktUTHbmerScs6f4Q
         1JfR3JHSY0Y1SCYiutZvxUbdkP0wz1qMVp9IS6raa9ErwNVqQ/JndpheUubZ8GR+jYzL
         DJutuySxIyR1hSGJzv79Me6XtmVcEPwek659LEqnutVvS3soRFVs7LIy9+XPNuASvqJK
         TVy50GZENlHL344yNip+oRrm+Fx8kKnH5rU1Kot4uDhiZHiKsA97xBfEq8jS5h9E67fO
         O3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836600; x=1748441400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZb8t0p/60BOZFK+73UBXY9hEJgsc04mR3HhJl60lrY=;
        b=dokGGUwlxoiEQeAAMJcCXOdyxV6DzuO7AKAU46kulncoETS8pAg0C4Q6DrfQ9O548y
         XKSuiI/wlWWN5raLtuCD4z85GStLigqwuOFuqC4EQCzvNvD8qr7jwYXcTyUwdJbpGhDh
         78gUn3SHW30ESwN1JIplMU2FH3op4L/opocTNBui+pI3aGZ+KjAnwcPk+C3f0aFGDztW
         gVa8zjrhW1VWWDj+J4so+tTDlOtz7XFjP2XPLYnkT4S6fr32xCwt7Boguj6OVMt64UVQ
         wRdW7RAZsMSSVIFBx2MaMW05kCw2ghKw2VzKZ92UfhI2H4LQCfjWNJYIZwXqDwKji7oW
         g2aw==
X-Forwarded-Encrypted: i=1; AJvYcCV2yTrP6c8UT9qcjNZKxn0c39DUYF5kVKHfplNMyoYjs3NaSt7cpQKQ2+dFG1F6lNe0EQhBdtQVmHM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoXw+r6trtB33xlEgBL3nQq0hpaRZ167rToO34np5eV8KK9oLh
	DYIh9OR1jVnlZzqPc9fnKmzGrHdRrbXNtUrkSMumviTh3NIswGDw123rwKbstk45od0=
X-Gm-Gg: ASbGnctF5ox7Lp+mRoVEMkjiAMaP/cwRVcTs3+eoS08e6DHNKNbH2UVRk9ZyhPIcZ+j
	e2ifTx1HsxQI0r9ctzZwmypl+rYrFNDgueVEpzss+ZLwpyeQY1thCjx0ePdJm2vBuFGvw/36SbF
	kq1wRKHs+fqYpgxAnmUR4QnnL4H8eNXoFrAMa13pXZNvZUfOGHr8TmYt6rNCwLj9/OCRTSsfW69
	HDeHgSaS+hT8NJ+E0ll47MhR+6D5FfLKhg8mxOFbMn2ShnA8Kn8npkDuXV+Mha7cmY2pG8w0nZa
	0/ASDq8axCas4zM6adyIn6aRzf9TnHu69Nbtz2jwQ391woOB9k+HK9cgoo4ZxT+4e1bv9gHKIhA
	lXFe5
X-Google-Smtp-Source: AGHT+IEV9P83fNsYEF0MlXW3EZBsJyq8zW/+sCayFAQ2aHH/AfpUFdSzKl7+4r2gtOdoYzJbBhZX+g==
X-Received: by 2002:a17:907:7da2:b0:ad5:2656:ee58 with SMTP id a640c23a62f3a-ad536dcd6e9mr1744917766b.43.1747836599396;
        Wed, 21 May 2025 07:09:59 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:09:58 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 03/12] soc: renesas: r9a08g045-sysc: Add USB PWRRDY signal
Date: Wed, 21 May 2025 17:09:34 +0300
Message-ID: <20250521140943.3830195-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071001_420051_F4AFB879 
X-CRM114-Status: GOOD (  11.24  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The USB PWRRDY is a SYSC signal that need to be controlled, in case of
RZ/G3S SoC, before/after the power to the USB PHYs is turned on/off. Add
the USB PWRRDY signal.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none, this patch is new and obtained from [1]

[1] https://lore.kernel.org/all/20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com/

 drivers/soc/renesas/r9a08g045-sysc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
index d2c9e3b77f41..7e6b5edf9666 100644
--- a/drivers/soc/renesas/r9a08g045-sysc.c
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -5,11 +5,21 @@
  * Copyright (C) 2024 Renesas Electronics Corp.
  */
 
+#include <linux/array_size.h>
 #include <linux/bits.h>
 #include <linux/init.h>
 
 #include "rz-sysc.h"
 
+static const struct rz_sysc_signal_init_data rzg3s_sysc_signals_init_data[] __initconst = {
+	{
+		.name = "usb-pwrrdy",
+		.offset = 0xd70,
+		.mask = BIT(0),
+		.refcnt_incr_val = 0
+	}
+};
+
 static const struct rz_sysc_soc_id_init_data rzg3s_sysc_soc_id_init_data __initconst = {
 	.family = "RZ/G3S",
 	.id = 0x85e0447,
@@ -33,4 +43,6 @@ static const struct regmap_config rzg3s_sysc_regmap __initconst = {
 const struct rz_sysc_init_data rzg3s_sysc_init_data __initconst = {
 	.soc_id_init_data = &rzg3s_sysc_soc_id_init_data,
 	.regmap_cfg = &rzg3s_sysc_regmap,
+	.signals_init_data = rzg3s_sysc_signals_init_data,
+	.num_signals = ARRAY_SIZE(rzg3s_sysc_signals_init_data),
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

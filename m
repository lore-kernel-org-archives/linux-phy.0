Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB641D58D62
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfDItYETCIhhnudsP2u+O50YASt3yX524PmJYdTblZk=; b=m/cJQpf/3DPD56
	Ld6MfrC2h0DQadkiI5qj9oKkePTKo2EHCMCKuiw3/jN7viv9s7lvMX4izogD4gEQWxIdPFsJqaL8M
	FSdJg3pNpI6/xSCkAfiNlJ82aEEzOglJ9/Y0A6qx/xnR5rsTspb4TibSU46UIuYAx9BwnAtNYwdFO
	BM7xWugctQLLLpE+tNTQ7Z2qp/af+k9dZcbgHjhG6nqVDMxDnqmDzg3bnOILNbuDYNLKfdpqUQ0pl
	vjGw8J2kc9zgkgM+YtLAGEt3hOVergxivlm9sDUu2mkkkd7TAw7owi24Xs+OGgNoNklvVHozqvj1x
	mpcJ9UJdh1h6b8leebRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlD-0000000A7Hf-14yc;
	Tue, 26 Nov 2024 09:21:32 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrku-0000000A74K-2iZa
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:17 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-382378f359dso3876956f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612871; x=1733217671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rHg/UpXu0kAmh5cmR42CQBOhisgGmi+P1vH8bY184Vc=;
        b=boICBz/0X7+EwDbuiOC+P0FpcthboXhIuC1ZGBz7t987V7vbMSNJku1ywscQalq124
         L0s+GSpcwwQx+AeBQlV8KyqHTK+o2dq+ktY2a4w/FKlKN885Zru8krxzUoLyFr4uIquS
         yKe93CKLAfzqjdT0k0Z/nnZF2pEjN0f4FMVN3i8je/s8Q6wlOPr0mvup0e3Get5M4vEo
         Ln9f/2D32730ECBD+AvTQmfjQgTwoFcQaO5AERi2Y4pLQDfGxujmeCatzpqFr7hOmMwv
         32bYb7o6xtuaZ+IEWLvTePfo+0fKB4uCXTKd1+JfX/H9+pAdHHNWWw389pRxugHmmq8c
         caVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612871; x=1733217671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rHg/UpXu0kAmh5cmR42CQBOhisgGmi+P1vH8bY184Vc=;
        b=j9mHOCbHFaP3ySjqhxcUWn1vqd5qYrAPM2EfBDAlg9uTII7LN9io/+YRnhOtvJh56/
         ZmNUTWdYeDITV0Yie2c6Z80T5LwMyo37PfezuyPcUPMzlNqm6sWwMQLF5/5u73yf/3wd
         Bg++ThmX6RGBXex6IsXgRXK3aDZgS4Eyg2rnJSxBlHOym6B9DhGCJUfnqJgeGiwvQW4T
         6W4lrWianWhfFTHBKkQIg14GuJQAF5MeN83RUbz6BHEAqzg5SKndMYPXzXqp59R03T/K
         eTuOYyNTYbQHew75S0TNlqpE8s66zQ+g2LqXnYhFeJz/uciDwtzJoUMmRlHkXqQ7ND+y
         Au1Q==
X-Gm-Message-State: AOJu0YwZhlNNIepP2I+AWsHBxPNrzIPAAs4LqAIuRdkrN36THznEvVCw
	C+P09H1W/PWVBez7834rF9VYwfzgvE5v+vh+1GLUJnfoFOSgnCH+Vtnn650pVeI=
X-Gm-Gg: ASbGncsY40cJzEXj1zyzDI1LwqzgnAmUl55RG+cuykVuNK4Un7fPrdfigxAv6eqIJ/d
	wVWu2GrkqlAWU5j+8vJHL/yUqtK58E1DgZ9uTfTPPNZTRumXVm9fq9jXUAV99gNErwd1o0Mq/oR
	wRGGYBiGuXKmaPJFZ9hBvhr8zHUvrHoDmzKo/0UT4dPhYpYo75D5DRVNnm5ylyAPDIIx9fCi70V
	SeUPS9kq6MCX3QPTcszId1kWs3HN7jsgspGlI7Uulpm0mWg2emB/3HO+MIcmBPRyiH+oPfOMxug
	jpo=
X-Google-Smtp-Source: AGHT+IHWio7klIaUm9lWwgg66sT0uRqFvChifk0YrFUVIwja8OlGoGemJIscbif1ZB71H5mZ9kHl7w==
X-Received: by 2002:a5d:5849:0:b0:382:4ce5:f8a4 with SMTP id ffacd0b85a97d-38260be54f9mr11141729f8f.53.1732612870798;
        Tue, 26 Nov 2024 01:21:10 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:10 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 03/15] soc: renesas: rz-sysc: Enable SYSC driver for RZ/G3S
Date: Tue, 26 Nov 2024 11:20:38 +0200
Message-Id: <20241126092050.1825607-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012112_705180_D9FAC1D0 
X-CRM114-Status: UNSURE (   9.16  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable SYSC driver for RZ/G3S. This is necessary for USB support.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 drivers/soc/renesas/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 0686c3ad9e27..c8065f25ee53 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -334,6 +334,7 @@ config ARCH_R9A07G054
 config ARCH_R9A08G045
 	bool "ARM64 Platform support for RZ/G3S"
 	select ARCH_RZG2L
+	select SYSC_R9A08G045
 	help
 	  This enables support for the Renesas RZ/G3S SoC variants.
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

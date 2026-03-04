Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0E0EDEC03
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 04:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GUiEnMK0DuZUuEcGASf3vEZ9GCXFqkzRfl+HOQxIxg8=; b=Fh3gFjsIrb59Yw
	goRaNqhA3w9Uz8XQmCbyL6b0ls22EWQ4rqZPArUNvl8uYUNM0seNwnc1KeZgt9vmwYVBoLKNXukF0
	DiPLXC0b4a3ySKO/TvHL50tisJG0ZhwYyPlq0OILjxFOY/hjsn/MwWTFyLPx4feIm7ONuxHNORsQo
	8SUJYOEPv4OQWcHY86drjbRKfdKmg22nH1vq2zXebZbLEjiUAeqCEyzFFVREw5Fi7hxVWfeN3/1JD
	TafeYj0Wp+itdjbEh4igiPe6Vg5tuoR1CoVjK7nxO0kLkwlqS8vTltUg4SZij2XZebiFXiXaxBmvh
	G7bOhUE24CtFs8o0AIYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxder-0000000GQbf-3ezc;
	Wed, 04 Mar 2026 04:16:25 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdep-0000000GQaf-1T9j
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 04:16:24 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-79868cde1eeso70670287b3.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 20:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772597782; x=1773202582; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MkjQxqDNkwYe0v6cm54vnCU9hUuWR93LRR4ggzirqFk=;
        b=mdn56ByDcWEm0981hL8uobYmvBdEos4YfwPF3itUT9/2zoIXoKKXSlmvPKqo1zSQOw
         tKLTd82B33QmyvzhWSA7P2sWhiBqeijiuzwZjLIu7Qh8KU1LdwgPwHZPoQBZ8uKoNphg
         jXlMqhmJ92Orens98Gw7oG35/6ghCCJkFPXCOWb6QTD+QUIpAtcxe5zBad51K0BRjpeF
         KzclgC0fOmfsMqXzjAJb/N9Ejwsew21WtmmjohZtpUkNgGUw4FdcHAzHlq0/90UYUvzp
         ZdfDRUK/+gRdAieO5zdi2n0SOSxDEsiCby6mmH+4lTxvH67N+KKnpnWmjVRS0/eYRJ12
         inQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772597782; x=1773202582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MkjQxqDNkwYe0v6cm54vnCU9hUuWR93LRR4ggzirqFk=;
        b=DKsQWzLWH4cGCRVs+g+3pIwgv7/Ptpw7SM9vHSsTN62GuygvwZKD9egc62Tb6MfS2s
         1tCBX8PNqQM9/3Bso18DTxFn8iAA0/XY7AIiFdfPy31uftwU6yHhIUv0qPnmtLdTSRVw
         oGMW4w6X6PYjvNlBdcTo6ohrcABYISGHJsT6sx2r/KvrdISfX416ViJ3LX0wVu0gFRc5
         ibos7D+EGByx9r1819RL36J3vusTsOAdPb/RHGlHld22jzTWlWe2vnxfhzuH8OFM9zx5
         2mckt5uoHYnRAvd5hE5ZduYsC//uvVrzjlIfI/qxuscikuesC0Ej/tzoif8hXkLM9N5k
         PKiw==
X-Gm-Message-State: AOJu0Yz2sJIiThPNDS40eRfWVAI0Bi6jEUEwXhgtdX+Fo8t2gyZSVwdX
	YHGH+wkQEEQ+WZCcbmYv/yxN/5UAdS0D+2Et14Btpio84f82qxN5oWygb7aBfYsLSe8=
X-Gm-Gg: ATEYQzxHyEqwnn4AKGoPJghrT/IxGkUqkXM/vVHRJPfBkUBl1bxtip+821mcVAwFBBs
	OMLmeqd+xPsSKAccV664eOTv5f1WCFGbk47WBZfYUuhMoj52mVAqMaIJ0jH6aqtxgijqxJ+N6PU
	HmTsZRDUcTeAg6lVLJr69ux+Dumf1FyEBTq89sSNKFu99GEwxChsUCduTHS7wTyS9bikNoMFTjO
	iB9MqyfyhrbPqhjJcsJ2/J96T1sBzxmtBfEpmFufatSflL5rprfKKbfpQSxu/Q60xwRUPF90Jp5
	GzrJuWTx2Jzbtn2H6THzwBM4zVs9Hygabfl9jqX+IPLNEC42h7JCfOtPcPjGcFU3Pjrp7uuS+M+
	bz7Nf0sRMO3k0nGAs0RzrE8fvEVVJDWc7bbjwfiBImrnzIBTDzlb8WLVfrfUJrQxb4thZ63YpKs
	zRC564X4bTQQujzw7QOuYraptIwLVPGT2YJ4eQhZn3BUhpAQTcVS7e9w==
X-Received: by 2002:a05:690c:c4f1:b0:798:56eb:f238 with SMTP id 00721157ae682-798c6cc63d4mr5262807b3.36.1772597781827;
        Tue, 03 Mar 2026 20:16:21 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79876ca7354sm68570967b3.52.2026.03.03.20.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:16:20 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Rosen Penev <rosenp@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/UNIPHIER ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] phy: uniphier-usb3: no devm for nvmem_cell_get
Date: Tue,  3 Mar 2026 20:16:02 -0800
Message-ID: <20260304041602.7539-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_201623_385757_B52E9CF5 
X-CRM114-Status: UNSURE (   8.80  )
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

There is absolutely no reason to extend the lifetime of nvmem_cell_get
to after removal of the driver. Use and free right after use.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/socionext/phy-uniphier-usb3hs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/socionext/phy-uniphier-usb3hs.c b/drivers/phy/socionext/phy-uniphier-usb3hs.c
index 8c8673df0084..c8971eee3640 100644
--- a/drivers/phy/socionext/phy-uniphier-usb3hs.c
+++ b/drivers/phy/socionext/phy-uniphier-usb3hs.c
@@ -104,11 +104,12 @@ static int uniphier_u3hsphy_get_nvparam(struct uniphier_u3hsphy_priv *priv,
 	struct nvmem_cell *cell;
 	u8 *buf;
 
-	cell = devm_nvmem_cell_get(priv->dev, name);
+	cell = nvmem_cell_get(priv->dev, name);
 	if (IS_ERR(cell))
 		return PTR_ERR(cell);
 
 	buf = nvmem_cell_read(cell, NULL);
+	nvmem_cell_put(cell);
 	if (IS_ERR(buf))
 		return PTR_ERR(buf);
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

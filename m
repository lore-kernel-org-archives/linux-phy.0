Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32089109C033
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 16:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tDWmhyZv1NLnk0iq9zr5y5H6ahhhQ8kU7jQRYYhDt5A=; b=VkOzPZXosHQm+4
	xY7kBcqh2/xgloanrpvhLZRFce6bxFFHFkABrUlpwnpaoRX62ys+xbczXKkFBtMWetrYNpIcJ/PYT
	GDXX98ZI3rs/UpEa351Dp44Ju9Y6jiiEKzGIh+yG5awEdyVdokkZye7hTAlLLSxHB28Sw//cn/Ylc
	a6OfPWRJW+senAWpN/ZOAWIyDpRxy4erwBwFIte+uJ0qHUqFRdMo5+hoRgE59AdGQ+SmXZLIUTlnB
	nosPkDEn4liGYTgjpkfBlEtgjSP4Tf4iB2+pNQwKqHb+XnwUiIB22eJiu6uimT8VN37/RIqemLoGh
	nHFEWO9fP1h/XsG2LfLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5R1a-00000003sNP-2w7L;
	Wed, 25 Mar 2026 16:24:06 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5R1Y-00000003sMN-2Ucy
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 16:24:05 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-82418b0178cso20312b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 09:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774455843; x=1775060643; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9qbvYscf4zAVK6F+BRBQCeZsFQW9PNBr6bbrHWczJms=;
        b=bthUHdiDtIvHNX/M5+2XY33ErPaxPAbxSJ96sGLob6L7EK5cgGqaCHYph6JzmplkHA
         4qEtMsawmlduB6z7kb6anZqDXc/LflfbKuGTChWHjMJgSOoov0NFRUqeIM1mFA5O1uln
         UDsXdS+50KPEZEQW5HYN7ARVJQ1B8ynIv9xY49j0DNi1taRFbeml4E5gya2ayETT8DGn
         UouyD9l8qb9CMMuj/RgtP462blSVLGa0r7IhVzhnE3Le3sNjbfcNPFmsw1oiRzec9/Ck
         EeNC4staTt/zD8xWHRxuaX6RYnX4SPoPvTkjNCkWveFOB5mI/aUTpsoegTxpaqRp03fp
         xNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774455843; x=1775060643;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9qbvYscf4zAVK6F+BRBQCeZsFQW9PNBr6bbrHWczJms=;
        b=ZabI+Ndg0fGRWqymKAsYjcXMRtoAc40Y0EokEW3vOF0uQXGDwAxF8ytx6TaB14xIi0
         Bn5EMg1inZCeniL9L5g9bKA0mDJl0WDyAIFWKlbB2N0y9weFS9XzCNWOZlVFX9oDrwpa
         zNrhFHnFdpfmfL8ADk5Ui1fLAX6q278Z3Qa5TNF2XY7gepiJj+kN5hqGVUyh6rpK8qNv
         B7Koo2Gbxgeq8D35SCu0imhaCcVqzedLt/3zhB1dTXSKfhJrV3tkK65DTuLySdE/6+H6
         cYHsocZ9v28S26gDvGP18udg/ag9l7fl8rqGvsdJBkMFDa+cz5KXLhA/h7kjsmN//qH0
         7gew==
X-Gm-Message-State: AOJu0YzW8Z0EDh15r5vLYswj3y7cT2fP6a/tTX4tDHL8eUMlv8JBslQr
	JTrdbCJjKlHWHgBhf/yncxpIuUFWeQmk/Igc0hgb8HqfSemL/TfJ7aFt
X-Gm-Gg: ATEYQzygBkAsmIGIbBmKIYjNiSG5N+Bg4Cw6/oCeMemM8JZUI6D3LRQSdNL1DiHoKMB
	NKy0KfwBxFKAb4P0eP9qHoJIcaOc8TT3cHCp4rYNnd1bVv9n+/aV5LBmSfzDa50GKoJ3lCzxnlI
	DpVLyhcYZguIjLk/fXwGXDk5lrJ5clwlVNg7B7Yypi+YCIFImrznddt6Me86RrymICve1xWGL4U
	0w52yFm4KKeB3kd9VR6zoqXyChhgA1Nav+xE5vo6niHGQ+1a4dcOizm3Mm0mH/gS5U+4jgyWE86
	XKV0RPT7KYhmvuxZaUhySvn8oDETnG5Jd6NTAPpUh2kw+GWXSAng9nCsLcfGloOF4BtGlhthPsL
	VI+1GKjswK+xNgaISKuPpYF+gJnRE9TXaA7eEA65Fv+oZrH0qAfJj519XBzBr3gnjn20MC+j60A
	lMMnmoc3pDF3iniVkV4UERFs6bubtc2W9vsjyF
X-Received: by 2002:a05:6a00:414b:b0:822:6830:5900 with SMTP id d2e1a72fcca58-82c6de927e1mr3843698b3a.6.1774455843050;
        Wed, 25 Mar 2026 09:24:03 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.167.147.240])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82c7d3fe576sm154141b3a.54.2026.03.25.09.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 09:24:02 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Thu, 26 Mar 2026 00:23:58 +0800
Subject: [PATCH] phy: spacemit: Remove incorrect clk_disable() in
 spacemit_usb2phy_init()
MIME-Version: 1.0
Message-Id: <20260326-k1-usb3-v1-1-0c2b6adf5185@gmail.com>
X-B4-Tracking: v=1; b=H4sIAB0MxGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYyMz3WxD3dLiJGPdNLNEU6M0E0NjM0MzJaDqgqLUtMwKsEnRsbW1AEl
 nPspZAAAA
X-Change-ID: 20260326-k1-usb3-f6a52f413616
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Yixun Lan <dlan@kernel.org>, 
 Ze Huang <huang.ze@linux.dev>
Cc: linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774455840; l=994;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=HX2kS2CXlof3uu3i5x67Qry8KYMPozu4hVnaRzMVy1A=;
 b=sSdhxxaVsPk/RdstKNgVGGb1XcCzLpe10MvOCK2PNP2EgqoJLouU9wzirIXc7obo9ACJIFgct
 lGVdOCDrwH0Dluk863nVDQj75lYZPTyRtb/Zqo0J6KxN9VFH7fpY6Kq
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_092404_637214_C373BCD0 
X-CRM114-Status: UNSURE (   8.48  )
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

When clk_enable() fails, the clock was never enabled. Calling
clk_disable() in this error path is incorrect.

Remove the spurious clk_disable() call from the error handling
in spacemit_usb2phy_init().

Fixes: fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/spacemit/phy-k1-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
index 9215d0b223b2..e8c1e26428a9 100644
--- a/drivers/phy/spacemit/phy-k1-usb2.c
+++ b/drivers/phy/spacemit/phy-k1-usb2.c
@@ -97,7 +97,6 @@ static int spacemit_usb2phy_init(struct phy *phy)
 	ret = clk_enable(sphy->clk);
 	if (ret) {
 		dev_err(&phy->dev, "failed to enable clock\n");
-		clk_disable(sphy->clk);
 		return ret;
 	}
 

---
base-commit: 85964cdcad0fac9a0eb7b87a0f9d88cc074b854c
change-id: 20260326-k1-usb3-f6a52f413616

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

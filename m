Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BFB5C55822
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9sODrJ4xM+psqm0zw8EO81PC4ThbvmLCyoCxPTLpUuY=; b=DIFHtDA5SXlA5Y
	pw0rleq4Mt/RPP/Tibxm/3X/eHwj28ANGyYRXBc/ws3ZMMiarM1MSaBuo1oDvmpYJ60NdX1g9KqZ3
	ZGoY6EF9ZzfS4zKwdbytxoZT8Q/Q1RylJRjYUrIJiT120c6t9rpM9GQCx0gkaVqcjG0o2jub8YWEV
	3oE284CehueyfY/cvOlo+S0nZevnFTlZ48kOY1GzRebcrTreqKIExC2Wgx2/1nhAhKdjc5fC0f5AJ
	M2NLP/JCLwjtCULnRUPSofh23v2A+hv8rmf+eoPk4JjqBqj9zWFq1v0ZZ1YJaqtuJPPMdIBgLQ0qc
	x2+pgvaA953I/SGN21Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrFep-00000001yxD-2leq;
	Tue, 04 Aug 2026 13:58:15 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrFen-00000001ywW-1kHH
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 13:58:14 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2d01663d816so36689155ad.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 06:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785851892; x=1786456692; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=aIeJjdKUMZPMOtXxfYP3hPyesDpx3ea/m3sZqCZSwEU=;
        b=ShB5yGHmEgvPYgyOuv+7Du256t54Jve1s/5X4+IMpx2kvkomuJ8SaA2tbd2csSzRW7
         HSBx6cfI5QWlD7gQ7+tbPCU4WkWXarWMJED2DOrRfoxkO+ZGYzGHzJL7AZn5UtBAjEn4
         FRNo1QIMwycG3w9NUMorW3CxC+kkoxd63+GxLrJQ9PfeCrdYNPtGB+EwsaG+4mxyJVeG
         CkEZ1rA0N0hxn3iGSToP2JAf/ROLMGA12TN1btPmEg+M2F94gNQKbtbAWlJA8itSiVv4
         Yd++V/9HGy1idQ2lKzoIDYfrjwR6yjcMA2jiJM88uayr/A85dlkcM0qRKFPJOvtqw9Fw
         VnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785851892; x=1786456692;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=aIeJjdKUMZPMOtXxfYP3hPyesDpx3ea/m3sZqCZSwEU=;
        b=qOJN1CzcBuvPAW6M1u0Q3EuTmlWedAB/rg9Td9HYt1G5ceSWPGRv0tDiA6nEvbbh2p
         s+/DrVIBLXrjDyNRFkX1GBMWeZrqxzYSK4l0WQ/bOxKTMNNYijiiAZcfRscUM5HCA96x
         J6lEJJsiRxsYPSeumJh4pZK5PYPkt9gmtaEDppjOHe6TmwxWk22tPcxiBFMDibWon4WA
         F+mN/vapNILA6qrnwfgp5AlETv4vbycESyx3EvUmVnCu1gQ+Mf2WQ88OKRnJOboFtRna
         I6OiL8uXy1odP7j4aZ7T4hcdXggBwb5vfBAOGgGCuSo5ZHtwNnTsteQQ61g/qXmlvBMY
         H0jQ==
X-Forwarded-Encrypted: i=1; AHgh+RqC737owSmG5ndqM4A7HDeIO1j4/HYgYmidHEUhmsnU0es4oBgzj/W1wW2cPjmWiAIDtxx0shl6tVU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzt5M8usTZnNPYgey0qCvUeTKQFgk9brK50I4k8fYp3vUB8Op1B
	9eULT+fv0qgHHe/7Yyq7OhZ4B1+iGl4gIEZVwgsGCBnXObBfvFXEpHWnQTo+JQ==
X-Gm-Gg: AR+sD116nU5Xb0Rnb2vOqwZEksiMtANP8DxsqFxVGqz999llaNR2VOzXXGf0xh/PueN
	ZFPEVQShvLhvopnIgKTzpJhz7HZGBQ4blqvd9wFkN56YUj516Oc7pHUpfal4o7I9fHVI+p+EPLZ
	tMTcsi42Thu8XtK6UoemOcAFwcxKpKZu9eROPhKHjxYf6FLOejglegB8ARqJDNxiQpNGIZ2AZGV
	CEtOVbfUL9LWS6mw04Zos3cQyCNdXSt2X6BOdbUh/i8S93TYIo07lydGiK+dM1ndTby5YYkKx8H
	21DwgOdbKm2KS0q28KFmDjmt5MJEqdfsa2Api6Vv3cW+btjfDGWgJidAoBtUTw6PAdZ1X0Rbige
	8SFv0fJNE7W4imO7mmEO5IUWCJXNaejBwZgqtgkWSbQwrZPzs1dcdIckluhLBYfbeSj30QR/d/G
	/TpI5oigNOjTlWAaudgS89fSGMGEUGDIL0vy+UVa+Cew0Ni6boAQDkK/vKlpT/RK7bVWkZPBSRG
	hE82nEscmZxtnqIAi1ZU60JKT6dPx0txwwvQQ==
X-Received: by 2002:a17:903:37c8:b0:2b2:67ca:5ff9 with SMTP id d9443c01a7336-2d051efd46amr142715445ad.0.1785851892093;
        Tue, 04 Aug 2026 06:58:12 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d0a9f8fee7sm8893255ad.16.2026.08.04.06.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 06:58:11 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 04 Aug 2026 21:58:07 +0800
Subject: [PATCH] phy: sunplus: fix crash when the disc_vol nvmem cell is
 missing
MIME-Version: 1.0
Message-Id: <20260804-sunplus-v1-1-79f52226cb50@gmail.com>
X-B4-Tracking: v=1; b=H4sIAO7vcWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDCwMT3eLSvIKc0mJdU+NE86Qkw6TkFHMjJaDqgqLUtMwKsEnRsRB+cWl
 SVmpyCUi7Um0tANmQHlFrAAAA
X-Change-ID: 20260804-sunplus-53a7bb1bcd72
To: Vincent Shih <vincent.sunplus@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785851890; l=1862;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=fcxHE4069tN1YsR2Y0p8nND9Z2PnmMiBnNC9xxS2rTY=;
 b=Cid/GYA75nIzfeE+1i4bBmQ/P5KYsKTwmwbuoViplJHvHw+rygKgovZvvFmnHEVXV88dRlSbL
 QpDeN/5gYrAB7/1cirox7Ybp2kxKsoUlhF1WlOoIJaIbQotic6a8hRO
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_065813_484624_170A426F 
X-CRM114-Status: GOOD (  13.29  )
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

nvmem_cell_get() can fail with errors other than -EPROBE_DEFER, but
update_disc_vol() only handled -EPROBE_DEFER and then called
nvmem_cell_read() with the error pointer, crashing the kernel.

Fall back to the default disconnect voltage on a failed cell lookup,
and free the buffer returned by nvmem_cell_read().

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 637a5fbae6d9..94146118e9c2 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -81,12 +81,13 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 	char *disc_name = "disc_vol";
 	ssize_t otp_l = 0;
 	char *otp_v;
-	u32 val, set;
+	u32 val, set = OTP_DISC_LEVEL_DEFAULT;
 
 	cell = nvmem_cell_get(usbphy->dev, disc_name);
-	if (IS_ERR_OR_NULL(cell)) {
+	if (IS_ERR(cell)) {
 		if (PTR_ERR(cell) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
+		goto out;
 	}
 
 	otp_v = nvmem_cell_read(cell, &otp_l);
@@ -96,11 +97,12 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;
 		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
+		if (set == 0)
+			set = OTP_DISC_LEVEL_DEFAULT;
+		kfree(otp_v);
 	}
 
-	if (IS_ERR(otp_v) || set == 0)
-		set = OTP_DISC_LEVEL_DEFAULT;
-
+out:
 	val = readl(usbphy->phy_regs + CONFIG7);
 	val = (val & ~J_DISC) | set;
 	writel(val, usbphy->phy_regs + CONFIG7);

---
base-commit: 9a4cdc958dd79fc6c3b20b51a10debec6ca09fec
change-id: 20260804-sunplus-53a7bb1bcd72

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

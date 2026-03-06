Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18B0BFCC076
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BocSr4LAaaIuljAzR1WQVG8+cpSozCIWHZNbFpFpdC8=; b=D4lueMv3Wu3wHV
	dRjB6im53sk1a22kLkTJ35QjY+TOiTX20f515Da5OMVczVZj+3Qi9ruwv7DXW9DM/KibpM/u6a6to
	nD7kFcF/2Nv+dqYEMoTSGKeYTcHABar5N3dIRhSwbr3jTLjYPm3IgkDaCv/dgXCnkcAt75mpCURyd
	dD9QHIZBr8dPzDPw5m0FM8p71q2ULyTct9B2AO67Vr9EafDt3jiLW7L+SNZGyI5ry7LUtytxOpb6G
	lGK+wTyfn7uPJWmWlBOFHuUXtX9QEkmH1YJNbBvI8aai7rYT2uAMdCHhSUuAoyYBdMnbVrlstnfxo
	Q2D1K3WbCQMSL2WeBVPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vydbl-00000004aSE-3OjD;
	Fri, 06 Mar 2026 22:25:21 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vydbi-00000004aPE-1Zvf
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 22:25:19 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-c7377119453so1627667a12.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 14:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772835917; x=1773440717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BGeWdIkU9VejQgwZq5zb7Y2J6ZyCjsrY3OgmM4MXxHc=;
        b=aqJiwcZ4LZo9lTsmv4ROHdZh5b/RID+ah7N2qtpM6T3fXxxtHHwSJ7pGTIBVt27O8e
         2WLJiSfB2Hw2bfi9AFvfg4WTKeqtl3M5i4/VVu249Odye4AlcFRqQ0RANHmjdC/Fo0qF
         AFf/+j+4lRwHXcmR2hPsK1p/zTZNmSVV/EMQj2RxMmQ0xfIcVVLbVhLMq9QOx7IaUIY+
         FhR0DfJAgFp84+f769KoDDV+1F62oevsqqZjxMZ6a3URxhDXFkWKNnmNSBPukSh/0QEP
         T8qEMJhagq4XV5+HNBi0ny7HARRs9LMKhP+paKLLTmE3Gl6a9VYuxRBM/iknk69vKoY/
         R60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772835917; x=1773440717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BGeWdIkU9VejQgwZq5zb7Y2J6ZyCjsrY3OgmM4MXxHc=;
        b=os7iCokzs8b18CarW9st8xW73Kk8FejljYuc97NikkDX5xbnxWZXUXvQ/FyiYr+h87
         AVYnH7xqWS7XdonoNxPHqKzP5WiZXPcevyzPiVzWVGpTK1jDSqxNok3Pd1jipKNU6Egn
         w8+PQPHfnqv7f84+AUjYL4hU6hIQAI4Msgm7+qEIcQ5X85H4UBnDBD43NL3l17LJLFiM
         kLeiWAU+kbrVlWoV+JhEoqXJ/JyhlYAj/yXZjWk6FDhswHc9JadyIyvEFfTax6UeIFXJ
         l/91yfNKdpM7pvFIkugClvu0fJlzPbaKh3rccD+myhNGmYAuVnPyF9xd0yYaQT+DEtth
         2I4A==
X-Gm-Message-State: AOJu0Ywvb9RlTrMio69WXoX+FK3WUoz7sQ3xPQqwwMSOwnCh2JG+5/+T
	5DKay6KCOYcqOQ/1BBHXPTt5JAebWD2p/6s4azzQOyw0ug8Gkq7S5zy6loqdvlITCPY=
X-Gm-Gg: ATEYQzzxjRmIMcAEIF+9LGWiPGiBpYC4XVkubyVjv1GVQ+cYjiVkND/Li4ppyOuGfsq
	xNEXXuRopQ8iV0eqY8rAkL6rE9RKPbzNjTuJrFaHRRnXfo1mhJzhhl1/OiOYlme/6NCjGPINSU4
	CA948dQEIYZdlYjHOGTKgWHpPNkFsvf4grPuFuYInnefa1IWjbJGBHge+Gs9ugUwblgilzuzzyA
	Bt3yeqHp/VIo1/nHnXhGXVMVpPJsfrhs8Lo0Z52YJJlvaP25fPwlvc2rT4MrryB5jFPxzDlfind
	1SWNXNTEwFQNIARbnQgcjJcfxZjWkrHPMHIngb8xDOjO88hUk2Rd4yy3v//k4yF6IdVyZpn2qi/
	gkszCBQnXxVjIa+LpT+3PhWOhn1rB4Y7QfAB2xUEm/CygkkA+jWzsb9uWD14Tur0LmmmLhJy5iK
	mgY1eGa21PqSxnS0sJEnQzElAApoRwuvpXMu8Ug6dMPM8oFb6GRsqe4dc=
X-Received: by 2002:a17:902:ce82:b0:2aa:ea8e:f118 with SMTP id d9443c01a7336-2ae8241ddf9mr42623695ad.3.1772835917227;
        Fri, 06 Mar 2026 14:25:17 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e7c58asm32516605ad.25.2026.03.06.14.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 14:25:16 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org (open list),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STI ARCHITECTURE),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCHv2 1/2] phy: miphy28lp: add COMPILE_TEST
Date: Fri,  6 Mar 2026 14:24:56 -0800
Message-ID: <20260306222457.8400-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260306222457.8400-1-rosenp@gmail.com>
References: <20260306222457.8400-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_142518_408837_D4A73F19 
X-CRM114-Status: GOOD (  10.02  )
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

There's nothing special here to prevent compilation on non ARM hosts.

Matches every other st phy driver.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/st/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/st/Kconfig b/drivers/phy/st/Kconfig
index 304614b6dabf..49206185e563 100644
--- a/drivers/phy/st/Kconfig
+++ b/drivers/phy/st/Kconfig
@@ -4,7 +4,7 @@
 #
 config PHY_MIPHY28LP
 	tristate "STMicroelectronics MIPHY28LP PHY driver for STiH407"
-	depends on ARCH_STI
+	depends on ARCH_STI || COMPILE_TEST
 	select GENERIC_PHY
 	help
 	  Enable this to support the miphy transceiver (for SATA/PCIE/USB3)
--
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

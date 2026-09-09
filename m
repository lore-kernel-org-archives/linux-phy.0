Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 559A1C79FB7
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 22:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WbrZvzK6u5CTb5+ODMx9qf/yD1L4lJ1hXjNLVVvHQ+8=; b=xaXYtEB1yHzjPF
	ussrTF0ybTrBWTJlaYcSV8rYirV3+2UCIUZcPtTC323bP7JUAoS8sh6+SYMhZebw40Lu86a/sWdYv
	mcwdvNWskHAXk8/EBn96YvietgHK1UwzBnUpt6s5Z81S1CQtXVGPzyNZxtfJBE0gZOQa4KxpxSf3K
	/7M8cVn0IhYZejx+CdSeLQOWc41fmwBUx/hmpwJDKz91xPnb90aUTIdy1NsP2ndB6NbB32/RWJOGu
	AIHvTcYb42WriLXujIIJx/j1+LtOfplR/losnRJkB01KS/T24uNFAxBoNZ0eImypkLdA207mUbLSV
	7o3UnuGtR7TLVZ8phC9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4QSp-0000000CzFC-3gbl;
	Wed, 09 Sep 2026 22:08:19 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4QSm-0000000CzDx-2RLO
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 22:08:18 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2d560775ca2so46198575ad.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 15:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788991695; x=1789596495; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=C7UZ+CZSXqHjsWNSA8dThjGs+0DrX3xzvJgXi6EfD+U=;
        b=JMgDsMQ1IDLQ8WcHph95rgheorHsJo2K7m55z1mHQW13vRJzQNlnmS0spkdMACG+v9
         JTSXbxUQHTSu31LRN+i96WGtF8Qy66i8Xb7aaLaOOX2hEk6Dg9acpDJd2F2xC9cnxkZH
         +OUesZSXyiJFwpx3eTEC9uHKt4BBd2rPQHSeF9G4JhpWjhipUCHeav3IjpHTUMccUTnJ
         Cpr7g9tK2f6VNgOT3luF4HbQC3mUIGkXW4JE1srbZasPOC1RPdOvUkFgfNMB7KbhuIDg
         HTCF3aIPiLsqhRSVhkPdE636kaKWCYp3piac/BLazAAA9JW+OZxrFGJaqMWqQDVLevay
         hkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788991695; x=1789596495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C7UZ+CZSXqHjsWNSA8dThjGs+0DrX3xzvJgXi6EfD+U=;
        b=VM7OwMeGe6WtmFgKr9RRUS3KU+DYwkUgTxEyvvCzhVBRygknRMYv62Lj1w4OlnfdQt
         wuq7jqyxjGpWwhUYGX1UiSwvjZO81yYr9q0BkdZwDFntkAkLVFr5l7z+iMdbQHE8higM
         G1wag1R73rF1K2dxIOJXvTyo5t9oY67453BnxVI6GK5SeWUXFgubXvPQwK1TsHoEiquU
         O8HzRMLmBmSPlifvtsoPPUrfKfrQ3BKJGMrS7/CcoS0Qkt+BiSFv0EQnm8SNwbuuthoP
         IE3g9yAnXiWOQ3MaH6yTS7tH1FM+rVyOCNSyDww2qU0CdwAyezQ726lgiytB1nQfjUar
         oSAQ==
X-Gm-Message-State: AFuF++nLwIdq5dantv3OZiu7ZwAekY7auzc9FZ9cpC3BNvlHRLGHZTiZ
	gprFc05S13sfAeQsiZjT988ckZ8RxNu1yidWd+CYzNHeS6IFDrvEXYbF6az9fw==
X-Gm-Gg: AYBFou1W3un2J5ISrpp5lQyURmNAArXwo4WB5JjkHNKVgL+KoS6ZaaakBLCvLYHSd06
	W6NamEdppzvwIUv3tX3tooJILMTYz174QEgQncuJx9ySDY+Em3ibSOHc3k8e+Zq18dwHJt3QlC2
	tPI3nqgx6279mLxrDkA44BX912KvwLGX3DnBfcQUSnOdwNViTuPSWsI4RLvWCiG7lgM0QpERPSm
	Zll50+4n2W1u56ccoOv0wVJTk8ipOVDZRIf9dXssXtCd3BwiZT98ZAwPGDt106k5k6Jq7SlsFun
	oURZntrh1A0nhktITAsamtUDe3hjYgtYRMG0K57OkNSSCAmweaCm5QzBxzTEGD26bsf9h0hDdek
	omKUuaq79y9V0SfBEgE4oetq23WJT5lOMNxDC4hWdj+QPjd7dSNx2zhaZoQPu2TPcipAbxBEZvy
	h1nYZXPm+54Qynr4EYUqngTkt29TD0dSfwYV4ezOwvTdqyVbUrG3o1uSl0nJyf/PjQKCfdMEJC6
	XjPVDZl0PUCeApYxTSH4HLTY/1pyHX72zvKb1OvpeDnEhpgrJD2j9NABWLF1AQg87ggkTY2lDtU
	Q/cEZ/V0NqFgqLqUUN1pbPRCQrLvgwclrTl/Or7jEnIXWurO
X-Received: by 2002:a17:902:da8d:b0:2d5:3f5f:e645 with SMTP id d9443c01a7336-2db125ca419mr522760655ad.12.1788991694359;
        Wed, 09 Sep 2026 15:08:14 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e35])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db2c60f687sm65423565ad.58.2026.09.09.15.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 15:08:13 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	asahi@lists.linux.dev (open list:ARM/APPLE MACHINE SUPPORT),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/APPLE MACHINE SUPPORT),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCHv2] phy: apple: atc: remove stale kernel-doc for removed struct members
Date: Wed,  9 Sep 2026 15:08:10 -0700
Message-ID: <20260909220810.52310-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_150816_612908_C665B7B4 
X-CRM114-Status: UNSURE (   7.07  )
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

The @sw and @mux members were never present in struct apple_atcphy,
causing kernel-doc warnings.

Assisted-by: opencode:big-pickle
Signed-off-by: Rosen Penev <rosenp@gmail.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 v2: remove removed in description
 drivers/phy/apple/atc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
index 4156fabad742..f09305dd76d1 100644
--- a/drivers/phy/apple/atc.c
+++ b/drivers/phy/apple/atc.c
@@ -585,8 +585,6 @@ struct atcphy_mode_configuration {
  * @phys.dp: DisplayPort PHY instance
  * @phy_provider: PHY provider instance
  * @rcdev: Reset controller device
- * @sw: Type-C switch instance
- * @mux: Type-C mux instance
  * @lock: Mutex for synchronizing register access across PHY, Type-C switch/mux and reset controller
  */
 struct apple_atcphy {
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

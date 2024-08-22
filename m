Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D8AEC52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VZSeTaKuG9rJM//PFGGXfNO/IQqFZHSl2DuAmrRInk=; b=1mnrps7vGQtcmb
	iaQeMpi328NRzUMiUKjSfm/z27wQz5BEDsiLwZeygYXu7MA1b7uN6oZeogTeFznwtxezcPleaGJCF
	48Y/UT+cxvctpWrBs7UgamFxWl5QWQni5X9X9TxxsjTIXckZiKsx4T8nPpim8j8yxQpsV6IxKflpk
	chztqrKINNVV8MYtPGdQ3hrhKsJxqFnYFGiQ+Zf5FNcRqL4taqrApKR8NhtnxoKBNqJGezYoR2cQt
	nc1QW+6xLH2Pwu8+4ntJngKjE79QwAqwaMNWdwahVCaAK+sz6bp1xYGOwH/EEyeIJOZCFgFdVmE2r
	z2cRODLOuTrS7j1YGDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shAAC-0000000DSg6-2fFt;
	Thu, 22 Aug 2024 15:55:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9k4-0000000DL05-0KHV
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:53 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-428243f928fso9582025e9.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340530; x=1724945330; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YzzVJZseYqmAj3uluQhRMecpWI1dTsj4zEH1FZKD0d4=;
        b=bxMKUPzE9JSNKGOQ3a9lcSksRoLDFoTTUsmoOCPG46CPPYtpnWzgi+ZqFcLLJBR/cS
         bo4qr8yUsNN6EBDCvj+Ml2YtPlzjg2AlzL1VLAvluspTz9UNcSYg1LSz7R9XNOHG2Qt7
         +og9QFofvPpz2hzqtK67NZRRN7EBT0CiZxhFYggL88B9yoQQboB/gZwGLPL7n8dl+NLM
         wbu14t+uysEw1X7oNgcMyTXsMBRve3/9vmXy0njS90V5vGIrdqz58a9mlYZPeIWKhRL1
         G8K0YZkw7Xz7NiEUV/MMntk77dWiK3jEL+84w+ioK9gvlPfQ2hvafHcmDtW6c3kO66YR
         8fFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340530; x=1724945330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YzzVJZseYqmAj3uluQhRMecpWI1dTsj4zEH1FZKD0d4=;
        b=lniny5rT3/sA5vVZpanFjF8U0Y3axzVMO5gWsCIjeiKkQh1w4r4SKlTvQcTVp9Oa6W
         9FGYm/ZeGzvMIeIRZEg4JTh4JSuphDwc0dGYlGYT9uU6KdNO2umRPX/oY4fNYgVVHOX3
         mxXtL0vBUbjhnH1i1fyFMgrp1YLIPt3pfBLvVVRaT6zaiHbnJVHiiqsYCBKsuh9V4tBJ
         fBJZZJx3zSeiwk836xCpv8LxkpywOw8k5fjUwZ1MLS4+35JqaNj2xia8bhx1BHZeD86z
         jmLbPznjTMaCjmzOuhl9b+i7uO0VaTb3nYSEi9mnM7KXyNgjC1pAFLewZwUe3qXxjE34
         ZB+Q==
X-Gm-Message-State: AOJu0YwylBKQhoIML4U0x51n1kDFgsFVea2DnL+Y14zujOvC4f0Dy8O0
	UB/5Uj6LPLqf8+2MxgWfebZkRLVtLIPSl5/HoUZDI0nHQHezzN0LPD/+gHRjfow=
X-Google-Smtp-Source: AGHT+IHCUCn+biQIAnOUlxWOCjXAVeKX8ey9d7uY1NWlOsuugSxvOZNpC2pcgsn0KfGk8KOYuf8lZQ==
X-Received: by 2002:adf:a416:0:b0:36b:3395:5363 with SMTP id ffacd0b85a97d-37308c1826emr1937317f8f.16.1724340529907;
        Thu, 22 Aug 2024 08:28:49 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:49 -0700 (PDT)
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
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 16/16] arm64: defconfig: Enable RZ/G3S SYSC reset driver
Date: Thu, 22 Aug 2024 18:28:01 +0300
Message-Id: <20240822152801.602318-17-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082852_157510_7F236D7C 
X-CRM114-Status: UNSURE (   7.87  )
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

Enable RZ/G3S SYSC reset driver. This exports the control to 2 signals
(one for USB, one for PCI).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7d32fca64996..4720367a41ea 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1510,6 +1510,7 @@ CONFIG_RESET_IMX7=y
 CONFIG_RESET_QCOM_AOSS=y
 CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_RZG2L_USBPHY_CTRL=y
+CONFIG_RESET_RZG3S_SYSC=y
 CONFIG_RESET_TI_SCI=y
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9035DC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMuSk3n5Zns1e3LzVu4G00BIZV6HzmXlMQ0mpjmH4Os=; b=nTXgstij4ezhEF
	IT6aNLdMPOqhjU2nIPSIsN5kTJnZYXvzkVJdvSw2kLPd4dw3/N0v1YNgCsgmaslJ+ziqbLd1yTRp8
	sBrREd2VvQgjwz9uPgfO1Nklkjun8ggH8e1A5bp+oyklT3v7nAWityq2UESoX6td5EAdlRiL8umlN
	xDPdTvAQqZNCp/QWVZ8DkJV70P1Hq6Ga9mpXjDJlaLnoYU327eamgytWEDeMo1fW8XNaPbAzoEbwd
	NBuTdo+TPfZOtCE7pgzFhyeaxTvb90cOJ8gbBU7a72YXQwURmAz+FOi2OEqkj8I0Ia1lgWNcXOmnq
	InaNO0SM5vWc+veNFe7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9Q-0000000DRw7-2wIn;
	Thu, 22 Aug 2024 15:55:04 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jl-0000000DKr2-3mMC
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:35 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a867a564911so130150466b.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340512; x=1724945312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkWgitHhldKdeisz33EiZdlfuv0bPsRGbcOFCT+k5gc=;
        b=lkWrHBnhhXrcva2+OndHUTY74a2ajNH4RsYFKiPtGiy/F0KfR1tfNdeQMxnRrvGuKk
         qaLSe3FBrSeKOGSurStRjbLk2evoZ69cCjIraUUFM2moqVnjmB/kRsk0pt0YBnQV4UNA
         NyiEYaADXorS5PV8TebxmOL+LtJEIGYzTX3yiNwpcHvnfVg8NbZ76YfUS23fgWyV1ahb
         7L+dXBSKGnbTmiwcuALe178BKx4YYQM9jy3FDKlnveTuKYyc6znUtCWkfU+fA0KWV+mm
         Lgs991PXtXpEPtq7KXlTf9sVm/eqYQkBWXU+OEDf5tlhY3+9i5OJ6sy00SsKvQkkM+q3
         oxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340512; x=1724945312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gkWgitHhldKdeisz33EiZdlfuv0bPsRGbcOFCT+k5gc=;
        b=bfRir9iSS9Uwp4IttWzQPuVoGbZERIe96TjMc5uTLi0FHIH24T9wxH+0wxkzHaIhBq
         sgg1Fi8CljvIleslA7TyU0WrE6X2Qjrlqg552F/zfXXgdmXUZTp8ADmPwFtNTxi8o0Y+
         mxB0bXweE6xzIg+nqF6LtB8np2GryPcmE6XPBbf0yZwq5UtUlFS/5KxRThi8uDPOr1p6
         VigBtba22joHp+pH27nwcs+RufN7JrA7DdTAVHS10vyGJiYYrRkq4cW6X+CXZ6U4ow51
         6RYArIw485XRVWmntVuVe6UtE5P10CqIvksP/DdxVLVcxt4kqK4gbRHOLg8sn2yCabTA
         VioA==
X-Gm-Message-State: AOJu0YyZ7RM0eMaLe2wkKQjBeEvpRfoloeFibBFzk2OQdp4WMh2M3a95
	eQEvpASJxUvG+VBcoGTv2lLo/6dNFLmsNxS+YDck7Oc8TEKqDuINqHadgaslBo0=
X-Google-Smtp-Source: AGHT+IFEWPJ3HqQL/w0KWFEJhV07xF/eMg4mv7Lejm46+5JkTivmt8Z+5f8B5VhGhYYih3FlUFQvOQ==
X-Received: by 2002:a17:907:980e:b0:a86:9258:aeed with SMTP id a640c23a62f3a-a869258b023mr191608966b.61.1724340512413;
        Thu, 22 Aug 2024 08:28:32 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:32 -0700 (PDT)
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
Subject: [PATCH 08/16] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S
Date: Thu, 22 Aug 2024 18:27:53 +0300
Message-Id: <20240822152801.602318-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082833_963403_AB8032AE 
X-CRM114-Status: GOOD (  10.90  )
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

Add support for RZ/G3S SoC. It needs its own compatible as it uses 2
reset signals and it cannot work w/o both of them. To be able to
fully validate this on DT schema, too, the RZ/G3S uses it's own compatible
w/o a fallback (as if the fallback will be used the RZ/G3S will not work
anyway).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 8b64c12f3bec..08b18d7de7ad 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -93,6 +93,7 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{ .compatible = "renesas,r9a08g045-usbphy-ctrl" },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

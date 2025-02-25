Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CDE4C021BB
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 12:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Xj6ZOGiiNzW5zNGh+FEuajuHiVufvZdWzb21/hVZv8=; b=zH9+ln61vt//Wo
	fF8obWZuDK6+cSQ3pbqkgqhX4ncNIkEWQ8kasnS5gpxnKfvuE6Zvr5IuVCwtHplcIPObjaZfUwiNt
	jTvXkOL8jfyfO2P7gr/vMdTPt8DuAWbdS9pvRIFLT47VZIniWbFcIRniLxzDRMgfpAjvGH4ZBIUfW
	zZt94A7HO4Q9T90UlCq/X35fdFsS+PeGI6Cv0Z1n+KEHH/21dC4AyGS0wH4gjqd/dvQLgalfTe4tj
	27XTAgKCn+OTdZxNWb890yPxXz2Lg67A3dDcoVB7UMY8x4C8MqYAovF5WUgeLwNLM4OIC/VSsP26Q
	9x935wFl8kfOy/6/uW0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtgx-0000000H98J-2tCU;
	Tue, 25 Feb 2025 12:05:39 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmseh-0000000GvkX-3kmc
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 10:59:17 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-38f70170005so3250036f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 02:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740481154; x=1741085954; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VukLdfasfQBJ7tQS9WN8QAGcoRYc+03mfvZcv/fClqA=;
        b=VwJwfwk1qJ7sMyD9+AD9Kt7ThMPt9N2Hz3K7b10tlyFlOwa943MWrn8ehbnmJlBRHC
         wxX4we/zGUl/JhalV3e6sBwI/hHGSvFDWhDzxq44mCz9jcxku85FXD57Nw+XrbqL6qT8
         tvC0aW5Xy+X/gLp+97XmEPhb4MXW3Ne3sHL1yaiVv8BfZQ6tQcFqrScZqb9nvK1J+La4
         uZx7F3SYlVf4vWOK27SXcp86jYYT9SVF4KS/xfr8aGi/i0fC4QiFOdrcpWpsqMs4s1y9
         bLfA3RD5xAQ/zzlUUMMT2m/oivYLNpIO8me4X4rnCQ67eOPD+FL8glSp7m97NaOGAf23
         y4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740481154; x=1741085954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VukLdfasfQBJ7tQS9WN8QAGcoRYc+03mfvZcv/fClqA=;
        b=EMcCIgn3ta3bJ1nkwpO6q3FvR+sksE5JRaMRa+qjjsNGc/8jX0eXRU5zKHfXm4kBuC
         f/6Gw4tgLVm/ombNgzHoV1ay989DmXC0Dd9on/dT56nfVQQWYBOO1QC9Nn5OEmtQRCLm
         LRi+wyvD1j9xcFyTFe5K5MBlJ+/sT9pxZDanWc7I/e37jy/Hb7e/vO65i5lDq59nsIIZ
         zTyBndPYq0nLEOjX5CbmMgjo5nM/VclWe2dEy9wuUE8gHub8WLLIO7jdIJ/cdy8SlNkH
         +HO0Xe6FvcL7lPX/V4Ua4wsDLvOe54Egqiexp+mNFp7sUoIq80DccxxfzMlQZxHRTo10
         OcIA==
X-Forwarded-Encrypted: i=1; AJvYcCXPgMqWsF57hmPClMP/gAJbYZA0ZurA8s4AuVz9F/24A1pr9Xo4H5MzlC/xz7A97R0OWwSI7a/hm+w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtPwVpICYjrjL7cn2rXbJWUZWxPPrIsNnrbWNn6J8K2Coin50I
	52XouQ/RlI0XmgKrXy/4Tgaeb3hNaqjTvDk7LC2lfKEBH4dxCZAPIWWEiYMFtks=
X-Gm-Gg: ASbGncvQjJIiqpHw2ZkCd2X4pugIfnshpnswiuSc/XQ6bLPqRvRsFo6FG2n8laWgi4D
	FHFWodzhwC6umISiYK3AY5gEEnFl475EZ82Qtn2ly2m863YJcqvKHqMjHmGyry4CFNqcyhQdPH2
	aFXG/Viv/u13GORIhoD1oh86RkEEHcNZEJRRMdhR7h5pQEseH4gIxNw/92CtunFhRY6pqRRhh62
	bzYg+1K8GOQnvK7KD4uVkyLvpPyeCV65ctQeX4HO0IiQuVH5NBfmRkmPSD5KjWHIhN0TktoXzFW
	dT4GzBvfSoEtjLhB4HzYOb7njgnLbP4O9L1cz3Jyjcyx0V/dHX4l+kQ=
X-Google-Smtp-Source: AGHT+IEOkq5gHMIs+2pPeri3jTIlWyLpg/AoBdUKgKzIKml00dWLCYeREqM/1PAF7HKRFa7tW8kiuw==
X-Received: by 2002:a05:6000:4011:b0:38f:457e:3f2b with SMTP id ffacd0b85a97d-38f6e757322mr12822172f8f.6.1740481153865;
        Tue, 25 Feb 2025 02:59:13 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab2c50dcfsm12588815e9.0.2025.02.25.02.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:59:13 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro.jz@renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 0/5] phy: renesas: rcar-gen3-usb2: Fixes for Renesas RZ/G3S
Date: Tue, 25 Feb 2025 12:59:02 +0200
Message-ID: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_025916_034034_28B3F9B2 
X-CRM114-Status: UNSURE (   7.89  )
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

Hi,

Series add fixes for the Renesas USB2 PHY driver identified while
working on the Renesas RZ/G3S USB support. These changes are
needed for the upcomming RZ/G3S USB support (especially for the
power management support).

Series (with [1] on top) was tested on Renesas RZ/G3S with consecutive
unbind/bind and data transfer tests before/after the unbind/bind.

The unbind/bind was also tested on the devices with the following
device trees but w/o checking the data transfer (as I only had
remote access w/o USB devices connected):
- r8a7742-iwg21d-q7.dts
- r8a7743-iwg20d-q7.dts
- r8a7744-iwg20d-q7.dts
- r8a7745-iwg22d-sodimm.dts
- r8a77470-iwg23s-sbc.dts
- r8a774a1-hihope-rzg2m-ex.dts
- r8a774b1-hihope-rzg2n-ex.dts
- r8a774e1-hihope-rzg2h-ex.dts
- r9a07g043u11-smarc.dts
- r9a07g044c2-smarc.dts
- r9a07g044l2-smarc.dts
- r9a07g054l2-smarc.dts
- r9a07g043f01-smarc.dts

Thank you,
Claudiu Beznea

Changes in v2:
- dropped RFT
- collected tags
- fixed checkpatch.pl warnings

[1] https://lore.kernel.org/all/20250219161239.1751756-1-claudiu.beznea.uj@bp.renesas.com/

Claudiu Beznea (5):
  phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
  phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
  phy: renesas: rcar-gen3-usb2: Lock around hardware registers and
    driver data
  phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
  phy: renesas: rcar-gen3-usb2: Set timing registers only once

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 135 +++++++++++++----------
 1 file changed, 75 insertions(+), 60 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

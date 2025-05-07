Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20E4BC3ABC0
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 12:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mNRRXZWVC8ZXoOv7Gd2bEX/e6mAq3XTOMiPGWgXwC4E=; b=VJODP+3sGFMX49
	XaPf4XIpuk4anoYLM4ZtqDsjOksAXe0Evc7aWFdvNE4Daj5/Z9hwCQu5v07kjgSdoOWiC45adSb7+
	pDbwNfM+9ML88y7149ipQTJ42dZwj2D7iiWMwE8tEvBFMtVfbzRcU1Om75xbPb+Swq+Ebzyh0Rzja
	cQIx3iHVQl1yMBZqw3hP3zWAeA6Ky8UlqIN/kfzcl8+Uoz0xMu+fTQ5wq5q3SDYUtNFlPQb7Fql4U
	pAbZdanMCcATOpSH/0F+W0uHTwEgID5kWaoXzqNgPDsclBUtGGmOL3eKKZhZ41+gWjPBAEWfuiLl1
	hACkI470mY4LhE/cdUBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeFp-0000000FTcn-33lt;
	Wed, 07 May 2025 12:52:05 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCeEQ-0000000FTK3-0wVZ
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 12:50:39 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-ace3b03c043so1046548966b.2
        for <linux-phy@lists.infradead.org>; Wed, 07 May 2025 05:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746622236; x=1747227036; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9XPB1HGwlRjHpgwyLpPMHl+9QLJ8Tbr4jECS3aE3w44=;
        b=GUh6BPJqsGMkIIQ15d6Fy9vARdCrDKNTpzMYkKRt9nCEONiF4uaR2T7tK1ZZdoDwWI
         JyuOqB4hzNX5ngDWSOsFF9tHTe55n/zIvhvP4iSA/FaYJBpj6txFw2l7Z/SaY/C04EJ3
         4H6pgtvKeAWzc+PJDKHeJKaXYbvwCp03S27QIKcrQph+IukB0IklvjvPVJzoTNydVEYH
         XPBei7R3re0VIDvBRjmS3uZ3c54+IwF/tThO6FtcD0+g6adypXOOIHFpJ6pXiXhM5OkB
         Af/LQB1DCRJGlG3CwKUvX+uqRU7pnzC0TMXw9RtzrHYrt9j54pLYDDGzDwni5QXELN+b
         P2sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746622236; x=1747227036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9XPB1HGwlRjHpgwyLpPMHl+9QLJ8Tbr4jECS3aE3w44=;
        b=CALnINAWRCSiS+wxPhiVuQ8C+4JzUH5FCMuE3sq4chR0L8VTLeJnbOrfjxa3Onx5gg
         HZZ+2HWkH9N/V+DNcdfJvuhZR4eVmfVBdAkERDmoH86YEmTlTx5pENGRSjEgeKnO7nxF
         e8CGBOUPvH4l/SQTqt1Cz4I9OwiQBCpE/+2wqBCW6fHj5OIAKuu3AFn5pG9Y+54MaSzU
         JXEO0i+Du0EoqG9dqoDq/AbV3DSPlLTTYbhhCF0HvfWWVWtKicQpdFeOe+xJkGbG1EL9
         C/Nccks0zh08cCWX+RK2U25Z/KXrrVt5bynFPTJ5IOlhiVfJ6DhwOU235PMvg2gu988o
         pN7w==
X-Forwarded-Encrypted: i=1; AJvYcCVSy+Ud6cxJIM7RfT/ZAyoRKPLnmrZhqkMQfdlHX0A3OtqZCfIYL0lqSiMT960yuccpg+FuKlgx02o=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJ+xG95595j1CNlY0YfeAgKLA8xbgRjClaU25p/HPHKfJdFHuA
	Y2rCnW4xVUi01sXlzr0ANHrS2w9wfapUcDG9pNfemN0j132/6avF8zAHy7PuiCo=
X-Gm-Gg: ASbGncuA09IGllPKabh+BfyHmdv4qku4QxFZWEZKK2AuY6gRWHs8vunnnIYNpZne5ZM
	mTieYbmSP3PWdIXMUAKu//Za/5aoqqgO2HyRYDD7dQrc529wICBC2gwnL5RdQTsPZiZe8g9kOWR
	MtG8ZRqydDoQXXBRP+igqXh8dQGJ8psotI1BXV6sySyUvddjLOO+AuQGPvL0JNUIn2zrVPWmMa7
	ayXOgDJMvOKjeQ468JXdfkMzpa13j8m97ipiK3jSlqiHYzyKzW7fqSuJJ74em8IsvR881N89Juk
	M8ZK5db29TubIFNqMCbbiVoKLpaxfCVza9pXMtnAmwzWLs9NUMnFGcK1OzvxmTUcOMh1tJc=
X-Google-Smtp-Source: AGHT+IEnh37YnyS3+S5eif7yK5Fo8gm9rBs01T4L23mUs9FibGROHIlq9N4RPguWur+H1SJaQtg86A==
X-Received: by 2002:a17:907:a4c1:b0:acf:c80d:ad81 with SMTP id a640c23a62f3a-ad1e8d03300mr327007566b.39.1746622236306;
        Wed, 07 May 2025 05:50:36 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146fb4sm913182766b.10.2025.05.07.05.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 05:50:35 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH RESEND v3 0/5] phy: renesas: rcar-gen3-usb2: Fixes for Renesas RZ/G3S
Date: Wed,  7 May 2025 15:50:27 +0300
Message-ID: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_055038_260523_B6F5CC98 
X-CRM114-Status: UNSURE (   8.10  )
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

Changes in v3:
- collected tags
- improve the validation on the code that requests the
  optional IRQ as suggested in the review process

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

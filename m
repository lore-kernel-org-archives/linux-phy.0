Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31E73C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jan 2022 15:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XhypBfPlyDkoHh5Wl28PnakhEYK2QjlZft4kLxBo8eU=; b=uLOld95ZjNoacI
	srhuaHVWNsVaChfcGjAUFghjRGfgQxkl16rT7oIzuImOABH09wjJpr+wH8abvY1vjvt1S3BRv/OJH
	Y4SFFYFbD3vSyHzLQUUTMvs+FCXBtDwSh7xpN1/+7DwWDGUwiGaYxbSGgHeQJxxnrsTqWwQN1QK+w
	6ihnlKFLZS4SnuQ9a48Gyt+2rYSCeHxSFVScsA/MtrGAnOp9mTwUDaxp3wSTXgZP+q6nuoySVoUi8
	OGGgTFuf0+REHCv2s9CdNY+Sy3MexOh3yQnWr7E+xkI37doW1zu6AiZBR4hOIorAqB7RK6MFqXtAf
	hpI7vDd2sQZ3LEAWEQNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5qo2-004O4D-Hm; Fri, 07 Jan 2022 15:05:26 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5qnw-004NyI-KP
 for linux-phy@lists.infradead.org; Fri, 07 Jan 2022 15:05:22 +0000
Received: by mail-wr1-x436.google.com with SMTP id v6so11550812wra.8
 for <linux-phy@lists.infradead.org>; Fri, 07 Jan 2022 07:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6hNM7Jx0ka9c89ARXL18Y6Yomz5BgQ3R+02Ck2gVejo=;
 b=znEnsrWNoFHGs0yDXT0ajFzwU3OmTsmRvzG8YPbXJWhTE3RvFvkGF0qip3OKuZ9hkV
 pH1kfep0nAMkZa70Ig88zskk6DuT2hUovV8k3yDl8LUBRr6qLgWZGObYSafE1RoYr7aD
 3ne8alY1BcDoA2PCxjhiFXWJ96tba09NTTPYRH3AtwJUcV9BSu+8S68ZP67CUrYEHhQi
 pdKFBZje2nL9bik1Rf7F8fnK+Ju1ptnXg6R61JT304s+PUvM3NxkOAaBTGLNOxYUD733
 genYxlDbbQnIMLpqnIYFS0ZGH4tjjOcRDrjgfIGMz+04huQVwJDrFynQbUif+tMZ83DJ
 sOxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6hNM7Jx0ka9c89ARXL18Y6Yomz5BgQ3R+02Ck2gVejo=;
 b=1iRAQWGLm5+t38a8NMIfNZpR4t5emHMx8vpR7uWTjxQC2GeZfPzphDfTZfRQXcFflv
 UZzMW9zbbKXQcTaK8k/oBbV1bkKys3d88cA4oNOzMiomZcPqflaVATB/dWxkBQkoJUxA
 jgR2zuKhLwp8/808O2+wZhkKD9n+vEe3gb58369C2FZurJce5QPUCCOvs4Amm6kv6oCT
 gRbkrfkFcFSUuiRSUf4NtmaA9vt/PfWU907POqLk5MrmBRXKOMgPrGuhqu8kxr8YOs0T
 GXINBepHQkQeB1O/Ml+gBUYPWwLYS2Scuq7+j8saSwGP/pmnoxdUwIeohXFjqEBkD9xx
 M7PQ==
X-Gm-Message-State: AOAM532Z2kz5mOeiMYQGJ768SXUFMKTHpUOwCrRUSBFI7P/G5tVKicsh
 liPnXG1czr1d6VSGFPSovdLxTg==
X-Google-Smtp-Source: ABdhPJwsYouaf+AyQmEepe6AEBBvuC5jNOW9Pb+QrOUDvWasENRXpdZ7054JoO1WwFi5HzBbNnHvhQ==
X-Received: by 2002:adf:f103:: with SMTP id r3mr5618982wro.555.1641567916256; 
 Fri, 07 Jan 2022 07:05:16 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:fc89:e826:8938:cbde])
 by smtp.gmail.com with ESMTPSA id s194sm1848246wme.45.2022.01.07.07.05.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 07:05:15 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v3 0/2] phy: amlogic: Add support for the G12A Analog MIPI
 D-PHY
Date: Fri,  7 Jan 2022 16:05:10 +0100
Message-Id: <20220107150512.614423-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_070520_766807_2E7F5B13 
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

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY to communicate with DSI
panels, this adds the bindings.
    
This Analog D-PHY works with a separate Digital MIPI D-PHY.

This serie adds the Bindings and the PHY driver.

Changes from v2 at [2]:
- Bindings example fix

Changes from v1 at [1]:
- Bindings fixes

[1] https://lore.kernel.org/r/20201123145157.300456-1-narmstrong@baylibre.com
[2] https://lore.kernel.org/r/20210210080736.771803-1-narmstrong@baylibre.com

Neil Armstrong (2):
  dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY bindings
  phy: amlogic: Add G12A Analog MIPI D-PHY driver

 .../phy/amlogic,g12a-mipi-dphy-analog.yaml    |  35 ++++
 drivers/phy/amlogic/Kconfig                   |  12 ++
 drivers/phy/amlogic/Makefile                  |   1 +
 .../amlogic/phy-meson-g12a-mipi-dphy-analog.c | 177 ++++++++++++++++++
 4 files changed, 225 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
 create mode 100644 drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FE5CCA48A
	for <linux-phy@archiver.kernel.org>; Mon, 25 Jul 2022 02:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BTw0TqCWgS8V0qB6yidaeCs73Et+MpiJPrwHOnf89xQ=; b=JWpcJ5+/HbNvTu
	pKNzi3P7sDWkl+HN0hfEhC2IWx6AQoBPntJlYB5ZhhRi0oOWAwDAkWa2gQnet8g1Xmm9ZSG08Xkij
	N4+xFOyxKgAi1YXn77YplZ219lRuCUAHVmHS4AlOtFdT5f6yFzvdmbNvwdHIEL9PgQ5a5q8yc3ljh
	yTdSPdwE5K7j0JvWNbl/F1QIXjwjjC4QMYsYxGmN4nFVklvguSwv5DBPtffjdYcasNspcQLYy96wU
	oOvriG8NVQvLk4WlFH3iIW5wGBKNqMYF8iPZUjW2q/HcsLJDEPiAXpHAUXTJ8Z0OAIC5WUKTuK/2s
	TDehbEoNaB6Uggv+tNNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFo5D-001LHq-VW; Mon, 25 Jul 2022 02:44:35 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFo5A-001LA4-Od
	for linux-phy@lists.infradead.org; Mon, 25 Jul 2022 02:44:34 +0000
Received: by mail-pg1-x535.google.com with SMTP id 6so9113612pgb.13
        for <linux-phy@lists.infradead.org>; Sun, 24 Jul 2022 19:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=a4smhlXQRPY08uZFYWaREPplMOTenvaPYfLKafzeLgY=;
        b=g8KdayopTfm0rTuvVjbGJF0Fqri1hOHJ/P7xPCvZngTKUJJRFvxIFwtm4xvy66lOY/
         rN9J+SMwCFGJsTl3BVGUMeV73vqf31Re/WlsTKu379ZcSCC9Y1h4jOW3ncRNByVqmkez
         MdxlJCeeaJdco+5DGtXkME913JgG2SsLalxAjvJmNy8Tbd43s/YDGpjZIA3nveVzPKzz
         rmsdtGb7EEnaIs8ao+apTqcERdbSXcb0TiWX10+r0lsApqogIaYgoDOEoI6Vf8TMJlk3
         4jYCWywSmwZFHEXeChB2wtKaBxuStT7APFTcQu7zVWr/tjFFHsOmMi625vu1VcmnVRnm
         /JdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=a4smhlXQRPY08uZFYWaREPplMOTenvaPYfLKafzeLgY=;
        b=Dosa8TUXge+Vqvzt1b0djZoZgtNl05tG9aNThxxnZtGCyqKUaYSx/j9VaISPkzoXsC
         gGZ7dS9l687aR+hn/KrTC687TvTLOLVhexD3C3RsXdDJMRShHOc29/ApT5ZgTMC/dAJj
         54W6zPD9zlCdJM9kGI6VpJZyEmYP8kDv+3iHkTZsBrNY7qW5ZJjWpQIN0i+42V9KkGMt
         GRJa6vuLMo4DXfJ5GQcqZrtmpszhCxgiYd37Ld9ZwBpoecCDaiQgFtoWgy5aE6pXLryP
         HRx0uUuMuGmejjB/UFuL6fST1aO68/MJYKBZcPs+B62hY3N6lDrDh52x9u3frmsi8Iwl
         L3bg==
X-Gm-Message-State: AJIora9fz54GL3JXEEc6wtcZ8Ob/uBdz+Ki11I5N/gwhwu1CHM+HDbbM
	pm9FZbk1FzdmpnYruu+yYqw=
X-Google-Smtp-Source: AGRyM1skOhwsZ2B83o1MkEB/dH4BEcN0rbxltYzHhPOlyRIyTD6z+FBB9Pa0FkSEUY0x65BA++W/rA==
X-Received: by 2002:a62:1508:0:b0:528:be70:2f69 with SMTP id 8-20020a621508000000b00528be702f69mr10846563pfv.42.1658717070380;
        Sun, 24 Jul 2022 19:44:30 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id u13-20020a170903124d00b0016d1b197914sm7983304plh.90.2022.07.24.19.44.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Jul 2022 19:44:30 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	p.zabel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v5 0/2] Add USB2.0 phy driver for Sunplus SP7021
Date: Mon, 25 Jul 2022 10:44:10 +0800
Message-Id: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_194432_859332_5FCB03C2 
X-CRM114-Status: GOOD (  10.29  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This is a patch series for USB2.0 phy driver for Sunplus SP7021 SoC.

Sunplus SP7021 is an ARM Coretex A7 (4 cores) based SoC. It integrates
many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD Card and
etc.) into a single chip. It is designed for industrial control.

Refer to:
https://sunplus-tibbo.atlassian.net/wiki/spaces/doc/overview
https://tibbo.com/store/plus1.html

Vincent Shih (2):
  phy: usb: Add USB2.0 phy driver for Sunplus SP7021
  dt-bindings: phy: Add bindings doc for Sunplus USB2

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      |  73 +++++
 MAINTAINERS                                        |   9 +
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/sunplus/Kconfig                        |  12 +
 drivers/phy/sunplus/Makefile                       |   2 +
 drivers/phy/sunplus/phy-sunplus-usb2.c             | 297 +++++++++++++++++++++
 7 files changed, 395 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
 create mode 100644 drivers/phy/sunplus/Kconfig
 create mode 100644 drivers/phy/sunplus/Makefile
 create mode 100644 drivers/phy/sunplus/phy-sunplus-usb2.c

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

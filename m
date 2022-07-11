Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F2FFC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Jul 2022 08:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tIlXKVVBU5bM7YWz0Btz0exXa3Qb8tYH/sXsjdnYOxM=; b=FZbvDznevSeABU
	cCALg56o73CWbH+dMDig3S0JxJADZyS/9kWnLJgFAJyUGmCVsrhkaR7lF4LxWpC/cdX8HRv8w7B7T
	3dnxBG8NDFdBQ0Mg2JSBeS5vJnNtnz1KZxAB6pJWtyH4Mdopt/vl3nmOxYuuhWZclSs+1r5/TSEWG
	NHs0aWdOBAaHHSa2/omiqT3ATt5ne9OnJXo8jbNcSYHg5qIQMAp1iZydKm1PgEGn1+RbwTT41/qCw
	J1wSprM8DnSMqg0t56eo2d5nvQeXEV5eRKvNAdAGIIVFywQpRpYAzBrGFI44TTaEbRzgD86s8vqlj
	58vfalYGZ8HxC5VtBddg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAp7i-00HLSt-Av; Mon, 11 Jul 2022 08:50:34 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAp7e-00HLQH-NE
	for linux-phy@lists.infradead.org; Mon, 11 Jul 2022 08:50:32 +0000
Received: by mail-pg1-x531.google.com with SMTP id 23so4167317pgc.8
        for <linux-phy@lists.infradead.org>; Mon, 11 Jul 2022 01:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=5g/2NksbO4TUZ12uNSjT5a+ira1ltuOc9HP/0hIVc7w=;
        b=KLLHc9drTZpul79nRihIyI5PAyxXRTmdJkXV8pzA8J0w53gdZiHv+aCEKAOoj5htXN
         WukzwCYDOFLeN9WMRfuWgHNfFY3WTACBv3kpUvoltkku6OyB0kfynjWHVWqCWgGxymlO
         eARtdYfOu6/d+ODhfp+g+RM5KlvTXdN6fQI5IhyYHO22XNZtH0s/N+G2KS2uTcRPl2/R
         92Wq/IBaQjOpleIN3NsSVRoGqaYsFbLCogPpYOWc3A7G7eQgfVjOSFDzxZwKO2hwgmsy
         n2AT2E+M/PFLrO0q9yRstAXHsI3rmIju8eUFoKv0mMzTEhMbUudGiOCOA7/qgfET06ZK
         XkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5g/2NksbO4TUZ12uNSjT5a+ira1ltuOc9HP/0hIVc7w=;
        b=m/nmbP9jyVVBlv6xz68jDMVzmBu0/oHrl4YuSyP+3fS3ktTiSkan2P+HEHMwPYPWb7
         osH3fy00XeDfaKKzcNobKgTLyIWllLjhZO4QvK9+OUGsYy86x+xkRqNOVADrmTUHVytE
         rPWEQib4oAiy3fv6H3PUW54Hwkc48BVRMhgqe7cCyKgBi9f1uYyBsX4MFy3naDxwLW/4
         vk8BrKzod5+rhHe4ZV2bay0KxqKLoIQJNWG2kBUVtJrOktWpcmYXkpfxYnHajVM1MpRQ
         F8hHbjKyzsPUgjizOmW8r1oyPDR+dxrYaxtIXO4fwICb62L4N+jLh9QF/z8KbciuhcxG
         bGfg==
X-Gm-Message-State: AJIora8mL698XdstphFeJH1uxfK36H88Gs/WpvUAoYg/DlV49IQoCeRX
	H9ZA2CK1dnQuMRh2R8m/Gso=
X-Google-Smtp-Source: AGRyM1skthwwca9xztYJduWQLAXrcwAXdYzCophm5dltSeq/9zR0kDVYVJguSnQHST3WWGzv/qygdw==
X-Received: by 2002:a63:ff66:0:b0:412:6f4c:1e11 with SMTP id s38-20020a63ff66000000b004126f4c1e11mr15162809pgk.396.1657529428611;
        Mon, 11 Jul 2022 01:50:28 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id b21-20020aa79515000000b0052ac5e304ccsm2489388pfp.194.2022.07.11.01.50.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jul 2022 01:50:28 -0700 (PDT)
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
Subject: [PATCH v3 0/2] Add USB2.0 phy driver for Sunplus SP7021
Date: Mon, 11 Jul 2022 16:50:01 +0800
Message-Id: <1657529403-18084-1-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_015030_796570_A8092EBB 
X-CRM114-Status: GOOD (  10.77  )
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
  dt-bindings: phy: Add bindings doc for Sunplus USB2 PHY driver

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      |  73 +++++
 MAINTAINERS                                        |   9 +
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/sunplus/Kconfig                        |  13 +
 drivers/phy/sunplus/Makefile                       |   2 +
 drivers/phy/sunplus/phy-sunplus-usb2.c             | 297 +++++++++++++++++++++
 7 files changed, 396 insertions(+)
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

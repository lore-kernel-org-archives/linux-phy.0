Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BAACC3DA49
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 13:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+0MkCJoQsCfQsIIqNLQmHFY3X/PNZLQvpTXI+4nOhY=; b=vb6S8xwAioYY6D
	fjdw8h5m7m/B2pudf1T/0uo8xNu36gW3lu8S1MejGJ0VNdNw//ObBaTXPXMIKymqyS+pSs1tadcsw
	5GdeUrk8Jsb3fvOnPOJ98I7l+JTOM3fWTd6OBF6V5yKkPAm/MdN2ecjN+PEjBVmzdqbNyuXiZ/Wha
	dt3ZeAkxA46RcIdLnA3HkG5gh9n8uVjjQmJm+siIPAdfwJaViX6Ffgd9hfPWcnG5gXck6IMSULDpl
	lYZJrw/IYCWL8TUSr8+vNLlkwNrg8FILSe04Y1CZzHsPevNH42SCd7BDrFCRoSYeFXqrESBd7Vk/Y
	YdXGdFUr7vn/27jWbypg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRtex-0000000E7LL-3P0F;
	Thu, 11 Jul 2024 13:16:31 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRtei-0000000E7G1-2abF
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 13:16:17 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4266ea6a412so6364445e9.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jul 2024 06:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720703774; x=1721308574; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C+btIB698AoBarUXfbFVZZbKwRwcIjCEhAp+IjhWQE4=;
        b=IBvsPldpvBWs3AXeaKCOImzeCigly2pQX8j+K0oeDYz4XX6t+0thAotLUPZmJD2avL
         fVTZrrHARBBdar/Wuv8yDHYn57hhaiaqyffcnEOFbNhYyzDVTjsQG6WVICirKf5yqelu
         z+UIv7BWulht2S3BGvk5HQfN2/dJat6IvBbC7NqqoF9bgvSLgs4OFcFBitXTZUUYzqmw
         ZlHv1OKeUrr96X0Wiu4yrjlioOZR5VTQT5T3Pgv4odmZYEdNe/fjw3hFuBKAGbz0dCbf
         BGRq7g13xTjfjVEYMzK3S7W82IM1RUZNt4yPM5pdJ093gV3858v/FRXFqNPRezHRcOMB
         b6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720703774; x=1721308574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C+btIB698AoBarUXfbFVZZbKwRwcIjCEhAp+IjhWQE4=;
        b=uzlZ73Vi8/L9E7DtG3rWG/CUWhlbzNRqwG+QSuJ1FtNji7o/0kpu86oBg8+lsiPmJM
         gcivYmz24poaA4bIzCRPPE9/B/HKxWedWwIjuTsJoKcRw0Y2Je+F4QxFXc4BMeRaCMkM
         1dp4yRw9tdlf6bZXAdd7NJ2qlIiQT+ZSpZkT7tiv7MEi1V3btXnsAYzJIAVYLpx5O/07
         Ks5w9Mhzq7AKnLWgK6iqHCCRt9amdoP0I7k840s8yHGn9NQdzm+ZC7dYiZBpnK5zIFw5
         0jpFJDjVbX1EEzx4OYEISIqpyv+CgnztkmsO2K3bYfTDWqGmRpjaYgM9NmRQkljRCSvy
         hqig==
X-Gm-Message-State: AOJu0Yx3prtSMDe7CNt+Ak1tE9sW09IswAWh2zdPEd0xFF4dWOy/vgc3
	2Q7+puVNj3Z8VxkUxwnjqEWZuWa8aQ2un1bk15yZXCoXzZNhjecE
X-Google-Smtp-Source: AGHT+IFL0UaiWD7mdTfNHJBjD/TlYPEODih+gOwr8wL08Wda8w+hrgiHASHLfRhsDgZcttdrt9CW1Q==
X-Received: by 2002:a05:600c:54ca:b0:426:6902:7053 with SMTP id 5b1f17b1804b1-426707cc0d7mr58888065e9.15.1720703773802;
        Thu, 11 Jul 2024 06:16:13 -0700 (PDT)
Received: from eichest-laptop.gad.local ([2a02:168:af72:0:49a:1bc0:a7da:9525])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4267255858asm74132645e9.0.2024.07.11.06.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 06:16:13 -0700 (PDT)
From: Stefan Eichenberger <eichest@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	sergio.paracuellos@gmail.com,
	florian.fainelli@broadcom.com,
	krzysztof.kozlowski@linaro.org,
	eichest@gmail.com,
	robh@kernel.org,
	frank.li@vivo.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] phy: marvell: phy-mvebu-cp110-comphy: improve eth_port1 on comphy4
Date: Thu, 11 Jul 2024 15:12:47 +0200
Message-ID: <20240711131612.98952-1-eichest@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_061616_674992_3275D146 
X-CRM114-Status: GOOD (  11.04  )
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

According to the CN9100_MPP_information document, CP_SRD4 (comphy 4)
supports 2500 BASE-X and 5000 BASE-R for ETH_PORT1. I was able to test
that 2500 BASE-X is indeed supported. Unfortunately, our HW does not
support 5000 BASE-R, but I assume from the document that it does, so I
set the muxing there too to 0x1.

Signed-off-by: Stefan Eichenberger <eichest@gmail.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index da5e8f4057490..fefc02d921e69 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -244,8 +244,8 @@ static const struct mvebu_comphy_conf mvebu_comphy_cp110_modes[] = {
 	GEN_CONF(4, 1, PHY_MODE_USB_HOST_SS, COMPHY_FW_MODE_USB3H),
 	GEN_CONF(4, 1, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_SGMII, 0x1, COMPHY_FW_MODE_SGMII),
-	ETH_CONF(4, 1, PHY_INTERFACE_MODE_2500BASEX, -1, COMPHY_FW_MODE_2500BASEX),
-	ETH_CONF(4, 1, PHY_INTERFACE_MODE_5GBASER, -1, COMPHY_FW_MODE_XFI),
+	ETH_CONF(4, 1, PHY_INTERFACE_MODE_2500BASEX, 0x1, COMPHY_FW_MODE_2500BASEX),
+	ETH_CONF(4, 1, PHY_INTERFACE_MODE_5GBASER, 0x1, COMPHY_FW_MODE_XFI),
 	ETH_CONF(4, 1, PHY_INTERFACE_MODE_10GBASER, -1, COMPHY_FW_MODE_XFI),
 	/* lane 5 */
 	ETH_CONF(5, 1, PHY_INTERFACE_MODE_RXAUI, 0x2, COMPHY_FW_MODE_RXAUI),
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54A33C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 17:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3V7y2RWun2+/hLlrp1LUs88pYwoNHEdeLp5lNtbOXrY=; b=TfV3I8q62pzfiK
	oPXGyEyxZ73FQzq5L2SqhI+lFzgHJmczRWWfJh9fE8i22xY/P78zm4933+8KFoy+pmg4wr4w91Onj
	KmmsW8/QfP0sT35WevhPPxmod+fJClcUiODlwkQPlRlRPOoEp4PHA1CyCoJ7ym0sSHiHq5UeGlFUy
	Eij5zPFoeT0OThMHeJXh8X8Pkrdl//RcW8Li7nSo+uhEgts06sWkIbbZRHsr85tHAYLaYTfqcAfUi
	TIg2DVynN5jL+HZzXc5Kp0j4oZorHhTqfQbNV1Y0aOXEeh8dTH5Z+pMvD735guLB5ADvAzEmeZjAQ
	9pXaaUjxStwdSJzmCqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTr1-009dOu-Lf; Wed, 01 Dec 2021 17:57:15 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqm-009dJI-Um; Wed, 01 Dec 2021 17:57:02 +0000
Received: by mail-pg1-x531.google.com with SMTP id j11so14504377pgs.2;
 Wed, 01 Dec 2021 09:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YH7GGCYhB4tao9D+uXBMuduOWm7x34SLXOg19azbyvw=;
 b=noFtrm6PLX2WhF4tykayOXxTZvaQZaXGwG5u2QkLE173zEZwCAoOPvJOwHoQze75XX
 50hrCjYoGEJmx2k2RA057N0mPlyPGirpVxuSBvLFC02PUrX+e+2TaJfvmVbKnctbEyJk
 +rHyL9rY4mEZf+i7PBRvveaj4HIfJqBgOe0Cn6V5fB7CyvCzcGbN6Am6dasfaOpJYA+o
 aIBkrDlcwEWKVp+J5FZlhM7ZYXSmuVCCe2ONolZCAF8B+wgxsQcafpPWnZd6gipKUxv4
 9WH6KXB4WQkx15+BpmZ+dPiBYK9kJ/pCwEVl2fVj80WMFhs2zkc6dSNUvHQB25A9NaUp
 uz7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YH7GGCYhB4tao9D+uXBMuduOWm7x34SLXOg19azbyvw=;
 b=zkOjXTrFAckEMlhDBgWWSRddSMPpIGSk5q3s0lqafM+vOEAmrEvSKys+WLMOwRbbWy
 7X5L83Elj+1JlWiKVWg7TDBe4PoCY8rvJ7y55xomwanPL9ski9gFsUq7Q/pxtQyRve/k
 78fvpAW7fHfJZgw4LoZLN1Dx6YhzFatv4KTKzQjHUPYAlqQU+GV/peA3TRXCPpgm/y+P
 rXjA169lOies3FVvMQRHyy68Jh5p4D6yvaJLqaxkTmpklk1AhpWiipLojAN93xCjxFyZ
 Bqoa30QyheHI4Fuqy6npGgnLUrXuO3qqBGlWn3H9huSWgk+oiwtkSzRKd5O1/uccedJF
 oqbg==
X-Gm-Message-State: AOAM531utzvS0mAMkkjg+KtZFhEkAd7GnkyoZa27PQZsJcjeFAdeI/IG
 5YJmwdQGKzp08bieKgsxhOw=
X-Google-Smtp-Source: ABdhPJwYspeZxsIzy8BwyltvOICyH7yKqgNufLA6pu2F6n6Vt9d21WPjf/klHsf4yrP4cSAz1hGRWw==
X-Received: by 2002:a63:82c6:: with SMTP id w189mr5959474pgd.491.1638381419822; 
 Wed, 01 Dec 2021 09:56:59 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.56.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:56:59 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH net-next v2 0/9] Broadcom DT bindings conversion to YAML
Date: Wed,  1 Dec 2021 09:56:43 -0800
Message-Id: <20211201175652.4722-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095701_031729_D1986D4B 
X-CRM114-Status: GOOD (  11.42  )
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

Hi all,

This patch series converts 3 Broadcom Ethernet controller Device Tree
bindings to YAML and the iProc MDIO mux. Please wait for a review from
Rob before applying, thank you!

Changes in v2;

- converted Northstar 2 PCIe binding to YAML as well
- fixed DT_CHECKER_FLAGS=-m warnings
- documented 2500 Mbits/sec for fixed-link

Florian Fainelli (9):
  dt-bindings: net: Document 2500Mbits/sec fixed link
  dt-bindings: net: brcm,unimac-mdio: reg-names is optional
  dt-bindings: net: brcm,unimac-mdio: Update maintainers for binding
  dt-bindings: net: Document moca PHY interface
  dt-bindings: net: Convert GENET binding to YAML
  dt-bindings: net: Convert AMAC to YAML
  dt-bindings: net: Convert SYSTEMPORT to YAML
  dt-bindings: phy: Convert Northstar 2 PCIe PHY to YAML
  dt-bindings: net: Convert iProc MDIO mux to YAML

 .../devicetree/bindings/net/brcm,amac.txt     |  30 ----
 .../devicetree/bindings/net/brcm,amac.yaml    |  88 +++++++++++
 .../devicetree/bindings/net/brcm,bcmgenet.txt | 125 ---------------
 .../bindings/net/brcm,bcmgenet.yaml           | 145 ++++++++++++++++++
 .../bindings/net/brcm,mdio-mux-iproc.txt      |  62 --------
 .../bindings/net/brcm,mdio-mux-iproc.yaml     |  80 ++++++++++
 .../bindings/net/brcm,systemport.txt          |  38 -----
 .../bindings/net/brcm,systemport.yaml         |  82 ++++++++++
 .../bindings/net/brcm,unimac-mdio.yaml        |   3 +-
 .../bindings/net/ethernet-controller.yaml     |   3 +-
 .../bindings/phy/brcm,mdio-mux-bus-pci.txt    |  27 ----
 .../bindings/phy/brcm,ns2-pcie-phy.yaml       |  41 +++++
 MAINTAINERS                                   |   5 +-
 13 files changed, 443 insertions(+), 286 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,amac.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,amac.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,systemport.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,systemport.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/brcm,mdio-mux-bus-pci.txt
 create mode 100644 Documentation/devicetree/bindings/phy/brcm,ns2-pcie-phy.yaml

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

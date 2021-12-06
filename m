Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3884DC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YcpmvBZqFk35ygF6IgXn4AkPjhnEYCzAwcgNCWt30wk=; b=zdmXT8gNwsaLnl
	HRA2oeDw/IKLgadUJzLwlBuf2kagglioLXiWVEDdCQ9dJvnCkZnyIAJGPi1xy/w46RDOt6BV/RIgJ
	tPtt/7xcqXkUzTD8Luq3Xx1etdCZEwmtU/KE2Inmqn7lkIk3q4DJkvScRCaUZO98m036VrW067lf3
	F5LTJyypA0Dyue6ezoXkQ1ri2GytVVxhil2086FKlbGMkqxlsVnCyTd6cm+Iin91m/sSLBw4Ii2dn
	sOlHEjuua9iTQLeZOYs5qj4/WQMtMupMws3rRLkHhnF3mUbby9gg9b7G0Jcfy9+NE32yw9UrxLL/Q
	cN3uP+Zl2tMzZw8vnR+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muIIa-005AsI-MG; Mon, 06 Dec 2021 18:01:12 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIH-005AgW-2u; Mon, 06 Dec 2021 18:00:54 +0000
Received: by mail-pg1-x536.google.com with SMTP id m15so11197349pgu.11;
 Mon, 06 Dec 2021 10:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3/Ga8N5Se9TR1n5VDV57kaqfWCZDfxPiuIZHay3w/+c=;
 b=elZAuCrhF4PN97o0TM8CLsqM6KPFIDFFmw58IPfqpNBTbxFWVMCnkj8sRvkhD/VRad
 OaFPLmPW8VvNswpJCV5A415iQWfAuJ9zTcM8mQsxB+6DY5gG6DO/3ymqFg8ZLaularv2
 PYqdep8dhFo8kXwdaCTmP7Ggm/sswaQxrnNhS6PM0MjW4DZ5II+lQAgxJ5v05G9GZysr
 Z09kKDIMGh9U96yty8puRyQZx5pm+cVHebiYSGb/W5v8ZKq6wlUNI3ZwkhkBSriBek7G
 +9lGTCIK1Eh/cSA+1BfF8YXaHyzdcBZ+XIdTjATb4mYTdtC0FgZeC4RmIHwDn0QZ6hAr
 lllw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3/Ga8N5Se9TR1n5VDV57kaqfWCZDfxPiuIZHay3w/+c=;
 b=F37T21aCnK3+FE/nxo2qK/nUJIdpc6qEswX98ajSYqOM6YCs5NcuBVuJHkIfuBvE13
 uPF6FY/09b4hC/38IHDVgJPOAvcsZaGdKmpJEUMU0yu/U/GR/JTJljcFjXu5dH6bJXJI
 thZcvjjoc5eSAUu/kO3XBX5+oYtnASKTguozTShAlsNYksP195bzz4MLfI57oGGmOcHH
 uWdgJbq6C4dRH50fK67pZRsM45zsc3/H/+aNWWJd1TyMENrn4CYbm//2GWSlXAtnOZw0
 nOjAfXJz6ag+ZVf2mABd33pR7ubWpnmn+PHy+WeTD+AjzuL8WLalzv/RpzoyWVtB27lY
 ewGw==
X-Gm-Message-State: AOAM5312gwtYyOgu+zQQhyW1JR1dDBMTTmR2DIrOiz0z1qLPXM/7W5KM
 MyUtrWkxM0X0MBpL/tjGWTB93JA6DSg=
X-Google-Smtp-Source: ABdhPJx2ZmOppSjrrHM5+tC3QwVlAtuCvCErlVAc7g271AEZb6PvnVQuJle9ZYNswDu1eu/9sCGGzw==
X-Received: by 2002:a63:f4a:: with SMTP id 10mr19621121pgp.435.1638813652317; 
 Mon, 06 Dec 2021 10:00:52 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.00.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:00:51 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 0/8] Broadcom DT bindings conversion to YAML
Date: Mon,  6 Dec 2021 10:00:41 -0800
Message-Id: <20211206180049.2086907-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100053_161158_9BAF7DD5 
X-CRM114-Status: GOOD (  12.63  )
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
bindings to YAML and the iProc MDIO mux.

These patches should be routed via Rob's Device Tree binding tree since
there are dependencies there such as "dt-bindings: net:
ethernet-controller: add 2.5G and 10G speeds".

Thanks!

Changes in v3:

- rebased against Rob's dt/next branch to remove the first patch
- changed the licensing of the last patch to GPL-2.0 or BSD-2 clause

Changes in v2;

- converted Northstar 2 PCIe binding to YAML as well
- fixed DT_CHECKER_FLAGS=-m warnings
- documented 2500 Mbits/sec for fixed-link

Florian Fainelli (8):
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
 .../bindings/net/ethernet-controller.yaml     |   1 +
 .../bindings/phy/brcm,mdio-mux-bus-pci.txt    |  27 ----
 .../bindings/phy/brcm,ns2-pcie-phy.yaml       |  41 +++++
 MAINTAINERS                                   |   5 +-
 13 files changed, 442 insertions(+), 285 deletions(-)
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

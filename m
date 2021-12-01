Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 636C4C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 17:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGZp9o/775wuXha+dicyWYGWQDOq6QkfZvt6eMhfvh0=; b=UYBcJD8YIWK4GT
	8TiWeVLGUIm7CAS6kxP646JB1rX102Cw6M52+cMfckw6RLkYS6oqBN6TJDQawHOFp9H1zbFCzJG6h
	IFPAguMzyFYvQpDtYkJXMB5IA3QetDIs5Tqdz9lp9slNmr+x1FSIkpRJU+c/fT1x0sdld+EFEqoTb
	DU1yPaax46Y4ZqymipQTtUUCJbM0OB/bHZfujt1S5vhrlwQWloUbQaZay7ZFTamCjRR3WZFGrYWi/
	mjS+ZjX3E7CsUiBceux1HvErx3rWUAzgRt5jYro4Q1FjP3D81qHp278JOkWAcbmRFBMzV5R4ECdEL
	3m+20rHG+UURt/ybihmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTrN-009dWz-SN; Wed, 01 Dec 2021 17:57:37 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqp-009dKN-Gb; Wed, 01 Dec 2021 17:57:04 +0000
Received: by mail-pl1-x633.google.com with SMTP id u17so18294645plg.9;
 Wed, 01 Dec 2021 09:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8NzlNFEIINqTDcWXH0e+WAbc6LfC9f1pv4m0DsSAh4M=;
 b=MlYX+38bebzRMaYNeN2EmfOKqLzrhDKnBDaSqxWJ1nf4SpBuhDRx+wXW7RIkc4gGq2
 +powvlGTI/pQMziKrr16YnLZNpMDL72dBTtsWBNAcYNxJtu29FmhI8okc1C9o4Zx+SmD
 4oRlcwymxL92xZTeMchH64bZ6QedSkVqYS2CWEfBZ+GQfcXx8sdN8pizDc3ndX4jm92L
 hz5jHSaXnKc3IZU5npd723/wY4fdxXLvFzPIbu/KNcdIBnUFyWvT/ONQ1CpKK2eslI0f
 MdMFjIKS3MGa/1UmGKJN76pGfiyO0pBmS8kzJ5S9ViGK/UrIV4hLgZVlrcf4Wbc/2Pmk
 NUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8NzlNFEIINqTDcWXH0e+WAbc6LfC9f1pv4m0DsSAh4M=;
 b=7vrgFIJYN7PE+mzbCKzeYy246i3lNHQ5p6JNargBLpp3q1GCFjZwR7ApVuMJZYiTOC
 rUzM4xWMxHk8+26ru/NWANbmgg5BT26huhddSHRWSSBaS7rUUulo9XFWc0QZPF/T52ms
 6z+LVu3v5FoVaT/9qHxKZ7NHMFItCC++eW494osmVTHv0cndIJ69DL6wq5w/mB6xXW0+
 tdVedEU0He6Ln2GduflmTCh2j2759n4zTj5KBySgACpbipJCJWjvG3K6uQWrpP4MAVLT
 Z2q7JToUt7QMBZt9UEdOu9Ip5OJv8ApnQFX8/FcdKjHPUsueTIYV8CNnzZi9TR20qSf4
 k9Tw==
X-Gm-Message-State: AOAM533YFCACJSlb7XM6uiJc9EYpiWlzxhSxDKv8Zy/qbY+PrMBWpVpY
 hxAsk9+xzR1k9HSs+uDmNCM=
X-Google-Smtp-Source: ABdhPJzdoyylYdHTMJD/A1gdPn+qlC76D/QkYKB03SZS0qIdqZTN3akJtZdg1hXJBGd8gyQuZ0xvmQ==
X-Received: by 2002:a17:90b:380e:: with SMTP id
 mq14mr9728940pjb.74.1638381422438; 
 Wed, 01 Dec 2021 09:57:02 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:01 -0800 (PST)
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
Subject: [PATCH net-next v2 2/9] dt-bindings: net: brcm,
 unimac-mdio: reg-names is optional
Date: Wed,  1 Dec 2021 09:56:45 -0800
Message-Id: <20211201175652.4722-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095703_572198_B6F02CB1 
X-CRM114-Status: GOOD (  10.04  )
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

The UniMAC MDIO controller integrated into GENET does not provide a
reg-names property since it is optional, reflect that in the binding.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
index f4f4c37f1d4e..cda52f98340f 100644
--- a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
@@ -64,7 +64,6 @@ unevaluatedProperties: false
 
 required:
   - reg
-  - reg-names
   - '#address-cells'
   - '#size-cells'
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

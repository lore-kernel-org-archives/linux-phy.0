Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58846C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGZp9o/775wuXha+dicyWYGWQDOq6QkfZvt6eMhfvh0=; b=ENndMpXr3EtIw8
	8pZTB4L6xU2n7/X2zORpL26KHPBH6fPtZcr9Rx2XThXn1fCcal60l/w+8fYJqFLqYePJf3AOWjW1U
	XZeRjv1zV1iO1ju5hNy9hHk3yRzrO5d1YrThPxBaIPUbtlTryrDwDF9uk1r+1EN4YhIdEDSqziywX
	qrmPnVqbLVh1XNMM45H/B3EQKCwQzCcEVcPjKnobqOQ6MCc72/hj9E3BZR/Gek5HHBaa7WynNSApz
	OeuoZBpCgvFpYZLqhIRCLyzcjuHOy2mHXwDJcNqWgx0vSVVmQuMJFTxNeBy4869tcAGiFhtgVBY8d
	ffYlg9MRuIYucW+f8e6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muIJ8-005BCj-Qm; Mon, 06 Dec 2021 18:01:46 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIM-005AhO-5D; Mon, 06 Dec 2021 18:00:59 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 y14-20020a17090a2b4e00b001a5824f4918so11410609pjc.4; 
 Mon, 06 Dec 2021 10:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8NzlNFEIINqTDcWXH0e+WAbc6LfC9f1pv4m0DsSAh4M=;
 b=jMr3AgR8WA/HadtPHvYuy2cexlD2vCjYqKkD0QCon5sMAb5+f53aNRaCF+cX/MjK1I
 ooiAo0rfd/EZFNiShmxSeKpcOfBi2F6cd6QFJcUt5A2J0wg5TSxy6O5pKQt7mTysK1XK
 OwfVBsyhnuyB5WwBmRpIrq+bqaJxSlhXVbywcf331X5/yguw/VA6iKu5POyTi3bk+tzh
 aQR/WHtuH9cKzfFVMMyQk9n1xDFfELgGM88ny/Ub/kxe8YV7KKE2yfQ5Bin+WkT8EA5s
 Sf/ZYYstLt3m4+lRu6E2rFNXSnGXFAZexYUtMN0fBYaVjiSq3G4knXEdNYfXQoWI3YTT
 +Cpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8NzlNFEIINqTDcWXH0e+WAbc6LfC9f1pv4m0DsSAh4M=;
 b=8KnZ/jNF8RgIrUticAICRoNwb8MnB4vL2wE4feGpyR7WIQEF4pegbt3DZDp9/3XFIu
 ICO1sM9eR+NPlQbrxDg8hRWPSoQm2i+iZE4oQC10FNDdoOdWve2sEA+2V+QHC9LPi8P2
 cxYX4vqj8y8YuTnhkzbcK7uQgtRMl8mJT6Bl7D7lLnM30s+W6Y9+Eu2Tu38j5skj8Bgl
 QqO4qkVnSr1mjbrvQe4LcGufO2TuT8lWfZhVbjAFw+0ZOiGhT+HsxN5FQ9uPV+hJREh5
 ICL65OvJO/q926d27OoxLdFKZ2244XDqDgyN/BuOObXUeiteraWvcfywCKbXsePu0+rr
 s5yw==
X-Gm-Message-State: AOAM530s7V0u70/zXWOzFQy7f1bsXZhW/lAOk8MtN6PTRCdih6/gs/mP
 wG37mMpCA2Gv3kr9r0q4KIY=
X-Google-Smtp-Source: ABdhPJzfEfVEta3O/mLOLewG99piJjzBrQZH40e2k1H3HdcxMIyY4VE0jKhGB70cWd1FeC6d9cg4VA==
X-Received: by 2002:a17:902:7c88:b0:142:5f2f:182a with SMTP id
 y8-20020a1709027c8800b001425f2f182amr45525167pll.72.1638813653645; 
 Mon, 06 Dec 2021 10:00:53 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:00:53 -0800 (PST)
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
Subject: [PATCH v3 1/8] dt-bindings: net: brcm,
 unimac-mdio: reg-names is optional
Date: Mon,  6 Dec 2021 10:00:42 -0800
Message-Id: <20211206180049.2086907-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100058_237166_EFCCA72C 
X-CRM114-Status: UNSURE (   9.31  )
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

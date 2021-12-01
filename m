Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37BAC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 17:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXX48rf/yT+1a9FD1vuIujwd/Ylt/VzB/KNbNY8MsFo=; b=s1BIAE92u5xoSG
	pPCD2vWnNgiMgtdqOKBz/PklsahNXzCKgIZyX9PlY2G9Duz6uYrFXVIoueEB48YcJ1NwFU1U2KeL9
	GDr7vBSx2p2lsczB2S19iaAuCxx5Qmzx0vhj7Gr7//RnhPROAHWSZojB6mOZi7Dtex4qUOIa1sgdk
	fbFb6IzFWrTUHUCrX9ToaXyA8CTk0yx/P/mL7qTMjOn0owSU1U0/kEiVRxlVWxxkl/AAKCmF+L7O3
	6B16tTM7mRJdIkqNmwUfF1ETRQXA/N2YgBcmZEZWMJKUzy+ADENRj98olEoaQgdNjJjjbYZW3SD6l
	a3sXFyzIf8yyZtLj7c7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTrx-009ds8-4T; Wed, 01 Dec 2021 17:58:13 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqr-009dLg-PS; Wed, 01 Dec 2021 17:57:06 +0000
Received: by mail-pf1-x42e.google.com with SMTP id o4so25286261pfp.13;
 Wed, 01 Dec 2021 09:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tExO4r+cy0RFB17XdXDlhBrae4MKdtqXWFJl8QhkaZ0=;
 b=OdhppBQEa4ryLH9att8LycRi3rFQ6Ga0EBTENit5xYQDB1Bfba3CKRCE8+rFa0Mpyv
 f2gFF2MNjOj1KBDwXU9LxBuif8gDT4/7cTgs2tA4u6yMJN5AClWL6IZ8BpOQuV5Vm7YT
 XmfFFyaWBBl9RsxHVfQURfNkvMiGqQv19t5gXTJfW26Ow2EGYCX8j1k7QAK65EcGXV0e
 G35bFclcVFGsMWS9RUUAfNHjTro9qzcOMr+MHLteCkTKdMSsrqRlX3SGaGZryEDtSiE3
 zMtzOY/vwApuDcHjVJfE5buQaAxDeYTNFBpUixPc5rHljnGkagxSZ3JT5j/RiSIeU4u2
 qBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tExO4r+cy0RFB17XdXDlhBrae4MKdtqXWFJl8QhkaZ0=;
 b=jithw5hXIHA0u1qn6TP2gOfBe5DgkbfoLcnbSBPgMIohk9qez/vo7yIqiQX4YEkYO2
 x/QUYzya+fyo2Z4Kl+v1n3VRvd+nxxTtPyDbkci/+i/Geio/TTRXcwlAVbapCLo0NZZ3
 gTfwLdYkHarKbiH2nMuMG+/AQjp4Cdz4i1JRB4sjmpbHmrPbimyO5Ny7S9H7JvXS+SC8
 i1ez94ABItyyh3vOV4BXJ9CuN7egykfPtCaAuWeJIoNZjB6qvYPvgHrX5Jp7wxCEqgTI
 IlQUCUNubBAzJYENwQhB83DlxfkskXYop6Rjo+reSrt6FpM1WcxgIfc9tnyfJfveeyid
 X/qw==
X-Gm-Message-State: AOAM533k8J33AS/k3wd8bk4kpKIPIm5DG2PhqDVv2AVM3IKdu3Nj6oRX
 958eK6F31ISh+XKFA4XyIEw=
X-Google-Smtp-Source: ABdhPJwMiQoRDug6ipJxypCtMgfXSsdjC+XcWPhh3/HN9O/4/dDPGj02z853Fem37KY+f7wl6gt8qA==
X-Received: by 2002:a65:6a0a:: with SMTP id m10mr5782535pgu.82.1638381425196; 
 Wed, 01 Dec 2021 09:57:05 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:04 -0800 (PST)
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
Subject: [PATCH net-next v2 4/9] dt-bindings: net: Document moca PHY interface
Date: Wed,  1 Dec 2021 09:56:47 -0800
Message-Id: <20211201175652.4722-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095705_855185_384035E8 
X-CRM114-Status: UNSURE (   9.23  )
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

MoCA (Multimedia over Coaxial) is used by the internal GENET/MOCA cores
and will be needed in order to convert GENET to YAML in subsequent
changes.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index ff4909e1fdda..404035754db6 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -69,6 +69,7 @@ properties:
       - rev-mii
       - rmii
       - rev-rmii
+      - moca
 
       # RX and TX delays are added by the MAC when required
       - rgmii
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 277ABC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/8oft7sALDDRo01kLxarbfCVXXi7nEGnrwG+QGQWmc=; b=gvXVXDnj20o2i7
	r3xbPr0ioEiuUc61e8puS6rUG0+VydrB5z1jF7ClnZ7sR3CPE9VBFoUYvAZxyG8eNJuUZ1MsMrkr/
	hbTJ/5kwX4dSqLzKLEKjMY8htIguBP02qQpqVYCAL3q0Tm1hahbmXPUCGIfNxjzbfRAGYKfIl5ONN
	TY+SAeY8yhKVkepzquZl8foiMf845PdnB4OOKaip/V7vLYtzMWFFuL31vtcGhnqaZd3ozUXKjIAxr
	Mb+hoen+OxCvDbhiR6NIClnrqN7AwI9X86GenwfVwp1fRx4LFl/6Gj7rovu/SOMRTmDfj5EjbIa/w
	cEvfs2Az+2Uq5jMJELPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muIIp-005B0L-GH; Mon, 06 Dec 2021 18:01:27 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIL-005AiH-FK; Mon, 06 Dec 2021 18:00:58 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 n15-20020a17090a160f00b001a75089daa3so11434386pja.1; 
 Mon, 06 Dec 2021 10:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NuG70eYUXORcwGIelzhd3H+BMUojXfGScK3jwHgC0Ps=;
 b=Dx14OFdu0UvAWbZVjpnq0xkc1Ezt868+d31/k3C9hZCVVBGroKJ/FY/Yx9eb77rPUn
 e7iN/vgCf5isHeonNpd1l/uYzlvtnOVxgj1s5pvf0kceHv0DdKclylCn6DVwVdgN8NQO
 E00d6qJx8txI+mJAzUG51ETUy0H89ydaFM2jBpJnZTTvCXon3zzat3N1Uk1BP11VuIW0
 Gg1k3sE152Na7lRStDW4Mz4VuagwrCnfxtOt07pY9AyLl5bJg/nYyZ3t9NGeY2LnAsaS
 j+F2IRzSVxuE8km6TzIAFBLsD73sNBY4X0Pa8Z/sDHEK5WqA2ozhwQb6s+Sv6oQoDDcW
 g3Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NuG70eYUXORcwGIelzhd3H+BMUojXfGScK3jwHgC0Ps=;
 b=a/GoL5rne+ydtQwdyKYpPbPqylvZwRYyPg7jI6aXMBz8Tf26DC+2mKBRnGGmvwNKvl
 UfUhbu8i1Lm8TbpDZkR22+UBIX99Ee2WJXpv0vN5DH3e7HcCYjY1QC/SBSVI4oN3NBY3
 l74DVSRFE/F4WScvIZcRBprmHKLPMVocis0zjKb5H4snpaGKSRj1ABm+6DHc7wk6NMU2
 QlaGADf9J6BKv2Xs9aCBUf4H9UvJLM3dfffwtG5egJYjN0idaMuUlt4kewhMMgDNkYv/
 vsD4RTQlQY/9loCIoUs1hM/xlKZKlVNQYo399ESU0D7Vk/+Vq+F+ucxLHTcoOshC6mFm
 n2eQ==
X-Gm-Message-State: AOAM530DWv7spKuIin4XdH0yyE51BG5IR/j8wUjmeuGQWy+VwceWxukl
 CvpOnKxucc7wMxmEkT7ejwLihHSSXyE=
X-Google-Smtp-Source: ABdhPJwUV3ctQdXWmP6IrbkyObT1OKO2ULNM2CzwgNfytBsRd/8030/dv/FVcTBmncw+7/7SenVlzw==
X-Received: by 2002:a17:902:8302:b0:143:6e5f:a4a0 with SMTP id
 bd2-20020a170902830200b001436e5fa4a0mr45166311plb.20.1638813656332; 
 Mon, 06 Dec 2021 10:00:56 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:00:55 -0800 (PST)
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
Subject: [PATCH v3 3/8] dt-bindings: net: Document moca PHY interface
Date: Mon,  6 Dec 2021 10:00:44 -0800
Message-Id: <20211206180049.2086907-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100057_547248_C600ED97 
X-CRM114-Status: UNSURE (   8.59  )
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
index 95b5a3d77421..47b5f728701d 100644
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

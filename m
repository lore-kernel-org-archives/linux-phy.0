Return-Path: <SRS0=oIvu=KB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DEB4C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 959A561157
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 959A561157
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PdpuTlviHGssm9LdQnnkO1fTgrIHmbExW/8CnnFUd80=; b=JY48TXziE7FUp9hzt3gv10hqj
	X/hzeh5+p2+H1VyJ7QZHydCq3NssPf2R1T48pZ4IGAnvFjTV0E1yLaxTSyHjtBQZtIlkutOP9yJ4J
	cLCNrTWz5310jcqPABLGlEMpDHagtuokikd8euVmMtuJDFkMP8vpYM+LxjpO33z+7N2aIk/4jt3Km
	2xbVtr4+azYh3eMTCsW/abNemE/cV+IHzWIkobqy+4Dd6mZbGTo+dMvP2Kk+obq4FKe1Op49ihBns
	S2uHhZW6pIsjhu+PyhMEcyiXBa7jwCo5UJuhm8nCpvFWAnoWtTM9R/FjJVcnOA3Kcx1SpWre60+AB
	jvXs+GmSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec0f-0046VB-Tu; Thu, 06 May 2021 11:17:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyp-0046Dj-FJ
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=; b=gWc764jeoOhixNQ9x43O48WSOY
 AZJOl8C7lsi+ovz/32y7IpVWuoVVkObOuxjuqG52D53nOXJcIl9Z+jiOevTIgYJUSHf019B3MJOMw
 QvlnaN9o14MYKf9TJMLgeacGGlvNNspx5m0LDQ+e2MXlIfehL3XSYp99jyXZTQbOp1HW+dDoUkDMN
 0lqVEO1TJ7TPJQ/247oDc9mbGptteqU5FJO16yxPaBtmHtEoN4pFfNtl/npz/fe1h8/v4s1SploWp
 h3X3VNxqEG4yud9nqRpDF5A0BgVPAAhDiOml4mXd00yfE7rx1CnsggN0cZK1a8U2xuO9j7lE5fz40
 koyAWKUg==;
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyl-005yh9-VL
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:15:42 +0000
Received: by mail-wr1-x430.google.com with SMTP id s8so5172265wrw.10
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 04:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
 b=QuoDQQzU54P/pO1hushKfsM9IASTAvM9x+K+B0FAT5zQxytbkZGXZmxdCZKNPEHc36
 1TBcfDQ+RGmBzGwrk7XvaZzpGq7fakoOOrV+D3d06lYHlYOyoGT/S7Bvbks9WHLOYdH9
 x/0F5Go06xpX9odxmDnVHsrV88rbEDfzWnqkR29V+u8+Wmyoxx8vUkeuMMslGJWRuSCo
 PgY9H9tUVflMZRENVAmmUjFmUJU7KvbZlnOLSc/tIjgy3++rTrNyovAV/9GrgoJWcKna
 H+XMCqKDv/5s9jt/v5LJ+UiltxO5s1u5sQBGuZagFxA2aiwM2zYNcQ1Yo4/Qs9llO7wH
 TVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
 b=VOOcHp/dYF3Ko3vE8PR9zmLAV/gHWb7GYiPrrmV2TDiEscf+/8F1Dwxb5YofJ+eDwu
 rVPZz5CQCdW+RVtIIyNRumIl9iTGaZUSOmu7TCDUd4n3/D1yacEsHQ4bXPiAfLgDwrjJ
 l4zcivD8N9TslfbmhUUtd7GL0ldJRD20dKWNsWd1boawXSDzxYc5m4VqUHsuuSAWHQpD
 xQ0iIDTvlElSUs5S9Ua8xfY1DsPsQQKlVvtYHfumfXKKJSiVVSs3a4ESIS+qhoc0mi+P
 rs1KeZ2w7iI7Z1pEhUUHzshfJgdj7UbuZuK9PN/duaRgDSTfXdO/3EBifL1j0Xl7Fg78
 ltUQ==
X-Gm-Message-State: AOAM532hEwMcP+wIqscTlM+bIx1fjPytf8fDsW9TTboz04lbXiQWqG5A
 DpuJGoQ8QWwP8+PS7qw5Jxk=
X-Google-Smtp-Source: ABdhPJzH20Vd2ChccpIwWV5inlVmnET2Cb9+hDPcI+6QZIxtgU6qxDS6dx2kxXTSYJMUiQsnwdSzTw==
X-Received: by 2002:a5d:6291:: with SMTP id k17mr4619928wru.247.1620299738265; 
 Thu, 06 May 2021 04:15:38 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id u5sm3642433wrt.38.2021.05.06.04.15.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 04:15:37 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH 4/5] phy: ralink: Kconfig: enable COMPILE_TEST on
 mt7621-pci-phy driver
Date: Thu,  6 May 2021 13:15:30 +0200
Message-Id: <20210506111531.21978-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041540_030804_089174C9 
X-CRM114-Status: GOOD (  12.27  )
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

After use the clock apis and avoid custom architecture
code this driver can properly be enabled for COMPILE_TEST.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index ecc309ba9fee..c2373b30b8a6 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -4,7 +4,7 @@
 #
 config PHY_MT7621_PCI
 	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on RALINK && OF
+	depends on (RALINK && OF) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=oIvu=KB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8721CC433B4
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77DF361185
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77DF361185
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fAFZ2OKCm99TuUdUEUfnGLygegZtnkJhbXQ9TxULNps=; b=W3cJW2Pz/ONfbMqTTRDZww6UL
	yPezipBc5I+YVzbq7aeUjapugCF8sDfT6t5uf798MmnfaHughIPONE2auXvNzNY+4EkIg+KIjVxCS
	FQoh9CxBZnvK0hgEyakkEaS9uUT7IyVyopIHiK4cx7JxraAFrxbmvaI2udqqTP9SRzfe0UTn3luS2
	2koanWxnEH/eCnoDV4cvF7MLbwrnTmJocMeb2RaE0OXEldjWGrYgCPpX/RBoglxGUYlEYC4LcFjaf
	3CCNpuj4Dfo6Q0euw9kWj0RsHM8V636VTGCUH+X7FatiVG7csZWobI+YEjQzrtrmz4d2XAs6pXzeT
	s5vKVN8nA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec0k-0046W9-Ob; Thu, 06 May 2021 11:17:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyl-0046Cf-D0
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=yB+63PgRDM1iyviDORNDC1cNZU2QIzi0OniCvWqYcas=; b=nZyNGwD4JeE03lkIvLbAc9iBqg
 YZ90yvXJxXtHsOwlZXJtxgexd31dhm814ZjgQfSlWy/LENJZctbydieFf3P8E+eZA0ViMwDK7hfKs
 NhNaBW3UeS6TPMzeCDgoxufE7sqL6Nqgdjy23G5fvMPeilMiGefN4z/auCufAU6kPKaKC4JysdtI4
 MenlyH+qnW5RGb4/HQ0kveF3OKBJfYty+L2cOuK+eRCotbT+kJ69//sB2KuG4k7nJCn/z7i+qx1YP
 D/jOLwlUDipvQ3ozsMBuIfa2e6z6Sbw1vT2p710y2svPYSW2br253XXbbkg7+WdGJV5m/L7k9+se1
 65pYMY7A==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyi-005ygF-WB
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:15:38 +0000
Received: by mail-wm1-x331.google.com with SMTP id s82so3147524wmf.3
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 04:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yB+63PgRDM1iyviDORNDC1cNZU2QIzi0OniCvWqYcas=;
 b=r5MNcwCk/unl+3evjl1ScAq7BM1g7s0th1VDYBoe31faBujaA8UxZV/AxfibTG4gdg
 2CVeoKS2qXJun3cABqZGXijgW3sp/MQbDojoMTOb578htTrFotqlGRUdm9LyvRnVOrgU
 PJJD7mre6+zIyjlLZj5TLbGfZL0mYCHSDrO8yPS3tumjtsUx3Ydf1noHAYFuTS1YKT0m
 /oS1eUXTCekbWsKcw/6MHZeNB04mHSc0HxI1njeK3md3VN6LZMNPnK94HPEDGv+zeD4Z
 nBID16zPinnRGBpsxUPBxUt7xeo+K9oajkJjjdSdH3tot4/a/KffYdjcAnCf55IyNvkK
 /uVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yB+63PgRDM1iyviDORNDC1cNZU2QIzi0OniCvWqYcas=;
 b=av+nsiEuJKzR1U/0vsGEpo481YlJRB2RpSv2xvrKfcJZWhOhnTsWC8itoPPJX8nC8Q
 qFt5fXvEGj/mWImxCLWvi+y0DhM4uOt1zTPXFtoRZsmDwPnht7CKZshlZuqRGyl3av96
 jY9kdLCI9oY5hHHqpc0iWUNOZv1X0i12y4sG623X5GpM15Ffg/9dsnIqx1kA/G9OoZXw
 gadaBVs5ZYxgU/Uq18BatGFAePzTmEOu1DPctSsGPh7jx54nnzfPgwWgarKm+u1uSQ18
 UpwVoFZa215/LEPJNfacHfWWBdJcCkewIcbcTOg+8Uyz+lNV7lygVH+2/J7OYPddf0dX
 XQUg==
X-Gm-Message-State: AOAM533g4KSYRrxxA6N6h4W0qMFQ570kp+peQk5i/vdTMU0WxB9EfWES
 kzgPRwPOFeKw1Ss8BWAWQw4=
X-Google-Smtp-Source: ABdhPJwQfzxRYHpKnPIQCx/PqOoEanXnfY+4NyrQ2w7d5BnNcUH2wVkxSbnS4mrZ1TPCAsEetdFZYg==
X-Received: by 2002:a7b:cc83:: with SMTP id p3mr3374846wma.170.1620299735254; 
 Thu, 06 May 2021 04:15:35 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id u5sm3642433wrt.38.2021.05.06.04.15.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 04:15:34 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH 1/5] staging: mt7621-dts: use clock in pci phy nodes
Date: Thu,  6 May 2021 13:15:27 +0200
Message-Id: <20210506111531.21978-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041537_050966_04D42258 
X-CRM114-Status: GOOD (  10.38  )
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

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
Hence we can use the clock in pcie phy nodes to
be able to get it from there in driver code.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 5623d542bcf2..001ff8f51033 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -549,12 +549,16 @@ pcie@2,0 {
 	pcie0_phy: pcie-phy@1e149000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e149000 0x0700>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
+		clock-names = "sys_clk";
 		#phy-cells = <1>;
 	};
 
 	pcie2_phy: pcie-phy@1e14a000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e14a000 0x0700>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
+		clock-names = "sys_clk";
 		#phy-cells = <1>;
 	};
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

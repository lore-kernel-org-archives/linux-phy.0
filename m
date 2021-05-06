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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89409C43461
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2B90611CB
	for <linux-phy@archiver.kernel.org>; Thu,  6 May 2021 11:17:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2B90611CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qIQmSMI6Tqjb8CH0LXCAcYctozuL+AILswCfLUPAmtM=; b=lcd7knadSqGK77f9Q98rvpSWF
	zQc2ywNluV7jWb+3wlANIXZqK2jCLt89N+esBWgaN3sfx+51W6k/Ibge/N5/D3tY8mRVJWOHeFjHg
	tPsGlBET4oHA7sFPdpOLGeMgIgXOuN7//h5Vz7piQOYXSos00YhQYvp06SS0siooLFsBid2lHiXja
	NfOc+C/Vt2fR6sL+BuLAmHBaUHNdW7BV2bQHeWPLfdko7FQnjf+B1SCe/GLEig3cC/4Ib4e4DwbJY
	/HAdiLIktb63c/pArdKimoyx/pO+zg6BH+srjemcrVbRTTTUfqOBEnL0arOUak5YqTdo7wBe7m+gf
	xUWXZtYkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec0l-0046WI-CY; Thu, 06 May 2021 11:17:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebym-0046Dg-Bn
 for linux-phy@desiato.infradead.org; Thu, 06 May 2021 11:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=bcj0pWWA8nFHZcaEeJrGAFY0Y2i6kRxQp4Wf+dRkrMc=; b=DDIjCy+/+QJ9EDYfs/CQVnTVLX
 Cz5KibCwOTan4eJ3UqXdp1zhcN3+DHsp/s1w8ZMsiBG1LzIX1B5P/RtsrHIerG9VR1fI26kTW8r4s
 4Ik8RxUzHmSulu/O0tsEnZQVSDnM/W3uqP/lgFhrxNUvJSfVhLjuSipkd4oJ0Hu8UvFLplSxhJUgA
 SFmugOs2hrm/ss3OBcxYu1I7jskUJ8Oz1T17MZeKvayf/L6njGXFrtxMJVlIzyrfoEVFiuJEdhuCp
 TpCft8DXgUwr+4IoFfRyUxAFwmqWPFUelbUQWCaYGOLRwnuGWd7jmXhe6bDMWKwo/0V5mvG8QnP5x
 8SQCi4UQ==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebyj-005ygK-UP
 for linux-phy@lists.infradead.org; Thu, 06 May 2021 11:15:39 +0000
Received: by mail-wr1-x42e.google.com with SMTP id x5so5165565wrv.13
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 04:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bcj0pWWA8nFHZcaEeJrGAFY0Y2i6kRxQp4Wf+dRkrMc=;
 b=nx33U0MdKytL2LeL/A3OBCQcElimwWw/4yEPpHFwZbFDqisrnuREQLuAZyx6jvlrj5
 58b3UFV9rfe94VikNAaI3ueEPEzBPPI+LdGlhP6ZOrbhn0oDAzn2XS6uyOGvYA+2NUb4
 5/wGOKqulsUeNdvxzpb+ULOH/m6a1ggvUUwRszekCdlmOPSxOU8HFgjoNrL8JRhlJ1Wz
 MBgWZ4VCPS70SSWsFZVNMqkVCE1i50s7huEVZEx40X2N5gG7VzNMJO0FJfVyfTpLvAt3
 6JrDRkA4VXw94kiB2n0LHLUE7Gywwcn/rSLvDehqTiOqtguPnMQ80xFnsF+znBHRqW6Y
 DybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bcj0pWWA8nFHZcaEeJrGAFY0Y2i6kRxQp4Wf+dRkrMc=;
 b=n1iw2ImZdI7BzQ2iqDaiVm6WuxczduID+pG+v7ztjYvqhghhpmUhR0U1M8Kugbr3oe
 aDXtkWi1ngzzEIKC/nU38lPntqAqERqA0H1uIuHsbpthGm9tqivPIhJkp4krSqVyXbd1
 dcEhqBkbH0+pecSXUZWKTijb24+0UhjpVbBz1sARK02S/pFn5Cxkacx3TRrZtTSbu5n7
 1apoLA9wAh82/xicNWJ9P7zbEP+TKxqptrdQqv9CRH55J+eXK6hi1zcZR8ZJq76eDPlR
 61+2S0mft2a9sUORhNxap2eyesRJL12OhtpiWNwB/58xIW+21B8HFAObLJQNNehmz5v0
 3vng==
X-Gm-Message-State: AOAM532qeJnBLI2RH3uLQ8/rXbjWU+5HbZnz2vIfQ3J/wTWS6QmTMTCG
 U18CrPNZg6PoalSjFuHpkco=
X-Google-Smtp-Source: ABdhPJxJ9grl1B/XxF/8opkBocpLHYlo2dk8HqNadhlsu7dvjNCfyEqecrxPRlVTxJXSiMy/6ZpGiQ==
X-Received: by 2002:a05:6000:1541:: with SMTP id
 1mr4539384wry.364.1620299736213; 
 Thu, 06 May 2021 04:15:36 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id u5sm3642433wrt.38.2021.05.06.04.15.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 May 2021 04:15:35 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH 2/5] dt-bindings: phy: mediatek,
 mt7621-pci-phy: add clock entries
Date: Thu,  6 May 2021 13:15:28 +0200
Message-Id: <20210506111531.21978-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041537_995846_4BDCCA76 
X-CRM114-Status: UNSURE (   9.60  )
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

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
Hence update schema with the add of the entries related to
clock.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/phy/mediatek,mt7621-pci-phy.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
index 0ccaded3f245..d8614ef8995c 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
@@ -16,6 +16,14 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+    description:
+      PHY reference clock. Must contain an entry in clock-names.
+
+  clock-names:
+    const: sys_clk
+
   "#phy-cells":
     const: 1
     description: selects if the phy is dual-ported
@@ -23,6 +31,8 @@ properties:
 required:
   - compatible
   - reg
+  - clocks
+  - clock-names
   - "#phy-cells"
 
 additionalProperties: false
@@ -32,5 +42,7 @@ examples:
     pcie0_phy: pcie-phy@1e149000 {
       compatible = "mediatek,mt7621-pci-phy";
       reg = <0x1e149000 0x0700>;
+      clocks = <&sysc 0>;
+      clock-names = "sys_clk";
       #phy-cells = <1>;
     };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

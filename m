Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE883C433B4
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28D4661288
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28D4661288
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l+oq/dMerGhKJVzegz7pnqCaWStWPsKccwgoPaSDpZA=; b=JUaOhd9ojUJ4Hp01AJRBVUkRb
	iXIUueqyIpDSIqw4a4l46UggTDs/AcLKqNzB+TW1Vjeil1L9KbykW0A69URiRnbj4/VMHYddzGyUs
	jF8mvWZqjgqK+RoqWSclnY/jPUTskuuXlIDdt+GAshWtTrCf0euH18QcaIp82vvDHH8xPSnBqdykO
	XZtB7P6R0rXOnuN3AUvSDwhusQP2L/mkAKI3bdZoWXBQPOsHOHREL9y4q4v0OC+bhg3m1USh087+9
	VMX67ED/lvDduWg2lCRTcdnnCJ//tVSa1QQzgAQXGtsT4r2aa5cUo9k05+zzjiSx4AgIC9zvvQyS8
	dowHlJo+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpV-0090Hn-OO; Sat, 08 May 2021 06:52:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpN-0090Ff-5m
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=; b=YohRDKnvAon05SZnVhcvU2fu6H
 WHiaca6Xw3DGxvzeuSYoIThzRcl1ZtlAB48E2K3vfW+G+EY+Ae6FbiV2EqKzCwsYvNh9eqFNfCuf9
 eD7HLhN0gghbc1e8ULrSotDSMpshD4mK5F++zPuz0s0A1e+lfMh8wveFuI/4NzNynlxOkIEetzQ8j
 af54a+RGanyUTaufqKnKD0NuN1Uq/LJtYgBIipikyM86mrFX7+AKq1Y0PCsE1DKgDbINbfjkiMMD1
 EBQaAQ17+Abk7arXnvv1YydBTSn3vEkmMaoaWDGKbl2NEEjN/7le0k//2Xi4j6MoTNdwSD9RI9wIl
 rtsX7QdA==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpK-007PLi-Lo
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:39 +0000
Received: by mail-wm1-x329.google.com with SMTP id g65so6360980wmg.2
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=;
 b=fHmva84B+WM6w350eDqTkOl8FhXPDtg3gQ5ij5heAEjBqaqYLXNqQN5dO1WgFamQbs
 +k00beVVVRps76Mbh2kjyu65rGMjX10gdZVeRe0KOPBSA9EdOmMB5F5tEQoUv8jtPa9C
 4k5qWvlFDFMuw/Nz9BVvidJhnBG8KoDv+1DiWlrXTktjkbWm/2enCyy8+Xto3h2/Y921
 /aebEBFYS1YSCUMqMR2qr3Cg2SyyDNUwWdcVQYKlWl93rs59LtfJjLOXb8gxYHn92toB
 7dTs9hW2KMddOLDUscODrpvQYCwWgwF475QzX1h9+/M9g9TsuD3QQTdYYlbFCASuFqVl
 qWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=;
 b=feHo75JLC9KN/wEIQwKoCBgmOdb1tLbCbXzWusM3NlJGD8R/YUuM6KvFU+kXdD4ODl
 9Vnp2+yLZ5nS3QeidbZxJa+hyz23jL3NnUCHTG62ZN9PIt6lCR5N/11V61BfLSH2Ajnw
 40DDcMtEGZkDfGHnglpFyfoHON7cvdJOaYAFtAO48zBsVJk2bSyOmR0EPa84j1KxIaGZ
 tj6l1jWcpns3Z/KItTsne/EBjFvOSdX5+9Hgeys8UgceYGCZ+uhAiW8X9/hIORyOwrtm
 hzi/DmD7aN/8N4fX+UPmP0eS5fjCkD2hFsHcidVA7e7SlAWV3lD6x8djJ4PGYfMuM7PX
 +xQQ==
X-Gm-Message-State: AOAM533eOZzVnYzIbQw0ImvopUR7ZDKYiL5K4TNSnQPP/YN5FguUP7UU
 gj8fJ07+1DgOz1mbm2hxZfU=
X-Google-Smtp-Source: ABdhPJzTLLM5AeDPLomNArvDRyEqjwe2fWIWNeSysSiv1Jwx4GEpVY2WfenAYWcZ9D0dRaEgoGiecA==
X-Received: by 2002:a1c:e387:: with SMTP id a129mr14667277wmh.61.1620456757203; 
 Fri, 07 May 2021 23:52:37 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:36 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH v2 2/6] dt-bindings: phy: mediatek,
 mt7621-pci-phy: add clock entries
Date: Sat,  8 May 2021 08:52:28 +0200
Message-Id: <20210508065232.4882-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
References: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235238_731289_562D2DC8 
X-CRM114-Status: GOOD (  10.61  )
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
clock. Since until now things were not properly being done
we mark also 'clock' as required in the binding since this
will be now the only way to properly retrieve frequency to be
able to make a correct configuration of the PCIe phy registers.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
index 0ccaded3f245..29d4123323c2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
@@ -16,6 +16,9 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
   "#phy-cells":
     const: 1
     description: selects if the phy is dual-ported
@@ -23,6 +26,7 @@ properties:
 required:
   - compatible
   - reg
+  - clocks
   - "#phy-cells"
 
 additionalProperties: false
@@ -32,5 +36,6 @@ examples:
     pcie0_phy: pcie-phy@1e149000 {
       compatible = "mediatek,mt7621-pci-phy";
       reg = <0x1e149000 0x0700>;
+      clocks = <&sysc 0>;
       #phy-cells = <1>;
     };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

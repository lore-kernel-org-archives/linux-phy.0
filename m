Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADE5C43616
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8E79608FE
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E8E79608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l+oq/dMerGhKJVzegz7pnqCaWStWPsKccwgoPaSDpZA=; b=OgUBpfsMNlJKX8jY8Dy8qblGa
	0uUyjbgZzI1ZIwLX2ZCwlWAvTnTmThy47Lm4MR8Rz7xzctKTHwdtSgNdP0oAMce4AsUKkWwLhH82R
	67+0e6xX8QMYPdVw/iOKEVxFcXZJRax3jOGafZ1b87p2SgSaZAMHqaoRz1nBnaF121gdcc4mQbzzE
	FjMws8kgbier0V5YE4LxroeW0hlNzaHJZFa8x/nFNAC7dVVA4SCXWoWkOazT9Nix+Xus7nRjOkrp3
	dsw/Jjkq41WVZO/pJluBS6yL5XSybgphQTrLf+L0i6/wE2Kp+rCrCtFUPcmFb8RzoSJXK08BGyF4p
	JVDlEfwLg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfH5u-00926g-Fb; Sat, 08 May 2021 07:09:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5n-00925X-1P
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 07:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=; b=yIQ04g93hU58uH6mGZEdK+ge/W
 4yxGtbSxVBMud2LJ8vX7WqdWEwJ9CV4PloCNE0/6Y537DZ2oEjhRVdylW/lXBIu3zzc+ZMn1IyFYP
 X7wE50rqfwSGLGy4qJEDZFlIrBzEr+GUOecDeX+LJdv+La6ZxPQtG8YK5g77cVJs0DtnEhRNK3mjH
 VTSeYGD6hF1F7hS2oGasrHZfSWuul37JH0VcAV6JMZdSMgNw/Labj2KXEmflZnmAvsvX2M3acrwkb
 Q7iEVmJJYulQ45SWGULr1kcgmKt5ELd+uMJ3eK3tvmTECnM2xS6/JVxWkzEa3dnO8E8CbnRnwpKdu
 zJs/4n5w==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5k-007PmY-IJ
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 07:09:37 +0000
Received: by mail-wr1-x42e.google.com with SMTP id t18so11383142wry.1
 for <linux-phy@lists.infradead.org>; Sat, 08 May 2021 00:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=;
 b=oQBOEU8joU5LNoeSGDS2505fZ52pdijNw8EXDD8PUyl871qBQ+EUV1zHQGNwO0ZrGS
 u99bMzj80z7cRcYzkmFiE2eZFNDAXLhnG2BKMHfS61rBk4vDTBFWt2KjDwBGdOTXoTCA
 6yUeU1YB/04dP9XgL3i4u7p83VPQ7lc2zhCq0ZAmWlInVy1VuQw70Y7eFJILijFpFU29
 gc2pKGXAURTVJvZWp5cdPZGn9eY1+/rANSMJLHh6up28IIvCzhwSoERCvuNz0t6N4ygS
 Hg53jVkGXckGQRjzq/34ro2gU3htal2yfCibZ77ujjn1AxoZFp7swGtJzoX2rcBjTX6/
 rgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HcVgM2vyvgzDYevyg/QfJoz8h0kWR0tPVu2/nxnMK08=;
 b=Smmu7RCi3ibsCFvcDO9KEXu2/cXhZDn8YxSlHYA1+2A2TpeDx+Xy6dAPvs7b9fQGhp
 eZF1JrWP90OTWaHRdCp+P34f/eR8Q1o1Y8WtTdQFkfwPTPqZMLjjmQERGkABuG4iRQ68
 YevmQhDusTXwmjyAmxVoti/50KXNEPGqAQp3undEZ7DcbwCpcOR6avhnsDXskejVJ0gZ
 tyox3f9suRBwobCNoKBrSRIvIEfQo880ienlknipYWpT7GCe8x3Ekg9umxl+5jhwTwcs
 UK87wU0Qk4HpQ1VKf/bpHoZKw8teWerosgj5QlrD/IvEHr451IY6gfMy/8ZmjjhU6tvh
 KYDQ==
X-Gm-Message-State: AOAM531xF7gWiQqZsL4OeN3KS2c4q3Mgk1RTrKzFpqoNxWqkWMr8B6J5
 daIH7Bxv0kpv2K/qoARG9fk=
X-Google-Smtp-Source: ABdhPJwv2tpuFMx/ij8r4UA+F3GGnnHZs5rMG0ie4Q88HHaz7t2ijVZwXBdGKTtDzNHE2yUl+JWpfQ==
X-Received: by 2002:adf:f683:: with SMTP id v3mr17358197wrp.133.1620457774843; 
 Sat, 08 May 2021 00:09:34 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 00:09:34 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org, neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 2/6] dt-bindings: phy: mediatek,
 mt7621-pci-phy: add clock entries
Date: Sat,  8 May 2021 09:09:26 +0200
Message-Id: <20210508070930.5290-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_000936_609366_7991E992 
X-CRM114-Status: GOOD (  10.60  )
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

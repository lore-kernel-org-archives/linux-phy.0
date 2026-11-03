Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A1C606A324
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 08:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DcM2LD9U;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=MCDQRdDu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=CFFIM3QB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KlfLxznXzUnXQylCC2lbW9sygzdQzjVx9QxnV6qvyiA=; b=DcM2LD9UCcHUQGTxRNLNISYaMr
	TmoICtXF0jnT8GMimTEjjF9Zg5dbjfu4tWJpqZkMUBDf12uQOT6amdiUfsqw66lA1W9jmJsKiOIDR
	UkX4AxYaLMxR+Y8uiLUOUiSL7BzYABrAQCMq6scbaPcmx6bCio2jeLHv0TNikwZYYHj9vPlYY9P/5
	GOCRNdcqt1hjRjlLFRmChsJ8fVxrBj008Q7QghO0pmRv59C92T0aLbO08N6lykXxUCL9EdKi91d5r
	xv6XkLYimB3+YC7OelbnDZuYi0IjKf5vBNnrXZN3j4Sl5HxwRTUQBfxpvU5zjU8KkJIgYNTI0ON7g
	uDT8LBjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAMS-00000001fB2-2FCR;
	Tue, 03 Nov 2026 08:59:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAMO-00000001f8K-3TSD
	for linux-phy@bombadil.infradead.org;
	Tue, 03 Nov 2026 08:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XdWSx5jEVXu7O1L25NHaAg46eSzRTcB1Jp91d+n101c=; b=MCDQRdDuU48F8IvbtTe5y2Wc/4
	1A1ybN+2U80IMFne5NlyvA3RsWIx36+9M60bBD6cr6ToIU508O1d8QV1SuBQAA5/tNRjwuTUZg8gT
	4k6VgQy0D2hF9a89uy+zeM6Ji+gRoutESw7ZzJz5E/4Hg4tEVDxaa1F4vViEk7VBfh9mTRKjpbq5I
	gFq+rgiZ74etH21tGbRRyHAxSV+ukdyI0/buU174XMREHvBuMDOQTgUQXhKZ8i3PNms5x+dVyfF1S
	sA+0nwb5T3YX6FL2RkvrUFMK3FQXMpkw32baXSVtzJedShff1ShGthoHYq7urFvV6FHKrz0lbFNo9
	r1RM6xRQ==;
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAMF-00000000DWE-30J3
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 08:59:09 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-3ab3f899c8aso686517a91.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 00:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793696346; x=1794301146; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XdWSx5jEVXu7O1L25NHaAg46eSzRTcB1Jp91d+n101c=;
        b=CFFIM3QBjUl4ShOP2zZT6TO2i/B/N2MieqdXaOtAP8w1NEXWd/vL1U4LwYQ5Ufpo9J
         hw0Cdia7YLkpjvM5rWeyvr2Z1Gh+lawRgCb0UGly1Q361axI4UN++cn2gDAuxdDJrWM1
         ZQEbJsoTjcLnKBnfLgL2K9KiLC/1aFltIIaCt1Id6mfoIAnBGdCBsbi5ve/hdt07BSzl
         74TxyDcPu0xrFEIREqMVbyiJVvuKFenWYu8wYKZKO6quVoHR5PTOiaVLiAfMhxb7bhp/
         3CMzY2JXCddDC3YRqty8FS6AUXa7JsZVJL6Ks7DQPotteolzyFvKMubu6X6d/Sy98WXb
         C46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793696346; x=1794301146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XdWSx5jEVXu7O1L25NHaAg46eSzRTcB1Jp91d+n101c=;
        b=PcbKw24HNCkmPTFowoxsAIJJsm8MXJ2hgGIaIOf3xxWD/yCbzyWUuBEgSorKRUQ5UK
         gxgR71oDPTX9uuphN04UrvqVY1c/m462rfppZcIATKERSWGEZ9lxpHdNzDNBf7AyyXR2
         b4Niv5dmTIzHew1DtsvAZnc+AK1dwDFyzNaCcUm+5dT4C942DiFpmY2D/ohB9g72DMyb
         +m+8AlkGptbpN252ESL8s4CqaDCJBcZbi9pKkKonDCoJ4202E+aBq7K7azbyoKqJCNDx
         /yt94wC+mGaIuWILUFNBq5EUYiNgAKmk6cX7flI+ZTQIf49kr9sgMfXLDxtSbCqgYWWU
         Cs0g==
X-Forwarded-Encrypted: i=1; AKwUvBzYLHYmZoc2FXyRnPfgj9MELPL/z6XevVXKBHN7teEiK343FFrC7WLLCRSaxEr5rdJkLNwj6sBwTww=@lists.infradead.org
X-Gm-Message-State: APuU4Z+vZJJMifR+M5hr/Q5qDpGylW404GOFhj0xOgRHFrbdE6ozGCiW
	Frpq1xwY0RNngEbkuViGsSjLmxK/2AZEENa5uTncfOkYFVfLBgOn+4ni
X-Gm-Gg: AYBFou1V6mkMBbhj5MvrDbmy+Kktgg3xLVtLTr7yOlYeUJIvklrJiftG4Az8vjT77+7
	n2UnOcSj+KgMItmbWYUShpbS1tPBU9vBTmelr5detdp3vNw/bng643VvCMRELtQb3nPjJOpyY+p
	37gk6VOdIlWqaXjeI6cKwBQ/4IMS1uXnckg4JHdzgQFGoiGWRSJB/E+Q6qCzpDEUXZX863hG8EZ
	MQ8bn4oj+NLdoIZBj1ImUUkgr9/ltvj35yMMp5Ij81tDycKJy1SbPTLmoQG/fdZ8MQXpGN2AKpq
	lfMrVKLibCTBoE08fc6q9NsCjsE8dJ37kvc7jQywaFfwKoCR1+I0ro7KGnLnYEXmmyNWOSPLRsD
	gpE91NUnVtjtQz/VNrSYD2RxNDmheK9GAG3mPYIjrOSmnVCuZv1CKQkIqg1UlonPLP7M4w/yweE
	MfRZ73Hv/oTua1BIxR6mQJfT62y4Kg8btd4c/KOJb37G6KoYd/VFvqOLMTr5IREjRap1Y+u92zi
	lWqi7iogftwOTDlWpHMJaI/YoutCwXBc/JdNYUuBLfNr0VCHM097rh70EjyNU5qJ8L7diF+VB46
	DtR+5Bi+eK24NCOilpKvs/t+p98wDhwQp71dg0xIVzQLWypUKGlVjM+pUTAkkLNCB40APqO9iKN
	HJWtE0qwVThbf
X-Received: by 2002:a17:90b:4487:b0:3ac:9c37:9422 with SMTP id 98e67ed59e1d1-3ae89626108mr17481897a91.2.1793696345686;
        Tue, 03 Nov 2026 00:59:05 -0800 (PST)
Received: from chenyou.. ([140.116.39.229])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b07c6740a1sm3345662a91.10.2026.11.03.00.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 00:59:04 -0800 (PST)
From: Chen-Yu Yeh <chenyou910331@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Chen Wang <chen.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Hiago De Franco <hfranco@baylibre.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chen-Yu Yeh <chenyou910331@gmail.com>
Subject: [PATCH 1/3] dt-bindings: phy: sophgo,cv1800b-usb2-phy: Add USB role switch properties
Date: Tue,  3 Nov 2026 16:58:45 +0800
Message-ID: <20261103085847.338613-2-chenyou910331@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261103085847.338613-1-chenyou910331@gmail.com>
References: <20261103085847.338613-1-chenyou910331@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_085908_395483_3911CA4B 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.1 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The USB role on CV18XX/SG200X is selected by the ID override in the top
syscon, which belongs to this PHY, so the PHY is what provides the role
switch.

Allow usb-role-switch and role-switch-default-mode on the PHY node. The
default mode only has a meaning when the role switch is present.

Signed-off-by: Chen-Yu Yeh <chenyou910331@gmail.com>
---
 .../bindings/phy/sophgo,cv1800b-usb2-phy.yaml         | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/sophgo,cv1800b-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/sophgo,cv1800b-usb2-phy.yaml
index 2ff8f85d0282..a1d164686b07 100644
--- a/Documentation/devicetree/bindings/phy/sophgo,cv1800b-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/sophgo,cv1800b-usb2-phy.yaml
@@ -34,6 +34,15 @@ properties:
   resets:
     maxItems: 1
 
+  usb-role-switch:
+    $ref: /schemas/usb/usb-drd.yaml#/properties/usb-role-switch
+
+  role-switch-default-mode:
+    $ref: /schemas/usb/usb-drd.yaml#/properties/role-switch-default-mode
+
+dependencies:
+  role-switch-default-mode: [ usb-role-switch ]
+
 required:
   - compatible
   - "#phy-cells"
@@ -51,4 +60,6 @@ examples:
       clocks = <&clk 93>, <&clk 94>, <&clk 95>;
       clock-names = "app", "stb", "lpm";
       resets = <&rst 58>;
+      usb-role-switch;
+      role-switch-default-mode = "peripheral";
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

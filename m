Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA59C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KBmSlYNwh/46VtKAjT9DD19nN9riYbQWwrwGyDuSKFQ=; b=kSgU8Dp40VhxNO
	jZRksSei9gHgSiG4LgHQKyiRXqFsb1Z5MNJE+ve9XFhd6oXz2ltIAIpaO4fJSR4/9KpTvIPCzHL1Q
	0B2hPuwvzhP7zdFsTAOgpB0dropUXwZLmszlSP9m7q6ZNK/I0y03snmaBC2/Sk3iljo8KaAensAZn
	sHWnSyx+dU11b48lHBTpauhqWMEX8H9cLzS5NUl9K+4x4DKzCNG67ThlOVtmrxRlgtlewe7gUWSdt
	A6oZ6h7Md5dJ3diLujvHZWHm0tRUYawbijMAYCwqciWJvxUdDRJ4EHQqYZqA3S6LEZplM0vicR5Hr
	XliHKsqylHkxGxeZ6peg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aan-006DkX-7H; Tue, 28 Jun 2022 12:45:21 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aal-006DjB-7A
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:20 +0000
Received: by mail-ed1-x533.google.com with SMTP id cf14so17390228edb.8
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NSdZnX0hvMtHWH81+COi+h5G1VU1bB160uGR/aWIxoc=;
        b=ZuwUCgXkzV6GPaEzIaa25s+tFkgTNnNH/N4tpQWEToYTlYJTB2+H0vKOPlpqc+We/I
         9muIHC4zfx+RqpIhwaI4nFIqST44WUDJQOwINb/y6HM/jRPb+CEUXou6Ao1ngrOilOHR
         3FqdfmwQLHkaxr9Pb1/THb2yqeTJ80DJAUrQyJCAXhPYbykj7sNqB5nkjD7M29c1T6Wx
         fXXp960dzrvdMHFQtPDkShyvp3zCmYGw7AsCIwU1PECpo2tA2ehZYj6USB4QiSNlF7fi
         WHTst0bWB6bP8eBUpOgf5Z8/x1trm9fDjlxcR86KGw7JgSVl/PakEFnoRrCj+7OmAUXN
         /K5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NSdZnX0hvMtHWH81+COi+h5G1VU1bB160uGR/aWIxoc=;
        b=rOGITMOuLXylPTj7tMcSoOxooig4X5ey15weAdpGxSckUXzBSpJZ0iPY91UImldFTJ
         fFDvC1ZRwUlYCOHgBn31G89EaYX1WJRAW4WVpd+Sw3PntgXEBULTqz6Xd9nFeS12ZUT4
         b4Pw9j19P8MClETzgkpXVyYVAT+x1qNJnfh9C6zOLlGq1apMuhXuxE5hSJBOjWX/OQiN
         smtFMx6Rb7Y9Gig09ed/bDkygjuY8xFwh/lggEqdNCdCp9w9G2Fh91813biSzJKuSmit
         XudtlogmKtJzFGxbBs06b8nQ2aAObvimwIy8i71+8qS3KK1YVF4+U+PDAPOZjsO5Dq8U
         5LgQ==
X-Gm-Message-State: AJIora/V8/8/3EHpmAy4xD1hF3e9b8VKQ+N9QgaYEJt+MfDIvkWuuoS+
	i/A4HQd5sGT4kXd4uDUYv4KkJEVs1oM=
X-Google-Smtp-Source: AGRyM1t5437mq08RGvn4Hh37j6wWEZKSJ9YjRbyOr1AGeK+h/hUdNQ8ChmJv6Ixh2qm6pxEZIj9wvA==
X-Received: by 2002:a05:6402:2786:b0:435:da07:14cb with SMTP id b6-20020a056402278600b00435da0714cbmr22792909ede.408.1656420316598;
        Tue, 28 Jun 2022 05:45:16 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:16 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 0/9] reset: replace reset-lantiq with reset-intel-gw
Date: Tue, 28 Jun 2022 14:44:32 +0200
Message-Id: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054519_304289_DF082190 
X-CRM114-Status: GOOD (  18.20  )
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

Hello,

in the discussion when the reset-intel-gw driver was added it came up
that the IP in the Intel LGM SoCs is backwards compatible with the older
Lantiq SoCs. This series removes the reset-lantiq driver and replaces it
with the reset-intel-gw driver.

The transition is relatively straight forward:
- compatible strings from the old bindings (from
  Documentation/devicetree/bindings/mips/lantiq/rcu.txt) are moved over
  to intel,rcu-gw.yaml
- missing compatible strings (for Amazon-SE, Danube and xRX100) are
  added directly to intel,rcu-gw.yaml
- update the driver to map the registers using syscon on legacy SoCs as
  some RCU registers are shared with various peripherals (there's nested
  USB PHYs and other peripherals have endianness configuration registers
  in the RCU register space)
- update the .dts(i) files (I already prepared patches for downstream
  OpenWrt, which is the only known user of these SoCs)

Patch #3 (dt-bindings for the reset controller) depends on patch #1
(dt-bindings for the USB2 PHYs). I think it would be easiest to also
take patch #1 through the reset tree since it's a simple txt -> yaml
conversion.
If needed I can send patch #9 separately so it can go through the MIPS
tree.

PS: I Cc'ed Rahul Tanwar who has previously stepped up as a maintainer
for the drivers on the Intel LGM SoCs, which is where the reset-intel-gw
driver was introduced. He's now with MaxLinear who took over Intel's
AnyWAN department (where the LGM SoCs were developed) in 2020.


Martin Blumenstingl (9):
  dt-bindings: phy: lantiq: xway-rcu-usb2-phy: Convert to YAML
  dt-bindings: reset: intel,rcu-gw: Allow up to three global reset items
  dt-bindings: reset: intel,rcu-gw: Update bindings for "legacy" SoCs
  dt-bindings: mips: lantiq: rcu: Remove binding documentation
  reset: intel: Allow enabling the driver on "LANTIQ" (MIPS) platforms
  reset: intel: Add and update compatible strings Lantiq SoCs
  reset: intel: Use syscon_node_to_regmap on legacy SoCs
  reset: lantiq: Remove driver as it has been replaced by reset-intel-gw
  mips: dts: lantiq: Update the RCU node to match the intel,rcu-gw
    binding

 .../devicetree/bindings/mips/lantiq/rcu.txt   |  69 ------
 .../phy/lantiq,xway-rcu-usb2-phy.yaml         |  68 ++++++
 .../bindings/phy/phy-lantiq-rcu-usb2.txt      |  40 ----
 .../bindings/reset/intel,rcu-gw.yaml          |  88 +++++++-
 arch/mips/boot/dts/lantiq/danube.dtsi         |  20 +-
 drivers/reset/Kconfig                         |  11 +-
 drivers/reset/Makefile                        |   1 -
 drivers/reset/reset-intel-gw.c                |  36 ++-
 drivers/reset/reset-lantiq.c                  | 210 ------------------
 9 files changed, 197 insertions(+), 346 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mips/lantiq/rcu.txt
 create mode 100644 Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
 delete mode 100644 drivers/reset/reset-lantiq.c

-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

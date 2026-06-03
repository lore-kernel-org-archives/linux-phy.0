Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B73CD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 05:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kJs85U/7HhpbbQ3R3vsHtk3r87MRH4gY8iMbFw/mcJs=; b=jwe3aZAQJIOTDv
	kkXTYH9W0HeEFyXfr56/rRm3YYkZ3McD8rwFL21pAUPGZUDCLtx2E0WAo6uZTqVJxuYTMnmkev4Rf
	8ayI0M/l/f/BK6OkneiR7hNZOaOh5ec52iWEBroG7f7llT4h4ABo+/dDrFg/zkzO6hnZzA/2HMIiT
	1C2IrY6skHHEpDrbEkeOAZA+eVmoqikgHa+FMnbwU6oX9lvBhBzxLIn4hEDs0umZ8p2Pdw8HnxHit
	1l6HBJqk40Abl0JsXzatMRwGAhcYUDnFqbnUyaQFxS9nHPKb1vlQEei87ZAPjfXxor/cofWs8HJyz
	lK1dhlfUdkaNzMbeEDKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeSn-0000000EJCK-1Xv9;
	Wed, 03 Jun 2026 05:48:25 +0000
Received: from outbound7.mail.transip.nl ([2a01:7c8:7c9:ca11:136:144:136:7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeSj-0000000EJAv-3SEo
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 05:48:24 +0000
Received: from submission13.mail.transip.nl (unknown [10.103.8.164])
	by outbound7.mail.transip.nl (Postfix) with ESMTP id 4gVcDp1z9GzQvvWR;
	Wed,  3 Jun 2026 07:48:10 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission13.mail.transip.nl (Postfix) with ESMTPA id 4gVcDn4x8wz3fCxJH;
	Wed,  3 Jun 2026 07:48:09 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH 0/2] phy: qcom: usb-hs: add qcom,vendor-init-seq for raw ULPI writes
Date: Wed,  3 Jun 2026 07:48:07 +0200
Message-ID: <20260603054809.565723-1-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission13.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780465689; h=from:subject:to:cc:date:
 mime-version; bh=hVZCz5sHTIIVILXMn76klOgPMKZ8yUMAhQN47edz0bs=;
 b=f1z0le/q/Dl/sOei+NLytTWe9CIPo3w5AbSbDbP2hjCuNosEx/vD2uQtFrr5g058Kw9x8k
 BgLR3DqQxu0GYFjMs1wpGKDul9Vh72h4wmrhCfRqU3jEfGwaqX58y6uhMelUi9ePqwWYyt
 KL+elTHEUe7Gq+2CFFvJAMkdZdV+rg4RJHDhWaMgvMtIxJBhAkXrQMBSmw+e2M72e/2HjA
 pLjjqSf4WeK10+4rEHvgWdGDRfcfW/awOyUm7s71g6CyfUxxMAlw//eJAmjJTniZLLnQhG
 eeq2F4GTea+sjuXwSgYP0jpVE9O1C2AO8sfeYToudrwMI9yFYuGG4oG1qOhCbw==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_224822_672097_465D1AE2 
X-CRM114-Status: UNSURE (   6.37  )
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

The qcom,usb-hs-phy driver already supports qcom,init-seq for
board-specific ULPI initialisation, but the address field in that
property is always offset by ULPI_EXT_VENDOR_SPECIFIC.  That makes
it impossible to reach the standard ULPI vendor register range
(0x30-0x3f) where MSM8x60-class hardware keeps pre-emphasis, HS
driver slope, and CDR auto-reset bits.

PATCH 1/2 adds the DT binding: an optional "qcom,vendor-init-seq"
property carrying raw (addr, val) u8 pairs with no implicit offset.

PATCH 2/2 adds the driver support.  The new sequence is applied AFTER
reset_control_reset() so the values survive the register restore the
reset performs.  While refactoring the shared parse logic into a
single helper, two pre-existing bugs in the qcom,init-seq path are
also fixed: an odd byte count would previously silently drop the
trailing half-pair, and there was no upper bound on the
devm_kmalloc_array() allocation driven by the DT value.

Herman van Hazendonk (2):
  dt-bindings: phy: qcom,usb-hs-phy: add qcom,vendor-init-seq
  phy: qcom: usb-hs: honour qcom,vendor-init-seq raw ULPI writes

 .../bindings/phy/qcom,usb-hs-phy.yaml         |  14 +++
 drivers/phy/qualcomm/phy-qcom-usb-hs.c        | 109 +++++++++++++++---
 2 files changed, 104 insertions(+), 19 deletions(-)


base-commit: 944125b4c454b58d2fe6e35f1087a932b2050dff
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

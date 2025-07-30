Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB411C87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZTKlcsIAZz3yXrk96anzC3DboF/LDOmmqaHa3NtHk+4=; b=vrtak3B0mPZQOq
	Pozzu4JYqCYuht4kyUJqofbdCLASUpDOjDCfy5gsUvI5KDK80HJ0Ljyu2p1qpArdC8ZYLo3ShEF7l
	mWzyLzRQvUIF8Vbtt15AzWS7smIUq6ESzTGfvq5lSZCHwu49Mu3oD4KbIjPjBeZVrWTGP2KWIoTCa
	/gfvMXopJ8hsvy4vED3KSb23EsukOGPOA6OZN+araDl+64kaKwAiBPIFhLe8WEz4okkLdV4ovl+1E
	5Sr2LsEf+PAGpBwN7TT0vi/EeAW4ltLPlg+6yhhQeZ1vklzaQO/ys0iPFF1VC1u/YQt8BGjGadvXP
	44in/WaAfUYZUl+guXhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5qy-00000001SPE-2RFL;
	Wed, 30 Jul 2025 12:24:16 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4xP-00000001Lbt-1F0c
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753874809;
	bh=6GGFgb4S5NIqjp5QkU0qshKhx7wbbR8XiFB3zVKbp7A=;
	h=From:To:Cc:Subject:Date:From;
	b=Moy6Z8GK87N5UAFY/hkKZ34QD87lY/cUKJqOHy/6uem3OYz2PtPNKP34Mk6KT47Ya
	 ygyVcthYaDCC51gsHScXgxQfQazNfiVncgSeEeZfMQqNWZsIj4GsGpf/84gXL1fS0g
	 S2CEIGqp0OPYJ15F+2aSH0bKKJH6cjdFRBN43hw9Y3R0g8x7VVd4hcA8ZL+2ZdT3IC
	 2/xjvnNtxPk1xLX0azjmcaovwkDYVz/hE5Jl+/lxEYnyXHG/b5hPjaqDFTOYV3+ooX
	 N9kTh/hadrpf3Xzpro/JtwYY3eejas62SwtLmddxAVpj9R+l2LQBxXNtcHkchW669D
	 fcuX4P3zJvmZA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5445C17E1284;
	Wed, 30 Jul 2025 13:26:48 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: sboyd@kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	sre@kernel.org,
	krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	wenst@chromium.org,
	casey.connolly@linaro.org
Subject: [PATCH v3 0/7] SPMI: Implement sub-devices and migrate drivers
Date: Wed, 30 Jul 2025 13:26:38 +0200
Message-ID: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_042651_482913_5FB9F862 
X-CRM114-Status: GOOD (  16.84  )
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

Changes in v3:
 - Fixed importing "SPMI" namespace in spmi-devres.c
 - Removed all instances of defensive programming, as pointed out by
   jic23 and Sebastian
 - Removed explicit casting as pointed out by jic23
 - Moved ida_free call to spmi_subdev_release() and simplified error
   handling in spmi_subdevice_alloc_and_add() as pointed out by jic23

Changes in v2:
 - Fixed missing `sparent` initialization in phy-qcom-eusb2-repeater
 - Changed val_bits to 8 in all Qualcomm drivers to ensure
   compatibility as suggested by Casey
 - Added struct device pointer in all conversion commits as suggested
   by Andy
 - Exported newly introduced functions with a new "SPMI" namespace
   and imported the same in all converted drivers as suggested by Andy
 - Added missing error checking for dev_set_name() call in spmi.c
   as suggested by Andy
 - Added comma to last entry of regmap_config as suggested by Andy

While adding support for newer MediaTek platforms, featuring complex
SPMI PMICs, I've seen that those SPMI-connected chips are internally
divided in various IP blocks, reachable in specific contiguous address
ranges... more or less like a MMIO, but over a slow SPMI bus instead.

I recalled that Qualcomm had something similar... and upon checking a
couple of devicetrees, yeah - indeed it's the same over there.

What I've seen then is a common pattern of reading the "reg" property
from devicetree in a struct member and then either
 A. Wrapping regmap_{read/write/etc}() calls in a function that adds
    the register base with "base + ..register", like it's done with
    writel()/readl() calls; or
 B. Doing the same as A. but without wrapper functions.

Even though that works just fine, in my opinion it's wrong.

The regmap API is way more complex than MMIO-only readl()/writel()
functions for multiple reasons (including supporting multiple busses
like SPMI, of course) - but everyone seemed to forget that regmap
can manage register base offsets transparently and automatically in
its API functions by simply adding a `reg_base` to the regmap_config
structure, which is used for initializing a `struct regmap`.

So, here we go: this series implements the software concept of an SPMI
Sub-Device (which, well, also reflects how Qualcomm and MediaTek's
actual hardware is laid out anyway).

               SPMI Controller
                     |                ______
                     |               /       Sub-Device 1
                     V              /
              SPMI Device (PMIC) ----------- Sub-Device 2
                                    \
                                     \______ Sub-Device 3

As per this implementation, an SPMI Sub-Device can be allocated/created
and added in any driver that implements a... well.. subdevice (!) with
an SPMI "main" device as its parent: this allows to create and finally
to correctly configure a regmap that is specific to the sub-device,
operating on its specific address range and reading, and writing, to
its registers with the regmap API taking care of adding the base address
of a sub-device's registers as per regmap API design.

All of the SPMI Sub-Devices are therefore added as children of the SPMI
Device (usually a PMIC), as communication depends on the PMIC's SPMI bus
to be available (and the PMIC to be up and running, of course).

Summarizing the dependency chain (which is obvious to whoever knows what
is going on with Qualcomm and/or MediaTek SPMI PMICs):
    "SPMI Sub-Device x...N" are children "SPMI Device"
    "SPMI Device" is a child of "SPMI Controller"

(that was just another way to say the same thing as the graph above anyway).

Along with the new SPMI Sub-Device registration functions, I have also
performed a conversion of some Qualcomm SPMI drivers and only where the
actual conversion was trivial.

I haven't included any conversion of more complex Qualcomm SPMI drivers
because I don't have the required bandwidth to do so (and besides, I think,
but haven't exactly verified, that some of those require SoCs that I don't
have for testing anyway).

AngeloGioacchino Del Regno (7):
  spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
  nvmem: qcom-spmi-sdam: Migrate to devm_spmi_subdevice_alloc_and_add()
  power: reset: qcom-pon: Migrate to devm_spmi_subdevice_alloc_and_add()
  phy: qualcomm: eusb2-repeater: Migrate to
    devm_spmi_subdevice_alloc_and_add()
  misc: qcom-coincell: Migrate to devm_spmi_subdevice_alloc_and_add()
  iio: adc: qcom-spmi-iadc: Migrate to
    devm_spmi_subdevice_alloc_and_add()
  iio: adc: qcom-spmi-iadc: Remove regmap R/W wrapper functions

 drivers/iio/adc/qcom-spmi-iadc.c              | 109 ++++++++----------
 drivers/misc/qcom-coincell.c                  |  38 ++++--
 drivers/nvmem/qcom-spmi-sdam.c                |  37 ++++--
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  51 +++++---
 drivers/power/reset/qcom-pon.c                |  34 ++++--
 drivers/spmi/spmi-devres.c                    |  24 ++++
 drivers/spmi/spmi.c                           |  79 +++++++++++++
 include/linux/spmi.h                          |  16 +++
 8 files changed, 278 insertions(+), 110 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA75D31A25
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iibCLHkmCKKI7oL4CsQ4y5CSpgSvPHOsKUKHbet+uB8=; b=rOrWeT05/zeQOu
	WnhwiRoJOnfzSJNNDo5UnZAwD4SF+vj7W+ticw9S29EWTkDrxg/eB8lHYxn4XugH2v5XtYyzYtH7H
	9UdNs+1eALEc2PQzfQPI0fJAc1cO9tRQJSpBQXbjLiLBDE9CKg20bX28SKEX0h/4hcg89v+Gul6xE
	7gy9UbyNARnqbtG46FipCi3wW4XWpsKTAoXkiX0/L9KdAt3rK+hwXstKT8SJPz44TWJuFSkns/Emj
	K+UQ/i/1bRRNSrQP38YkEwqItXFvXXUQAhTea4X5JDF1NkdIxuHePIl+5dq3fHbC4S5NlfxY2MKAu
	te5WZUpEmOrJKHWc53BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwQA-00000008NTj-3dZc;
	Wed, 14 Jan 2026 08:40:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwQ7-00000008NRi-1xL1
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768380001;
	bh=XOPRomrkW1UidtRogtGl8Yf0yPo/9nMUoZuf8g+eat0=;
	h=From:To:Cc:Subject:Date:From;
	b=JKwYavUZj4DpSs8oZP/7sZSyQgA6UQeITCFztExLIhIKWgjEPMKO4RhIvKKlNW+nL
	 i4urTrgaaXxosDpX8ZN/MvAMbUGu5ztCmaDwL6NAwjIISMAqLUuz4zQpYsY8MPHPim
	 VdU2a2gXB6DkFx9LqGCPbJSx5s2v+zJeg+vnsY2ishJjBN71+o4jQWmquXvVqB+CTi
	 dwaBPw0bQAyyI2ATRb5AWvR32LIS744tbsS3YGrXIPmCCA183FGLmZ5t5k3UOqCh9d
	 IMc6DpvzLK17wWMwiaqS3PU3H4CJ/DSrDGBIJH1TBo901jhmouolzbL8Or94zN+tMi
	 JZA5uA61jWY5w==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2E22117E0456;
	Wed, 14 Jan 2026 09:40:00 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
	sboyd@kernel.org,
	angelogioacchino.delregno@collabora.com,
	krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com,
	quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com,
	abelvesa@kernel.org,
	luca.weiss@fairphone.com,
	konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com,
	krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH RESEND v7 00/10] SPMI: Implement sub-devices and migrate drivers
Date: Wed, 14 Jan 2026 09:39:47 +0100
Message-ID: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_004003_686932_4B01CC02 
X-CRM114-Status: GOOD (  19.16  )
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

Changes in v7:
 - Added commit to cleanup redundant dev_name() in the pre-existing
   spmi_device_add() function
 - Added commit removing unneeded goto and improving spmi_device_add()
   readability by returning error in error path, and explicitly zero
   for success at the end.

Changes in v6:
 - Added commit to convert spmi.c to %pe error format and used
   %pe error format in spmi_subdevice code as wanted by Uwe Kleine-Konig

Changes in v5:
 - Changed dev_err to dev_err_probe in qcom-spmi-sdam (and done
   that even though I disagree - because I wanted this series to
   *exclusively* introduce the minimum required changes to
   migrate to the new API, but okay, whatever....!);
 - Added missing REGMAP dependency in Kconfig for qcom-spmi-sdam,
   phy-qcom-eusb2-repeater and qcom-coincell to resolve build
   issues when the already allowed COMPILE_TEST is enabled
   as pointed out by the test robot's randconfig builds.

Changes in v4:
 - Added selection of REGMAP_SPMI in Kconfig for qcom-coincell and
   for phy-qcom-eusb2-repeater to resolve undefined references when
   compiled with some randconfig

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

AngeloGioacchino Del Regno (10):
  spmi: Print error status with %pe format
  spmi: Remove redundant dev_name() print in spmi_device_add()
  spmi: Remove unneeded goto in spmi_device_add() error path
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
 drivers/misc/Kconfig                          |   2 +
 drivers/misc/qcom-coincell.c                  |  38 ++++--
 drivers/nvmem/Kconfig                         |   1 +
 drivers/nvmem/qcom-spmi-sdam.c                |  36 ++++--
 drivers/phy/qualcomm/Kconfig                  |   2 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  55 +++++----
 drivers/power/reset/qcom-pon.c                |  34 ++++--
 drivers/spmi/spmi-devres.c                    |  24 ++++
 drivers/spmi/spmi.c                           |  95 +++++++++++++--
 include/linux/spmi.h                          |  16 +++
 11 files changed, 290 insertions(+), 122 deletions(-)

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

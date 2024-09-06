Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95201CE7AA3
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 12:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BGMxtscRLTNQBD4UsPELdY36d/2lwZF0ijGBYqG0naU=; b=VICRDbVc3ywH2b
	1i4uwxkEaeyHvvn+PDeHiTKLlVXFpi5dxR3fJNxoAsvjAkWDi+WxU/iNQcJrV0qy5ZGZqft7N+JpS
	qqNeR040KkdzE0aEmrBteQkZwecdWX4k8OY18j7riv3Klvjn82fIhSIRrexZUrwSJsAFexwm543/J
	bHPuTDRnpn0jY3bgvUVDWC9Xy1F+pF+rubOGmrSUUh9If0VMYOuMHdWtvGGL3yoRDgcFWkQhP0Sui
	Cdgr25BJa7AeUlnUuTf0KzShZjb0RnDmH6zGk8DaJhA5bniNI46ruVU/nBBtXVlq+zAI47dGoGl2M
	NmDNy6psxD3CmjNbKe7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYTZ-0000000CF9o-15dU;
	Fri, 06 Sep 2024 12:54:09 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYSq-0000000CEtq-3SLz;
	Fri, 06 Sep 2024 12:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627204; x=1757163204;
  h=from:subject:date:message-id:mime-version:
   content-transfer-encoding:to:cc;
  bh=Fha+Z84HnDt/VNF2ZA9BN4tGKWB4DIwzvakdA71UDqY=;
  b=1q4NHCHJxDPTSzdeMlGnwVxuJhXY0KeBMxPdIodAlDOv35Y2jk2gFYYU
   awkyzOmUetkrhCvS+TubMMt/r67cWz/2WZ2CE8/syFl4Eh07m2BiWWoyT
   1AxfQ7d4cvotM+jRmWkFVk/X1lPpStOxsp1ZK6qI7zLTVozHZdRMViZDe
   cUxs8qJpwL1GuvpJtMRXP5W0U+QVaYFReaTEqK7UvAVp1Cw+lhTuOzXIB
   1VpwVhCAmwAUNRmNE6HOQzi5CpOQit5D7BDIWWWXGmp88yD/J4ZwFAm7S
   +VkBZublvrUfvdkwUoWcvVjKr4YmrL+vXm0FExhgQUz9IalpVHgkPRXsH
   g==;
X-CSE-ConnectionGUID: aks78ZCLRxOyTJZTZgJsDQ==
X-CSE-MsgGUID: eMbYjd8PQR2gWI+MhhVkPA==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="34534551"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:53:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:13 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:11 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Subject: [PATCH 0/9] phy: sparx5-serdes: add support for lan969x serdes
 driver
Date: Fri, 6 Sep 2024 14:52:37 +0200
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABX72mYC/x3MwQrCMAyA4VcZORuYdUrrq8gO6RJdQOtIYBTG3
 t3O43f4/w1cTMXh3m1gsqrrtzScTx1MM5WXoHIzhD4MfQwBfSGrV3xTSbdUseUsjmy6imG8xMS
 ZOVFM0BaLyVPrf/8YmzO5YDYq03xMP6QF9v0HueWURoUAAAA=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_055325_160542_8B7AA19F 
X-CRM114-Status: UNSURE (   9.73  )
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

The lan969x switch chip (upstreaming efforts beginning soon) has ten 10G
SERDES'es which share the same features and data rates as the Sparx5 10G
SERDES'es. Lets take advantage of this and reuse the existing SERDES
driver for lan969x.

In order to do this, we add a new indirection layer to the register
macros, that takes register differences into account. Additionally, we
add driver match data for other differences that we need to handle.
These other differences are handled by a combination of constants (eg.
the number of SERDES'es), ops and if's

Patch #1 adds support for match data.

Patch #2 adds a struct to handle constants and adds a constant for the
number of SERDES'es.

Patch #3 adds a constant for the number of CMU's

Patch #4 adds a struct for ops and adds a function for setting SERDES
type.

Patch #5 adds a function for getting the number of CMU's.

Patch #6 adds register macro indirection layer.

Patch #7 adds SERDES target types (eg. Sparx5, lan969x) to be used for
branching out based on the target.

Patch #8 adds support for lan969x in the Sparx5 dt-bindings.

Patch #9 introduces the new lan969x SERDES driver.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
Daniel Machon (9):
      phy: sparx5-serdes: add support for private match data
      phy: sparx5-serdes: add constants to match data
      phy: sparx5-serdes: add constant for the number of CMU's
      phy: sparx5-serdes: add ops to match data
      phy: sparx5-serdes: add function for getting the CMU index
      phy: sparx5-serdes: add indirection layer to register macros
      phy: sparx5-serdes: add support for branching on chip type
      dt-bindings: phy: sparx5: document lan969x in sparx5 dt-bindings
      phy: lan969x-serdes: add support for lan969x serdes driver

 .../bindings/phy/microchip,sparx5-serdes.yaml      |  18 +-
 drivers/phy/microchip/sparx5_serdes.c              | 195 +++++-
 drivers/phy/microchip/sparx5_serdes.h              |  44 +-
 drivers/phy/microchip/sparx5_serdes_regs.h         | 746 ++++++++++++++-------
 4 files changed, 706 insertions(+), 297 deletions(-)
---
base-commit: 221f9cce949ac8042f65b71ed1fde13b99073256
change-id: 20240822-sparx5-lan969x-serdes-driver-8389dbdd9a89

Best regards,
-- 
Daniel Machon <daniel.machon@microchip.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

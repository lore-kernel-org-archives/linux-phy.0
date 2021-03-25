Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D02C433DB
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:40:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58EE561A28
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:40:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58EE561A28
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AtGhh83JND2AfhLvog7s4JdIi2+DUU5dDwbcFPnNa44=; b=NHyQpE4SjCKSIsuRqKknsz4wx4
	/ZMBrEfRELayyo0Iy3Ir77jakRPXu1rtdeOgt0QBSorlEoC0ZieKzsan0FpbC0pcWeRbU5w785xAz
	TdSS24u2qCCqglb54mcmw+mugdzHUVrO0l3Zt4QFIb7sXJUKZnCpdZQOX5a8/Q0VfQXi5Q56Lf60N
	vCD1vYQrs/KMKxoMJkksELdg780f6Gtb5sP4teKjSxSmVhw61QM9OfnZAGIWWMciWw9dm9OrcCDJ0
	BXF5S7rpUwPbi74iffugFBwvNioF5kZKUk3HvTgMpwbPcS56lGeCRJQ+ltJU+H9+C9YgVhPAsw29a
	a4HfhYCA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2O-001qJ0-Cu; Thu, 25 Mar 2021 16:40:48 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2L-001qIa-4j
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:40:47 +0000
Received: by mail-wr1-x42e.google.com with SMTP id k8so2968012wrc.3
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YFSqMATttwvnEjox5mDDMXVQmf/3aquCS0HIVj6Hd8M=;
 b=YJYg7GzEy6eYG0tQt7jGwsFchmsnf+97rlxrBtGJo/3ExZbGd93Qn6m6O4xAQvLpX3
 RJ/ug1TZL1JKn800jH8/OEwrJY1MaFG5AeduhnhIX7cpdM6fXqKvuB/QEDuWn0bO8Emj
 uqMBThTbqNaTkIdeEVrl8MFgvA29dFGTvwhDexbS3ySlA3Ws3a54Oq7Wmz51kPPcLpZ3
 NstEO4Ke3y4i+Hdzjh5whcWiGVb7nLnPzeLm8fXhqI2cIBiMUjfGZK/mJN4bDFrScO+H
 +kYEX53eTiF3Ir3t60zj1vDsMJhUXDVmzhbs4BCBwlO/XWRgJ7Ua3m1k1JvZ4XXkPfFG
 1PVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YFSqMATttwvnEjox5mDDMXVQmf/3aquCS0HIVj6Hd8M=;
 b=cBt/X2DOwQymLEQH+fTFhFxgz867CGpRhqmi0eZDhPwBdVaQmjinEgNqdwMvmGJ/yy
 oCryer969Ft9zyvAkW617j1KVHG1H0D0Ny1+bV/BHXyim7pfmG0xmmarCgV1f8fixnaX
 Qn3whFMZL7kYSOcwb6yqCAelakdhSfB7vRuZrtRJ4Hf3pD0fbpGhms/RnkgVtFALaYCR
 bBCx2xm44IXK5W8XExPHgVt1w0nLAXoIAB7ry+aDtefG+OqD5Dgxaqufw8Te7UrzKERM
 Lp/39ntIf2dwRayw3NEXWWpbLDmeS34/L8HDF5sdRWhE3jh2Fh5nChRl7buUjLTMHzut
 qp5A==
X-Gm-Message-State: AOAM532PVWPeRgZxZ7XC0LSCPqdlOp1CdLYGwjQqskHZo6GUfrIgX2pn
 6bsTtXZ5SZi0S0Vea9lXL34=
X-Google-Smtp-Source: ABdhPJzbSHaK3fx6FuRZT8GUnvbbhA34wtR5k7r/LDHoXqVWAj0QJPFzW+EAA/qkswAowOlV2ORN1Q==
X-Received: by 2002:adf:d1cd:: with SMTP id b13mr9944791wrd.47.1616690444397; 
 Thu, 25 Mar 2021 09:40:44 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id 91sm8415188wrl.20.2021.03.25.09.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:40:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v8 00/13] Tegra XHCI controller ELPG support
Date: Thu, 25 Mar 2021 17:40:44 +0100
Message-Id: <20210325164057.793954-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164045_362474_F8F8BAE8 
X-CRM114-Status: GOOD (  12.49  )
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

From: Thierry Reding <treding@nvidia.com>

Tegra XHCI controler can be placed in ELPG (Engine Level PowerGated)
state for power saving when all of the connected USB devices are in
suspended state. This patch series includes clk, phy and pmc changes
that are required for properly place controller in ELPG and bring
controller out of ELPG.

I've rebased this on v5.12-rc2 and fixed two minor issues that
checkpatch had pointed out. One of the patches compared to v7 was
already merged into v5.12, so that rebased out.

Greg, you had previously indicated[0] that you'd be willing for me to
take the USB patches through the Tegra tree to resolve the complicated
dependencies within this series, but I don't think you ever gave a
formal Acked-by. Should I take your comments to be equivalent and just
add them to the USB patches?

Vinod, as discussed earlier, please take a look and provide an Acked-by
if you're okay with me taking this through the Tegra tree for v5.13.

Thanks,
Thierry

[0]: https://lore.kernel.org/linux-tegra/YB1wxazg%2FQpRSJz6@kroah.com/

JC Kuo (13):
  clk: tegra: Add PLLE HW power sequencer control
  clk: tegra: Don't enable PLLE HW sequencer at init
  phy: tegra: xusb: Move usb3 port init for Tegra210
  phy: tegra: xusb: Rearrange UPHY init on Tegra210
  phy: tegra: xusb: Add Tegra210 lane_iddq operation
  phy: tegra: xusb: Add sleepwalk and suspend/resume
  soc/tegra: pmc: Provide USB sleepwalk register map
  dt-bindings: phy: tegra-xusb: Add nvidia,pmc prop
  phy: tegra: xusb: Add wake/sleepwalk for Tegra210
  phy: tegra: xusb: Tegra210 host mode VBUS control
  phy: tegra: xusb: Add wake/sleepwalk for Tegra186
  usb: host: xhci-tegra: Unlink power domain devices
  xhci: tegra: Enable ELPG for runtime/system PM

 .../phy/nvidia,tegra124-xusb-padctl.txt       |    1 +
 drivers/clk/tegra/clk-pll.c                   |   12 -
 drivers/clk/tegra/clk-tegra210.c              |   53 +-
 drivers/phy/tegra/xusb-tegra186.c             |  558 +++++-
 drivers/phy/tegra/xusb-tegra210.c             | 1553 ++++++++++++++---
 drivers/phy/tegra/xusb.c                      |   92 +-
 drivers/phy/tegra/xusb.h                      |   22 +-
 drivers/soc/tegra/pmc.c                       |   94 +
 drivers/usb/host/xhci-tegra.c                 |  613 +++++--
 include/linux/clk/tegra.h                     |    4 +-
 include/linux/phy/tegra/xusb.h                |   10 +-
 11 files changed, 2615 insertions(+), 397 deletions(-)

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

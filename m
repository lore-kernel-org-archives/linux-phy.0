Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD762D2F033
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 15:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5wKVajvCtxFBeEwqKq5wF1xdkdMhvhXXxbHvPB9J+YE=; b=0IKdGZfiPLlMrb
	Rx9ygKcu8dF8telNvaRae1orkN+xecf53ATV/9RAJKaLRw2IP3kc3IOx0a8mHP9TuBADL7WZ3mfp8
	HBfMAyz2zVgtVIWwcmpm+z3B4F1azgt1aIisvlQbgq00hEuUABeiI9vJWM0Zi8jIFImF2moFgDOuO
	DdyjgxuKQ3CFMntrKzsQtU5ynQabpWXMCgcV8P7Z7rDhP4xR3mAdO3hhopEJB/ougNccNhsrR+rUo
	LRs3F/2JqNQ1Aeyu79mtylJQFQwrMp94lmhuYbGywfSPrWzVC7H5/RE2CXMdoF6GfJHlDI+3/YmyY
	U1LDenkGVItkPYBfaovQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkk7-0000000EVlx-2Ifp;
	Tue, 27 Jan 2026 15:12:35 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkk3-0000000EVh3-2Wje
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 15:12:34 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id B6EBB60020E1;
	Tue, 27 Jan 2026 15:12:11 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id 5itpaajWBzqb; Tue, 27 Jan 2026 15:12:09 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 0CD1560022F6;
	Tue, 27 Jan 2026 15:12:08 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1769526728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JNRbm588iHwZF1GxdMteQr8E3PEwbL6XNXp5vje3+7g=;
	b=VZw7wMzFh65Q/cPZxUF7cvpWg9/0YWNg+8wazANDXB+D2BggUp6u0GrRSzvXl0/8IBQ5hl
	e7SNMl/bxWF0qH4vadx6JIk9XsLnKeWo8eu22cVFBLYjJspDBpKWxGnN61ub/lbGkSrZVF
	/RKHItx0dXfifjDeTj6Scd+r6ixa+iJsKYSJ5W2nnvNNLFkX5paL8SyYtCw9A8GUkeWtAF
	HCEXyYb3H0HJE8XXMMfyMbSKKmAeUtY31hhrASttbZZFwTpDRB9/5BoPxuWSx0iEldinkL
	1FJY+3bBCfxrxeSMuvA+3GfjBo81jkfmJasWb7NBYR7p2ykdvwrE8rJwIKQEjg==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 1DB273600A6;
	Tue, 27 Jan 2026 15:12:06 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Subject: [PATCH v2 0/6] Fixes to Tegra USB role switching and phy handling
Date: Tue, 27 Jan 2026 15:11:46 +0000
Message-Id: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2WNwQrCMBAFf6Xs2ZQk2qZ68j+kSJquyYI0JYnFU
 vLvxoInj/PgzWwQMRBGuFQbBFwokp8KyEMFxunJIqOxMEguGyG5YCN561lCG/R9divrWtOdjR7
 UUSkorzngg9678dYXdhSTD+seWMR3/blOf65FMM4aoUunHfmA3TWhmcj4+vWkOHhdzwn6nPMH+
 CEtercAAAA=
X-Change-ID: 20251201-diogo-tegra_phy-86c89cab7377
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769526725; l=2265;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=PZoMFREOKYb5A2RBb3T/kOEVl2HYfvqsepMW8enuzrU=;
 b=D8MsCp26CqE8ASu3nLdiC1jufNdbt6L1Lp4OgiaNsEVhs6wqPOft+KGYsKf+Yjp1lYoVYNDgS
 9jzgwMt7t3TDJ+ZE4kXwu+C47Ue/5WIzm5kIWgv16o6n0OskPIs6R2L
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_071232_633194_FE8ADA0B 
X-CRM114-Status: GOOD (  10.43  )
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

This patch series contains fixes/improvements for USB role switching on the
Tegra210 and Tegra186 SoCs.

The first patch addresses a wrong check on the logic that disables the
VBUS regulator.

The second patch removes a redundant mutex lock when setting the PHY
mode.

The third patch guarantees proper ordering of events when switching PHY
roles.

The remaining patches are included to standardize the PHY .set_mode()
callback between Tegra186 and Tegra210.

With this patch series this feature can only be controlled from userspace,
by writing the desired role to sysfs as

echo "role" > /sys/class/usb_role/usb2-0-role-switch/role

with role being one of {device, host, none}.

Further patches will enable automatic role switching via the 'cros_ec_typec'
driver which is currently broken on Smaug.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
Changes in v2:
- Remove DT patches already taken to be upstreamed
- Add standardization between Tegra210 and Tegra186
- Address review comments from v1, detailed descriptions in each patch
- Link to v1: https://lore.kernel.org/r/20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt

---
Diogo Ivo (6):
      phy: tegra: xusb: Fix USB2 port regulator disable logic
      usb: xhci: tegra: Remove redundant mutex when setting phy mode
      phy: tegra: xusb: Fix ordering issue when switching roles on USB2 ports
      phy: tegra: xusb: Add ID override support to padctl
      phy: tegra: xusb: Move .set_mode() to a shared location
      phy: tegra: xusb: Move T186 .set_mode() to common implementation

 drivers/phy/tegra/xusb-tegra186.c   | 73 +++++----------------------------
 drivers/phy/tegra/xusb-tegra210.c   | 42 +------------------
 drivers/phy/tegra/xusb.c            | 80 +++++++++++++++++++++++++++++++++++++
 drivers/phy/tegra/xusb.h            |  4 ++
 drivers/usb/gadget/udc/tegra-xudc.c |  4 ++
 drivers/usb/host/xhci-tegra.c       | 14 ++++---
 include/linux/phy/tegra/xusb.h      |  3 ++
 7 files changed, 111 insertions(+), 109 deletions(-)
---
base-commit: b02a5530af8abe0d3cd4852ba48990716e962934
change-id: 20251201-diogo-tegra_phy-86c89cab7377

Best regards,
-- 
Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

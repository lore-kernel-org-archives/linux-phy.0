Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6DB1CCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/oNUHtL3lkOTKLdm+C49x5eNvyD9z6Zf7ok0doN25jk=; b=meFaGnhRYH+DWo
	/gkq0h1KopTsBQw6o96S5/8tFJoN0zd9+WJAUz4KpMpHE8QCL9v5n2Vr1P8Ze21lLf84uGbwfj5PZ
	an7woTHsRKRLV/IbGrD1Uox0JMde1/0paaJ7oFer51eOFefq2zlcKwdpgGcJAr/VyZgGQ6rED7w+P
	fX0MipKYi6VMsu5uAjjzk7LSJogL4txLOclASLG4fgPTeOKIUgBYG+YX6VXivNzXrhVzLhFo/5mOc
	Tng/XP93A4OjNtptlLV3r0ex/fn0NzU5CAkJcoW+MdjXk91d14jGKy6vq3MnEx4WHNBq05mJ+oJT9
	KWPc1n15NztmIBQN9NNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOTN-00000003oHh-1piY
	for linux-phy@archiver.kernel.org;
	Thu, 30 Oct 2025 08:57:33 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOTK-00000003oGt-3C55
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 08:57:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761814651; x=1793350651;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Ux7Un8JsfcaMErqx2EFkr3IcsMGkW80ic7GNusJRyp8=;
  b=HQAbk+0ustl14vRjhnmgyMOlgdXkG+79aQNvE4XFtf1ITfWZ7OTzxgpJ
   yauwpqrpLQ/sgkj2CV4D0skEuxx2QS66y6JKOHPikP78JIcpOiVgRuHf9
   rSfS+FMZBn1k85A/dlp7Pdk1TMD001xorOci4ckDEJ8A50BchaLHn/MQU
   zMNlPHzVFsLyZ7c2q/rzGrH4igSRD+tE1WiCVnEtU1/o8qAWu+ZMWtZB9
   RrFhJ2DWyOymfSYVl8QC1eQU5ZVtlpH8IBLGE1v1p/YBISy0Mjoh5LMBY
   J1lPY/x4Vex2+631r1K07A2CODHGj3gTqx8FOKdKZCnhEMX2JdQ3GMZS7
   g==;
X-CSE-ConnectionGUID: mWSL8PEWTuS1jfWh4RHK3Q==
X-CSE-MsgGUID: tyV1o4HbTzO60DPkd47gJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="81577826"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; 
   d="scan'208";a="81577826"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2025 01:57:30 -0700
X-CSE-ConnectionGUID: 9zJffJcUT9a/NzOOnZysSw==
X-CSE-MsgGUID: Pu2LX2xrS7an1fmDjskt9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; 
   d="scan'208";a="185778312"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.245.176])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2025 01:57:28 -0700
Received: from punajuuri.localdomain (unknown [192.168.240.130])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 232F1121E1E;
	Thu, 30 Oct 2025 10:57:25 +0200 (EET)
Received: from sailus by punajuuri.localdomain with local (Exim 4.98.2)
	(envelope-from <sakari.ailus@linux.intel.com>)
	id 1vEOTF-00000007wT9-0LpV;
	Thu, 30 Oct 2025 10:57:25 +0200
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RESEND 1/2] phy: motorola: phy-mapphone-mdm6600: Remove redundant pm_runtime_mark_last_busy() calls
Date: Thu, 30 Oct 2025 10:57:24 +0200
Message-ID: <20251030085725.1893039-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_015730_848028_BD982C02 
X-CRM114-Status: UNSURE (   8.81  )
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

pm_runtime_put_autosuspend(), pm_runtime_put_sync_autosuspend(),
pm_runtime_autosuspend() and pm_request_autosuspend() now include a call
to pm_runtime_mark_last_busy(). Remove the now-reduntant explicit call to
pm_runtime_mark_last_busy().

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index fd0e0cd1c1cf..c82826bd2832 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -248,7 +248,6 @@ static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
 	}
 
 	/* Just wake-up and kick the autosuspend timer */
-	pm_runtime_mark_last_busy(ddata->dev);
 	pm_runtime_put_autosuspend(ddata->dev);
 
 	return IRQ_HANDLED;
@@ -616,7 +615,6 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 		error = PTR_ERR(ddata->phy_provider);
 
 idle:
-	pm_runtime_mark_last_busy(ddata->dev);
 	pm_runtime_put_autosuspend(ddata->dev);
 
 cleanup:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

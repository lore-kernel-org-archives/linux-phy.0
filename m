Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9070C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDK0Vt3GNm/UIPqNa0GLik/DcGOmm1bhh0sKytqX/kE=; b=BPEOkDiys3IGQl
	+BqGG9RcjZnenDQkYQCbx573gOA8T6+aOkhxcykqBs4ZH62vRdrRztN5PDPfUkY7Li5nzVv51F4N6
	ICiYa0Z8TsCU+dUhmI5wD/W3P1zi2Pdg2i5ugG6dZkEj4tCXilyVEB7G9B/jFehoeHFIxUuCSrrLy
	fkPVFUsuHRyOUZO+hP8KaH0nudh4/9U/w68TekdjWwKL7JqFuzWD8CYp03u2IUWXuxP3syb8wfGkR
	xI7mirO/oevqPz0zbTR9EF6KI4QxDXQ2vU2Df9OnoG8+nRTMuI4IfVjQ/kac6W6aEFi5BPpgFRGtl
	c0bdWeayNOH/vUAgTTxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lh-00000008CuG-2atG;
	Thu, 24 Jul 2025 18:34:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCe-48lP
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 734355C687F;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E97AC19421;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372125;
	bh=9Q+iZVtWBfA2bYZ+f4emA/nzcDWJtC1QHC9/liytT0M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=POlIE0BnBzLsFNGB07J4mjstFnAd6d0LngUzh2BgqCNnXU9L3GcWMcyeFfk2fpknI
	 O+Z7m2DJ1KLj76NJuiBLF+HoEc3twNDtdYoBAY5A3Qy/DrT0qc8geA6vvYCWEYzL0w
	 gtZJLNwXadQNa9p79tZ/WZflFhpBL2l0xGO7E4L8fORJr1Wsw2zvaSla137vy5NhaL
	 Oc2FcxzEy4SdPqFtsu2LWQSaUAMzsbaWLDS7diX4Dhk9lT62wqnea/Lxee7cQoP7f7
	 ZKGDXygbIEQjZOo3Yk/K7bBVEzSjgXzSsYTU9Q363jMaky2yrfPG/el7LlaiiN0FK1
	 BgoHMR7EtA4bg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBV-000000004BI-02kz;
	Thu, 24 Jul 2025 17:48:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 09/11] phy: ti: ti-pipe3: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:21 +0200
Message-ID: <20250724154823.15998-10-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084846_098881_3AAE954A 
X-CRM114-Status: UNSURE (   8.84  )
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

Since commit 918ee0d21ba4 ("usb: phy: omap-usb3: Don't use
omap_get_control_dev()") the driver only supports OF probe so drop the
unused platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-ti-pipe3.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index ae764d6524c9..b5543b5c674c 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -942,7 +942,6 @@ static struct platform_driver ti_pipe3_driver = {
 
 module_platform_driver(ti_pipe3_driver);
 
-MODULE_ALIAS("platform:ti_pipe3");
 MODULE_AUTHOR("Texas Instruments Inc.");
 MODULE_DESCRIPTION("TI PIPE3 phy driver");
 MODULE_LICENSE("GPL v2");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

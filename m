Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F25B9CF9C7B
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5hvtrUKC2GcEvVaMvYj3daXSCkZ3nPcRIaD6DF+sTlQ=; b=4rmxy5MRGhQZQy
	bE/MXM/7Cwx5OgafdIbxo7NJmL2S8sE0wMqLwCc0PSyaV3PTuXHH5rMJsMc/h5savvBLpiaYNaN4m
	bE9Bjk3MkG+vusQUjOIcUdoG//lT0fuhS5iKVNyuydqa+SP3jzSbWarzLoXKCqsGEf8GFaNLo6k9V
	DNeeF7vWpfxZZ9EFcaG/1ljBp37AVNiEC3V62fnJf1XRSs7ZgA9EeW2DVJqTR843NR/EErSiZrI4L
	cXpeRz5VdGsLmgIaMZApQ/Txx6On7r5xkWKiWfZT8bzd5pzX7qq1Nvzvr8C9Nq6IkCqYgw+2CpRJi
	9wJzk1uNtudpX4Tcdgew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8sr-00000007BaC-1o6Z;
	Thu, 20 Nov 2025 17:55:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8sm-00000007BZd-2Dwc
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:55:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F11114059E;
	Thu, 20 Nov 2025 17:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59BE7C4CEF1;
	Thu, 20 Nov 2025 17:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763661346;
	bh=paSlu2YFodDa1zPYVbZafJlHm3OtoSYz0iX4d6lttcA=;
	h=From:To:Cc:Subject:Date:From;
	b=PN2fvNa7v2ZDzs8jf6QjSnq15osXgJC+/Tv9k5MptfByTuBr/QKz8TkDKuv4zduvO
	 izJEHy/pDbFcPOzTEjM+XL20bok+MtO+Gag3lGUTv3TG2MwsdrhnKGmRHL8C+G+Im6
	 qjZqK2JJP5auEn7R/SK6v2GUX7kJpmqthkQunfjgQ2FfBoZhUedWmQ8fXrBtVCCX5K
	 DLpp1dApI8taoaB+Cv+duevNeAuSqi7si2rSbkaRS7W0zf8DWdQOWQZl55rE/Vd5d2
	 yxZ4qfKuvhpNwbQMTloQPiYhnvAtz+GSVBKn8CK3OCRQ6O/jxPlYRa3ll9iXRRdIvS
	 MADIxuO6m6QUA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Kishon Vijay Abraham I <kvijayab@amd.com>
Subject: [PATCH] MAINTAINERS: phy: Move Kishon Vijay Abraham I to credits
Date: Thu, 20 Nov 2025 18:55:38 +0100
Message-ID: <20251120175537.171340-2-krzk@kernel.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_095549_271895_1EF2BBB5 
X-CRM114-Status: UNSURE (   9.24  )
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

There wasn't much of reviewing activity from Kishon of PHY subsystem
during last few years [1] and last maintainer commit is from 2020, so
move Kishon to Credits to indicate that PHY subsystem has only one
active maintainer.  Thank you Kishon for working on the PHY subsystem
and for all the maintenance effort.

Link: https://lore.kernel.org/all/?q=f%3A%22Kishon+Vijay+Abraham+I%22 [1]
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Kishon Vijay Abraham I <kvijayab@amd.com>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 CREDITS     | 4 ++++
 MAINTAINERS | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/CREDITS b/CREDITS
index 85bdc8828734..b735b8c58102 100644
--- a/CREDITS
+++ b/CREDITS
@@ -16,6 +16,10 @@ D: One of assisting postmasters for vger.kernel.org's lists
 S: (ask for current address)
 S: Finland
 
+N: Kishon Vijay Abraham I
+E: kishon@kernel.org
+D: Generic Phy Framework
+
 N: Thomas Abraham
 E: thomas.ab@samsung.com
 D: Samsung pin controller driver
diff --git a/MAINTAINERS b/MAINTAINERS
index 41ded579750c..f92ad7705245 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10498,7 +10498,6 @@ F:	include/uapi/asm-generic/
 
 GENERIC PHY FRAMEWORK
 M:	Vinod Koul <vkoul@kernel.org>
-M:	Kishon Vijay Abraham I <kishon@kernel.org>
 L:	linux-phy@lists.infradead.org
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-phy/list/
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

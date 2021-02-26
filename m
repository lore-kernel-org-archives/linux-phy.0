Return-Path: <SRS0=xen9=H4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-22.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49652C433E0
	for <linux-phy@archiver.kernel.org>; Fri, 26 Feb 2021 11:12:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D804564EF3
	for <linux-phy@archiver.kernel.org>; Fri, 26 Feb 2021 11:12:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D804564EF3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ag0vTTAkfICD+rA02d06JdQFTYy33PIiXpqr707vweE=; b=cVDwt3vteEs2hesCDFh7f1aFHB
	eiIdEGgMonnL/ipb/w7YBH/eFfuAUvX6btavOYevD3yMn/3N5rHTTNK3m2OAb1F2zuU1qGoE5GiZA
	Qnko2yOAvx94a2drc9/Y/z2yniWqOdtG0r8IFVoT8s80ZsMfjCGUjDj9Zfa6D3rngjiPmzauCshy0
	5aZDuUkSFk5y/HZCMvCbXSdqoFO1Vb4S4IPc3sodVIRRhbak3HqiWSOEWmqZjJ7HUd4JMkwwJOJmH
	sWcdxTKBlOYaM5Jet3ZvkSDJSd0xBqZu/jGEAwOT3+7Tv0kPeRd1YwzcUH1aPxjzGQR1z+p0ccgDD
	U7eYjSGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFb3E-0007e9-4s; Fri, 26 Feb 2021 11:12:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFb3C-0007dj-9K
 for linux-phy@lists.infradead.org; Fri, 26 Feb 2021 11:12:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2C2C164DDA;
 Fri, 26 Feb 2021 11:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614337968;
 bh=yI1EWY46ibA8KnKsAOavYvHFytGyojJsQ8TnGh70IZ8=;
 h=From:To:Cc:Subject:Date:From;
 b=nKAVaOKkzVtc0ccyAOC2I0u4Bg6/vNk6/u2p/PvIZCrvez7uusl4vDwqWO+5G5hgd
 RKg382v+3A1A1jCdfP4LoN9ftijqORLL2IuGwlBQ4xiCM9XzmDgSwsh5BDD2S4lPEk
 N1JZMfRIDYJix8CYbAfcsnEsKuR9aa1e3Z/vFUVWq2YY1H/ER7UktfQBOYBOmOf5B+
 GIooaXk84gwAK8zZlGDPmN0zsDnABWfz8AvZDGbIMFiFIPCcKwGrcpGKr+Z65PmtyI
 cz2BTziIgUSTg74qJl3rCdZJjgkYVlf0Yk/q7O1mL+1EK/5FGLbIXWXqBXcFClS1yY
 kparzeAfJ3F+g==
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [PATCH] MAINTAINERS: Add linux-phy list and patchwork
Date: Fri, 26 Feb 2021 16:42:33 +0530
Message-Id: <20210226111233.2601369-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_061250_417418_DD367695 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: linux-phy@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Linux-phy subsystem gained mailing list and a patchwork instance. Add the
details to MAINTAINERS file

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---

Greg, Linus: Can we merge this patch for -rc1?

 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 546aa66428c9..d53754790d38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7448,8 +7448,9 @@ F:	include/uapi/asm-generic/
 GENERIC PHY FRAMEWORK
 M:	Kishon Vijay Abraham I <kishon@ti.com>
 M:	Vinod Koul <vkoul@kernel.org>
-L:	linux-kernel@vger.kernel.org
+L:	linux-phy@lists.infradead.org
 S:	Supported
+Q:	https://patchwork.kernel.org/project/linux-phy/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git
 F:	Documentation/devicetree/bindings/phy/
 F:	drivers/phy/
-- 
2.26.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

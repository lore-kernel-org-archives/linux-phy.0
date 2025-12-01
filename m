Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E73FD111A8
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 08:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AUGg8hf1t4hYJ5AYFTSaEN8S/FylhZq5LTxnaz4f82U=; b=wdMMZR4HkCo/ot
	LufFwyUTdD2CAdkp6SFdmhZkM+YTNL+YV7ma7WZSwz9bCB3OvmsUbBQsBP0FIZ0pnuw7fz/zwpfX/
	9R8UDU7bBdLPJ1O5+3fXD8BCW6xJ0pDn77bQNFCMiCz7Gav0aylUPxLdHTykURmRvZfxgrLjl36o9
	49hH4522AV7C2ijGfnkEm42FbHVLjqfDJKNLHqR+E+ljfAorSd2C8yeCRTvyYvCM9cehpDI8EdQg9
	OdW2eA4NyWfBKbdP0nrhoqdydbxKHDj5GizxjC6tJqFZjg96WmoNmvPgTEl2gYW6CFezPvjy5bycc
	/xC9BI/EFiZc0jDXKsQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzYr-0000000398i-0TX6;
	Mon, 01 Dec 2025 08:47:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzYo-0000000398N-3xvY
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 08:47:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 54FD2401F7;
	Mon,  1 Dec 2025 08:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE20C4CEF1;
	Mon,  1 Dec 2025 08:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764578826;
	bh=f4+jkXJU6rcJDKvmlSMYM2k9Vy1mDHk1p7eqOle+0DQ=;
	h=From:To:Cc:Subject:Date:From;
	b=a1fp41rh1uwT1P1ygp1ntZzzxrFsXbwvLAN6mY5zgdhq1mro+pCa/mhLWBqjHDYXd
	 UZbj5jHl+hmQuhiJqhDmLlEepeqbnnpqk4d0U1uekBC7xfbxL75bnbriC/hYa8EBFE
	 PDfBoywU4+WtBE+HdToSJvlNR6cReyc57Hs8QeUSpxLppBE/SQrtzieiMiwk5aGTnZ
	 4qLlSCFm2avu+jK7mJ3K3QPm8VDCC6Pqzc0iZh9DGGTILN765SBhi3BTTR4hWPKNbC
	 IQdAmEMCtf9ZNDXzVKd1kwmRsomzX9uIY4+8/2ob5p3y8VcmgleNTFipQUNGPPzEOM
	 G8wJJr1kZhECA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH] MAINTAINERS: phy: Add Neil Armstrong as reviewers for phy subsystem
Date: Mon,  1 Dec 2025 14:16:50 +0530
Message-ID: <20251201084652.422057-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004707_022279_36E81087 
X-CRM114-Status: UNSURE (   5.99  )
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

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 400523d03e14..233b6d56e45b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10439,6 +10439,7 @@ F:	include/uapi/asm-generic/
 
 GENERIC PHY FRAMEWORK
 M:	Vinod Koul <vkoul@kernel.org>
+R:	Neil Armstrong <neil.armstrong@linaro.org>
 L:	linux-phy@lists.infradead.org
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-phy/list/
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

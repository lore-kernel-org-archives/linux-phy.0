Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A70CC369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQewUslNDCApHcP9LTLX/PTYDlPjThcAyV2KwZ3rCUs=; b=FCDBGX/5EcLLK2
	3oFYsq6RW3h5Y5lYUuWLctuxXSR4Xv0mYAUoUlfQAhtInP6jX49Ktf+0YEcYk2jBTfUUcfiFp0Zp2
	0HH2Dvs9XTN5PGIp1wXMLeOsHi5abyyRyEX1uAFNa0i3WIdtNt+Iw2GPwMP9X3bodqboFjIs037HS
	9nDdF7KBJi7MBxZk803s+/lKmertvYxW7k1Pg08JBfwgd32bVa3NNF2W22hF5pNa977bBQ1kdBesK
	avNzcioVNOqRhWdph01xYnYGqID+O2Dvd3OMEUFxdJMr9IHTb4NJcUkpmJlfuTYRfRFL5yERlSc4j
	JQjeDmIcxd3WE6s17d8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IUg-00000001rkF-1Wlf;
	Mon, 14 Apr 2025 12:00:54 +0000
Received: from p-west1-cluster2-host8-snip4-10.eps.apple.com ([57.103.64.211] helo=outbound.pv.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IJb-00000001pg0-1dKH
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=b2KIEz2420Bb2pMgV6oZ8yidp4SHbkJXc5kwpa6Ezmw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:x-icloud-hme;
	b=A0hu0MCRBezRYXjEjMRXpk6MkNwm/G0Z5AU+nywzb8WE65tPyVpyjtnQN0VWyJXFd
	 B8QXhSKtVE9aAUAIqxqOFhJz0S70oSST9qlxUJ4MsfjOfHBrDm99ySDzzTwvdguBN0
	 1+eWmtjh80LLLlhaorTNI/VplrlwJejPJ/9eVbYO/9dweMtz5mTVaDlznVdpVrouVH
	 UG/7EtFg4tdsKM/zjBgmehShjNIsX7xvnFez8WDuG15MpJupu6/Sb/esw56KB2vePp
	 BnAbFwjdX/E8BZESB8dTwP9tyAq/+H1s2lvoxHhHgTzoMKWEiMqC4mtF/Tbq7nnR3V
	 8NS8UqrmvrWHg==
Received: from outbound.pv.icloud.com (localhost [127.0.0.1])
	by outbound.pv.icloud.com (Postfix) with ESMTPS id 785D218002B3;
	Mon, 14 Apr 2025 11:49:19 +0000 (UTC)
Received: from [192.168.1.26] (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by outbound.pv.icloud.com (Postfix) with ESMTPSA id 32D141800282;
	Mon, 14 Apr 2025 11:49:17 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH RESEND 0/2] phy: core: Remove 2 APIs
Date: Mon, 14 Apr 2025 19:49:03 +0800
Message-Id: <20250414-remove-apis-v1-0-6fddc9a5a16d@quicinc.com>
MIME-Version: 1.0
To: Jonathan Corbet <corbet@lwn.net>, Alex Shi <alexs@kernel.org>, 
 Yanteng Si <si.yanteng@linux.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_044927_447549_376628ED 
X-CRM114-Status: UNSURE (   4.73  )
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

This patch series is to remove the following 2 APIs:

devm_of_phy_provider_unregister()
devm_phy_destroy()

Both APIs have not had callers for more than 10 years.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Zijun Hu (2):
      phy: core: Remove API devm_of_phy_provider_unregister()
      phy: core: Remove API devm_phy_destroy()

 Documentation/driver-api/phy/phy.rst               | 11 ++-----
 .../translations/zh_CN/driver-api/phy/phy.rst      | 12 ++------
 drivers/phy/phy-core.c                             | 36 ----------------------
 include/linux/phy/phy.h                            | 11 -------
 4 files changed, 6 insertions(+), 64 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250210-remove-apis-b4e48d4c4712

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

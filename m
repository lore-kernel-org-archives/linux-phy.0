Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25439C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 20:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u6wQoRI82pZeDv6f/35eQJiOLXoIxPw96GFy5kGmjyk=; b=oLRLZMS+YeG3zb
	9nvz03k3AqvtvCZtVEFdTtq1FfLISFgM7lxI8FHBT++8kWt7Kob7/uDcdaH9MDo2CRHnjkXNrGSmi
	4GKEUU4TYIuAt2aM8R4BvL6HYGgLyWtkTs7/S0xFerjgqcSjdpxRGgZ0YFQa0tLMbHQR1RTiBJW6g
	2wMUzXoxbK9DnN1l5Q9CfQWGrmjbEaSqeW5W7pgY79QxcWF3d4V1dzgiWWCua//3odkRNOd3W4IiG
	rPkEcrDBi7m6T4RBeD4xS4P+0ZNMwwJ7Q5iD76k6OkQ2LuKICusdpKxTXJ5Nnv0OtjQlDfN2v10sT
	c7kmimH24+I1kZwvdsgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhQp-0000000GIiF-1wsJ;
	Mon, 27 May 2024 20:58:59 +0000
Received: from mx.treblig.org ([2a00:1098:5b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhQl-0000000GIhh-2uX2;
	Mon, 27 May 2024 20:58:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=VgqIjuxx1+smWYJZJYTIL09wCDiSGuEM65OBxMPBFKk=; b=gYWmUe7Ns+T47it3
	fQdsqsZQAzxP0bau/GCS6H0B/oe/gBkyO+wTGc/3rbTHsZcWGo2txNoCc7rb/r8EogL2tzYYRzdcr
	JZdkMcAPqdcHCM86TQR681rGkuTP98fmipysqJ064mnMIjzGU+tqbaVaACRMquY/poiWqeBLULwyv
	cdP6cZjru5dJqllK246XF3RRJyidmXKVw7PSqj0MiwM//gsP4IdcyFJ/s6D1SG5PUCzAJQap3cEYF
	+hJmr9jg84xDez+Muck0/i0o0f+QgoDQw2A6ccXzcLd2Jgxg3PO3K9PGbacrOiEQvJLhXz1qj9ZaH
	QAcKw7p8B3QDeClNwg==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <linux@treblig.org>)
	id 1sBhQc-002oZl-2e;
	Mon, 27 May 2024 20:58:47 +0000
From: linux@treblig.org
To: patrice.chotard@foss.st.com,
	vkoul@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	"Dr. David Alan Gilbert" <linux@treblig.org>
Subject: [PATCH] phy: miphy28lp: remove unused struct 'miphy_initval'
Date: Mon, 27 May 2024 21:58:44 +0100
Message-ID: <20240527205844.165279-1-linux@treblig.org>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_135856_034955_71366883 
X-CRM114-Status: UNSURE (   6.92  )
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

'miphy_initval' is unused since the original
commit 2c14e9be0c60 ("phy: miphy28lp: Provide support for the MiPHY28lp
Generic PHY").

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/phy/st/phy-miphy28lp.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/st/phy-miphy28lp.c b/drivers/phy/st/phy-miphy28lp.c
index 063fc38788ed..43cef89af55e 100644
--- a/drivers/phy/st/phy-miphy28lp.c
+++ b/drivers/phy/st/phy-miphy28lp.c
@@ -228,11 +228,6 @@ struct miphy28lp_dev {
 	int nphys;
 };
 
-struct miphy_initval {
-	u16 reg;
-	u16 val;
-};
-
 enum miphy_sata_gen { SATA_GEN1, SATA_GEN2, SATA_GEN3 };
 
 static char *PHY_TYPE_name[] = { "sata-up", "pcie-up", "", "usb3-up" };
-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA68C36008
	for <linux-phy@archiver.kernel.org>; Wed, 26 Mar 2025 15:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WnxIQmHo+cQIje7wJ+WkbutYWI/kJA3bQP1vg0InCTE=; b=o0LQuWl2NTLZ/k
	/blPgnWYomZ/QM6ODrJT2R0hFGovE66+xZm0HKwd2U3iA0/WNmi1hYKX3yOqm1PkbV0CMM7Zo4m3Y
	gMQfDKQqdr0QjMG9V1wXeaW2VVRHkYZrAj6uqiX2FBh7utroG4opGkLqL87zt0r84xy//stsCfYBY
	5MhfyoLT+5XMx/XGpR5me3kpVvqGYzwWyxwoG013R0dFeFhfbcSrelRFEk6T/6kiz9jxmpLgC5UEA
	KYh5EwQ4qFdwnY4CCbkKNqSYI/APWcjlTFjZNmkkn7uWHMiIVqLTlb06ByE9ywWUJasLQ3d63RGSL
	2MUbKwS44vc66fFfz0CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txScP-00000008qdz-360i;
	Wed, 26 Mar 2025 15:24:37 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txSbL-00000008qLu-3sVe
	for linux-phy@lists.infradead.org;
	Wed, 26 Mar 2025 15:23:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 52QFNL0d1598969
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 26 Mar 2025 10:23:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1743002601;
	bh=P4QnCOX2GK7YXvkBqaJnRbYLteCrwPQwCSdaBxf6DOY=;
	h=From:To:CC:Subject:Date;
	b=NYbcBESRB3/JWd15SIxYTospyNmZY4k4ehqb9NnCFRhu+SRl0VVtqeg2SsGCb641y
	 ltY5QXBvxn/Wy7J3c3fCgETrTe3nDn77Wclr1pPhfjtrNNdn109Asem6PyCJ4NZvNC
	 RUmUQ17IOMerySfK68fD6iAcxG8/7/an3i7PVFl0=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 52QFNL0l005607
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 26 Mar 2025 10:23:21 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 26
 Mar 2025 10:23:21 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 26 Mar 2025 10:23:21 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 52QFNK7C076812;
	Wed, 26 Mar 2025 10:23:21 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <mripard@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>, <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v2 0/2] Fix PLL lock timeout and calibration wait time
Date: Wed, 26 Mar 2025 20:53:18 +0530
Message-ID: <20250326152320.3835249-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_082332_017717_C3B9C735 
X-CRM114-Status: UNSURE (   6.56  )
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

This fixes PLL lockup and O_CMN_READY timeout by moving the polling
function after common state machine gets enabled. Also fix the
calibration wait time to optimize the polling time.

Changelog:
V1: https://lore.kernel.org/all/20241230125319.941372-1-devarsht@ti.com/

Test logs:
Link: https://gist.github.com/devarsht/89e4830e886774fcd50aa6e29cce3a79

Devarsh Thakkar (2):
  phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
  phy: cadence: cdns-dphy: Update calibration wait time for startup
    state machine

 drivers/phy/cadence/cdns-dphy.c | 60 ++++++++++++++++++++++++++++-----
 1 file changed, 52 insertions(+), 8 deletions(-)

-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

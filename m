Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAE39C3ABA5
	for <linux-phy@archiver.kernel.org>; Fri,  2 May 2025 03:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VcTGZuW90y6pgwRD+8AdWz2KXk0ANFZ2eScZ/WLEc8M=; b=GV1e05ksI3426C
	MbgFgz5EfzIS46gPmbJ5AhSnpJJ6zOBevn1BiBCnP8/IiaCf82PVXRHeHNsPr3nynpd32fkg6AZ1e
	9t5/Fzwwe2Ci9GoAxGLKKmxDF/qAor4/iDVtjAoRAej6RX4VOm4AFSw8jM1tHaJzmFNJ4bL/3JhI0
	mH3B6g+ptKLC64mTEufhrPsRoYBWFEgCtFiRB8mtnbVO8csJtPViKvLExYV8d8up5uR616ZKTsydu
	h6vpmJm/qFzfGj5SwE5NZhDgjjrtsCTlI9lf8uywo8chVwrUujOegg6/1VSVlIxUxVENefzmxQPCg
	3Q5cqz2Of4jF5LrQLr5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAhBF-00000000hPU-1tHg;
	Fri, 02 May 2025 03:35:17 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAhBC-00000000hOk-0Pyc
	for linux-phy@lists.infradead.org;
	Fri, 02 May 2025 03:35:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 5423YqIx3771314
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 1 May 2025 22:34:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1746156892;
	bh=STUdQap4y8tgoFM3cNAwbUcM59IYzDLqAztvXy35Y+M=;
	h=From:To:CC:Subject:Date;
	b=i6tejciX4Wf+rtwhzhRU24neDZ8bPjb3tNvKdmuP2c18jHT8rNUfwNk/ItIdkdVKU
	 MFZ2Z92iK1yhjOFYTbU6CvKjz47diYNrAPl56phoqdGWdLxgrO97STBe6P9n2k+qbs
	 V8MjxWXS+9oqmXqyXpq7m3q5ZNZ/N9tigfCXoJt8=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 5423YqiB002926
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 1 May 2025 22:34:52 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 1
 May 2025 22:34:52 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 1 May 2025 22:34:52 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 5423Yplp018090;
	Thu, 1 May 2025 22:34:52 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <mripard@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>, <tomi.valkeinen@ideasonboard.com>,
        <devarsht@ti.com>
Subject: [PATCH v3 0/2] Fix PLL lock timeout and calibration wait time
Date: Fri, 2 May 2025 09:04:49 +0530
Message-ID: <20250502033451.2291330-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_203514_222713_87C58167 
X-CRM114-Status: UNSURE (   6.48  )
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
V3: 
-   Use read-modify-write for using calibrated value for PLL
    lock time
-   Move out PLL clock configuration part to power_on function

V2: Separate patch for calibration logic and
    return error code on polling 

Previous versions:
V2: https://lore.kernel.org/all/20250326152320.3835249-1-devarsht@ti.com/
V1: https://lore.kernel.org/all/20241230125319.941372-1-devarsht@ti.com/

Test logs:
Link: https://gist.github.com/devarsht/89e4830e886774fcd50aa6e29cce3a79

Rangediff:
V2->V3:
https://gist.github.com/devarsht/c4d2c4f6715ec7aa4df4cb2c7991b7aa

Devarsh Thakkar (2):
  phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
  phy: cadence: cdns-dphy: Update calibration wait time for startup
    state machine

 drivers/phy/cadence/cdns-dphy.c | 111 +++++++++++++++++++++++++-------
 1 file changed, 87 insertions(+), 24 deletions(-)

-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 971E4C83F03
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jul 2025 13:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NE5ndXCsn94NvYINt6MM+u8pQ7uqCinr2JuwCt6235E=; b=hDKPLKS5aT8ab3
	RI/uy2WyDMb/veFItkdIAN4694vZW97H8KsuTfQayPMEp/DLkymoq3jK+OfWbyMvQtkiuDXFV2Pxb
	IQHkLt8YYpE3LRb0NCtONANyGsa79WMI8tOJduZ9AJp5o6AvM+X+NMTNhxeKu25xe4KqxMLwlQ5zf
	khXVTK9MaP8GD7JAlcgGmew9XAWyoUU+h56y6If9X2HQkN5LoCw7Lz2TQSs+SvAkTNsyfbYu5XMk5
	zLgwGgHVRW0ciCl+ta39dQ4g6+jPXEt/jLpKULiiLh8eXqMTWIYmf3BGu16lJ4OIxxOjqib3IT4aD
	DRfEzcZ4Y+IgshLcY96g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXg2y-0000000ES6u-0cDd;
	Fri, 04 Jul 2025 13:01:44 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXg0k-0000000ERcR-13mY
	for linux-phy@lists.infradead.org;
	Fri, 04 Jul 2025 12:59:27 +0000
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 564CxHmW001119;
	Fri, 4 Jul 2025 07:59:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1751633957;
	bh=OTFhsNb2uIQEAT5Fxr50Xmp5L4mU2/xP+vH48JsWZXE=;
	h=From:To:CC:Subject:Date;
	b=qgCozvADJQW8tmDxjrY9/f89B8jLBuJDECTnBVDJpbxbi0IXkUdTEifJ5tvCBXDyX
	 8ma4FQWgpm9JaEg0GvvS4EznrvrVlBHEuuruzuIwN27KK0BAn03sH4VKEfafcBFAC2
	 Ro2M5YNhMCtxiqxFXz9ZN1L3Tkx1yaZCPmsegcNA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 564CxGRv3404556
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 4 Jul 2025 07:59:16 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 4
 Jul 2025 07:59:16 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 4 Jul 2025 07:59:16 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 564CxFxW2774102;
	Fri, 4 Jul 2025 07:59:16 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
CC: <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <tomi.valkeinen@ideasonboard.com>, <j-choudhary@ti.com>,
        <a0512644@ti.com>, <devarsht@ti.com>
Subject: [PATCH v4 0/2] Fix PLL lock timeout and calibration wait time
Date: Fri, 4 Jul 2025 18:29:13 +0530
Message-ID: <20250704125915.1224738-1-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_055926_379469_F40D37B2 
X-CRM114-Status: UNSURE (   7.31  )
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

NOTE: This needs to be applied on top of  
  https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com/           
  https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com/           
  from the series:                                                                                  
  https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com/    

Changelog:
V4:                                                                                                 
- Optimize wait_for_pll_lock, wait_for_cmn_ready calls to oneline                                   
  using conditional operator                                                                        
- Remove superflous init for ret variable in cdns_dphy_configure                                    
- Enable pll and psm ref clocks before configuring PLL                                              
- Update commit message to refer to TRM                                                             
- Rebased on top of:                                                                                
  https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com/           
  https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com/           
  from the series:                                                                                  
  https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com/    

V3: 
-   Use read-modify-write for using calibrated value for PLL
    lock time
-   Move out PLL clock configuration part to power_on function

V2: Separate patch for calibration logic and
    return error code on polling 

Previous versions:
V3: https://lore.kernel.org/all/20250502033451.2291330-1-devarsht@ti.com/
V2: https://lore.kernel.org/all/20250326152320.3835249-1-devarsht@ti.com/
V1: https://lore.kernel.org/all/20241230125319.941372-1-devarsht@ti.com/

Test logs:
Link: https://gist.github.com/devarsht/d08d851399ca327e5594266a8d66d478

Rangediff:
V3->V4:
https://gist.github.com/devarsht/e4db52e1f4aec2d45596b3ed019e92ef

V2->V3:
https://gist.github.com/devarsht/c4d2c4f6715ec7aa4df4cb2c7991b7aa

Devarsh Thakkar (2):
  phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
  phy: cadence: cdns-dphy: Update calibration wait time for startup
    state machine

 drivers/phy/cadence/cdns-dphy.c | 126 ++++++++++++++++++++++++--------
 1 file changed, 94 insertions(+), 32 deletions(-)

-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

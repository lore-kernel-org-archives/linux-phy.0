Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C214C433ED
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 07:50:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 678B161451
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 07:50:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 678B161451
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DQEK72PFUEtloss+cOIpQe7lvC6BS+GVBo1jxhcBq3w=; b=b8Z248beiqf/1gjOKayqkbeeaa
	4a4q4qMwTNXnLkVd4P43wdZhfjGETqiK4vIGdwrSmkgO5v6bLcM1ZjgT5i6Z+dzQqL6t3SGXuauvi
	qlgLC7c/I7FEfhKHpV/nNQGrXFZCH5pw5m419hPXWhRsmyvof4vniaNBL/QIGKfTCcteSHppBNOSV
	4dBksGsOiWpINOf9Cg1LYOjX2HkU7mHJS1Hm7LD2S++pXIrROy+cUHMiKsVgvi26oolOV1cME9FsF
	mXhZ95Q0+Q5i293Hf61Da+5TnhE3hXvv3zWTLJmR+/TUi6LFky6zzvNzIHwvMYCvJVabhIxoJkmX8
	+U5ygoug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1levGA-006R9W-8k; Fri, 07 May 2021 07:50:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levG8-006R8k-Lu
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 07:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=lmFZ9X92n0xS5eD8fIhVvq1AgFmBTPGqdtSRgzKCzBY=; b=svkMTWIppy9v7IhVwAs8InwEEx
 3grGAsJshEvAXXF2PtC3Vok4VT5r+2Dq/I+MsZ52oOK9Fu9WJtdfh/ElMnZJteKgnCF5plwqFXaqS
 JWzo8GTLv80Hxp9Xfx213nLYMCWSIPUQbl7ctODHtdRcG/cqrH0+YaRgOe+A/aue0h+uzhZKQqVSv
 zjyarpVL6OQL9pyE/tbTHI7+gkT6IIj1SZl2ruqjrm1QpODjTkjvFsd1PvH77WtxEP4FQvJY0Dca6
 /2gR8cGiygNVd51bvAXLhl3Bn9l300q8SbKrjPApzWaN7AwBZl/7rRxyR1iuXOttAbxr5Td8TBQt5
 fnVmdblg==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levG6-006fNk-4B
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 07:50:51 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 o26-20020a1c4d1a0000b0290146e1feccdaso6011385wmh.0
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 00:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lmFZ9X92n0xS5eD8fIhVvq1AgFmBTPGqdtSRgzKCzBY=;
 b=Nw0+uWR6sBwev9n8g5JNOaPAJ41dWuMDfZnmMHJCF0waPyxqEFwowUPAUjzKw4tMpo
 9F6KXeNJYNBKAAWr4Pg0xW8i/VEQPEUQiZnsyEtXIyEgd8R/LGOx4mydtetBFFDoca1m
 YBsA5gL+pUy+BvCXDWhhQ2M7hkrNyqvc7PYt0a/9RoXvJe0+BYSjvcvwF/BfFoMkCHPv
 yWBDiEdNDaZkPdmwakQeqj/3ZU/6H41UApuk6PeSdzldQNtUIOpTMMWE5Ckrj6QWVcpc
 3zbxFNO2b1vSbSoiX9H48vWQQDPC+/5w07256M6PeN/v0lZHgt2QaopTjbaTRdH3Y1K4
 08TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lmFZ9X92n0xS5eD8fIhVvq1AgFmBTPGqdtSRgzKCzBY=;
 b=RLucihlgC0/5xr0EfwSW856gLEwQhkFCnIlM+BfYQxWBC6G54+l7LhyzzO8/1YnjYr
 xqAx7JYuXKTTFItyHRcAlEFlXhSFKj8t3P4qn1EH/ATOoygJ3b+3qcQ0RsFBGkBQjVn0
 0C28oPB1RaDV+IygsQCMpiHakAsQ6bfw7hBgYWn0RZh1l9LDF9lWtpxRLv5A3MYU6Kc/
 igs4orZ/alzXP16EyMSZSrPtCgEq2RFNByB8hqLfN++jZDGTc7oM9Px9uPFEcWTlJjup
 2LFDep2QAfCOJHLjy1YlafAazeZSoFzwK931mdgbP93ybTCY0+536eChYGRsw5wokK4g
 tyiQ==
X-Gm-Message-State: AOAM532M2ozaxdzSQo83Ntg8vyPcVq8BXWm7eecWGDkr7mWmPPRB3/Hp
 XAYK7H6nJBW3lmvrRtdi2+E=
X-Google-Smtp-Source: ABdhPJz7fejmXo4zC/a3xw0WLaeBC07EPUrCl4mhzdcOzuQI2JCtQfeIyxRrD95s5ZglQzGOPXVz1w==
X-Received: by 2002:a05:600c:4304:: with SMTP id
 p4mr19719003wme.111.1620373848178; 
 Fri, 07 May 2021 00:50:48 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id i13sm7317982wrs.12.2021.05.07.00.50.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 00:50:47 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com, gregkh@linuxfoundation.org,
 neil@brown.name, ilya.lipnitskiy@gmail.com,
 kernel test robot <lkp@intel.com>
Subject: [PATCH v2] phy: ralink: phy-mt7621-pci: properly print pointer address
Date: Fri,  7 May 2021 09:50:43 +0200
Message-Id: <20210507075043.14392-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_005050_201346_C5835B98 
X-CRM114-Status: GOOD (  11.63  )
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

The way of printing the pointer address for the 'port_base'
address got into compile warnings on some architectures
[-Wpointer-to-int-cast]. Instead of use '%08x' and cast
to an 'unsigned int' just make use of '%px' and avoid the
cast. To avoid not really needed driver verbosity on normal
behaviour change also from 'dev_info' to 'dev_dbg'.

Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
 - Change dev_info to dev_dbg and redo long commit message accordly.

 drivers/phy/ralink/phy-mt7621-pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 753cb5bab930..88e82ab81b61 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -272,8 +272,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
 
 	mt7621_phy->has_dual_port = args->args[0];
 
-	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
-		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
+	dev_dbg(dev, "PHY for 0x%px (dual port = %d)\n",
+		mt7621_phy->port_base, mt7621_phy->has_dual_port);
 
 	return mt7621_phy->phy;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34DAAC433B4
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 88F4961458
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 88F4961458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/W7dcK/4rZtBKLCSosFJyH7Qq/qiNn0Ot+HeyFvdSo=; b=ClhGBWIvF+4A9YMW9K7ji9QTV
	1DjKdudfzdRecvF1U+OzZm+7tfM9enuJbpWRj8IgbLLzj/FQwE3ZQN3sA5euHJMfd/a8u6Knc3cN6
	TTHsX6E7yPpi2MWcfAtPUQe/5zDGOOKYVk6cfMgLV+SQfPTPfiuJlS9Q6UkZ1uYAyvvg199RuDfvk
	YoBhFc9mGhoXSctlt3lB3C6VBFB7eSYw/in/3Vd8/ZCYNvzHTcI4luup+v6RX5yGTOqrEIA46XiIA
	8LSxK7du4iVagzadDUTUhjrcfFtSofM+Zl3ucCAMgIFlLeebE2t6Tp3LyONTd80LBKD7Ev/Ee9M9+
	71BoePdDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpb-0090It-9w; Sat, 08 May 2021 06:52:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpR-0090HW-21
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5j0/SkQ5MnH/k0JVcJB2AM+3scDK+wjHcTxj/JFadC8=; b=Bn60q9ABw+WTSVAF/RxR15iLIa
 2VxJ1pe1yOoilPmeDD9c2NiZn9PN3B/q8m/CobtAxYFjIsJsj5zon9umbw2LtRGhSYFqlVxk7nX5i
 pnEjshLgZomRsjEvPUZy8tmTQ0Ac+E9MxACwIYjVJZCKDPoZcmoXl968P7999KC8rLChkmU1Um08y
 Cdz15lChepDTHST+A8/MTMJgegyfVFwOv0jcojZJYXSCpr+Yvkex1oeXiOjV/rOjdy2YcRiirXf1A
 Vvy7AIsHxCrm+hzwJfWbWQv1hNGgoKYo9/bptz4+MOh07qZ5xRjYPfBTG1G4hrIFQcecvBHg4myu0
 GCu6Oamw==;
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpO-007PN1-Dl
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:43 +0000
Received: by mail-wr1-x42b.google.com with SMTP id s8so11349643wrw.10
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5j0/SkQ5MnH/k0JVcJB2AM+3scDK+wjHcTxj/JFadC8=;
 b=dZLeUeGgWm6ReD3QMlIYH3+IUdA1AhWyrFvia76N5Lv/V5HNlKbGVPUwPj0qHhRDJY
 wqlkUBMh8/gJSwCRZd1EmkRiF1yoeVF3nrMNCLxSX4356Dj5iHtQ0zKe1nBSWrW6tYu8
 3oHM3+SeH0itadhOEKhGNuk9JiLy3wufpu6bBa4p/C+/HO+m1pmqOXebdIewAAE0fysa
 UdJ3V5xYqQbBj0jSLGiF0ttCXQvrFKuaMaSRknf2H4ZAVJ81AOHd2W4jz++KC1eIkMvR
 qEICOKYGI5+7MSxrqEmDkTNqa8cQFfGCF1PsNEHx/9/DMc78KPh9wHPQ3R8B1d6Gv9vt
 zCXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5j0/SkQ5MnH/k0JVcJB2AM+3scDK+wjHcTxj/JFadC8=;
 b=NGJGKQbmkkdwS5ng2KemjCm5CuMlGCPT8FzyA1i7wfMyGyrC+prir9KC0Ws24Gk3LA
 7R7ERs3P7bQE0lbnu6//xBuL9lE/6y/yAEObPhrbe0n+L1VcRkJh3JbslCrUDNXzH7lN
 63khn1pVZMGsSakRD4QgVO3RbzYEHl0QzOnETz/xvSzYmc0qnH+YSvjPmirUQkMRFvRF
 k0yqVozDtxN4ebhtMGAnQKKaA5Kvsxqilxh8w+R7Qa2GHpCN5wSmXBOHt9HjoqBZ+xpR
 pGo3re66irWmkB/7aF0lmcPDQ05kATb+X3jK7WEBt2Ba4jvYIxO24+hBG80puG3MiMQc
 kURw==
X-Gm-Message-State: AOAM532m3QNS4NhC2Arusgc86VwEwORhTA4aiHCiI++5VkutS0652zoe
 frzXgNrT2txf2h/PkS6IHmw=
X-Google-Smtp-Source: ABdhPJynptSGPcE0oVi9YgE3/ZJrwY7orEHgL37roQv0+O0PTCkHPNJosQMbhEIGeC/BNx2uNCc0Tg==
X-Received: by 2002:a05:6000:4d:: with SMTP id
 k13mr17715631wrx.98.1620456761033; 
 Fri, 07 May 2021 23:52:41 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:40 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com, kernel test robot <lkp@intel.com>
Subject: [PATCH v2 6/6] phy: ralink: phy-mt7621-pci: properly print pointer
 address
Date: Sat,  8 May 2021 08:52:32 +0200
Message-Id: <20210508065232.4882-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
References: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235242_489181_E01DDAEB 
X-CRM114-Status: GOOD (  12.46  )
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
 drivers/phy/ralink/phy-mt7621-pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index f56ff10b0885..242c5d8b8635 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -273,8 +273,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
 
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

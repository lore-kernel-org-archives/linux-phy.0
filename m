Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E79C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jan 2022 12:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3xoAMjjXeRYmoPTmmwWLKL8AG9yFYD+FiVm/jjvhrSU=; b=zJwACb53XN/b7i
	/iqQowfplUb0qGCzAh2MOGdVB0ilKVWFMYT+IRJ2VJ9xuxjB0H5MIYXeQB7EQUi3d3/tWGVtZGczS
	cwhEreZBbus5rOOK07V2JRMKSnoa3FojdhS8us3HsDqgQERp5LbxIo20RbGZGgxJoGxj4xWpaGsdX
	gWDw1+Sw13HZ4JxZ7EdmXyECRp7e6ysl/FZVn/5Ry7AH8oBXAluBagdhInJsAHvU3T396KCU1AUb0
	lV6l5g3f7bSMROb61l5hJXHHFOzwLA+Tn4njWo5u7XmWO5JvZgdmJn8uG4Q+0JMdTq9VVRWFESUDR
	lth2dDybHCgcaf2jYAPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n55a7-00EnYp-Jq; Wed, 05 Jan 2022 12:39:55 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n55a5-00EnYL-CU
 for linux-phy@lists.infradead.org; Wed, 05 Jan 2022 12:39:54 +0000
Received: by mail-pj1-x1030.google.com with SMTP id gp5so501288pjb.0
 for <linux-phy@lists.infradead.org>; Wed, 05 Jan 2022 04:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=rv3hpFNoQ1qNkYinvHNFrNCrgnypW56t0xtrMZ/Tcys=;
 b=OJHBv7PiyuHflqragaXTgXu3E7LYLJ243q9wcpw9FGWUe1iH6uKRw2vj54dfKGMPe8
 njABLnC/HjMGzo9baUaFm4RIqUn9JpfV3tdjYoKLdyeIcEMNTQSZUTRR9G/Iu9BjwBsx
 vubYUEPucXSKBIk/PWvGu7M6zqzvG3Y2AKUxB13ByXrsLnDF0mlBuRg+T24bLbdAU20m
 QwH6wt/wLoZF3bcQXnU6QIj12K0Fprr5Y3wtPEfmSAS5XT//J9RCmOK/vWrkHtrq09nY
 XM1s0LOORSvo+HTU2l98VRCNIH9XBRIzCarGNxIvfnWIlMS8HZL34dkuzsZAZkAxl3Fc
 iGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rv3hpFNoQ1qNkYinvHNFrNCrgnypW56t0xtrMZ/Tcys=;
 b=3DPmC51hIEbMT9vNnN2wjK9oAJalydq5UuPgXdNkX19jdumt/3wlwVCWiZSf2ODHMm
 BPWaTskjlyBVDsFygL8YU0YPWC5Y7SKXVLmsD/EgL2J19qptzEr0anNlJHXCK0FmSFUt
 lqq7v+WjoE7X0V9/QybHS1+U8VUMvHh2lJd1gC/2IipKmTwWHqTW48+oMOJVlm4WwAYb
 7Vjx5TBsuIJdKZngdCkz17LQeS+4bGJYmEHsy736WusOY1rrO6uTmlMPgj6+nUgEvt7W
 5s06htRr9kPpcy+mGds1QPMKvTZkkIlv5Z32bLByB1T5o/aMOi84+KQwWw2JPDNRfLZP
 tqcQ==
X-Gm-Message-State: AOAM533ftM4jmHrvFc3BjMddgXCCfjxm55pUBElMSkA7bsN3AeX29nrQ
 AReEDmZeNjOj0ehg7b6hoKc=
X-Google-Smtp-Source: ABdhPJwjPVuYIAQ6/OKekHMB/mC7cv9yZsPZ3C0OdkfEGpypRfrigp2wRx9yTMyuTypK8muinHXWUQ==
X-Received: by 2002:a17:90b:1651:: with SMTP id
 il17mr3946413pjb.10.1641386392590; 
 Wed, 05 Jan 2022 04:39:52 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id t191sm37769008pgd.3.2022.01.05.04.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Jan 2022 04:39:52 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: 
Cc: linmq006@gmail.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Tony Lindgren <tony@atomide.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: mapphone-mdm6600: Fix PM disable depth imbalance in
 phy_mdm6600_probe
Date: Wed,  5 Jan 2022 12:39:42 +0000
Message-Id: <20220105123947.17946-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_043953_465762_FBBDB29C 
X-CRM114-Status: GOOD (  10.77  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The pm_runtime_enable will increase power disable depth.
If the probe fails, we should use pm_runtime_disable() to balance
pm_runtime_enable().

Fixes: f7f50b2 ("phy: mapphone-mdm6600: Add runtime PM support for n_gsm on USB suspend")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 5172971f4c36..14666750946c 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -630,6 +630,9 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 	if (error < 0)
 		phy_mdm6600_device_power_off(ddata);
 
+disable_pm:
+	pm_runtime_disable(ddata->dev);
+
 	return error;
 }
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

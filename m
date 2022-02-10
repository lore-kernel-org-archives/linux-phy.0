Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A173C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 10 Feb 2022 06:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V/s4P2RRioxs+SyeMGQ968s14r2fhrVoT57634SSjhU=; b=ZkMqlkr9rm+djE
	asWNPMR+lV2BdpDxH5Kl9YdooP8yrgBalruQtoNXe9vqCUCTSN5jICU7aKkBN7Dyh3CODXSQjgvI9
	utwavaZ5W/dow2Umji4jqW1bcKMLX3DN4hQqHbZ2fIgw3cweZM1mVXM9SSkrPd4srIpDQ4Yt1MOcF
	DjwS3lG1kPPa+PVeDmA1v2hUctrLBj4n17QhIFtAAywd0p80QKWaD8S8aWy1/JFVDexcgj+L1qImf
	Te/df8FeMWhHfTfE5HlUXvWFgXUjdUji3TkMpSLoEu1jbwqvXRA7nXbfIqhgniUhXvu56vDUSHXI9
	q5N6YBIa53N9fi3S1Dhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nI2aP-002lKA-JQ; Thu, 10 Feb 2022 06:05:45 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI2aN-002lIL-Dt
 for linux-phy@lists.infradead.org; Thu, 10 Feb 2022 06:05:44 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id p7so3937034qvk.11
 for <linux-phy@lists.infradead.org>; Wed, 09 Feb 2022 22:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=libE9Yn1tWBYKLkyjSY/ju5fNvytYicqcfgJwizlZcE=;
 b=dLKYw75qu4bpXdwIh3rv48k15nRreYPToUXnAHn/slr1zvyL8DqWHxmixuR93gw4M/
 bl/4oFr9hfl7mJEKZCMyx40iWCZt47TgKsAmz8HPsDddE0OQEZ9XOJ1w+5YorWITCBZF
 12sEovbYFwSkEoXtBUV6cFGloa1ocqMLIORVaB1Wsbrvo/LfNRN9gpcGdvV4uu3DIXUU
 2Tt2u4JahD2Rubi12QtPNP2cqjMEyHII+HqeU7PUIcKvnh4xU2olUyaO19hjOYuIu/X4
 c23BPIS/SyCkCMzMpdYIdclcuagKi40wKsmbnMu37uYpK9HR/CoOxnxj4UarpC0Ca1SU
 7f+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=libE9Yn1tWBYKLkyjSY/ju5fNvytYicqcfgJwizlZcE=;
 b=AJo0QH3qG+HlHEdNHwX2Gd0IJSSZCD9RtwAUQL2eYc0LCsQhlCe+Q9lcrXZWFqjq1A
 N7yaODFdfh/6INp8Qd7JpUZyHP5gW5BhhC9qUbZlmx2K3meunUND5HgWxcM1Fw+aLrrQ
 sDyngJV3pDSPtddy39WAldYiSMIfM84zI/SCydHrhhn/plIQycRz4I1usPWQ82TBsUmR
 D2kIfruMCUyXTaJRC810ZG5bZMWN8hnEexRW8F8muP4+h6RKdwyF1t5mbvardp4Sc7gN
 iJasm0rrBCLRKlVqaPXgrT4DZj2xIyOdWk9+skMhVWLiqLJEXKA0XhRy/I1xObUeZoyO
 +TLQ==
X-Gm-Message-State: AOAM530FB09YpkWePKoJQapt1ElZOFpkKsPss4oivdctlx6BgG3VE9dS
 UJauafOT97sNmu6W0RlcW/w=
X-Google-Smtp-Source: ABdhPJwPEeBaJnQZEpGh/G4E2EiYfU9a5wjU9luZd+NapvxeRAesLQVAOTyq3zmZ8C+PR6Xyefuvtg==
X-Received: by 2002:a05:6214:62b:: with SMTP id
 a11mr3968947qvx.99.1644473135358; 
 Wed, 09 Feb 2022 22:05:35 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id d6sm10331723qtb.55.2022.02.09.22.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 22:05:35 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: kishon@ti.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] drivers/phy: remove unneeded ret variable
Date: Thu, 10 Feb 2022 06:05:29 +0000
Message-Id: <20220210060529.1608027-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_220543_478557_10B87527 
X-CRM114-Status: UNSURE (   9.03  )
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

From: "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>

Return value from regmap_update_bits() directly instead
of taking this in another redundant variable.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/phy/ti/phy-ti-pipe3.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 2cbc91e535d4..060b68c69ab8 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -318,7 +318,6 @@ static void ti_pipe3_disable_clocks(struct ti_pipe3 *phy);
 
 static int ti_pipe3_power_off(struct phy *x)
 {
-	int ret;
 	struct ti_pipe3 *phy = phy_get_drvdata(x);
 
 	if (!phy->phy_power_syscon) {
@@ -326,9 +325,8 @@ static int ti_pipe3_power_off(struct phy *x)
 		return 0;
 	}
 
-	ret = regmap_update_bits(phy->phy_power_syscon, phy->power_reg,
+	return regmap_update_bits(phy->phy_power_syscon, phy->power_reg,
 				 PIPE3_PHY_PWRCTL_CLK_CMD_MASK, 0);
-	return ret;
 }
 
 static void ti_pipe3_calibrate(struct ti_pipe3 *phy);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

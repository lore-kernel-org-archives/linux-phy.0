Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B1B4C433C1
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:40:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6801619BF
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:40:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D6801619BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hTHm4e9PBxAqGZqYSSGN5vpjnhE4I+9hz5ojG4I5CJU=; b=SfGJqVOOpbQ+4SkTKYSrbVm5K
	NgdIEAvOkl70nXS2Ukq6yascyWz1a+fqYB/uKB/vk87RkQt9yrxyXpgb9kZ9nOqx4HTaDUjJIF4J1
	W7cv3l/iT8W6u96+fuOFOGXJeC/RXw1EMDM9ACK2R7CpAHLYe6lmHpuRNvhmkLITu7ZvZunyRDWYU
	sU7gqrjcBV1UmyITI3kJmLoFuaxqHZ7sHGLuyyCuz1XF+wpKKKjCTBaGi6QW4x8UaJpW7iNZLWMwI
	xwCAbX6EnoASfO7NY5FYJmJUvj5pT2L4wD70NkJdcPH2fhhztEsNJAL3B5gGND44/d4MQSYiHtoLt
	xpvN0vmUA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2U-001qK9-Ei; Thu, 25 Mar 2021 16:40:54 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2Q-001qJP-En
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:40:52 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 z6-20020a1c4c060000b029010f13694ba2so1529897wmf.5
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7xHWkhn/z0JEymImWDnOlsM+EPtRLYWHNs/Xv1gr+uM=;
 b=Q+0cCvOricq0GsG0pDLQC5rPnSBWSZv1Cw7sGhPN6hgzMXFSUCBwTYYT4gWsaqpp+C
 iZzZRyZ8TTz8Wh/EhBTG29RNDoKhmSfBVG+OnZi6KYwqWRvtOBgFSa1q/slLfTTi7qpv
 juF/luqVjJ83YlDfU/C95TbD0Hn/Ll+X4R6qSxHVguAYHBJVInoTV+aOCvqWVEmB1EK7
 OY5BoJikPRpy+vvbOiw3tHa0sncm/xvjyIcza/aCG3s7KMr8P6DCMHXOf9sARVLzldjF
 PiUHdz+wLNw/npyPjwqeCIEERXsyojS7UAy8yYPT5QGayaVdJmJ3HAAEij5wmjJVkCi6
 w67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7xHWkhn/z0JEymImWDnOlsM+EPtRLYWHNs/Xv1gr+uM=;
 b=oz1LzkQyxSKjQwEuWIwiLv/f3eCShq+Id/esHCvHEpyid1pJhGIlf58ayImv+KrOtq
 oQCj3YCiOkvstO4DouhxKaVTum5WsQmb9Mu70fE1Afps60rOxWGEaGjEL4znxHgSFyTh
 0NSMsN/uWQtVIZbLlCMLz7wOBbeFCFU4LLSu3tYenfAH/ssa2ea06fpxjxd33cNb2r9Z
 qRfzR/oPKUqfDFqU4KvyOnyvQ+AFtACIo5ztsu+uOMWXYn9N6kcgIYoT41XiyDm56wo1
 xVGs4IKCQ7hbpjWGo7WHUImnFnSgVTa6vxmNUe5YYRoQfFanuBBZBwv6/JQjaye66uhu
 d8mQ==
X-Gm-Message-State: AOAM530Yu9KvuOg3wk4sQpv6GigVfnVSL0+rVTiXNpAmtZ/6qsAT1O7Q
 JPwtMNwYemoWXX52U4phgMLqDOZQHh0=
X-Google-Smtp-Source: ABdhPJxqtyCkFdufHDekeuhCqWrE08Px7391PietRFnTEt4dlFECQEGki4iWZXp1/0HZZUGVbBPkmg==
X-Received: by 2002:a05:600c:19cf:: with SMTP id
 u15mr8645258wmq.7.1616690449958; 
 Thu, 25 Mar 2021 09:40:49 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id m17sm8496286wrx.92.2021.03.25.09.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:40:48 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v8 02/13] clk: tegra: Don't enable PLLE HW sequencer at init
Date: Thu, 25 Mar 2021 17:40:46 +0100
Message-Id: <20210325164057.793954-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164051_451215_98CC49A3 
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

From: JC Kuo <jckuo@nvidia.com>

PLLE hardware power sequencer references PEX/SATA UPHY PLL hardware
power sequencers' output to enable/disable PLLE. PLLE hardware power
sequencer has to be enabled only after PEX/SATA UPHY PLL's sequencers
are enabled.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-pll.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index c5cc0a2dac6f..0193cebe8c5a 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -2515,18 +2515,6 @@ static int clk_plle_tegra210_enable(struct clk_hw *hw)
 	pll_writel(val, PLLE_SS_CTRL, pll);
 	udelay(1);
 
-	val = pll_readl_misc(pll);
-	val &= ~PLLE_MISC_IDDQ_SW_CTRL;
-	pll_writel_misc(val, pll);
-
-	val = pll_readl(pll->params->aux_reg, pll);
-	val |= (PLLE_AUX_USE_LOCKDET | PLLE_AUX_SS_SEQ_INCLUDE);
-	val &= ~(PLLE_AUX_ENABLE_SWCTL | PLLE_AUX_SS_SWCTL);
-	pll_writel(val, pll->params->aux_reg, pll);
-	udelay(1);
-	val |= PLLE_AUX_SEQ_ENABLE;
-	pll_writel(val, pll->params->aux_reg, pll);
-
 out:
 	if (pll->lock)
 		spin_unlock_irqrestore(pll->lock, flags);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

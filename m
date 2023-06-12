Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7396AC7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a94Vcl/WK49942Qy6Zedda+j+rh8ZRXrH9GVvv1LEhw=; b=HMFO4ZvgE6pipe
	K5UKAxXoeCEWedeXrwGovnw4/msNPUBtn021jg0wNheb5AusLQYcmVtvdSTsetE/1+28t3y+0j895
	wMFDiLpLIYBQs+pRWh/eyYFYqYixgxHb5JxjRopxdi8SDBF3xb58nH2Rl8wTSQ5spTdxPCrOR1HtL
	vnlLbZuLlQ2qBPAg23FQ8S3cIifcFgSLlt5/I3hA2NxgFa/gKNEMwQaoYzmUDH2AvnQ5TMmHVdM11
	b7zE0LWlg+QXjQFzxvuocuzkBrbqHKjdktDngPAGPTUPJ0+76s59AJCB6pEHlIIWkPGbdbuZUqOfC
	SaIF1ok33ImbF/V7odQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnS-003HI8-0S;
	Mon, 12 Jun 2023 09:25:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmz-003Gzq-1Z
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:43 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f739ec88b2so29382605e9.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561880; x=1689153880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x6Qql4lmrRc6orjCzbHdO+X/jI0p6UbXCT7w4xaPn70=;
        b=r3C+LN0I7FtVIMevczG2G4gXnrbL8tV0VWh6EO722HqR8GSaE0sIdbfNRfxVxFLZ5B
         KBIgDCk8KbY3A1fU3rbQm5hg/qG9fiu/Qh5osa9r5C1dsQA0Xew8j5mZNyLKuBNimXuJ
         6e0x0WmGekpMepRjwxkoNwMoSWLpFysA/e7TXwQ9HxvqKKEmDAkTMxo6WGY5DU3VlT33
         NHaWsB9EL8reOpnI+0F5kohXV0fYBfz9i83cHE6asArFI1iLJgt+h16f1Yd5ENreccvG
         guXlbNPG/FuHocWDWvE5pg2eRqhyFAu+oxb9QULwsW/TV/ONDHrPilSk3mWzsETb+yPC
         RCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561880; x=1689153880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6Qql4lmrRc6orjCzbHdO+X/jI0p6UbXCT7w4xaPn70=;
        b=Frkn5JmaJ3rXKJ8pCNI+JrDr0HFxGmbAST7Uu20PW/TSiMwi0jGlmyFl78OktrXgd0
         dzDFBy97x6Hm0IIaRwBQDT+bytd3tit1MsqV4kobcIZ+9NaQiBozUiaUHm489o0VWhkj
         VZkcXgZphYU84vs1DeSseAPZq/g7oaljpsEIHdo86rXbDlPA01q4k6gfcos0WfXD5A02
         /1V9t4aCG0Tf7EbWte1zirAUSnAyXaU41jHSVhOiHsmDLBnKOfpEL+YQme8yBrS2TTM3
         pXUbVaI1zqM7BE0MhqeBocfY4ExJOHIjSJBuxNzjkjMKpR2Ng3tT+omkO0uFHsqbEHrk
         vcSQ==
X-Gm-Message-State: AC+VfDx89GlaPcvAwSucY10FqM6zs5JqsZkkn7s6wOu5gri3DyNv/q0a
	rhJpuOeDpSvHxnAD6TbH2SRysg==
X-Google-Smtp-Source: ACHHUZ4pVmMwHGX7bNbtVfB97Jl65MLcpOZps2ubdvFDgRPuGgLyhLlZQF10mQYnesEmUQW2Dqf8YA==
X-Received: by 2002:a1c:7c19:0:b0:3f5:ff24:27de with SMTP id x25-20020a1c7c19000000b003f5ff2427demr5380405wmc.32.1686561880266;
        Mon, 12 Jun 2023 02:24:40 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:39 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 10/26] net: stmmac: dwmac-qcom-ethqos: add a newline between headers
Date: Mon, 12 Jun 2023 11:23:39 +0200
Message-Id: <20230612092355.87937-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022441_557297_CA0B22B5 
X-CRM114-Status: UNSURE (   8.26  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Typically we use a newline between global and local headers so add it
here as well.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index ecb94e5388c7..5b56abacbf6b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -7,6 +7,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy.h>
 #include <linux/property.h>
+
 #include "stmmac.h"
 #include "stmmac_platform.h"
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

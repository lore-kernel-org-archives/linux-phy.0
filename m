Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0770EC0015E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiXOhqQWCqzUiZ6Hx/8VtKs7fuAS4YQois0C9EXrNuI=; b=SaZfcNd0LE4JUD
	pV+Dd1TPMpre43bRrUG3CAKnhFHtczTpB5Eo42OJAk2QyznhObkBMyjb4Ll7RPPNBM9sU4EleJF77
	KY/witjcBfUXYku4ZlrhkmQF9gEl1GCECJtOjBZKwl/EsdWYeyYKADXRMF5nIBNF60owJ8bgEypZd
	rNs/XephV/SW7p+e2+GGxX/0Illgx9cQ5gIMbstKJaQF9AZ957lH3HbmhRoa1Z6KncjAmb0oL6Rsm
	CX5LryVDbwBtOxQH0VGo2DXNsli+0zdWphdlFVI2hQ/6/SbsuRb/UaE8odYdhlcYaDHj3qkSOYZYF
	ZuAsAm+oKv5QZM/W/JQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lss-00EpZh-1z;
	Thu, 15 Jun 2023 12:15:26 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsJ-00Ep6m-0D
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:52 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f7ff69824dso5290115e9.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831288; x=1689423288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMgaAHe76eIn3F9IB6JgFSErZkAha9wqjAecsB/W5Vk=;
        b=v/JROUtIn1Fn9P10DPijytJUNeMgvE979wcEBNHrOGUdG6qtCKQ7nd6DTn78TsgPK9
         oUGOJElAik/a1BznjNO6USDB/u5nHsu/PStgHyApHHv40RgcfIHdXONrGyB4WGs3N9q2
         P63IyhbcJA1JqCZcROq+tanvqlpIehMj3UQRBQ+UlGU+jlpNfEMVUEz0MEtBoShEy4ZU
         AQ/i+SxJff++kZZD7Sf5WR8dfphK1E/o4XQNiVfem4vMTW3A/Bom43nQ69X1BXRfPwkq
         wfno0VaUOkbOKuWBS3EM/692Ilu/HgF+kCT3+x3uTUUE5d1uhem6sSeoZ6PbKoMXoxD3
         UQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831288; x=1689423288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uMgaAHe76eIn3F9IB6JgFSErZkAha9wqjAecsB/W5Vk=;
        b=RtdW8QAEEfXiNSNLQVWnaZdk+epHYRX4hsgLzZyMh8HaIpSmA9VtXqJlRBWGDpqizs
         w1Qg7jkil4L/GHo681lu1YXbSDmJ3Ucgp6UV0xrIJxZX++yYJhcYCN608UZ0TuknEPb5
         gYNCvjlWb+pOod4sdBKB5Vqa5Wd8ZlI1gmH6I12bB+bqlkaX8WA1LG6aP4wHzRrr/AMi
         tUpUmVKtSs0ogDIY0OlpSOyzkblzJhcXYYbrVXkVI+clKSv7wg+WowI6Lo/LBS0mu0vL
         Axx3cTKCcpUHFB4E7cG+FiGwNi8zNQe7Z+RKfxVz53hBTWWUwT7+QxB73UWBtV8u1elM
         LHSA==
X-Gm-Message-State: AC+VfDw6QgezS2Qd5s7QKZ4FrGLl1Wxte2LAiE2IvXZKjpw84aTpo7sm
	PAmKJTHPLOt4+lhjiXDmlxYNmw==
X-Google-Smtp-Source: ACHHUZ7hpsGhA1APGWhKHqXJARHR7T/asvTIBCcezaYjJwRDKg1LmwDvqWkfZ7PEzsLAv9Oam4DVuQ==
X-Received: by 2002:a5d:6a88:0:b0:307:f75:f581 with SMTP id s8-20020a5d6a88000000b003070f75f581mr3870500wru.18.1686831288107;
        Thu, 15 Jun 2023 05:14:48 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:47 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 11/23] net: stmmac: dwmac-qcom-ethqos: remove stray space
Date: Thu, 15 Jun 2023 14:14:07 +0200
Message-Id: <20230615121419.175862-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051451_157443_E47DCD02 
X-CRM114-Status: GOOD (  10.10  )
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

There's an unnecessary space in the rgmii_updatel() function, remove it.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index e3a9b785334d..ec3bbd199501 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -117,7 +117,7 @@ static void rgmii_updatel(struct qcom_ethqos *ethqos,
 {
 	unsigned int temp;
 
-	temp =  rgmii_readl(ethqos, offset);
+	temp = rgmii_readl(ethqos, offset);
 	temp = (temp & ~(mask)) | val;
 	rgmii_writel(ethqos, temp, offset);
 }
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

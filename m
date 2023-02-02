Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16192C05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBzg6M+uaHyHi/MrhQ5O/Nwcs3lxWs/+ZLY1MjHYJwk=; b=SDaZzXcqCjm3Ef
	vPZbOXf/ZtU5CsSge8wCh6NETIcp8W1M/DyKOCYpqCbm1zj5NP7xE7YvvsRS9SMpGdKQmCRb5XQX0
	ySaLnhsQbH3Tqks6CVO8NTxvSfile/yCZbRtzXiCB88ExVdIHJVleOTaGb/Znol+ySQbpYOVMqPO4
	iFLKPC6tCQxMX+GBm9ps0xTrWelzp/mSGcVOIUV8aVNxCSZwjwxULXFDYzFeko7USJVB6AzeT8eu5
	kIDvu9lVn553Ln2inDbRwXCD1b/DPR6ir+UNJpxqZGVvhIr2IORJCSbSUReloWt4XBbaB0MdKJlPr
	8EwXDsv9ZnGmDS6WlRIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZah-00G0DG-H9; Thu, 02 Feb 2023 13:25:27 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZae-00G09t-D3
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:25:25 +0000
Received: by mail-wm1-x330.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so3729769wma.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=axZmrk/nkDmtPomkR0fmKhcUmJk4Y03dAWE31oS09K0=;
        b=VN6odhrNo8DLT5dgJRQl9geIjbVTf9p/OpiiZ3n/cs/YAZp6NoETURDCZGLdw6f5YZ
         EIr1BD9fEoMvL6I5WNy2c58RMaKCO7TB0cOP0DOcKyE4EsF8+EvBa0wjhz7Np7Hg5/lK
         C5OhcwEaPJPfVyPLxZghRgCEiRZKCktwEEZfm5aJG6y2MiNzH2mrih5GE+flZn8qWNcq
         OYt0QiMa8vZfDpK0StrfGizHucQLZVqg2hwOxuKT2BD7D4uJcD8fqzJnW+RZyCBstMZD
         bsMSb/wvqBjc1W1sW/JLhlVulblZf5a+mjV4e8mE7TJHmpCoyymQW1WTRWZq2ZgkLMy8
         J3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=axZmrk/nkDmtPomkR0fmKhcUmJk4Y03dAWE31oS09K0=;
        b=Jqk1j1N8lqvRM8Wxw6NLxjmUvxC/0Keo9JDKkpZXbpQr2m/Nm180LoUoEvawnkcicp
         jtLxeFHupU6ammCcd8f1Gwv1PEBUyl67ow4ka0bvbzpobopdqaMoHNXcrHcanloZzGkB
         5bZ2PTmDFlDIW30lUgSCE3eLbAU7TKewuWJhsia99nVqw5XRRWLxaNU7SgBGVVMTZ77P
         fBqtIDvXqshqh5bszk886vF/8ntuwQQYFFZF+V3PudJfJZBi+jOL/PYsTxRzfdqRbjQ4
         H3iEt3551bw2yBvDDzycoC2NCHfd2/P3BOTOqxKGetL628fdIjaaq+NY2LskHClXyyeP
         pl5g==
X-Gm-Message-State: AO0yUKX0S/oTKT8SPJ6amGC96XotB14dfprfnP7GiMUVEtkPU0U4TW03
	CqJSp+/Mae+hYnSx9GLiFaK6sw==
X-Google-Smtp-Source: AK7set/u2QiBcVxQRR0aoeKvKGTdGvoGxaa8LRnm4vJtb1lMyrVxzwdonWZ5ZDMykX2gmudsqMPv1w==
X-Received: by 2002:a05:600c:1d04:b0:3dc:5dd4:7d3f with SMTP id l4-20020a05600c1d0400b003dc5dd47d3fmr5512542wms.24.1675344320738;
        Thu, 02 Feb 2023 05:25:20 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:20 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 5/8] phy: qcom-qmp: Add v6 DP register offsets
Date: Thu,  2 Feb 2023 15:25:08 +0200
Message-Id: <20230202132511.3983095-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052524_458617_83243431 
X-CRM114-Status: UNSURE (   9.75  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.
Add the new DP specific offsets in the generic qmp header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v3 version of this patch was here:
https://lore.kernel.org/all/20230126131415.1453741-6-abel.vesa@linaro.org/

Changes since v3:
 * none

Changes since v2:
 * none

This patch did not exist in v1. Since then, the DP support has been
added.

 drivers/phy/qualcomm/phy-qcom-qmp.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 148663ee713a..7ee4b0e07d11 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -134,4 +134,8 @@
 #define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
 #define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
 
+/* Only for QMP V6 PHY - DP PHY registers */
+#define QSERDES_V6_DP_PHY_AUX_INTERRUPT_STATUS		0x0e0
+#define QSERDES_V6_DP_PHY_STATUS			0x0e4
+
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

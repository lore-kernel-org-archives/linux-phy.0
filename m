Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C91B6C64ED9
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpuaQA3hl60rI3RTNYaVPyXT2I4nsVCAlHOruGU86WQ=; b=ULR0MIx3AFmKb0
	6nY1KDPNa5J0PZhO5dzS4diB5JRMX6/pdptps31AfXnKkzvuBPfZsc+AcpVOrSTxJqzphFZXYJbv/
	zHWkd5UksPAsA4AHvUhJ9YfV2OfmkVF4f/Yd3o/djPsikMCiOe1tjYONJDy3yJ8+xF4ucaAvO8ioG
	kO9e+7w7jzTdSKGTWVcKjp15gS1cLtTVKosKNVXDg5yMmDjEJQhH4v/Jes15JzBXZkDYTO66cwF28
	1iCSydqNKEIlRY67z3CcgCCaWvpcoOl+ABMtrfY4xTnRuJT37ByL4pjHEScnmYZpK74JwioTYYQkt
	tT7LQNyKMmRIuIRq407w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHP-00Gchg-Uo; Wed, 08 Feb 2023 18:34:51 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHM-00GcdN-El
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:34:50 +0000
Received: by mail-wr1-x429.google.com with SMTP id o18so17721385wrj.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SEEw1gk8nKk8ec0d+OZoGuQ0dljBC15xmWf5pXLD21M=;
        b=JO4r1ax4GcvpRjFFTRLC8KC6CJ+X4ObzFbO1cnhyLCMTXvFsSPqb1N1WFT1P33Qpw5
         w1Y0NWtbmhiCOk+WeRJMTq3GYddcsQ52KQbm+lWOaXLfsXUIGQQHXa9OUHsfA5gpRs/4
         q08v9RHQRWTgbHlFdcGvJUiMNQ66gqQTzRJxTPjyLvtxmXtFCZMB9vKoZmaLCS4O0yMg
         3+g3/kD+TLLSjZL50uR821TG3+XREwumroRNeZO+LE/tDIiNcSaTWbu6jOopl5ENn05q
         8U9k0CSFd+jc8ovjvV7wXlJz8Xi1QSI6ppmrRz/JtFUlTIMVA+TfQFsot99T0SyhUAmV
         oZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SEEw1gk8nKk8ec0d+OZoGuQ0dljBC15xmWf5pXLD21M=;
        b=zk+m5JVPjHXnwh66H5KTuV58FbHRdGgDTjwV4Up4qGgVwdo5R10cfcJbEW3fJze3iZ
         eytNtHJGGN2iMKhnLltABNap++2WV8uWhHcPBV3roBZbaiCMQmM/7kffbhXnpZGKxwNM
         r4ixzBwXW5ZaukP5FQQUCorBYuuAkp8wzdrWQBuoSlWXUAhgWFfHUEVipTsAqYuyTNhC
         PU8rRMKUxiqlKERQjvnYW8tAj5GfqODsE714a2uMQARL8dP43ZzPAVWaOK6/8iHi3DPR
         jlgd0/ULJ7C8W9lE9VUfSbpGiYMvLiImZWCEZUzZRTB1WB3uHPUm/9W1A4Z3WQ+Npdc9
         DIGw==
X-Gm-Message-State: AO0yUKXj5vdIeEvOgb6M6phdqr9rnzeZ6iR6cOwMqIfnFDkKX5NKCcU3
	ojPsSmwS1I30ylknX9v6KaD66A==
X-Google-Smtp-Source: AK7set+yhRMo8e8rB61Fy+UWbSd7MwN15kw39yo7cm+UT347c0bARKb+5nRJY0wpW0bxfUPk89SBZw==
X-Received: by 2002:adf:fbd0:0:b0:2c3:fb3e:ae85 with SMTP id d16-20020adffbd0000000b002c3fb3eae85mr4380091wrs.44.1675881281481;
        Wed, 08 Feb 2023 10:34:41 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v1-20020adf8b41000000b002be505ab59asm14591304wra.97.2023.02.08.10.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:34:40 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v6 5/6] phy: qcom-qmp: Add v6 DP register offsets
Date: Wed,  8 Feb 2023 20:34:20 +0200
Message-Id: <20230208183421.2874423-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208183421.2874423-1-abel.vesa@linaro.org>
References: <20230208183421.2874423-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_103448_549811_8360EDAC 
X-CRM114-Status: UNSURE (   8.99  )
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

The v5 version of this patch was here:
https://lore.kernel.org/all/20230207114024.944314-6-abel.vesa@linaro.org/

Changes since v5:
 * none

Changes since v4:
 * none

Changes since v3:
 * none

Changes since v2:
 * none

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

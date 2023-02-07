Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D11F4C636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 11:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/Zx6uApA25BJI1Q5FEth7nfiBVmZHi2/SGbAxyPpB0=; b=tqVZUumafToI3v
	VSJeSvBdiozPs3l7kONtlwUVKbq/NwEIAqIqYhg8+svx1VveLHUGc+D1uuC9VMjouwdhHp/Ul2TJG
	I4iTnwk1+6HGOgKOFCEKldd823tdTvLBFDkLabQCd9GT3yceDjZxIyGJkn047Fq9cET5qh2os6d43
	nVpBh8d1jh1FMhNARMIv55AnFTuvmck69PVP+O5u71UnQutFrarFZ65jz7CTuDVGSxxbCEQO30xmk
	sCBt3vTmVCAbEmYu5xYAxGvbkiLXh/jkmgLL/41ZoxaoWg3X6W4grxvfWo3tS0ggOIvb+jgQkkrCS
	YIHTigmxpPv4uO3wsHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLJ-00C0e0-4h; Tue, 07 Feb 2023 11:40:57 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLF-00C0a4-1q
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 11:40:55 +0000
Received: by mail-wm1-x332.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so2570042wmb.5
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 03:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3eY/XeHsmBpHFfWUU1KgjKnCSnSpQ/HCuRyOD3JEmOg=;
        b=ZV+ELRRC1rmE14CtaWM5a34Ivu1JV/24TbvQx9LG6zwTWvCEhOoQRxONQxf6C88UvP
         r+v9Ae8RPcSbDwy+tA8g4IvmOVhhC17NFwybFwv5+hzMZ+xR7qGZFc5zF6FIiSO9KWoR
         nKAuLz74nYs1lB93o3QGUyIp/J9H9k0RP5sVWHdvoSIC8Bmf9QnWpp+kFcTMgFQTihKw
         R3k6MxlF+r0e5uXUBM95sCz2NUZd+dNFow1LVQ7epMJIGaHrAXe2TAvYJYCwpylnpwwN
         MEZyfq5w+mcoZAcmDn5FGDZHiSwQjPIqmkqapOLgWVCtHxPEOMq1pYN678VeTlI79ttc
         mCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3eY/XeHsmBpHFfWUU1KgjKnCSnSpQ/HCuRyOD3JEmOg=;
        b=NAv9f5NaZyz3bWuK5UgSxv+T+2zHJa93hKSxGBI5kYy3gb9BmNe7DBLDAVIxeN/SM2
         MHwcbEArxf+nzUGGoIiUfRJxzPqKLRN28eZvFL6n2qVZSWySZBMga/Ev8TMcCWScRMET
         bxoJhQvSArEQhfWTCcioQKooO73AJaQh3FHjqjxkH1h/apMomMhFHHnMcMkxkqWVsH42
         bUTRpumWrOb0+F6bcX7+0i++liJRuuBxmZpquhfLfxu1GIyrnIRPO4bYaDzSEW3Ih8y7
         T22e+36Opmj/kYZRsu1KWvHJGuc+K81heS5puj7IOxe6p4mIKs8JZbufz8L1A2k7EgSY
         THSQ==
X-Gm-Message-State: AO0yUKVEfSJVE7qBhb+ujCDsnbQi8+BdI6iTOVZrySyOF5eViQlpzs1D
	8XjdA9HhyE6xwqHLUcc6eGwpPw==
X-Google-Smtp-Source: AK7set/ZrXcRdbVJ1NlZokDnVJqc8qclfZMr5nHHU0C8eW80+MnFHXVtpCsj/ZSTCozZfp8GzsUvGQ==
X-Received: by 2002:a05:600c:1714:b0:3df:dc29:d69 with SMTP id c20-20020a05600c171400b003dfdc290d69mr2693353wmn.36.1675770050627;
        Tue, 07 Feb 2023 03:40:50 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0ac700b003d1d5a83b2esm18326005wmr.35.2023.02.07.03.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:40:50 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 5/6] phy: qcom-qmp: Add v6 DP register offsets
Date: Tue,  7 Feb 2023 13:40:23 +0200
Message-Id: <20230207114024.944314-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207114024.944314-1-abel.vesa@linaro.org>
References: <20230207114024.944314-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_034053_162397_DA17A06E 
X-CRM114-Status: UNSURE (   8.84  )
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

The v4 version of this patch was here:
https://lore.kernel.org/all/20230202132511.3983095-6-abel.vesa@linaro.org/

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

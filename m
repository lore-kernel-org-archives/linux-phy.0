Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A33EC61DA3
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrhhIfJrk7OnSmwIk7+Mu5+osCRu7w2jgfEQL17N49A=; b=ZWXG7at9UMn8B9
	JDkE5ZJ4mgivZjy/gSdC0die5ItwbEIPFB4Zt6JqqOpShRNDmHpsCxUgWKbzDa4QWQ7N21kgKblMh
	grlDIs+TOhqyheljjr0Qv0kjypj/jdBCeqNZeh3UkxDS+UxUmepCdHgP8tl/TUOr4RrOLW3cHdOoL
	nWmWBbOr3gtZVfFtdoLhvVgDVUnwaAYiR+AW7kvHQS0DJX56ZejrTv7LwJiKxJ7sRJ4Wxf5fjOQFB
	O5jMBgAUtsDuuKwiARA+tXgTedXomYsXO62bpwhCOA1u7gJTPSsaC1FMwRelCwOPlRkuIc6T6elnQ
	xhEiysRt9U7DeO1L1hxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25G-00AujH-C4; Thu, 26 Jan 2023 13:14:30 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25C-00AuhI-VQ
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:14:29 +0000
Received: by mail-wm1-x333.google.com with SMTP id o17-20020a05600c511100b003db021ef437so1079364wms.4
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8S/k5EZmNceNC6Mb6iquS22SFOybuz/c5edVTjpSWQ=;
        b=jbUFuQbr46utCUyThNoFkNjZt0H9yAQO8Dsi5ZT1Oz4vwUbod+B+DYeXw1mMuIW8yk
         2T2KB525Cb1YDINUCh1d/8VpAggbNU2f7sjpKNV+3Zcdio4kcojcA5ByVaUI9svZtYH/
         JR4aoPaqYDP9qgM3n4YToJywCnVh8ki3bhQte/sZrcVMf7dAe9AlrGFJ+VfKGq+p9o3k
         7artgLWuj85uQVV1G6GRsE6x4PSxQrXs79hOWX0cu3A04xAyYccVP8n0gSaow9WXZFVK
         x0r0iuznEfWpAC9govDHAET72/UDWqBSHF4fAMaWR5xvZPcJBRDBnatQ8hjoB7+efUDp
         Sd7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8S/k5EZmNceNC6Mb6iquS22SFOybuz/c5edVTjpSWQ=;
        b=3CPvNM7NP5kk0s/fov2dpV6KyH5XBHGfxj7APjDDuMVulCcaDe7VXaTLX++T8n8Ed+
         ZpRLQPfi9vjJquzYaz6m1cH8QSoYJWX9el34kgft6cnDmgRfwL0D4TjWBxleYOD4HmBS
         z1Jnvs9m9zHMkIfwgIEXik3Qq9a3QGfgGgvpg01YbXxsxNPLhexo/iQEBLcOM9iafJ09
         FEGyLajQH9/eyLZ3Z+xLf6B/BkT7Rb8RME7pjeXFPykdk0h1QHdcTW2gN/wZowmD4iQD
         VqybZ6uNPTcCpMTylWCLNVpw1OrIfoJJ1HvHmUsbq7wzbuP1DMPa1y2rPfDIVDU7Ddnl
         rrYw==
X-Gm-Message-State: AO0yUKXvV0HGRLlQow4LqS/bw5/AF3X+aj3i2yOLKNVqrWauWbopBJ5W
	yKjCEBTlRn9EOspEsZVu/XDQrw==
X-Google-Smtp-Source: AK7set9Mipn93fBan5Mm1jnzFa/ECppqiDj0Cy/gwDUPPO3En4NlVsc+jfJJDQwJX7brzeHc8Ky7+w==
X-Received: by 2002:a05:600c:a42:b0:3dc:1050:5553 with SMTP id c2-20020a05600c0a4200b003dc10505553mr9772874wmq.23.1674738865812;
        Thu, 26 Jan 2023 05:14:25 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:25 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 5/8] phy: qcom-qmp: Add v6 DP register offsets
Date: Thu, 26 Jan 2023 15:14:12 +0200
Message-Id: <20230126131415.1453741-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126131415.1453741-1-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_051427_029799_DB49FD54 
X-CRM114-Status: UNSURE (   9.86  )
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

The v2 version of this patch was here:
https://lore.kernel.org/all/20230126124651.1362533-6-abel.vesa@linaro.org/

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

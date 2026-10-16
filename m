Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B45BCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 14:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7tFykEl3IuBDFxKtIk3iuN5c0Z/32YdmXRMqAgUwi0=; b=0dPxlL+Uu0tID8
	IbUO+j5FYJ/T8v/cgkwy+c9wsf05oYbCjkJKZ4Lwk1Uf2DOp6IV9jP7h/CXE8mVV1NGajpQc6mZLY
	2S9KqLFKSZwuZPTJWMnAw9jXHs9RJgkh0vzYR8bCEUKZtioDyALin67RKy5lEO5psN/Tl4A61CSFn
	61TOY0PETGY+q3sQYwSDoNVx8KAuIvCPb33YIlxXO8zL7gtwhCvVfE10R75K73h5wREWMtVhS1iM3
	8dJSgFBCTXoGwc1coMR0qAn/LlexG3tP/pCQDJFwVdlB09jnLyY+XWwvfqAy6Ri39zTM3Q7uaBMNQ
	Q0poqWi2W0Elh3Pr32Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLy-00000003DIF-3CNK;
	Fri, 16 Oct 2026 14:56:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLw-00000003DHU-3uHu
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 14:56:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 976EE43BDF;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74040C2BCF4;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792162572;
	bh=f3VI0IWsreuS0SKtsaqT2R9eaPScD411XLSj9mh5T24=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=DvO11NW+wKvu8+R6+5oYQbjtjoT0+EEk/mvhNkXCg54EQo4iA8Gzm5Rk7Sb8zK7K7
	 q+N0BmYnpvoZtPIWW0PuCaR8mtXsHQnKPz3aL2gu8Qzd0DjEhBgsZVuHygdbPGbR5E
	 jIVrCd7eXdXo6898CQJUNUiKENi0P6KQEbhY6xF78zXQ8rQoKVngjIKfXtrUoyK6uo
	 LIBVhOhjaJycMq5B02om7kJe58gqoDDENESCIvwIgc5pJ2GYO6iqpNujoV+ZbRMUhJ
	 YjI55Evbez+IZ6wChh6OLAYH8Or9ashqgvR7BOUNZtieiBqDEnRGJLgD4f8tsn9qvC
	 pvFR3SIZxb0GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F3BCCA462;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 15:56:12 +0100
Subject: [PATCH v3 2/6] phy: Add MIPI C-PHY configuration helpers
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v3-2-40a346a72153@gmail.com>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792162570; l=3247;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=oJIZmb5EbeE8l200gX3BwDF2KFgLiUAiv5ow1JJLKdU=;
 b=nWkNKyiE4u4PC0mjrHQeWwEGDHo3uoi48oQ4efl/w+zjSTE3qvz96TEGe3Ew6JKfPIEnG0Vr0
 fqds9NMjATlAbm0NOqwQeBGL+4DtSL7Rtw6/SsMO/alW8BB0roRC65i
X-Developer-Key: i=geocausa@gmail.com; a=ed25519;
 pk=KyQk/iWbxsikewDBh0SwlHI51RvAqahD3loqmRp9DVI=
X-Endpoint-Received: by B4 Relay for geocausa@gmail.com/20261015 with
 auth_id=1199
X-Original-From: George Neacsu <geocausa@gmail.com>
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
Reply-To: geocausa@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Neacsu <geocausa@gmail.com>

A CSI-2 receiver knows the link frequency of its transmitter, and by the
V4L2 convention a C-PHY link frequency is half the symbol rate on each
trio. Add helpers so that the receiver and the PHY do not each open-code
that conversion, as phy_mipi_dphy_get_default_config_for_hsclk() does
for D-PHY:

- phy_mipi_cphy_get_default_config_for_link_freq() fills a
  configuration from a link frequency and a trio count;
- phy_mipi_cphy_config_validate() checks for a symbol rate and one to
  three trios;
- phy_mipi_cphy_link_freq() gives the link frequency of a configuration.

They are small enough to be inline, so no new Kconfig symbol is needed.

Suggested-by: Bryan O'Donoghue <bod@kernel.org>
Suggested-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 include/linux/phy/phy-mipi-cphy.h | 60 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
index 9b748d577b..adc2dcbd2e 100644
--- a/include/linux/phy/phy-mipi-cphy.h
+++ b/include/linux/phy/phy-mipi-cphy.h
@@ -2,8 +2,11 @@
 #ifndef __PHY_MIPI_CPHY_H_
 #define __PHY_MIPI_CPHY_H_
 
+#include <linux/errno.h>
 #include <linux/types.h>
 
+#define PHY_MIPI_CPHY_MAX_TRIOS		3
+
 /**
  * struct phy_configure_opts_mipi_cphy - MIPI C-PHY configuration set
  *
@@ -26,4 +29,61 @@ struct phy_configure_opts_mipi_cphy {
 	u8			trios;
 };
 
+/**
+ * phy_mipi_cphy_config_validate() - Validate a MIPI C-PHY configuration
+ * @cfg: configuration to check
+ *
+ * Return: 0 if @cfg has a symbol rate and one to three trios, -EINVAL
+ * otherwise.
+ */
+static inline int
+phy_mipi_cphy_config_validate(const struct phy_configure_opts_mipi_cphy *cfg)
+{
+	if (!cfg->symbol_rate)
+		return -EINVAL;
+
+	if (cfg->trios < 1 || cfg->trios > PHY_MIPI_CPHY_MAX_TRIOS)
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * phy_mipi_cphy_get_default_config_for_link_freq() - C-PHY configuration
+ * from a link frequency
+ * @link_freq: link frequency in Hz
+ * @trios: number of active trios
+ * @cfg: configuration to fill
+ *
+ * A C-PHY link frequency is half the symbol rate on each trio, the
+ * convention V4L2 uses for the link frequency of a C-PHY transmitter.
+ *
+ * Return: 0 on success, -EINVAL if the resulting configuration is invalid.
+ */
+static inline int
+phy_mipi_cphy_get_default_config_for_link_freq(u64 link_freq,
+					       unsigned int trios,
+					       struct phy_configure_opts_mipi_cphy *cfg)
+{
+	if (trios > PHY_MIPI_CPHY_MAX_TRIOS)
+		return -EINVAL;
+
+	cfg->symbol_rate = link_freq * 2;
+	cfg->trios = trios;
+
+	return phy_mipi_cphy_config_validate(cfg);
+}
+
+/**
+ * phy_mipi_cphy_link_freq() - Link frequency of a MIPI C-PHY configuration
+ * @cfg: configuration
+ *
+ * Return: the link frequency in Hz, half the symbol rate on each trio.
+ */
+static inline u64
+phy_mipi_cphy_link_freq(const struct phy_configure_opts_mipi_cphy *cfg)
+{
+	return cfg->symbol_rate / 2;
+}
+
 #endif /* __PHY_MIPI_CPHY_H_ */

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAC43C83F03
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 14:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EIax7+Eu/99DwKNavWdTWbgAIYD+a/iw95brFQU7UA=; b=iiQS2uYRGgKbNb
	t+OgXXrYWBG16ZknggF/p0//yJY1eJDM/WGRUFZK16vEZzn2X7i6HUwJ+e3vBMPY2Lr6Tud92WfvU
	KFg5vlP6dFmJsJMkd8oHIlFUf2++fgqhNI4SNdXzuUcCVyq61PBGKtnYllskHaFLmZAs1HDUZclWm
	0tbPqJVfUK98HwZ4vDDaBuF5T7IKfQxatd1Cw+z6OXRsmAGbyky5fCL281Lu8UyMTsXn/ThoeL25e
	ekQOcbZ8qezpC+D869qLxqk6mCjomsFLKCpcRWt7NnEfbdk0GRD0oTdnVNqY9z26ssd9OXIsrxz64
	XbncNexmgXeZTDoHOf9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXL4A-0000000BhAN-1k6i;
	Thu, 03 Jul 2025 14:37:34 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXJbG-0000000BQaG-1AmB
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 13:03:39 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3a582e09144so3968378f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Jul 2025 06:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751547817; x=1752152617; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QZSfe8ScDLyAPCu7SJnNpKYFUKNjfHqJRnI+l8UvWvY=;
        b=hxTl/Ao9hJmiWpBalIu8qroPuV1KoIubUcVQ9WIZnEMceo4cuJo+jsHUodElyVa/iz
         tvLuT92jFpD9or2Yh96Wk9+90eNrfgSr7pyxK1Y5JpHl84IaVlnM1qOopY67J8qnDlS6
         PbsolGssRlRM20PKbLugG0YWmS424WRxH2U+SEhIgiCo9uCqg1CikGqNWlWceDLA6Ow+
         R7RpegaHdBV3sJgF6jYZlB7ok4/5g0FGYNH7B2YvoEnOGqlihn5eECPT2kcOZs2RjmKy
         TWYA8oRQNvlSyB5+XgNxlrRND8bz/iXP83EJJnxM9UBSYfTCHk3DB79BAGI2YzxeC6l5
         aZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751547817; x=1752152617;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QZSfe8ScDLyAPCu7SJnNpKYFUKNjfHqJRnI+l8UvWvY=;
        b=rX2vEOHyDWRzp7BsFM23iEJdgCicmuODxHqLMdYH6AzGRcOL/SK+GKNX+YCne7llMk
         D9LWCbcSGpoGUDCCv1zn1o0pO5Dgakbw6gUu98KcoFDerDHwF0NgyLTlWzVSDm+/pXcP
         k6p8kKpGbU9xbC6vyJp/nVLpzdj4nsxQUXzxWiGKdZobVTGJSL1KOhr5sH0/Rig4+yiu
         0QlK7QFWz5jG1KnhL+/I/MW43bC0lf2n4CsyQcaVuiJotvY9LGYxFBt1xN8RCGxnrw+9
         8p1p7qWPRr9fJk50XmfHSMJRAGGSRki4T4mP3veRczgEKY51ExFm/IZyfwuTS3JSqEUP
         G9HQ==
X-Gm-Message-State: AOJu0YzPiJu8+QF3+wqWd7ytMFSws+JzEs1APgKIcVEO+3fveTNKQ1Aj
	gv0m2ygGvqpi9wUt7N4UBQYv2MCXWNIlBM2UHtvMgX5hVyRMx9Rqnf0k9QXTZbSNzHY=
X-Gm-Gg: ASbGnctMrkdIPWobD65NNYg0tNPp2vmhfZXO8SQOfwBVlhmx2ZZgDPp7gl1O6nihjIZ
	ln3y+8Z3gfL2+cez9F2JU7RXRwbpKmIZ5sEs1BhACLrMiNu/19DUZVkYOZeyGEfaor6pwecHgAA
	bof4KswCeUS+J0FChXAlwL8PLFAfaEthmHAQXUIWeihocF4GfZf5WsfGY2vOi4hNSM9/hs1pAxe
	7taUwmXXBtuuHwDyiAAnhT97h9RrRNkWeFwsafT5ndInLd9eUHDDzQn67RJ6ZxgzUsQUv8NcczX
	2IcMRkYOOrPQ6IxZxHt1CuoEV+spj3o0K4P8rfFcGG39tKR6LF/lVT/Md0uW8Eso9YSWquEEVZv
	wOiQr4+x2K7F/6iif
X-Google-Smtp-Source: AGHT+IG51/E9XKuoMXFy9BhdHeNgH/aYH2hcbTIn3vEBmVB6n8QJXhO968aA9OUqfZGicNn0MhgUew==
X-Received: by 2002:a05:6000:42c8:b0:3a5:8a68:b81b with SMTP id ffacd0b85a97d-3b20110d6eemr4137588f8f.44.1751547812391;
        Thu, 03 Jul 2025 06:03:32 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a99693fesm26170005e9.7.2025.07.03.06.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 06:03:31 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 03 Jul 2025 14:03:22 +0100
Subject: [PATCH v2 1/2] phy: add new phy_notify_pmstate() api
MIME-Version: 1.0
Message-Id: <20250703-phy-notify-pmstate-v2-1-fc1690439117@linaro.org>
References: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
In-Reply-To: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3426;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=gh8sRN3FjYoa+bmvakuR9vCpPT3biJ6nBYXCkWZzTAk=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoZn+hs37WK3zdKnMGFDCdBNBhQAm6Eg0k/40e/
 UpGOA4k/ziJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaGZ/oQAKCRDO6LjWAjRy
 uhS8D/0dV+h18Proy+jNLR+vH9JW1GGTp2w7YPINmYeWADF1+jyAobsEyZqgxqzPD0a0uZfKtyy
 48IewtZjaQYOUCyeA/mFFzuPMMuIH6Q7LsvZE+f4MCVmVxppjirduh/iQUDRmjHGMC13cTjzLfP
 +TaKGnrbbWIoUrvVSl1FVGXQTna4jWdlKyXjfa7VYNt7nbUw8ii/3Gf3VZrXXaZrhCvwLflYqU1
 v8JcLzVTf2FF0PBnEdAEcbuXqXXxEaLjJ33euGcG3zAZ+Uhd1hEsigs1WiFUU4qHzL5iQ88hKiV
 9RP4w/6GXiJmwLIrPmfjjl+0aD/2ta/FKHIAo5OzyXGMQa6Ul3e/Ntc6gsjZCjG4ohRzOcids2q
 gXkCLKCaAXm6zBxp5IZbBvgAOUz2pL0wLxLY2pzFEKQDj1nQjhNE/Ayr+9ndt8LM/8QFyETh5Fb
 hdptmJ0hTJdd7LK5XiPPhdEI1W2C9cHT7Gup/0pOKBUNAKzMzNq03YjhMNp33Csiu1mHmqHpzfr
 QX/CUR4u3HpMbxQb/GiQzbhg49ajkiHHID3leKk7rvSrJoYas24zpIPyPamvUC9/o7Bu/15uYGK
 CtswbRE6B3wUOB1wdCxpDVuKxedz438IHSUynvyTAKBaKLA5Nhq7PQjhHh6l5856MgvVASAyx7Y
 wSu9KXcO0sIct4Q==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_060338_317971_733AA4BB 
X-CRM114-Status: GOOD (  14.47  )
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

Add a new phy_notify_pmstate() api that notifies and configures a phy for a
given PM link state transition.

This is intended to be by phy drivers which need to do some runtime
configuration of parameters during the transition that can't be handled by
phy_calibrate() or phy_power_{on|off}().

The first usage of this API is in the Samsung UFS phy that needs to issue
some register writes when entering and exiting the hibernate link state.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
 include/linux/phy/phy.h | 25 +++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 04a5a34e7a950ae94fae915673c25d476fc071c1..0b29bc2c709890d7fc27d1480a35cda6a826fd30 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
 }
 EXPORT_SYMBOL_GPL(phy_notify_disconnect);
 
+/**
+ * phy_notify_pmstate() - phy link state notification
+ * @phy: the phy returned by phy_get()
+ * @state: the link state
+ *
+ * Notify the phy of some PM link state transition. Used to notify and
+ * configure the phy accordingly.
+ *
+ * Returns: %0 if successful, a negative error code otherwise
+ */
+int phy_notify_pmstate(struct phy *phy, enum phy_linkstate state)
+{
+	int ret;
+
+	if (!phy || !phy->ops->notify_pmstate)
+		return 0;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->notify_pmstate(phy, state);
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_notify_pmstate);
+
 /**
  * phy_configure() - Changes the phy parameters
  * @phy: the phy returned by phy_get()
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 13add0c2c40721fe9ca3f0350d13c035cd25af45..d904ec4edb7e2be41fcf6ab780d3148c2ee8a950 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -53,6 +53,11 @@ enum phy_media {
 	PHY_MEDIA_DAC,
 };
 
+enum phy_linkstate {
+	PHY_UFS_HIBERN8_ENTER,
+	PHY_UFS_HIBERN8_EXIT,
+};
+
 /**
  * union phy_configure_opts - Opaque generic phy configuration
  *
@@ -132,6 +137,18 @@ struct phy_ops {
 	int	(*connect)(struct phy *phy, int port);
 	int	(*disconnect)(struct phy *phy, int port);
 
+	/**
+	 * @notify_pmstate:
+	 *
+	 * Optional.
+	 *
+	 * Used to notify and configure the phy for a PM link state
+	 * transition.
+	 *
+	 * Returns: 0 if successful, an negative error code otherwise
+	 */
+	int	(*notify_pmstate)(struct phy *phy, enum phy_linkstate state);
+
 	void	(*release)(struct phy *phy);
 	struct module *owner;
 };
@@ -255,6 +272,7 @@ int phy_reset(struct phy *phy);
 int phy_calibrate(struct phy *phy);
 int phy_notify_connect(struct phy *phy, int port);
 int phy_notify_disconnect(struct phy *phy, int port);
+int phy_notify_pmstate(struct phy *phy, enum phy_linkstate state);
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return phy->attrs.bus_width;
@@ -412,6 +430,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
 	return -ENOSYS;
 }
 
+static inline int phy_notify_pmstate(struct phy *phy, enum phy_linkstate state)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
 static inline int phy_configure(struct phy *phy,
 				union phy_configure_opts *opts)
 {

-- 
2.50.0.727.gbf7dc18ff4-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

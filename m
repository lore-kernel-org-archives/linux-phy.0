Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BBB0CD13DF
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCcI6mKXzEQnEu0J4YMf044xBdwX4y8PxVDgqtY3IeA=; b=LSsW77ktKDp1ao
	Z02W7J/Gys13S4nPbmn067DUyM8SIS6EU2b8VcR2xjyngVmtSozDjyAeUmlOrxG3IBvGUaLCPT2LS
	/Uka7q038Vd/GGNwBOntrSnhg8lNctEDdcdho1ZfJXjzIGLiUjLKgQezjeTEma5etelvRF1lhSgSO
	0hIjivrPWRC159Ty2CC1lhl3EQU+dJvTaMsovYpHy3+V6UnrSEKdZCSzxEW7h3D+Z7/sFNTWCvcix
	aXBYcmDLW5zUrdNKj7WdXDJNT1S5E8kEGmkxiVS8WOiCQYQspluPjhEcVsQizfmvEmvtgnIhgyXmM
	S5UTOpuWvFBBHKlDJ1GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDMP-000000099NP-0YEN;
	Wed, 12 Nov 2025 16:06:17 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDML-000000099Jp-2HBP
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:06:15 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4710022571cso9143655e9.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 08:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762963572; x=1763568372; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R2s7+BrGGG8vXeljE4273Hpn3eddX5sKox/gHy4ML+U=;
        b=p4RCYgCSxiwGdo1kKayqmpYn598ejDyFNgtnfCeoi4M2dbKAapkdPFqWAujeHnJDyJ
         YYHZGD7BM2AOqL7BvKC7j9sbHGYez1PY+Un37q9CmCMygF6t7gDbVEMRKF1+KFAdtswD
         7u707fnUdbHjnpy2Z/aqIXFE+xQUWKmH5XrWQNl5vCoRQ6B0CJSm5uBxHKr0V9ugJaKZ
         w3lGzVyQCtO1MfG0FsaHgm+06/2AUxzGZ3SbOdlpCFJ3J6Fh04kl5fcTeKs40bAVN+Oa
         tDI+qtRU17d32W0ao9NiZNEEdleSftBrcaBewv5ulW7OMrMozZiltQMNYqBUWXHWlu9R
         /73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762963572; x=1763568372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R2s7+BrGGG8vXeljE4273Hpn3eddX5sKox/gHy4ML+U=;
        b=FKSeBo/hPAF+hwXH9ueyd9ha0Rv8GbGgbDd1m8+48WNSvFuMq/Z2sUBXb7fmjd65Iw
         ow6sjvbwos5hp13hNKFz7AgSJRmWs9jJlNUXcqtUGNytzXkd/mqgUEOjLY/y1HXjsAfn
         Lnh18WuNl0YjRlY5q96yWZISejFIEj8PSmzPbdqmsGHs7roMDEi1KWohI0TLoE1kIQpr
         gtV9/wr8enjKKGsnbXI9vGvATkfWtGvN5hM8I57wpso3b7qQQjD3zXAvGAl4OMPkmygk
         3srDRaKGj57O2nnXWjeDQQz32yjFQCMjZKjctuMroa4q3fPpnxh7Vv2yPIh6UhSqZWai
         21Qg==
X-Gm-Message-State: AOJu0YzA78SDx4K0APcBEzTVuZM2vMfDxqv81vjXg6t1pF5aG51QSa0P
	W9ujiJn9MOkysDNxMswd0vmZZrKTeSrDw7VJOCJgItu8BFQA8bumUicaPC2BE1tmpBg=
X-Gm-Gg: ASbGncsWbwFHLyOhoQ3rMeVUBzqpvms1XhEE2maTUe6b5lus1xQ3Kw946lIpuGOCfEH
	piB6uh+Y4D1fkQO8ZHbonvkLcrUJBioE0AHgjf396TnUarrALUuBMFiAtIJttm5mMqYzsHojaDf
	KPzi+6H/9J4Q0I8T4u3sqW5ZiQgkLtKUeAdzBPiBGaWqQkJeDgfaC6TEm6BKohJMPs5cy2kYDXI
	Z8SY+ZRKlpo5VgmpmfUoL6XTY+d9b4ULnypqI1DVI9DIvqaX4TwcFJSzKZg2MH5oU28sQSFeYwK
	sZqc+SYhBfa3uOIjYE2ZQV6Kr49jUOGAVQWwzrP+jD5hcf6mX9j0kGY3nnPLxZm8BkikWSdIszw
	FY8SLPRY0wNZ4StCUIRRCKsQ7AaZ0U5EurtoP2B4AqaC6Mke8buZU+FbYADm0sv+vBeOX1tIp5K
	FFlm7UXW12W+rFtkRPzkRaWEnDtTzGX9s=
X-Google-Smtp-Source: AGHT+IHKHrOdUjXjAels/8ReX0ShDMbuZUygUAhmYWOg3ziJ8hrXgoDI7dWK+HfbhxmbPNnO1otz/Q==
X-Received: by 2002:a05:600c:1391:b0:475:dd89:abc with SMTP id 5b1f17b1804b1-4778707d314mr29493675e9.11.1762963571622;
        Wed, 12 Nov 2025 08:06:11 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e95327sm41226855e9.12.2025.11.12.08.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 08:06:11 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Nov 2025 16:05:58 +0000
Subject: [PATCH v4 1/2] phy: add new phy_notify_state() api
MIME-Version: 1.0
Message-Id: <20251112-phy-notify-pmstate-v4-1-717d78009d15@linaro.org>
References: <20251112-phy-notify-pmstate-v4-0-717d78009d15@linaro.org>
In-Reply-To: <20251112-phy-notify-pmstate-v4-0-717d78009d15@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3632;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=/DmYL+Sj+FG4hqT/OSvBRhos+Di8zc6kpbnkQ+JHZww=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFLBwgvMkGPlXQnGj7GfKo4tBFrDS/Q9ImctC2
 Tm2ORZ0t06JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRSwcAAKCRDO6LjWAjRy
 uplzD/9HJ7MXRCGkSUZ6+T7w3qXwm7rq5u5AUn7VCR3X0m0loqgOBNiJTmlvB5ct9KPWV1GSgMG
 6ecW7FV1pj/lOXI8QjLy7GzSWcFwFdBgfSmBsC/7g+Vq/BSthcVJu+rTu8lwnLA7vNAUQyCZAAD
 Xr0Zuh/vCm+lUE9mbW8UOC3AUMIHC1IthE8ITWliWfbKfZcil4deKK9mJIYPQTYhzVGfAxqVMae
 i57tRREepnq0aE8nVL2+gIuaN/qq7VxlpP7AdCCmVtK36dwxDXJe+UpynFUgDT8r8gCOEdDluAv
 mW1taJA8xWQtPfKqaR9qbtm54sOliXFmnq9ImhHxKlItHueJKXrRZmD+2hbs0yQ9D6UB/ZehSZa
 l5f04XagJkdEQXcJtQ9kWO/W0t685SDDvSnk3FP/9Zl00BiCM3syKPo42fAuTAu09fT8rVgCszq
 uyG1IoXKEQotqtBwfe+GsBnC/s8b43IjmOqbAWv3YqjF85hXg65XdUUpOfX2DIhY5uBTcgMzM3W
 zbiXl1CKeujw9qkjzz2T8k7KKEnKtPKlC2FygnJD/2F8HlAgFjySHANjgQC+msNOFNDjZJFizfD
 bIbHSFxsyV1A+RmTeNAY5cJbho4VxgPGWIXY4qreNGZ0yfNAlUouqRMrM+DwKTDbpFUqdItEt7i
 a8aIwMqIhgdpiMA==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_080613_611770_59283BF9 
X-CRM114-Status: GOOD (  14.93  )
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

Add a new phy_notify_state() api that notifies and configures a phy for a
given state transition.

This is intended to be used by phy drivers which need to do some runtime
configuration of parameters that can't be handled by phy_calibrate() or
phy_power_{on|off}().

The first usage of this API is in the Samsung UFS phy that needs to issue
some register writes when entering and exiting the hibernate link state.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v4
 - Add missing 'used' word (Vinod)
---
 drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
 include/linux/phy/phy.h | 19 +++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 04a5a34e7a950ae94fae915673c25d476fc071c1..60be8af984bf06649ef00e695d0ed4ced597cdb9 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
 }
 EXPORT_SYMBOL_GPL(phy_notify_disconnect);
 
+/**
+ * phy_notify_state() - phy state notification
+ * @phy: the PHY returned by phy_get()
+ * @state: the PHY state
+ *
+ * Notify the PHY of a state transition. Used to notify and
+ * configure the PHY accordingly.
+ *
+ * Returns: %0 if successful, a negative error code otherwise
+ */
+int phy_notify_state(struct phy *phy, union phy_notify state)
+{
+	int ret;
+
+	if (!phy || !phy->ops->notify_phystate)
+		return 0;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->notify_phystate(phy, state);
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_notify_state);
+
 /**
  * phy_configure() - Changes the phy parameters
  * @phy: the phy returned by phy_get()
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 13add0c2c40721fe9ca3f0350d13c035cd25af45..664d0864c3a5042949cb121e982368fe0a97827f 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -53,6 +53,15 @@ enum phy_media {
 	PHY_MEDIA_DAC,
 };
 
+enum phy_ufs_state {
+	PHY_UFS_HIBERN8_ENTER,
+	PHY_UFS_HIBERN8_EXIT,
+};
+
+union phy_notify {
+	enum phy_ufs_state ufs_state;
+};
+
 /**
  * union phy_configure_opts - Opaque generic phy configuration
  *
@@ -83,6 +92,7 @@ union phy_configure_opts {
  * @set_speed: set the speed of the phy (optional)
  * @reset: resetting the phy
  * @calibrate: calibrate the phy
+ * @notify_phystate: notify and configure the phy for a particular state
  * @release: ops to be performed while the consumer relinquishes the PHY
  * @owner: the module owner containing the ops
  */
@@ -132,6 +142,7 @@ struct phy_ops {
 	int	(*connect)(struct phy *phy, int port);
 	int	(*disconnect)(struct phy *phy, int port);
 
+	int	(*notify_phystate)(struct phy *phy, union phy_notify state);
 	void	(*release)(struct phy *phy);
 	struct module *owner;
 };
@@ -255,6 +266,7 @@ int phy_reset(struct phy *phy);
 int phy_calibrate(struct phy *phy);
 int phy_notify_connect(struct phy *phy, int port);
 int phy_notify_disconnect(struct phy *phy, int port);
+int phy_notify_state(struct phy *phy, union phy_notify state);
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return phy->attrs.bus_width;
@@ -412,6 +424,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
 	return -ENOSYS;
 }
 
+static inline int phy_notify_phystate(struct phy *phy, union phy_notify state)
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
2.51.2.1041.gc1ab5b90ca-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

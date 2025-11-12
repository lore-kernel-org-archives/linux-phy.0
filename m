Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798F5CD3421
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWQIsP1JSju1bByFcnIrh0ODhbDslHup6Ht9HXPiRIk=; b=geltH/O4+sYtMU
	OkDM35StPKXTVEu5AqVCm5KubX7EwZvPUgsFSgAbpLGMLnMAO68S5goX93SQ5HTGQDZlcmj/j0ko9
	5DtswIflR0Mm5K9tVfZ00a/qZEQCb/mUSiheZGoUNTb+p7G+v3QIyDwXZz7mHH3YOh1tEhP3bzgf9
	CA56seBm71uk6aiqf9rWpPW9/BxMVVlFNbYnx0qDMBRapC4MNnMc4yzBMD/sigJjIRA8BBPcrE+pR
	L+nOqvcJ13MfWY30x9M3lm0VrCdJsoOnDQPDOCRTY/eY1cI/RxQQGQagP5UJcbZSR2BHN4/hI9paR
	Hq0GDy2nV2pC6I1CO1gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDgn-00000009B5X-0mu9;
	Wed, 12 Nov 2025 16:27:21 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDgj-00000009B34-4BZq
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:27:19 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4777a9aeedaso9476785e9.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 08:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762964836; x=1763569636; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dAKdburdmTrd3xFQbH7tEy2HoAp3nACgzFyFbbo8g0k=;
        b=yGm/08szW6P+PPWbMXdkl3/VW5wC0XVsUzi658GhVUQfsSUiSHzmu37SqBq/kSwl4t
         lqKSx7VzSHaFg1yxG7oogiLwFe1cdyRmjGgzctpkap8CuNqu2ANOn68L4pPCUcMAXIE/
         TNsr/fEFk74l2vkIlzmn0ItEKGcW7vRlNOr8l/kbeXv1phdmKStKY8T5zJxXo+IhnkOc
         dUhk98+HGEFe5Ob9S0yq83YezBXTtR8WqTiyHMbgKh7ikHoRwadusNiB50klHs9Z+PQl
         Pzhfb0cr3dvMbU2s0VueOehAyslAKNEXz0B9dARPd/DwIKTjwY7hMTmGj4oeZguwu7hr
         cJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762964836; x=1763569636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dAKdburdmTrd3xFQbH7tEy2HoAp3nACgzFyFbbo8g0k=;
        b=cgJrUDlZ/I+7Q0w+ZEh5N7hGBSQOaJRp1xsGPnfR30+52rpk67SlhhCy+9h3pegw8H
         r2xKMIJ1PoRXc6Ji49p99GT3x5e7GjEhkp5etilVxVGGRyr6XxRXmWr9rxm6kM4kVQB7
         7/iPUFo34dO7G+bsEwmlQmTajUH6rmQIbvnLSHgiPERQwjcQXoA1L+TFgy/7+fmKAX1Q
         9vn6/nq9CUP65qi/kyMbjM1FfNraAP3F93EWPOMi1oHpwhUalRIJC82GyWOegScO6Z8O
         SDEivMBJUHzu7Rji07ONvKP0s0IAtxYry9bpoAC9v9cv4auPdUV67FiEj46j0cFEi114
         iytQ==
X-Gm-Message-State: AOJu0Yz4M2nsq5NwBeIVOMGeKHfYN1+VhG87PRGvK2aEfFgNuCsnOqUc
	LHg8sVnc6Y4XzfRByJtNKIwosCO0LkxZCZJZp3Umh/8gd43oEmcGRmNwd3PgK6c+2kGS71BI3Wg
	4x1jJpvk=
X-Gm-Gg: ASbGnctd3DmmhtIrUbN3W2ljzQUk2Gqw1Q4Na+tceaGnfGmj8aIet22WJZhjSdgee3+
	sOnpc/q+mksk8soPdU/YGM8lqdiWo4wfAWTtQJ2CqMBjTXxK6RL5nSfWf97Q+JnhMNNRjyEfDeD
	xkuQAr+MP3PthR64B7anMySOUqSw6+XtagaUZLcfaqND5yueF5+N5ZSHD6BNHGBQj9myyg2EyQB
	rOvba8nct5QUobAfODtoHyU49srG1MfcrJOIGBHCL8Dd8xtVUPMfIu/FI2QjaWT8a+r/pUVQhNR
	SJ3DhyqnauSVah/+hxjCBzyv9I+gSgkIE8P4CjoCZMvKu8DZ7SvoP9ekvdEm9GDCf/fJQ0Oeo5j
	QuMzQjRZ6ChiTPbp7nWF3gubdFDt4vBsyC8ciCZGwjPYMv9R+dKmkKtypUglcXY4f0syDtuBKg8
	7ZJ2Zs5G7qjeA+nVh9sYKHBP1/qrLtZ5k=
X-Google-Smtp-Source: AGHT+IFqo3/svwWqD0iD1WGGUDvvT++y/w5W7U0XhvmlLgCSNPX5h0N4MUoKFDwPP5zIqH55u/pB7w==
X-Received: by 2002:a05:600c:1391:b0:477:5cc6:7e44 with SMTP id 5b1f17b1804b1-4778704d776mr29462015e9.11.1762964835730;
        Wed, 12 Nov 2025 08:27:15 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e36ca3sm48534815e9.5.2025.11.12.08.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 08:27:15 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Nov 2025 16:27:06 +0000
Subject: [PATCH v5 1/2] phy: add new phy_notify_state() api
MIME-Version: 1.0
Message-Id: <20251112-phy-notify-pmstate-v5-1-39df622d8fcb@linaro.org>
References: <20251112-phy-notify-pmstate-v5-0-39df622d8fcb@linaro.org>
In-Reply-To: <20251112-phy-notify-pmstate-v5-0-39df622d8fcb@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3708;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=DjGwOCNkvyUE4A7k0D/F77jFR+qtAXMy5dKibtq/0dY=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFLVfIqxBioAhOzku1ZwQVC5Gs7ki7qKHySjkQ
 rgVwmlIR3GJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRS1XwAKCRDO6LjWAjRy
 upF+D/9ff2Zl3hJeeYUtZ+jPkL6DLhM9xU1xU3Yp1gA/XZLtyDMog2pNBCXhej5Tdw+Q92o5GDR
 QMF5/gtbNkazmxrbh3LPUWnP6TjP8Om8E4upWlcRpqmPpYti7vOQlV/w3jwi0SQGEZpd8PHQcii
 PIRLrX3BSPZFxBn/5ahvGrnglnlH1+K5fzllWbM+ZGqI/+lLHBcckfhcwvvbavHWh/jG1Ah0660
 m7tkJYaDpoKvEiIlmveZySppTu+yzR0XtFiR9PiisvGyzjFCfqgCjlubSRtOFQOe8gsDGz5tARP
 0Q6AglGz+P3c+oAwKcYM50L7yvMHmNVZWg4Xmt1I/ISN8v/J4Ot/lPdjvLBdgoVNL4H8+DGxB/j
 QGfIlkkBfdsCW7rcFejNVKFgVwxPA+X+Sz7YazyTgiTmIzHH7J2SYGM3/U0F0yXY5LQRcoCM104
 NQkdY4DlxdVhMWuVi0mbFOk0qHWBQ5gBHc/DtWXBdJj8ks2jk+CW8euND0drJK66DHKDn/NW6ny
 VP2QzrLnb5FXc+T48yA6VjRR0PrH3AHZ6ulxWiFJ4IU36WX/sRCz+xBvyI4oo4zzG3lzJNXxzPO
 O+S88sBnSEcHxXSM01yqY0X3iZ0DRs7Byz0jWYMm7o848Sr+ftCxj51CiCVvfz7PrRyVWo9uEa3
 Tt60bKvKELq+hww==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_082718_082615_A4321601 
X-CRM114-Status: GOOD (  14.70  )
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
Changes in v5
- Fix typo phy_notify_phystate to phy_notify_state (Russell)

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
index 13add0c2c40721fe9ca3f0350d13c035cd25af45..2af0d01ebb39f27dfb34ccb5140771beef8288d5 100644
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
 
+static inline int phy_notify_state(struct phy *phy, union phy_notify state)
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

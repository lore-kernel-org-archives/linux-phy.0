Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80B05C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 02:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dej824NiWi9h/dZGUQ3PlS53IPCUwmESSvp0DNrvbE=; b=xkkClYd1e9jj8s
	kEdZ7nsyonDjZo2nDMkWDjgI4KJ2PiTVmHZirhe23UevmBTVRJIKKd/1osv60gkYWURXS/hBCOimo
	SBrkuq8UKlRGq/Y62AA5NpBt8vfhXwxadL4d6H4Kj2pzSo+VmYP47HLNhg0vjX31KNhMX7UYayPoA
	z9IkN6K8CdE/RkaGib4GHtFH6WCxdmTwgdeeEhOTFji8j5wZHku7JhOpylBp7HWP5/HPIWziRjZL0
	E5sOD6lECImRHEulQFpZ4KMcR0Ic0gzDHybqKfYm6FAqaUWKzSywIo9oBLcfnztEEmaQa9xKB7PPc
	k+kHVbv4o+AwLNCYZfxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYZ-000000041bl-0t5a;
	Tue, 22 Sep 2026 02:48:31 +0000
Received: from mail-pj2-x1c.google.com ([2607:f8b0:4864:39::1c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYU-000000041Zr-3TcW
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 02:48:27 +0000
Received: by mail-pj2-x1c.google.com with SMTP id d9443c01a7336-2dd77300816so10732935ad.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 19:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790045306; x=1790650106; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=273RPbWG7jPvSKiSM2cb6VF23JcSKRk4gJRjLYycPbI=;
        b=CkLcMEcrJubVSG7U7SWJ/uDr9WcyITapSLq+QFJWOypCGwRknCt16kXJidfPlMJLEJ
         F99BUhYaU2QzsDYl3xbOf53btaKTWQnvrAi6ur4ha1yxHzIp4fnOr3931w7DkcZSN/xj
         3fTqGPUAEFFc80XXqEG8ZSoysIdcUgNaFS0bk9LBYb4LHJMqlNW+xtypIXsoxpH2JNxi
         mPFVKmcs7yaZYq5qE4aeC/2/eKxezuHxZvowIjjiMcBPsUiDzRRXdRV8DZRGPaMAWoGs
         zWkTAIyGc53o1Az8mv1wtqLo7q0LzDhRrfc6V//ddSxVE/htZRV/d4oIc+U7lfBNuCU6
         gFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790045306; x=1790650106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=273RPbWG7jPvSKiSM2cb6VF23JcSKRk4gJRjLYycPbI=;
        b=snwWlit/7QGEaM8byzw0GAteFRlSBFH2msu4AZ3Y04K6hNn0XRDCW/pqLO0IQ/L9UT
         c41qBeBJ7W9TMXvOonzePuxSiZRScuxccn1TUZZq7iuqy0mvWYnBy6JuDMuvW3gV2xlR
         RnQ77ar9pGcC0RvCjt5aQOXM8R4uihTwOUo+4RzZ8RC33st63VK6NMl2sDLi/9mI0Uts
         LDc5ydul/NLp37VGHTbJunU5uGMxlhP8fpJjW9DykpcR3JxECWROBegz7YWZlzf5ou3G
         EE1zShf/Vm8fSfbFIL0nAUkDe6grzTcNWbrhGv/+FfYYHemYxOe6ZSGECceudZhb8Hsd
         JgVw==
X-Forwarded-Encrypted: i=1; AKwUvBwzwAH2aWP8XSksle3BsxlM472LrSi5L93xkwYvtmzd4QpEhJMYgRD8OM45qd4kdhIbQ+OCAZZNzmA=@lists.infradead.org
X-Gm-Message-State: AFuF++lqltRegB4uon5ftNIXx0wZ6lCWZ+8k38KmDuomboace3C7PRsg
	yOaeV0G2nmIdA9IUQ64UTLLD6573bUOR3hIduINS7C9fcTVPQ8jIcWr7
X-Gm-Gg: AYBFou33bFs8qAkpJD53tfGsx7ouuej+BsEq2Fu1xbd9SUSPHUFJkOL4qS0365ZI4XB
	6isNuyh6WRxJUeKFSWq6CL8jR1OByKzoBtvirFm6KWTO3IsY6pfF2pmaG0uyZQyojtrIvrgKSd3
	vDiUsf+qiGFyVhGE5nee5YFRmdPowyyNub+oPYl+HB0rgpixb5zCza8xOVwdbQifC8EWJ9YoLFw
	aAzwtANNMQRZMDUap18NQdVc1fRXJ2IOAh0qsaFa2Ll6EEIi6O6wd/0WfxAQ6xx+Qi6TVCQq63n
	kOC2pSQjITd6De+uRVO6KK2TE4zrkTysLbUfLzeLZy2xTD91OUcIO1T2b1kdMs2r1Z97MKCODSS
	sTAxOKFJ8lkD7ZYGCftpWhfvCIot1/kvDTdgPiTmprGeUFeuCfsKZi82oP9kZlTbH9h7JWWHICj
	BYORgixB89QTJbd5RbPRE5wE7j45ik2zIQFFdiugE2ZvCovZK+FBRRcHlPaMcVgOXlHP3xdA==
X-Received: by 2002:a17:902:e54d:b0:2df:42af:2fab with SMTP id d9443c01a7336-2df59a5a817mr14138975ad.34.1790045305892;
        Mon, 21 Sep 2026 19:48:25 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df5d02eb4fsm1636465ad.37.2026.09.21.19.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 19:48:25 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Hans de Goede <hansg@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [RFC PATCH 1/5] phy: core: Use EOPNOTSUPP for disabled blob return value
Date: Tue, 22 Sep 2026 10:47:16 +0800
Message-ID: <20260922024724.191412-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260922024724.191412-1-inochiama@gmail.com>
References: <20260922024724.191412-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194826_875155_14F0C5FB 
X-CRM114-Status: GOOD (  12.33  )
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

Currently, the phy subsystem uses ENOSYS for dummy blob functions,
it does not reflect the function state correctly. As kernel already
has EOPNOTSUPP for disabled blob function, replace ENOSYS with
EOPNOTSUPP for a clear return value.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 include/linux/phy/phy.h | 52 ++++++++++++++++++++---------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288a..3e84b54a4b03 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -314,14 +314,14 @@ static inline int phy_pm_runtime_get(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_pm_runtime_get_sync(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline void phy_pm_runtime_put(struct phy *phy)
@@ -332,35 +332,35 @@ static inline int phy_pm_runtime_put_sync(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_init(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_exit(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_power_on(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_power_off(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_set_mode_ext(struct phy *phy, enum phy_mode mode,
@@ -368,7 +368,7 @@ static inline int phy_set_mode_ext(struct phy *phy, enum phy_mode mode,
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 #define phy_set_mode(phy, mode) \
@@ -397,35 +397,35 @@ static inline int phy_reset(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_calibrate(struct phy *phy)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_notify_connect(struct phy *phy, int index)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_notify_disconnect(struct phy *phy, int index)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_notify_state(struct phy *phy, union phy_notify state)
 {
 	if (!phy)
 		return 0;
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_configure(struct phy *phy,
@@ -434,7 +434,7 @@ static inline int phy_configure(struct phy *phy,
 	if (!phy)
 		return 0;
 
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
@@ -443,12 +443,12 @@ static inline int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 	if (!phy)
 		return 0;
 
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline int phy_get_bus_width(struct phy *phy)
 {
-	return -ENOSYS;
+	return -EOPNOTSUPP;
 }
 
 static inline void phy_set_bus_width(struct phy *phy, int bus_width)
@@ -458,12 +458,12 @@ static inline void phy_set_bus_width(struct phy *phy, int bus_width)
 
 static inline struct phy *phy_get(struct device *dev, const char *string)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy *devm_phy_get(struct device *dev, const char *string)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy *devm_phy_optional_get(struct device *dev,
@@ -476,7 +476,7 @@ static inline struct phy *devm_of_phy_get(struct device *dev,
 					  struct device_node *np,
 					  const char *con_id)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy *devm_of_phy_optional_get(struct device *dev,
@@ -490,7 +490,7 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
 						   struct device_node *np,
 						   int index)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline void of_phy_put(struct phy *phy)
@@ -507,27 +507,27 @@ static inline void devm_phy_put(struct device *dev, struct phy *phy)
 
 static inline struct phy *of_phy_get(struct device_node *np, const char *con_id)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy *of_phy_simple_xlate(struct device *dev,
 					      const struct of_phandle_args *args)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy *phy_create(struct device *dev,
 				     struct device_node *node,
 				     const struct phy_ops *ops)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy *devm_phy_create(struct device *dev,
 					  struct device_node *node,
 					  const struct phy_ops *ops)
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline void phy_destroy(struct phy *phy)
@@ -543,7 +543,7 @@ static inline struct phy_provider *__of_phy_provider_register(
 	struct phy * (*of_xlate)(struct device *dev,
 				 const struct of_phandle_args *args))
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline struct phy_provider *__devm_of_phy_provider_register(struct device
@@ -551,7 +551,7 @@ static inline struct phy_provider *__devm_of_phy_provider_register(struct device
 	struct phy * (*of_xlate)(struct device *dev,
 				 const struct of_phandle_args *args))
 {
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-EOPNOTSUPP);
 }
 
 static inline void of_phy_provider_unregister(struct phy_provider *phy_provider)
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

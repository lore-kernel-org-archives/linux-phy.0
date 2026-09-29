Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED518CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6BIcoMw5KLQndzpBAh90oBG0W+3PPYRLj5sB53D0oo=; b=1VsHpDFqXVC4NI
	19We5BfTp7uRkPygVA/5ePvAG4hGh8UM2YRRM5aIMSq8/vzViXO6XtSyXRdv2wN18WXgSlz43Krkg
	Ee7QmOdgYQFj4ZfjiK89uxtl5dmcnEVEQpvageqYPRtqwnNo0TxB8QXxlAGrDlgHNNlY7aLRCR8PW
	nZ69VZH7hRrVm0OT34d/R+hU3km8MjdxB3JU621TFGrCwXdFtMbbTifO38sHxPUDt7kKixSqYgT3W
	QBsj+IU5p2Yzs6KpPnm+ICkxPw9qKo7h5zpLK0S84s0QDrLQjlvF2tAwOOTyfZWyYbww5DYqPuqgA
	5yt7faKH7eNTbtkYRAYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTZz-00000002sKo-2hoX;
	Tue, 29 Sep 2026 08:52:51 +0000
Received: from mail-pj2-x0e.google.com ([2607:f8b0:4864:39::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTZw-00000002sJ9-3voY
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:52:50 +0000
Received: by mail-pj2-x0e.google.com with SMTP id 98e67ed59e1d1-39d654f02baso1697467a91.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 01:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790671968; x=1791276768; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=igoxe3cxGkJq4SLiQXpcx4KeGIWifNJAVf3ouJtaOBU=;
        b=UknVWpEZlQYS/nY0STSLy5CeJi54sCxmwnB9o04wjW4PyaHCNjVUmP8YZeF0PXW24z
         IShOQqV5FOG5XQtvFuj3iFuDej+zZNGr5E91HVlZR1jyrCmwBEKr9FpiUmeOn/x9LAzt
         Jc0trn38ow/6y/dMYSZsYkFIkWOsakhNo9UCb6ts80SxXWJB0VzVGG6ud2ZTnGTljR6A
         oqPMNBJLIIS97QIs+ZJ5L8Oa+wLdz1sIc9t57kQo5B4Dx91bHwgcicrJHtchdLVYeL56
         qKbe+eXf/UQPGEx/0n/HB737eOTiiT6TL8GJONjci7LDQNwSVFh/DBx2yytKesfkMR7h
         QeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790671968; x=1791276768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=igoxe3cxGkJq4SLiQXpcx4KeGIWifNJAVf3ouJtaOBU=;
        b=GYJhKML+xjMb2iXM3vJ5TmF+Sh7tn/rAtRNITDXhemXz+Kigchf/3ugvwBtyLwpSsB
         Jg0zDbQr8baGFOo/C2nAUoArOOcisvjxaz09CFdNYAtdaIBwamw95Ggu8ztLtQdL6I7S
         TvjObwy81MfBEuA2doDw4JSO9pQKWxR+CSEwRuBflyMV6pMxRk1aFm1AqnFwUBb8yI33
         zbJZ8ORmRYVZ8Yjh87YmA7hme3Ix+sOrFzFMK7uumL8qAhVOaLAUmFty6vyyPJ6I4EhB
         bArG6+r+8JTB6iDALgkgX1VnpahrL4vOoVz8O9ocTHB8eOAmVC0KqiH3ugubzmRdmslw
         /Kvg==
X-Forwarded-Encrypted: i=1; AKwUvByWF7yaAg9WReFYwcCx5SAnyWxB8oz7GD23i05hyoKlMloMRP87TRoyW5T2/271C4EFcLnGbA/qnTw=@lists.infradead.org
X-Gm-Message-State: AFq9FYIXVo5ssF4Ak3T33JWnctsxME6lsFI8iHnh/gWzWpBJAO5OPvIo
	CSpjr8Mm2c7wLkmDjaTrq+m50OzyAFZZr0ecfUasXkznPLNKvWClB14Y
X-Gm-Gg: AYBFou2lp8HZRV3mHjOjgxIU2Ohu0Rd3MVNOO4pnGi2PPqK2NOiwO7NrtM14QCP/ysw
	Af/qtRFPlGT71sCfTCrcM4rB9nKwIUH2ZK59G36bc4bdG32Y4kif/CgdV9LwRiKp44ktQu+X/Xk
	RevwHMA5bcz9D+LZnY8xO7LLEUR3T+rcXEw+Ri2AY9IGLvf0XLPiqTayEt2k5KCBx1EwHmnFvVN
	+PLG+fWU/oQ2BFwrmieMrKSsR+ibvgVYdppXaKvHBlVuNFhlJe2bfkQTbuCjsNP16s96TzbG2bC
	NhJTbzKp/bYaoVAgJ9q4/Qi+K/MXR/OF51nGyXk7MSMA3ew0liPWxw5yOjfihba9ljztEJzO+Tq
	IR1K8SLPaBt8mEJDRiIM0KlRBZiTKfXAD3F29oTsW+qKb++PsvmI/iSkPz8PCKrCpoooV77AmAv
	YUJf0JjZ2MW83Fwkc+SzkpYOJwsmgjj/s+pxCEiY7La81eawvaZdRi3vZd79IEmXXNfEGT
X-Received: by 2002:a17:90a:da8d:b0:3a4:a2d1:3495 with SMTP id 98e67ed59e1d1-3a4a2d138f2mr813035a91.7.1790671967807;
        Tue, 29 Sep 2026 01:52:47 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a492da42a3sm2177877a91.2.2026.09.29.01.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 01:52:47 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v4 1/5] phy: core: Add common helper to add phy phandle device link
Date: Tue, 29 Sep 2026 16:52:31 +0800
Message-ID: <20260929085235.469515-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260929085235.469515-1-inochiama@gmail.com>
References: <20260929085235.469515-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_015248_978115_992E98A7 
X-CRM114-Status: GOOD (  13.37  )
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

It is very common for adding a device link for phy phandle
for device managed phy helper functions. So add a common
helper for future reuse.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-core.c | 39 ++++++++++++++++++++++++---------------
 1 file changed, 24 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53..7be649f14797 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -606,6 +606,27 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 }
 EXPORT_SYMBOL_GPL(phy_validate);
 
+/**
+ * phy_add_device_link() - Associate the phy with the device
+ * @dev: the device consuming the PHY
+ * @phy: the PHY supplied to @dev
+ *
+ * Add a device link with @dev as the consumer and @phy as the
+ * PHY supplier.
+ */
+static void phy_add_device_link(struct device *dev, struct phy *phy)
+{
+	struct device_link *link;
+
+	if (!phy)
+		return;
+
+	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
+	if (!link)
+		dev_dbg(dev, "failed to create device link to %s\n",
+			dev_name(phy->dev.parent));
+}
+
 /**
  * _of_phy_get() - lookup and obtain a reference to a phy by phandle
  * @np: device_node for which to get the phy
@@ -784,7 +805,6 @@ struct phy *phy_get(struct device *dev, const char *string)
 {
 	int index = 0;
 	struct phy *phy;
-	struct device_link *link;
 
 	if (dev->of_node) {
 		if (string)
@@ -808,10 +828,7 @@ struct phy *phy_get(struct device *dev, const char *string)
 
 	get_device(&phy->dev);
 
-	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
-	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
-			dev_name(phy->dev.parent));
+	phy_add_device_link(dev, phy);
 
 	return phy;
 }
@@ -885,7 +902,6 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 			    const char *con_id)
 {
 	struct phy **ptr, *phy;
-	struct device_link *link;
 
 	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
 	if (!ptr)
@@ -900,10 +916,7 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 		return phy;
 	}
 
-	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
-	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
-			dev_name(phy->dev.parent));
+	phy_add_device_link(dev, phy);
 
 	return phy;
 }
@@ -955,7 +968,6 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index)
 {
 	struct phy **ptr, *phy;
-	struct device_link *link;
 
 	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
 	if (!ptr)
@@ -977,10 +989,7 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 	*ptr = phy;
 	devres_add(dev, ptr);
 
-	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
-	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
-			dev_name(phy->dev.parent));
+	phy_add_device_link(dev, phy);
 
 	return phy;
 }
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

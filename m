Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38FA8C531F4
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 23:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vzjkl6+3Yw/2iowjOvAgzQ8ljaI/8vdHN6KML9QCt3o=; b=3ugncf9bkwayU9
	8c+yWZonmGJuarLSq7zP9Da8Rlh9GCZDRr0xTjqjrShfTnFw1zoH3hPgueCflGceZmOVuIXgiSYtQ
	XuUBE+iiJfHYKMr95ajTJurUUo1oI1XDQY+TknDxKjLp97GHZyZ80A3KJOIsvywG9VkrTJg73Jy/7
	T6O9YcViF85wQieL2NfOnkYg4FKNg1mdpYDd4LRH7EnO3aQnyH5aFsvFLA3o7WacghV9geiLdunYF
	igSbzMUj8yVp/gczn34Einwl+yBZpkWKDSRx1ibPRZ2OgamJb24s3bsd3CFZEBeAZck6TyRkwaPv4
	weDbMFMZOFhlrwLkrMGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtDtW-0000000CgDA-3zj1;
	Thu, 19 Feb 2026 23:57:18 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtDtU-0000000CgCl-2jk9
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 23:57:17 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-2baab3137bcso1380103eec.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 15:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771545435; x=1772150235; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L/tn3rlV+s5Ib8pBAw6WX/SwGwQbUEk8OO3BWVinzBQ=;
        b=OBwREBi/YQXvNWHA0pd4V++JdMZZ8qdfALd1Z0oQWnnow5mMUrYXiLs/U33XMH2u7N
         AHec//W+sUj/MwNUNPlNtUvMap/c1xmC8sn8N85UuB7T++uiygHCIORR+/vP0SuRptv0
         QxYqKc++UNTAw/QHs/pTp282+kE9S8QW4DeXV2WzqDG5fRDs+uouXyzmk4dPUA6n3vbE
         jaF3fZdO4S+ZzpsCqdXX9MWjUIAMo+u1FteYEBeg/QlF0NXYgxy5VxfB3PYQPwfKLDfw
         5wSKucMIZB0s2Zdm2CpiKt5CzkU1ObPz78uOPIGZnZBLWX2CTeaviJAo9LxBHYZblafL
         lz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771545435; x=1772150235;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/tn3rlV+s5Ib8pBAw6WX/SwGwQbUEk8OO3BWVinzBQ=;
        b=aMR68oOIwANq3T2X3Ks/R+NCDCNlS9FWXVr2pWF6XlMK8Mf9vdwAJCMui9kydKdQED
         h4TDGmMD/dRH7r1J7YZnPXNHlk5Lg9idAQN9WD9VBxBnzRQkRffj1AZSsNCb4wN5fZ0s
         ziFesZEu6HY2jSNToNRrN7igUbpqKWTgMR6Udatisz7vjDq9fK4kSwGpO5cqfaRrPH4w
         hlC6ImDUA3I3WyRrxeIK0kzv6h8WGgPokG7/1L4KzaAaBi1TFyAG+B9ZRkhogilGmDrJ
         aucTsLzQIPfl2j20nDl5LIJge6jQGKqis82GPf2xuGhVWZ72y2jmZqjR9kSnZW4HsqCY
         pF4g==
X-Forwarded-Encrypted: i=1; AJvYcCWTP6CfzDRYSeHAqmjmRSI8ATQ6CWxfXOLMyQ8/yuxHeGuRzhYv1cHza1wsPXpGNeny7VM/GfFlPFo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFyZ/h/PCLHNtS8WBc5XgLTuZGEil/5Z/OkqpVkL8kbODFVW96
	35jwa0gtrvq2bDoE5tXAdJlU896aVw8qafAXN/0Hcf3HbQN1JDkT/UC+
X-Gm-Gg: AZuq6aJoh6WVNsYXpRjRFwAXck8MAmlkAQbACIlJ3+LK7HrAJkEmNrcrxmdEIYSDMgj
	jW9I8MtX7tAvd4GEABnDTcpvSyyWJYkx6HFG6UUh6bKjiksamn7J3TU5TrIEnZvK3GZ3+as3V7Q
	FiZzEHlXnLg+UK6fGlttJFbqf/vOITHglkGZuztrGd+spyeoGJ/ccHrYLrZ9TkpmlKFboPoLwEd
	UHxo7hhcXwoJnD9/MTSmKzcOkWMDQEjU5uVF/I3Cx36L8R+b6dk62SjToQLL8MCg0BqL2owbbOz
	0xHkTHTWwuynnH5Yb02fkB6tPybkJoQKB6RElpUhmf4EiiIHUb4ESdvAgmbR7+34Bhe3iQFUE16
	5b1pAPLSl+asioHdzaChn9fA9+peSfpeb2pD9YiyFHWOKXgq5DE59nf0bpizzAiN2phOQkhhuQc
	UNDsu6ZfG0k4VNozRMRX9n9yilwSLg5XY8l3wHKuc1lRd2BxUxTjWI7efCLJXTDTR6
X-Received: by 2002:a05:7301:3f07:b0:2b7:19f2:6b70 with SMTP id 5a478bee46e88-2bac97ab3b9mr7434358eec.26.1771545435151;
        Thu, 19 Feb 2026 15:57:15 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:9c24:8181:603e:7ad7])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bacb543e1dsm22099845eec.4.2026.02.19.15.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 15:57:14 -0800 (PST)
Date: Thu, 19 Feb 2026 15:57:11 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Johan Hovold <johan+linaro@kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	"Dr. David Alan Gilbert" <linux@treblig.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: core: fix potential UAF in of_phy_simple_xlate()
Message-ID: <aZejMSJ9qqRWb2pX@google.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_155716_701051_66111156 
X-CRM114-Status: GOOD (  11.25  )
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

The implementation put_device()s located device and then uses
container_of() on the pointer. The device may disappear by that time,
resulting in UAF.

Fix the problem by keeping the reference to the framer device,
avoiding getting an extra reference to it in framer_get(), and making
sure to drop the reference in error path when we fail to get the module.

Fixes: e6625db66212 ("phy: core: Simplify API of_phy_simple_xlate() implementation")
Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/phy/phy-core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 4ad396214d0c..cf62eb9ddca9 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -682,10 +682,10 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
 	if (IS_ERR(phy))
 		return phy;
 
-	if (!try_module_get(phy->ops->owner))
+	if (!try_module_get(phy->ops->owner)) {
+		put_device(&phy->dev);
 		return ERR_PTR(-EPROBE_DEFER);
-
-	get_device(&phy->dev);
+	}
 
 	return phy;
 }
@@ -765,7 +765,6 @@ struct phy *of_phy_simple_xlate(struct device *dev,
 	if (!target_dev)
 		return ERR_PTR(-ENODEV);
 
-	put_device(target_dev);
 	return to_phy(target_dev);
 }
 EXPORT_SYMBOL_GPL(of_phy_simple_xlate);
-- 
2.53.0.345.g96ddfc5eaa-goog


-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

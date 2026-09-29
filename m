Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5991CA5FA7
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTajU+J3H1JQiP94s7kGWtLPeyjG0ryiuaPkaZTqrMw=; b=SaNLPYV1OvmuPT
	rrgZ9/N9e5jGdOBuaQHhj3e7lXM66JcK7rf+0rl4OHBOexRfbs4K+9QDIXLlrrftDRRcXeFUgSQ7V
	scMIs0BNXMcR7DTesr1N3hzfrYjdrNjnAPJ3XC2ic1Uiq3A9GEJlga9HINkiBim0zqmQwgjH9SkIX
	ucxiON7Pe02LlsGiPSWNPd1ZF0zXCyi8NOVVevrtl/EdcP1OfTPwxCUQcBscoBzy0JB7D3N6OvsVb
	5WolnPINRXuoOa3ONo+zjtqjshtzdMVTDvnoUEb1xJMUKr/M0yI1qNvItJ5Ws5cAo7Ykbw/+dQ9Sq
	GOybzr0L19qEhcgDSsRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTaA-00000002sSx-1cBE;
	Tue, 29 Sep 2026 08:53:02 +0000
Received: from mail-pz2-x2b.google.com ([2607:f8b0:4864:3b::2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa7-00000002sPy-46QG
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:53:01 +0000
Received: by mail-pz2-x2b.google.com with SMTP id 41be03b00d2f7-cc78dd412cfso1439655a12.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 01:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790671979; x=1791276779; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=natEiwM6lNYiM813fc4eYfICSWQq4v/YxBaqZ21XGiU=;
        b=Ycdc6rhV5aPUZ7nC6pWt6s+21JyDbsRLjpxguWVIVePyey0FAeJytQpZEeG8NWd6UM
         ngPXCBsh2XJVsx9sxtTyIwp3ggTAL3IVR0R/MrR5WPbpXgLQs1sUllWleb51SfzeebHP
         niFfLRWxTlevmJBMUBQoBQnlK+lNo6+QdwjwXABaizbMK1o9TbKlOlJpODdl0cm+zvZI
         9FJOHa5FzNlocuDno3TIu3CRPmtSn6fvaskRP2Or9bIOnrrqZLmidvla5Uon+LTFWKMH
         IPiMGIH6FyXM7TfUroCxJ2/pklqm83CuCE2/yn/GTP3sPgTtqFH+9IIwFAlWMIPS+7Tu
         YNuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790671979; x=1791276779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=natEiwM6lNYiM813fc4eYfICSWQq4v/YxBaqZ21XGiU=;
        b=D+x/0Wpus4zkfBMd5BiOMRmGJNM40vGGo2OqwxBSU3CsbEeB1xl23sztnq/5e1sG3o
         38TTMgwg1J+v0PGLqf0ySDE2G2IeHkgwewWSjcDyzJk8058WapGU1e5vp5t7ej7kJwYV
         An8TWyNEgS36fZfjulaJwEUMeXAVlt75yazNS6Hp3t8wFmn2SlWljrfe2/aZyrwc/5Em
         UXIp0nq2o1kj/Ice8iBVVpMzCdfVVmMQNQmC2MYATAEVlo33R0C2XBZU8IYug+Mupcjg
         XE+WLlnP7zr8/FquKfoiC3iWNbV3rd2zDIS3xrdP6ghgShT+Ran6flcaMEND1bsanp2V
         g85g==
X-Forwarded-Encrypted: i=1; AKwUvBzUrgwWeUDseY7PBq083GuUQLgEsYxhuTQvw7OICttAuwWHIKyDAdrfHdWjbisWzo9yhqqdA0XzJbw=@lists.infradead.org
X-Gm-Message-State: AFq9FYJk0NYIJtKaBoDtyIWA86NCzUnrlZaWSI+nZkFA4/I7DCjkJkdx
	c1Sb9y3ulNJmwQhj05A1zveRC5a8f2RgoNvUFvs+QOqB/dyhZL2xEGhT
X-Gm-Gg: AYBFou12E4y8erIJKlDdQeBrEj12i8NX5KNz0B1tTW3Qhft2hifQ8p5JJKWN+rM7hZD
	9/NuMf035M/jHYVLTIOCMFwA+FZffbl9PNZPyGpISo/w47s1NsH4niYufEb5Lzz3yYQ2yzCuovK
	jj2GcVWY9nZHFjHaa1HMlu3BaRvHHLZQjoBDKqAg64WJbhX16+ou2oZMCGnaH3Hqk6+eVo2763u
	u6EHKMW6cXHkOb7MnQir4fxyv+SmgDaQMWEh/1LA+xPJjBMVBfo2cL86iLMQzEmhuq8uxQbytAa
	Bg1QXCmJt/HGaBCR/C1ML6x2qCosEad0mgZVOLbQYCIqaHodGsDqLbd5b0uIyM2OpZ2HxUg8Aq4
	fc/9PxghGSuKtBQ0MQiYcwldrPpVA3aETmvoeoBIcaL0Er+5BTXrqm3uu4a9oeYRBviulUevchh
	MrnM7tkGExauhH7yrGwBMShrG8RYANzdvNJWTuKQXzgi0vdBa75GqCPd0PY1YLsd+AGqTG
X-Received: by 2002:a17:903:1ae7:b0:2d3:716e:e2ae with SMTP id d9443c01a7336-2df7da5ce18mr136442545ad.6.1790671979024;
        Tue, 29 Sep 2026 01:52:59 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4986a1905sm4296499a91.13.2026.09.29.01.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 01:52:58 -0700 (PDT)
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
Subject: [PATCH v4 5/5] doc: phy: Document some bulk helper functions
Date: Tue, 29 Sep 2026 16:52:35 +0800
Message-ID: <20260929085235.469515-6-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260929085235.469515-1-inochiama@gmail.com>
References: <20260929085235.469515-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_015300_068116_B8CE9453 
X-CRM114-Status: GOOD (  16.76  )
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

Document all newly added bulk helper function, it can be used to manage
a set of PHYs automatically. This is useful when the driver want to
simplify the management of multiple PHYs.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 Documentation/driver-api/phy/phy.rst | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 0865c2e94eec..9d238ba0296d 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -114,6 +114,10 @@ it. This framework provides the following APIs to get a reference to the PHY.
 	struct phy *devm_of_phy_get_by_index(struct device *dev,
 					     struct device_node *np,
 					     int index);
+	int devm_phy_bulk_get_all(struct device *dev,
+				  struct phy_bulk_data **phys);
+	int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
+				     struct phy_bulk_data **phys);
 
 phy_get, devm_phy_get and devm_phy_optional_get can be used to get the PHY.
 In the case of dt boot, the string arguments
@@ -129,6 +133,13 @@ Some generic drivers, such as ehci, may use multiple phys. In this case,
 devm_of_phy_get or devm_of_phy_get_by_index can be used to get a phy
 reference based on name or index.
 
+When a controller needs every PHY listed in a device node's ``phys`` property,
+devm_phy_bulk_get_all() obtains them from the controller's device node.
+devm_of_phy_bulk_get_all() does the same for an explicitly supplied device
+node. On success, these functions return the number of PHYs and store an array
+of ``struct phy_bulk_data`` in ``*phys``. The PHY references and array are
+managed by devres and are released when the device is detached.
+
 It should be noted that NULL is a valid phy reference. All phy
 consumer calls on the NULL phy become NOPs. That is the release calls,
 the phy_init() and phy_exit() calls, and phy_power_on() and
@@ -149,6 +160,19 @@ The general order of calls should be::
     phy_exit()
     [[of_]phy_put()]
 
+For a set of PHYs acquired with devm_phy_bulk_get_all() or
+devm_of_phy_bulk_get_all(), the corresponding order is::
+
+    devm_[of_]phy_bulk_get_all()
+    phy_bulk_init()
+    phy_bulk_power_on()
+    ...
+    phy_bulk_power_off()
+    phy_bulk_exit()
+
+The bulk get-all APIs release the PHY references and the array automatically
+when the device is detached.
+
 Some PHY drivers may not implement :c:func:`phy_init` or :c:func:`phy_power_on`,
 but controllers should always call these functions to be compatible with other
 PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
@@ -221,3 +245,8 @@ DeviceTree Binding
 
 The documentation for PHY dt binding can be found @
 Documentation/devicetree/bindings/phy/phy-bindings.txt
+
+Missing Bulk Helpers
+====================
+Currently, only a few bulk helper functions are added as they have users.
+Function not upstreamed can be found at https://lore.kernel.org/linux-phy/20260904083709.425893-1-inochiama@gmail.com/
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

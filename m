Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4994C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vk2Rv0PWSpOaOfZc29/g6UV+GGkx/xOMvjHVHMM0Ai4=; b=kCHxSVItDBw3vs
	e4hWk+9uJfQcptkyI3Pdbx0GG2YhOOW0vWt2H1CrwvMXv8tpuPVy3AN1QRcz0txo3quSaTMhyeNxY
	RbpuzYaL4nNQufBuSek483bvCn2FJrjJPXuU4w0k8x4Kx+0IO0wrxoLfrbE9nspEy3gpb2x0S14nD
	GnwW0nrvlpa1w9kmNFWKkhgVr8TZ2fB3h2j9mmR8oS9JyBtnMzCj9uqFIOv61demT8fOb5Ws8OMH9
	wVr/7UV/pyrvW5ev6sVOhBrWu1pSB67ZAzyTvXHbS6kx983ghHWOzn4q+/yYu6LcOcPLQV/drzmnl
	Hs/dZpLxxgYyS5vDFkaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOKB-00Ansg-UD; Thu, 07 Apr 2022 09:21:07 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNzt-00AeFp-DX; Thu, 07 Apr 2022 09:00:16 +0000
Received: by mail-qk1-x729.google.com with SMTP id g11so558750qke.1;
 Thu, 07 Apr 2022 02:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aN5mT5XseTWatVt6bcoD7NMS4LCdVfX/RptWXKAKrc0=;
 b=mjoxyh9PZQCMkXRODxS+PxWgXjsdqxNe2k2AN5KmOdIO23yaKL9DVwQMPWJAU3RjAq
 uHxtahIMFBRZVDsQ9uST4zpdlMD7fToCXeeYyHx2Swg8w2ODthjwsQs7fxM9KCLLM7DG
 a7a8A/GWuUrjqNfXHWTZbI6PPOrQlXsfi4fKOE/XtY2DEVfG31t77tED+xEpKlolAECs
 VRpL5j1Dcctai9NhIG8H8PeEgP0alA0FCxq71csFsYp7CU+AlZyY0CDnqvDwk/0easu1
 AnU0SvkgLANK+kwW+NIavdi1xzfannMx9MMNDMDSMB29O7BJfggSdvoe4nWRCNoJ3pOH
 5rBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aN5mT5XseTWatVt6bcoD7NMS4LCdVfX/RptWXKAKrc0=;
 b=OOv28WA4UpGIi4WbxT7OryovXtSNJY1Mu05mN29wPwE2itZLPQj5cFG/7m3CwwQsio
 vXhXU1ZeW0Li2oTQLwul8W5iwMiD/Y3+Tbq3TZM652vIlLul3rrzk1slWzCx9bgP0qo8
 3BlwmM4dOQ/gKpU1RtzUNmd566sd9SZn4+rOPy+aK02o6uudj5rkK0OqvWpLzYHs42rx
 Klm6otHt6qvOwmySyAM4pRNQ0zXZ/77VwA7RlD005VRFm/T/ZaELGv6TongwldUNuqiQ
 A9ad0uBvg8hhwC1xoa1VLXXV0f2C0ZIXflUWeR/4bA84rIVnf9AK3C3fllbDEyrtFMC3
 WeXQ==
X-Gm-Message-State: AOAM532pIhcZ3KRdw6z+fL3Lr6vNDBG7VQZWFVUbOTQ7UwuBuHj3bcaD
 gxgx8oaUN9LRli8ntAQEFgo=
X-Google-Smtp-Source: ABdhPJxqgFtzM+fnzFFy+amc+0Yve7WLUJ2aiCFsq7jk9FKpT9bpqOFs2IvxrX2BataVLBGpo+jkUg==
X-Received: by 2002:a37:98c4:0:b0:69a:e14:16a2 with SMTP id
 a187-20020a3798c4000000b0069a0e1416a2mr255460qke.610.1649322005048; 
 Thu, 07 Apr 2022 02:00:05 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 a23-20020a05620a103700b00699d49c511dsm4689750qkk.104.2022.04.07.02.00.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 02:00:04 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: lv.ruyi@zte.com.cn
To: kishon@ti.com,
	vkoul@kernel.org
Cc: krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com,
 lv.ruyi@zte.com.cn, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy: samsung: fix missing of_node_put()
Date: Thu,  7 Apr 2022 08:59:58 +0000
Message-Id: <20220407085958.2491783-1-lv.ruyi@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_020009_548809_3E96D740 
X-CRM114-Status: UNSURE (   8.88  )
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

From: Lv Ruyi <lv.ruyi@zte.com.cn>

of_parse_phandle returns node pointer with refcount incremented,
use of_node_put() on it when done.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Lv Ruyi <lv.ruyi@zte.com.cn>
---
 drivers/phy/samsung/phy-exynos5250-sata.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
index 9ec234243f7c..6c305a3fe187 100644
--- a/drivers/phy/samsung/phy-exynos5250-sata.c
+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
@@ -187,6 +187,7 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	sata_phy->client = of_find_i2c_device_by_node(node);
+	of_node_put(node);
 	if (!sata_phy->client)
 		return -EPROBE_DEFER;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

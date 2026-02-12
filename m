Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E42A6EB48FC
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 10:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5JER4h5Fm5SvZIOhbPDULZZryQcMQXQ/QHAVKmxT15o=; b=n0weuhKRslQZc+
	rN/JpPnFxaHsHWN5fXkgSnICki+NOqkEdMOFFivQKhhXYSifzAUFxHTIPS+4BLew2GghqIr2IPhe0
	z/JY6V5mdNUxQkMOEJRKHw/aPs21rAbB/MwFTvZI+9GrRT3FdnqDRS+3ac47K8A8+cfQtj/mcll+v
	y2BJ+tUcxk0bPENszpkT3X+VrUdiPuZN9NMOxGf3+sp287m2LJ8SFVXhOKI7k68oLBwsSgaLx7UpQ
	yUeDCybwR8B8WyDKfR6DjAqjDEd16p7JOWugKqt+sqTagqwAtX+/Ln3BcGavOPFf8r5OymFK477r2
	ip9dItFflvC/Nbix51GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU6Y-00000001wyb-29Xy;
	Thu, 12 Feb 2026 10:39:26 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU6W-00000001wyJ-1Vsa
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 10:39:25 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-824484dba4dso2490426b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 02:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770892763; x=1771497563; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UbF954w8wC5OvhQmTKgj/xb2yuAyw1J3tUb8ytlw0Kg=;
        b=Q5Y4ypazXixmdxSu+ym3dhex++A5dX/Wu9na0RO9GKo69uSL0KbbTDOdJaWNZLhpUW
         8Um1jLazdZB+/sRdbMHLq8iLt3B/g+BkC8ydSQ15+BrgHOTKhpHCLUKMSHo3EMmvRjzs
         vuSE25M9IVGuJV0MS+XRqXkngp3z32Vc0sjlpE9m/ogo3+TDqYMFxeOAmhW//3S0FZN9
         w9HQAeUoUgYu+9fLvmsO63xpmkAwapuOprFbYOazbmAkLvWiyAMhaovjpC51CgBRWv1O
         5ScZnm3+L7GudIYMm/TsmEILRACB7FRjWCHMghg14oAP6cyleS7wHgqgC6gynH9cq6Sa
         dx+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892763; x=1771497563;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbF954w8wC5OvhQmTKgj/xb2yuAyw1J3tUb8ytlw0Kg=;
        b=nparGlUo2Noz4tP6RbnX/yPDiuRTo+H0QyT6HsQkZW/qOYzxao9xFllB8KUSA2LHwy
         5zbgWLO+MI4oTkmLt+UZVg5+kkfIcKh8Emgj7GK7/hE3HAzpXVKvqEBtUS+antvzVhqF
         N0o9QAxEvRO18Ph90hluF3rA12CGXIFQmy7O7yoTB7SzGtQIFZRJl/Hy4oiWRFCy5lJy
         bNNdhWbXdlyjhV/qw0P8jetKJ+FhRn7rPd4Awg3OeRcKyySjWwWEgPDj5LAqHX6TxEcd
         GAY7KN/sgRTkXqLNgTOSaUPDf0+ondTjkMGvSx7O9zEpF4ybe/uw89kHJppmCJWoe0Cw
         EIJg==
X-Gm-Message-State: AOJu0YxhN4AZWMRlbNrnRHX5++VWH7aQ3Jo+ENxgP6uy26/HbyrJCLgy
	Jsu6eUiMkk8S3YfpHcDRR8qP18o6gbqAS/8a7C67AIER71TYjvUt18WF
X-Gm-Gg: AZuq6aK5yOu0A3rAbS/kM1y81jJ9tkQSEyTi2RQIHbaEqYru0hox8IoY0H/P3yvR7e5
	ZnYjrppsBvPafYX8xiZ29nyXlfQnMG+UkTdhKTdRu3bbCvok5sgfqypty2loPcAGrdcoSql6Lg/
	CrntQgrxagOSAnXjgalJTtCXfmHkLWTis/1b69IhVAgt8n1oBV8lexzE0S87Tx7bYTRXBi+0PHR
	pku1ey1/1DzCHl+raN+JbycYNlsi0pgt7nQJ4+SmPhjY3LncHCX7nGl1H3nhlE9s3pPShZpWkmw
	LZpcaWyhioqE8Wn2NIXDrx524DrbiasuGWyRY1xKHHo5EZPfwdnkpReX76is/yCXeXn6qWxveSk
	YB3M0Gc1GIDRt6+PH6arv2OQhPMdGr9yIADrMlMk6B+G5klRq2ZRiEaOvSW2PD/Cf2rnU9OC36m
	tmQTHLIVQmk5DNHCPIjj0CTXkZDJ+YHbenVpAL4Q5qigJnvVo=
X-Received: by 2002:a05:6a00:1306:b0:823:1516:45e9 with SMTP id d2e1a72fcca58-824b3012beamr1632385b3a.48.1770892763363;
        Thu, 12 Feb 2026 02:39:23 -0800 (PST)
Received: from junjungu-PC.localdomain ([2408:820c:9008:ba52:dc7:da9e:7bba:3b99])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e81976dsm5645698b3a.52.2026.02.12.02.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 02:39:23 -0800 (PST)
From: Felix Gu <ustc.gu@gmail.com>
Date: Thu, 12 Feb 2026 18:39:19 +0800
Subject: [PATCH v2] phy: ti: j721e-wiz: Fix device node reference leak in
 wiz_get_lane_phy_types()
MIME-Version: 1.0
Message-Id: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
X-B4-Tracking: v=1; b=H4sIANatjWkC/y2Myw7CIBBFf6WZtZgZIPhY+R+mC1KgncQWAwYfT
 f9dJC7PzT1nhewT+wznboXkC2eOSwW562CY7DJ6wa4ySJQGJWrx5I84WXMwqC0qHaA+78kHfrX
 Kta88cX7E9G7RQr/17xM1v5AgEZxDOjqUQanLOFu+7Yc4Q79t2xedbCiTlgAAAA==
X-Change-ID: 20260204-wiz-9a67604a034f
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Jyri Sarha <jsarha@ti.com>, 
 Vladimir Oltean <olteanv@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770892761; l=1492;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=6/iMBiNg4KZMz6h5i0Fc6mR89gpCa1LmmAVzXQEEuL8=;
 b=UCoUiP33+D6Y8NLDTyT8GoF3GlXFfOEEnjjptxlx/ozbana7KWtKrC3UH1fmklj4pU7hFjfn9
 L7eVQZOu9awCOY//KDpujBvgwgtFA8Nol08TM/32QwSXPnDAwh9ZaG9
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_023924_404817_B77EFE56 
X-CRM114-Status: UNSURE (   8.97  )
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

The serdes device_node is obtained using of_get_child_by_name(),
which increments the reference count. However, it is never put,
leading to a reference leak.

Add the missing of_node_put() calls to ensure the reference count is
properly balanced.

Fixes: 7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
Suggested-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
Changes in v2:
- Use of_node_put() suggested by Vladimir Oltean.
- Link to v1: https://lore.kernel.org/r/20260211-wiz-v1-1-fdd018d02f33@gmail.com
---
 drivers/phy/ti/phy-j721e-wiz.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 12a19bf2875c..10110cc2115b 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1428,6 +1428,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 			dev_err(dev,
 				"%s: Reading \"reg\" from \"%s\" failed: %d\n",
 				__func__, subnode->name, ret);
+			of_node_put(serdes);
 			return ret;
 		}
 		of_property_read_u32(subnode, "cdns,num-lanes", &num_lanes);
@@ -1442,6 +1443,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		}
 	}
 
+	of_node_put(serdes);
 	return 0;
 }
 

---
base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
change-id: 20260204-wiz-9a67604a034f

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

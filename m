Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BE22C43334
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 13:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3BrK6tImsCJYWtjZpDlQdMlGapadxrPUFxwGNuVq9Kw=; b=UsN6ufgRcI2eh9
	vupvoSDZfo9LxKBrLVHynICt502ELAv5LTkfvlaHkmfBZql5p5b3I5KAxki+k5rOrWqeANVqPS4Ff
	mKbz/JXQpqSwWAjxIBrxyk8vDl+vhMMSEUJk3hn/5dvZ/W9zOTMG9qEO1FhHVTOBzbnQh+Nodnsl2
	/p3B1K0y3mRVnOR28g7fmqM0jFgVt9mx260IM+mZssxSutRUIydDpYx1sjsn9wgNZnuZ0ADI5gOQW
	oqE86DDJzhdaTWT8DWeRoRahZtO2lZIhL4d5pB6h1QDbwkMnYrJM6hy3P11S0ZFBsMhVOrxUxugIi
	bNXLFk45MGmlypis1d0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx6z6-007VdJ-IN; Fri, 03 Jun 2022 13:05:00 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx6z3-007VcX-Do
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 13:04:58 +0000
Received: by mail-pj1-x1029.google.com with SMTP id j7so7314062pjn.4
        for <linux-phy@lists.infradead.org>; Fri, 03 Jun 2022 06:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rgx3vHNyJbaOi/OKE5EKg7IR7hr4OygDFxk7UQieO18=;
        b=cVglTdj9MVE0vlUFsrXgWQ3B5eWCleCCPkLjgPBT2Ik+i4PYzM55ENiK561uDJc5kr
         oKcjPQeto/5Xx2WiEQug+CqXlqw98LpBqFCX+doTWXvTGH548sazDYwe2SRFsgYWKGmk
         ApdmlNLIYZRFYDwyPM2wfB6USMvZjN13PxVpLXdZbCbrBCo5Q3TDJbJXMYrWE178tAHN
         1qC/NgJfXjoZfbEJTHsb/emXaDEpFR06vwlLBXinial7us4oToDa1VpH0dxTPeY1EcFG
         9okxNJJ23Gj2bUo0U/PJU8d+2l/mb4caQ0CtdvqxR6a8hgz9QXrsfaN7QTiIO5hpw3PU
         WpfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rgx3vHNyJbaOi/OKE5EKg7IR7hr4OygDFxk7UQieO18=;
        b=tWHzE5WXYaeW3quCXv2XRIyEs4Dm3yd4eUZVzOKxj+sVRlrUohCK4Q9ggJoERHMBdR
         GJUttcXvH1vG4Lbyr+WNhBrGNoTkiWvL3Ow3veoc1OxjJIEMKk3/rhvhBY7hKsRhhwxF
         R+YsV6TP3nmswJLYEr0cC5pvXH4Bgsw2RSGdWkZ6rbyxldjNN7xTmOcOrEa+4PETSY9N
         WBxqugp3T76lSmVrr+Mxxt937au+IBdOY8UGAClbF3BMJrOHd3ToLr7no3W2xcG3bzcg
         qAf+YGKTSB7SY8EhPc+ZHRLv+KeqLbgOnoNy9cDuZX/EmjZ5fmPea1pqBi/ypT1YbdQh
         ks8g==
X-Gm-Message-State: AOAM530x8d0BfvdK7iDj8Due2FLHvM7ICPiS/jvrlHw/hB6/8uvwgzEo
	HEMn7/APd4Ppx9vgRodqlzM=
X-Google-Smtp-Source: ABdhPJwruDljVXqATyDd4k7ZLwZ0z6BzXJRH7II470dwr72K7QZ1irkVJ9/f5Du5DV97WEQhocWG6A==
X-Received: by 2002:a17:90b:3b45:b0:1dd:1f37:d159 with SMTP id ot5-20020a17090b3b4500b001dd1f37d159mr46298929pjb.44.1654261495269;
        Fri, 03 Jun 2022 06:04:55 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
        by smtp.googlemail.com with ESMTPSA id s1-20020a63e801000000b003c14af505f8sm5226110pgh.16.2022.06.03.06.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 06:04:54 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Jyri Sarha <jsarha@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: ti: j721e-wiz: Fix refcount leak in wiz_get_lane_phy_types
Date: Fri,  3 Jun 2022 17:04:42 +0400
Message-Id: <20220603130446.36924-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_060457_519141_EF5485AB 
X-CRM114-Status: GOOD (  10.29  )
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

of_get_child_by_name() returns a node pointer with refcount
incremented, we should use of_node_put() on it when not need anymore.
Add missing of_node_put() to avoid refcount leak.

Fixes: 7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
changes in v2:
- update Fixes tag.
v1 Link: https://lore.kernel.org/r/20220602130906.18095-1-linmq006@gmail.com
---
 drivers/phy/ti/phy-j721e-wiz.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index da546c35d1d5..c6b53d4f6643 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1113,6 +1113,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		ret = of_property_read_u32(subnode, "reg", &reg);
 		if (ret) {
 			of_node_put(subnode);
+			of_node_put(serdes);
 			dev_err(dev,
 				"%s: Reading \"reg\" from \"%s\" failed: %d\n",
 				__func__, subnode->name, ret);
@@ -1127,6 +1128,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		for (i = reg; i < reg + num_lanes; i++)
 			wiz->lane_phy_type[i] = phy_type;
 	}
+	of_node_put(serdes);
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

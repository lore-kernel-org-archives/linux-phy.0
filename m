Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 881B5C53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 11:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZEQmgklAeraH0dRNtXvKCMepwR94rusmBMCqaF8OzM=; b=oqpsxMC005JQJg
	OTNtkmPRouUD/3q+4j3Fx2i8HTErl8z7XvXBwyFC4wT1mtrJ+TXgfyPBnOC40xWDuv9IBn2oE83Se
	Cm3coBrSiffsNl0OMt0V5wKRD12QnNZw06iEgwNdKEk0A+sLanbEpr1N3JZl/9rvPb82NX2XdBqXZ
	z2FwrfZP1208QgXFozWxIQ2VMCMVGKIUxTaUAfH/+Hshr1KHDFR4T1iutNoKZFSN8wruwwgzbcVBR
	yiyXbYihtaxhk5YpYpIuVaTlu67nAZMwq9InB5hIyl+9gydeNURi5+vPuNzgHi6eRcfjj2UtGdvWv
	RubL4JocGX633lRGIrzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2o1-00000007n6s-18i4;
	Wed, 29 Jul 2026 11:50:37 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2nx-00000007n4F-1AAm
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 11:50:34 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-495437bb891so6985445e9.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 04:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785325831; x=1785930631; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CyuAS9gVtut3TJKB/a3Pc/Pz60FPBcuwsFJASj9N1Ic=;
        b=AWMzC3BcnvXvUaLk1LF/B+jsSrgKl+rI43UDPlo4Tps+rNTURu1NNNJqbnlSt/D+6f
         UVe4UCrTWrUsxxwJbNCeSdW8cwre5k5AbMeduKJ7jLXvNMbCa9HIRv9xNCd21vYbHKGR
         MJDKBeBUfQTQFpdADnxAaxbbQyeyiJ8CVWVEKIJ5ZoAe7CE5tfHlOCn3EOfgKRB9NUgs
         mA9saZxclUkUJQN7UB1VwhV7iy/SXC1npFRDqx6cU/doBj2kvX1G5ugv5D8xoAcPnJKS
         kGdq+ik+oiFPKogQNIAbw57IKWQLYvVT7XEoOai6VlXyfHBnGJC5biXzV3e2wVKH/cEf
         jnsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785325831; x=1785930631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=CyuAS9gVtut3TJKB/a3Pc/Pz60FPBcuwsFJASj9N1Ic=;
        b=LFVZFQF6FejM7FLqqCvRP3kFQWjGTP6TI06iqjiaxVzi70nlRullcpSFRUXc9IVj3L
         Ulng97rPUoFWuIDUNBv+BW/6Zn2VwMsuLEBDqO8AwF8T7BKIC2IYnfgatopc8DW/ThZb
         J2tZhb0gUkmQRMAC3lCdKr/MKIxpsa9R4JbGLaYUYFJnQt2SlIw8f3MIftrfQeHkKI7C
         MZ5xqsv+OGJ+YBnChaX2mf+rcG+fmo11aKdKvkjs7p8PP8PHFgGJ3WxRYLGOxM9UFOVQ
         mZIihRh6rGThWJ215xrGCAaxbWKUfIEOrJzcWi+L2I2rMWpRRkL0yJnh9kAn+a1EPEeY
         MYfQ==
X-Forwarded-Encrypted: i=1; AHgh+RqUsmKRzFqaRNceufHbMUNv6+meumUP2SpMbTLUQ3uo8wq//NR0Xk2kLW3aBrqlRWJ+kTnWjqViyeI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCJvTffDrHv5v0S8O10RAYcg6RU/HRWL0PU7y42s6NPNPlutMZ
	Gjequ2SZkByr6IOzuySnp8rgU//gqZr5+FL3uAYnkQcDb2Qt9mviCJ0N
X-Gm-Gg: AR+sD13ZNj++3M+KdtmZxKHh8DkckeWWFiVKNsGaCgxQEi/eiQ3ILvPUyON1H9Lnjst
	VVwUo2HWmRs9EScRWLp8oVEucACR3XUPYqeWM5EAKYGmKQFrAyYm7C1DFSkRXH5C5Yik+MH4NTX
	QJcPCDTOrFBweXe3Yiam1475TWEw0qjELDuRI9hQXAbrHxxAAZtJBkYB/bK03cGqMKeeZPsuCHB
	IkzoAoIZ7wSh2NzQOKQKzalxhuzHVkMj5tdhmBxhcuYyb1JqBoUV4L8KgPQIj0xDjP4xxWuC5tC
	dDsqcM4Bi7YBoqG5N5flVW1MoCVkdjKv9CT8goJlFquMpwvTJ2cX806EFIixJWgI5n4auFsWDjz
	GmDRobRBmPudqYFrGEdr8QnvDfbt6an2f7rKgMZBIy/a6DXOVshqCL2aJfd3a+NvK9cwNcsR6n4
	XK/SaARE1H3X66T9Ad7M785ZIxo0MeBuspkCguN1YvYUMJUpY1lJIQXN5oJHiN2L9hzNTI/rwIn
	sBDDGAgr72hCA==
X-Received: by 2002:a05:600c:358e:b0:495:3bc6:d381 with SMTP id 5b1f17b1804b1-497fd2f5086mr20130455e9.2.1785325831270;
        Wed, 29 Jul 2026 04:50:31 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:10b8:4461:ee04:15e2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4957bfc2ff2sm326144165e9.4.2026.07.29.04.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 04:50:31 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 7/9] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
Date: Wed, 29 Jul 2026 12:50:15 +0100
Message-ID: <20260729115022.222340-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
References: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_045033_332545_107DC3D0 
X-CRM114-Status: GOOD (  11.21  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

devm_regulator_get_exclusive() initialises the regulator with
enable_count = 1, requiring the consumer to disable it before release.

The devm disable action was previously only registered when the caller
explicitly requested enable, so when the regulator was left in its initial
enabled state without an explicit enable call, the cleanup path skipped
decrementing enable_count, triggering a WARN_ON during regulator
release on device removal.

Fix this by always registering the devm disable action based on the actual
enabled state via regulator_is_enabled(), regardless of whether the
caller requested an explicit enable. This covers both the explicitly
enabled case and the initial state set by devm_regulator_get_exclusive().

Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4:
 * No change.
v2->v3:
 * No change.
v1->v2:
 * Updated commit description.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index d06fb52ed5f1..ef38c3b365d4 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -905,15 +905,17 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 	if (IS_ERR(channel->vbus))
 		return PTR_ERR(channel->vbus);
 
-	if (!enable)
-		return 0;
+	if (enable) {
+		ret = regulator_enable(channel->vbus);
+		if (ret)
+			return ret;
+	}
 
-	ret = regulator_enable(channel->vbus);
-	if (ret)
-		return ret;
+	if (regulator_is_enabled(channel->vbus))
+		return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
+						channel->vbus);
 
-	return devm_add_action_or_reset(dev, rcar_gen3_phy_usb2_vbus_disable_action,
-					channel->vbus);
+	return 0;
 }
 
 static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *channel)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

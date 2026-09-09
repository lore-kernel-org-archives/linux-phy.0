Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029EDC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6f2uQvaestF/eJk+fEOYMVdm6PDch50a+pL96K6x+I=; b=XZUYKC+dAJrYmF
	F9WKRdwN92iWKeRX0EUUgN9alIEj6pzbaJXH71d8lrys2BsNnJE+q8t9P6iaCPQfsFUfcHywP8HFP
	klGrbyl2Swo99yQ4tljBpnKJ0uUwS1DffQIikC4+sx8nuW0g+vAivfKfBJRVdwCPhUrr+YOwcOY4w
	px7NggFhb2IHoM4/qdQsZX/ktfxal2VYKWozWwD8eSwE/CE/2ltry9sR3XZZwGHDQFQWz8R2m7EsK
	yiVTmYCpYHY4vOD/bDDJLqXqaFBXkWjAHUQgL77vx4Xkqa7+Un9lhuskv/SabsqN/KWCQjt55rnaZ
	2BleasvQzc2tgEXz8OxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K0q-0000000C6pB-2tdf;
	Wed, 09 Sep 2026 15:15:00 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K0o-0000000C6ns-327D
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:14:59 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-498028b3d5eso56952495e9.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 08:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788966897; x=1789571697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DMQlD/kvEb1R1nr991pm2owfqsmrRszs+IoF8p64UKQ=;
        b=C50rkrpdXOjkjiNMl6fJN10mu3igIfODb91IYTgp3EQIyUn9Ji/VLIkF8AtoCcQsJn
         F0q7hhnfvQt5tllhX4oh5xZqfZq/0aA5ANCWefke9Lm6nKiPRzfqiPbAE2GDkQFSY+Fm
         6WPglXEUjR3U9dpwVeLpTQ4YgBGss9eKTe/HcwIcl3nuHLNSAzcdgTjvEl04qCE6TeEx
         11j47X3MNlK/FlM6ifc3/e3MzRehGHwG9QWyjmNfuVVd/5I0Qb/HbWs3nReYRv5zqT+g
         Cw0ymBMR7bnSBtodO5wHSawuY+q7IjD8euk8ekcfduWeHP7XaaBdJgWTlVUaVFeYLHkI
         jCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788966897; x=1789571697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=DMQlD/kvEb1R1nr991pm2owfqsmrRszs+IoF8p64UKQ=;
        b=PSTnLEljIS3v4VKXvxMMk+M/cr+XsIeuDzOKIjuMs4tvET2VONREHFoR7N6mtQT/Ho
         Xft06eCtghpH1ZBOEZmb+qV1mj4aGsiy8PSLmIqctgXJQEH4qlrGV3cZAiamTAe+R+p8
         BFSwurDXga0W4tdo+6QLAKq6X6J4dp5Mv3HucA1rIYAFx2576xH/AA8ieQDnLAI2w/bU
         /RUbfg2mPnuO5wQfP5TJz1+kKAMFhNZRMZTMN5otErBoR1NvfUchRaikcorxR03fcGWB
         HJzDxBx9wBX7MzVWQrgM6az3FB+nV5XbcB8LqOEWnLBkHnPH6EDGVz4yYwvsoPnssH2r
         WpTg==
X-Forwarded-Encrypted: i=1; AKwUvBzB497YVEHodhXmmlz6E1MtBdIyUVdleLDKjehDxESydSNOTBWgzjEgHBcyjsJM3U7PDbo5bvhzZMg=@lists.infradead.org
X-Gm-Message-State: AFuF++kIpXgKdMj8hpakWd19TTEbWuG4mYZVHxVl6D5X9Mh7T4AWoGys
	qWFCNsmuOE90d63fdLRTtFh1zChrrAmLtiSSmU/DL9tbFfURh8A7MD0k
X-Gm-Gg: AYBFou2sI9QPlZY/EkFlcpyLk/Gqk3veAbIvlajmC44s2IUeSFXrN624T/qLPlrj3US
	c0PMH+txFJW3HJdQRwSVxZ3MHj92gdfz4wRGWuYcUMAqCLyUktBKUKRQggI+RgxdZHITfNSdDrv
	TEPWa1oKd/xZOi9Iw75uaWQ0ZrK0wcnknLi6uHash/1Gv34mGx7DpKMpe7FqHbUGRyRBULSdydA
	rMJ2ie/VQUMSBPqJxJkYLniFrV0VdLJBNmu+/Ibu8QD6SbVnBt4fZTqQdj1dRUubvWYeCMmg/eL
	4l9uYcasStfDEX9Fe2G/DJQtVhTG8GgCvB4k2FAFvR22ZozTsrl7H1en1EwwAMwyJ6wwzQpVPlP
	WdQ3wvvoe9baUf8Ff+3sL/wBw12MalErRy8Qyor3UZJ1mb+YuqlmSUWB9SCSwkaTFa8z/xET3oX
	L3YgAXAB/eUppyZ02u/ASHsNtcfxsZQz9wJKBScgkw+emED3nPYsGW/k3R5E+wNAfXtfs56EjGJ
	1x9d76STLVKAA2nd4z4woNS7KSTx5h2pQkjkAdJsrY=
X-Received: by 2002:a05:600c:8b48:b0:49c:fff9:f684 with SMTP id 5b1f17b1804b1-49cfff9f6efmr275799555e9.21.1788966896538;
        Wed, 09 Sep 2026 08:14:56 -0700 (PDT)
Received: from localhost.localdomain (mob-31-26-103-238.net.vodafone.it. [31.26.103.238])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49cf755c22esm483644155e9.0.2026.09.09.08.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 08:14:56 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Scott <mike.scott@oss.qualcomm.com>
Subject: [PATCH 1/2] phy: qcom: qmp-combo: do not decrement init_count on a forced init failure
Date: Wed,  9 Sep 2026 17:14:42 +0200
Message-ID: <20260909151443.10276-2-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260909151443.10276-1-okerixx@gmail.com>
References: <20260909151443.10276-1-okerixx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_081458_792675_A9F54B4D 
X-CRM114-Status: GOOD (  12.88  )
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

qmp_combo_com_init() only takes a reference when it is not forced:

	if (!force && qmp->init_count++)
		return 0;

With force set, && short-circuits on !force and init_count++ is never
evaluated.  The error path decrements unconditionally, so a forced init
that fails drops a reference it never took and init_count goes negative.

init_count is a plain int, so the damage persists for the rest of the
boot.  qmp_combo_com_exit() then sees a non-zero value in

	if (!force && --qmp->init_count)
		return 0;

and returns early every time, so the clocks, resets and regulators are
never released; the runtime PM callbacks only bail on exactly zero, so
they keep touching hardware that may already be off.

Both callers that pass force are the typec_switch and typec_mux
callbacks, which tear the common block down and bring it back up on an
orientation or altmode change.

Only decrement the count when it was actually taken.

Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
Signed-off-by: Oleg Keri <okerixx@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bf4d29fe1719..7d740ed0ce16 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4253,7 +4253,8 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 err_decrement_count:
-	qmp->init_count--;
+	if (!force)
+		qmp->init_count--;
 
 	return ret;
 }
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

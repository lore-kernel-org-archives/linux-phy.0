Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 840EBC02199
	for <linux-phy@archiver.kernel.org>; Sun,  9 Feb 2025 12:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QK9TILgB1jZM25+YZ5RLUF9xKStNNFVIHi/8hdap3yA=; b=a+BoLQTWCoV/tj
	ZNvMPMB1QaM2bmb1zi2SCsl0qsNMRK+1lpD+VPVZNbQ6Hrg+aM6H45qW200JGBqJVSjYiW+o8aye+
	R5yyfnmhGh4kOo4pBSp5rClSalE5giUS2nf/yCKhw+cBqiR4EplpjUEyvt5jfwmZK7aJ3BNwYrmj1
	YACdpzRHIgEM2WRTKsuTTKQcYaSQuRMMZG3nu4xAv/UB09wptIZFebnNWsR8eRvvwg6LUmY4jP6Dn
	hm+ia7rjFvnCvBFLkcfGwu5jbDfjddIGC6XKSXsvyrcCcwRkIg3OZEE0mMER5UX06ulJzPWlNgoco
	rweQPO13+8O9hUxYMFRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1th6ct-0000000EsuP-2RWK;
	Sun, 09 Feb 2025 12:41:31 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1th6TX-0000000ErST-3JOa
	for linux-phy@lists.infradead.org;
	Sun, 09 Feb 2025 12:31:55 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-545074b88aaso725007e87.3
        for <linux-phy@lists.infradead.org>; Sun, 09 Feb 2025 04:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739104310; x=1739709110; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d8OwQXNcCskyY/XcqMq8DCJkhhtz3Nn5RmLreQUdkXs=;
        b=e+LaEBwaRPPzBkadlpEPV1NKFwazTJ0b4p+kYdYf0YgbYixXxdKRmFj0IqKLous+aO
         szV96ud1b+u8g5n+qsbMqzJJGKP2EYCgfEyjxd9Gpwb4fjRpHLym0I4vDE7ljV4Vz4Yt
         CoKdNJ6Q2mDoc7l0BWcRpLfkskNPqB/z55WfwP8rv1hRb67zRqKzWt+T4CXoQyI4q0tx
         Q2FytFOD1MqepbTrD2tuasKlJqCNkoeBdBPGsSwZD23CIKgvbO3BJUzZkLXfcFo/WRyO
         WiBa4mgBA2l1qWpvbf8pKILlFjPYX82zLj0aXY8iuJIaIBU4tYVo3NMubOkkRwGepOGc
         DosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739104310; x=1739709110;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d8OwQXNcCskyY/XcqMq8DCJkhhtz3Nn5RmLreQUdkXs=;
        b=hbpeC/VKtTZBp90HK7Asc4w15rT2oih3J/+SXGNRjw/nsYch043SiOK404iVsd0usg
         NCmkI2nWz3WJXDVeY6a1SNNIqhTarOW0eOzLrYYgyDPPQg0w0hidd3dIgH4lgwYkfxDb
         zuoJuHCnURf6swwfLz5ohZR9ZIK0hpghrcF10ts93lRJDV+ZyhM3trLMioO50f84aKwC
         KBXPPriQ3a0Hh4WSnaPLwmf7iU/GI0x4iSegTgdRxkZ+eQTCTp1pl3p33/HVN05O8o2V
         Pavodp8oCHk5981pL373f/dgnGkx2RxgOtSLSXQIgLeFZhMdcXeIDjjQMzNuGCuoBoLf
         WfkA==
X-Gm-Message-State: AOJu0YyfaoMGeNUbzDwaezvWxx1VHjighMjNkNj2N8d0B/LZEOjd2H1m
	7QMY6GJ0u3z6QMuOsHYXELbpNYVB8iXW4n3bDjgCPh/sKqu5bYUMynYlRSffiLM=
X-Gm-Gg: ASbGnctvI6/Eq0O9tgBFe7bvFxOGUcbP7BJR6SGbE86RTQOyyzKY+71PGPdJS7IS1iy
	CBo4J8w33XQKedxkFamPtHfd1DHgFp8E15L+YeGLkfCqMNbPdTJvWidSFOr1p/+6ff8BQF+1HgH
	eA0ugcE2GaXw/Zx59MJDN0qUx7KrpDT4ZvEA40WpoAjQBXZjrtTmJq5CkGOZby9OMCXpdLO85qa
	3VMM85GTUr9egLXBfzwGqsP+f/w8vjxTMtCi2FktrfAkctwbR0DD62CL/zaVxxcrV2vu599bh+t
	MA4svTfpp9oPbvCuqPmJMVg=
X-Google-Smtp-Source: AGHT+IG9VQGgn1dQSrhUpsE6NkhCo+Wpv/wilyOFjWVSBoAz9Ke6a+pKBXKXj5RAgrKqVYsYhf6G2Q==
X-Received: by 2002:a05:6512:2251:b0:545:a89:4dcd with SMTP id 2adb3069b0e04-5450a894ea5mr510568e87.45.1739104309834;
        Sun, 09 Feb 2025 04:31:49 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de177d22sm9857271fa.2.2025.02.09.04.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 04:31:48 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 14:31:45 +0200
Subject: [PATCH v2] phy: core: don't require set_mode() callback for
 phy_get_mode() to work
MIME-Version: 1.0
Message-Id: <20250209-phy-fix-set-moe-v2-1-76e248503856@linaro.org>
X-B4-Tracking: v=1; b=H4sIADCgqGcC/3WNwQ6DIBBEf8XsudsAhhJ76n80HlQW2aQVA4bUG
 P691HuPbybz5oBEkSnBvTkgUubEYamgLg1MflhmQraVQQmlhRQGV7+j4w8m2vAdCK0yenJOkzI
 j1NUaqdan8dlX9py2EPfzIMtf+t+VJUocW+uoazt5M+rx4mWI4RriDH0p5QvGa1MPrwAAAA==
X-Change-ID: 20250107-phy-fix-set-moe-d275cff5e27b
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Damon Ding <damon.ding@rock-chips.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1691;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JPRlMDN151Dkg+YWeBexQyF0nH348u8VrvLFjjB0Z+Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqKAzF9RgnLEDOtedtoch71rBg8o4spnfLYoLV
 8W8gNpzTJyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6igMwAKCRCLPIo+Aiko
 1QQPB/9TPgYOCadLJa0Ek5Xo2f1mwy+t1DLM5jGlcaJ9O2MhzU+vUefpGc+XJiuaixKwI81xlk3
 /E+4em+uGkbBCBYBjGXYx+0cF/kq53NHCgZE/Xw9o/ubyfccYpIwzc8ARzJKOchIv2eLBqW6Bib
 QMD/EfNIowPpCR1HUwT3lLd+OsUmafLXl1RQhmY8teG9Yx3aLLln8UpmLFKy6Iw/yK3F3X/vGQF
 /ukq3EzGlP7m7A3xJzSkCBNF/ClDsdUWKemoM8y0T5TjvzGePi2uwrVRQ5iGgU3xNFC2e0NxgF5
 5h1v/ADSFiYKQ8OygrLYi5JhN1GgZFbeM+xVHLzS/tuAtihW
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250209_043151_834341_AE45ECCB 
X-CRM114-Status: GOOD (  11.13  )
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

As reported by Damon Ding, the phy_get_mode() call doesn't work as
expected unless the PHY driver has a .set_mode() call. This prompts PHY
drivers to have empty stubs for .set_mode() for the sake of being able
to get the mode.

Make .set_mode() callback truly optional and update PHY's mode even if
it there is none.

Cc: Damon Ding <damon.ding@rock-chips.com>
Link: https://lore.kernel.org/r/96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com
Tested-by: Damon Ding <damon.ding@rock-chips.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed Damon's name in the commit message (Damon)
- Link to v1: https://lore.kernel.org/r/20250107-phy-fix-set-moe-v1-1-b3dfe9391672@linaro.org
---
 drivers/phy/phy-core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 8dfdce605a905d7f38205727151258af41f807a9..067316dfcd83a6fc8428cddd27d3b7ebfc270831 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -405,13 +405,14 @@ EXPORT_SYMBOL_GPL(phy_power_off);
 
 int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
 {
-	int ret;
+	int ret = 0;
 
-	if (!phy || !phy->ops->set_mode)
+	if (!phy)
 		return 0;
 
 	mutex_lock(&phy->mutex);
-	ret = phy->ops->set_mode(phy, mode, submode);
+	if (phy->ops->set_mode)
+		ret = phy->ops->set_mode(phy, mode, submode);
 	if (!ret)
 		phy->attrs.mode = mode;
 	mutex_unlock(&phy->mutex);

---
base-commit: ed58d103e6da15a442ff87567898768dc3a66987
change-id: 20250107-phy-fix-set-moe-d275cff5e27b

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC39E77197
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jan 2025 11:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oUdOKgvWxNdU1MLJfxBwjEOSVzRFOlNcppp1qK0yMxI=; b=ILg3yV5+9pXbiy
	Pm1ZqRoLkcqwZi1uFj+PZpG+J5GNIvWPoSWGD09M8JevBAiKQTHDCn3DsrHZ/Z3aww2U9z3yga2BC
	fOqE7vDWqEwn0ngxwNe8K6x+x7DXbbMfAmMfLeNapXwVatfZ/wHRN5bFIYz/+0a/lWVVuJS0CzPt1
	EpQ0fWE5w5z+Vua2bV+Cny3pE78V32VVimZ4Xaw5u0rHAH7C/4ahGmElRPCRKopZG739+q4VRbeXu
	vURZlP8NKdIZElKZkl6AwyNQu1P+OhRboX1592u/50Fot2q+sa8vywh5do/Ym3OeyDYK1bFGi4nH4
	47XI+soJZ7Av5V8Qyq3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7xs-00000004bgK-3yEB;
	Tue, 07 Jan 2025 11:41:40 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7rB-00000004Zqq-45yX
	for linux-phy@lists.infradead.org;
	Tue, 07 Jan 2025 11:34:49 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-30036310158so141839271fa.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Jan 2025 03:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736249684; x=1736854484; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IsaqEkTVz9aUu2ao0R4XXXsvE/jpqouXclpX4uJ7pLE=;
        b=sOFY0mEpDMIBKJZqizQzmfZ7VuyfINsOVwKtjPXCFhavIW0goypuaB7M/c0bz9K10y
         QE8J1GjL7SLty+XNOsfTD95TsEhYs3oXFEuviSVjb1YhRBQyp57LYpdT9TAHLbmK/hI7
         lNNrdn0eC8adhjDJsqEUs2WeTOat5ZIH8jiZd4OLmCGO9GGBlQmK3GfYnfRWpglKpR0h
         VWtVMfSpVr4aO9K52fAAEKj4n31Mwld9Rn0zElOobBTqquHRTUM4kqK/oiQKZCLumpVh
         ees7h2RNuXtdpf0pu5i/WD2veCGsSL9vuslw3xamo15wM9SjrArLoJiB1FrI+9zelNe7
         DvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736249684; x=1736854484;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IsaqEkTVz9aUu2ao0R4XXXsvE/jpqouXclpX4uJ7pLE=;
        b=Qj0AmgkzPIeKs/y8J8IAatr3SpsTlfBHVJOJ9xMXxviZ4yxzorwQbJ8mP8lAtGZJh6
         sSiv0fK73wVUezkBB2abqEduISrQSS3QP9dnMyC42+vsAzwHEuq4wtUqmlp2EY1MQiDl
         ynzYxnKxw/oG4SuEW5e+NkgZvt+JeHwcuX2ooqyF1mk4xwOFK+ZdAm+4vjbu3P24XBnL
         2jnF/BuXJiwLzZO+6U+fGbM7G9JZa0cg/ki0fVl16Kn3hCLY2yrO0WzRsOTKCt9XhGpG
         9hUGYVD8SCLp50V2amJD04yG3TecbTFY2HDZRn6Fv4/686bJ+C6yFMsxjh/ruRbyoa7G
         anzg==
X-Gm-Message-State: AOJu0Yx+oKuSrOeub0qePoddNa2FjRT6buKSU2EedQiMkaFbg8vX0MJn
	JR1j46AFoUblJ5yPvgTRKDTAKS6JOouxapZedav7FWT3X40R7VEAulVT/RUHmbg=
X-Gm-Gg: ASbGnct2WYIs6P+ZgIm2d192QxLIKFUj1JCSZXBqK6ZnZkXEBoHpZBxsgZhsym9+OYi
	NI/RIdjrdPVcJYo8iKFJ6vn3klkq+BUWKVhyvOBmtaQzvcPkkcbN2Vsy5rIQ13RJlmFiuyk/0M1
	PKIND4wSS9M3EKNpha2KcmsY6Ad0a7u+cWa1pqckJIMEChZQDoHht8CoDuNdkmWGrjBf2N5w8MD
	nLIzKU1Eaef8zrpE+rAqQQH7zexIrJxugGs/Ev+1iJinAA+Dowgrs44rsAYQxFm
X-Google-Smtp-Source: AGHT+IEyaw8n6J4gC8jnNf1Iu+pVRqUYxPTdsk4ajP+mg4qoS9xlnrhddOZ3LiXMFNPXBV5dIGkqpQ==
X-Received: by 2002:a05:651c:2215:b0:302:2cdf:7fbb with SMTP id 38308e7fff4ca-3046851e45fmr220057481fa.6.1736249684096;
        Tue, 07 Jan 2025 03:34:44 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b083f8bsm59479221fa.117.2025.01.07.03.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 03:34:42 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 07 Jan 2025 13:34:42 +0200
Subject: [PATCH] phy: core: don't require set_mode() callback for
 phy_get_mode() to work
MIME-Version: 1.0
Message-Id: <20250107-phy-fix-set-moe-v1-1-b3dfe9391672@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFERfWcC/x2MSQqAMAwAvyI5G6iFUvAr4sEl1RxsSyOiFP9u8
 DgMMxWECpNA31QodLFwigpd28CyT3Ej5FUZrLHOdMZj3h8MfKPQiUciXK13SwiOrJ9Bq1xI9X8
 cxvf9AG4w5e5hAAAA
X-Change-ID: 20250107-phy-fix-set-moe-d275cff5e27b
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Damon Ding <damon.ding@rock-chips.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1474;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=yro6Fb292OesZxRRM8mQxqtzIX7FbinQYBOMbsq3Z18=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnfRFS+nM4HlH/ZXO9N7il3bt/5nLgb5XjrnIHF
 MyxYQKrdAKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ30RUgAKCRCLPIo+Aiko
 1TVhB/sHzcukOUmUEHYmuBr95Tszc8/Potdy1h/6xzd3YIslr3oHOKUecys0LP4TfBsxJz7Gj6O
 wIzVCDvk5QjFvoqTn04pOD0v0pfIt0xz99MhGnGiqujNe5duaTkleVTCWmoJ2JF4FDt3g8fm+C2
 uv/gjSUCSvI5oQOV2iX8gPJCPcz+zyOe2jSSjksTD2IlzMmwRQhpUhmoXa/jNP7KQmM8JyyVMTv
 p3Fk/OXpL6oCpZItjkvtpHWquNbzi9emYyasYc9sCW3I4YJ5HZa5+2XHYER85UzBREmG6Odj697
 El9AvAh8kgA8GUuUdd3TcCP9tVwp+d4HohL23lBOMqfL/DXZ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_033446_025006_6CD41595 
X-CRM114-Status: GOOD (  10.23  )
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

As reported by Diamond Ding, the phy_get_mode() call doesn't work as
expected unless the PHY driver has a .set_mode() call. This prompts PHY
drivers to have empty stubs for .set_mode() for the sake of being able
to get the mode.

Make .set_mode() callback truly optional and update PHY's mode even if
it there is none.

Cc: Damon Ding <damon.ding@rock-chips.com>
Link: https://lore.kernel.org/r/96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
base-commit: 7b4b9bf203da94fbeac75ed3116c84aa03e74578
change-id: 20250107-phy-fix-set-moe-d275cff5e27b

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

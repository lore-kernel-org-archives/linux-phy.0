Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E742CE8D6B
	for <linux-phy@archiver.kernel.org>; Mon, 17 Nov 2025 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qFlmP0hdM8pL67gZwtqsQudmDpzfuns5jWEDkehsIXo=; b=yg61bn2NIK48y4
	C90/Gn4IEynQ/O8MxdaKApwuwGAtRfUClzhq3bq7nzB2v7mfnrNX+g1DgV+m2X3sx1+5MGojC9o8f
	2PM5BvGk0ZzieocFcznQeCysMmbJSaWSmGozNx65J7+iLafWClkiAOy7YUbZC7cHWi9hkEcwGktWk
	7kFp0s5YLoctDcQjYachNkeVuIYAPrkhYNsdVJ2uNVxPvdJK3KXy6fV3c7e2qt6eD/vMU9rJ8vz5w
	7LtVZj7ET8yughrTdEvevFnlFKggHQtO3Quc075HGh3KnBORftlCLtPmt/wa5cd1XkAoP7oX+lKRI
	NxMgZXxDu0eALjIUKZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKwZ6-0000000Ft86-3NKI;
	Mon, 17 Nov 2025 10:34:32 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKwZ4-0000000Ft6x-0OLz
	for linux-phy@lists.infradead.org;
	Mon, 17 Nov 2025 10:34:31 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-42b39d51dcfso2223136f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Nov 2025 02:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763375668; x=1763980468; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NKLUGCUiC6BsXqUDiypfMjQ6coFYy6H+VDi5a2zSn2c=;
        b=Y4YdAcu3r3VUTTFj+QK7U5qbW8WUC79vDisBDkrX4xTgOQ65jyXe29kHqfwhkDQIOO
         GdIYb534x25ykj4rmTcxhctWlcuAKSmLXP7rXGNqPtud/EqFUHvZW0VB5G4ZAo9Pe2KH
         2hiRReJdchnCRMaFchjpW6aIaNN3e85eLUiIWJHXb5b3+zg6rJtSpYu2Qoc+NL1nbn+Z
         WMUNL20DSaMx9TBy3te+9YdMR33jhOZLeP7dgHtqZ5prjlWSohb95WPVxuJIZ/kTwoAW
         KXVYq7kRuuLRF5CqxpAC5JMibqHzz0sGoKNfJK9U0rubMxy2borvJuyHmWKMQ9j4+/DM
         jzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763375668; x=1763980468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NKLUGCUiC6BsXqUDiypfMjQ6coFYy6H+VDi5a2zSn2c=;
        b=PG7PS2z1Uvd8nALghBcaGIQY2sY6TKV8suYS8WzXpCrIsTzI1T5AQ+KcW0a5cEHJIu
         X64Y9tSmR9uU6vpy6z8d/7vXxQfuCKNborTnR4FcV72LkavhLxq4oQUdE0JyEPphY5Dk
         keF37RCMh5IAlKiQiBbiBTI5OjmF96U3kcVkiUH1OBebzBjAEufybCpaiXX0KfuIle6i
         utQuCqUNiQRKO6xPyS0soyUXTHdrYYNE3PhOKsTNCy+PLlEzcfUTRXgRYna6YUwI9gNL
         vOP6ZQSfn3BNzYzgwlPi/ShEpW5TXuCw4ZFmGneE20EgQxiUtZNERhpOM/IoGGg1hGro
         hGLg==
X-Gm-Message-State: AOJu0Yx9uGFTrMIm8YFRg9GbFcGKIfbFaecM/2UlYGc7D7H5D4Nw8Fbg
	2F11ThjTg0ogEEwCSraaICAYeHF+2u7u5EMO6dFSx1fhzM5jJ8RpznCz7YHJ0pseaR+flelEvBj
	ag3FbRcQ=
X-Gm-Gg: ASbGnctmeKy2WmFeIkUn0kZJ251m+1wf2FfUOjiwsZxgJT0T7epK2/N+z19XFnYASPi
	6TBX7YbF8qYEWngukieviMNVyeHMNOGFnnsxRVvvwYoG0GQELmR9ZABGLR0Zkj4ohJe9vt+4btL
	4RpmMLMV3FCYeHXIp9T0jA1+WyLIBv5cMU3d1HcnDxcLvEP/H6WZuBAmdws0cKipn2SG0Fi6QFD
	DdTONUjr020wbzk3i0NUhiwdMcWcv2onCurxYdwkBeLpWYzbXEhECVB7xj2TQgCYzTQC/AwLmyS
	7k3laeIKLYm315+sD3o45SQ9DE7N2lqX6FRQ+nUYLCMOJgRx+VqqBfvMwqSmrO4bFhavrYGdPp2
	bixq1/S9Tt+qqyHjVw9EodJ25Vy31l4fYwIIX+MJeQD14OFrYos/s4z1OiB9GrGieWkMscHUSZ7
	62xBgv2BOKU6orgPC5GU6nAm7k6lqQGjzOqB9sTjBJ
X-Google-Smtp-Source: AGHT+IFH7hI6pRmki0tztedhTA81jUl1AFeXaOvedsd1Ex9BDadNDzYRxdJihuaErNc3iXiwe3ufkQ==
X-Received: by 2002:a5d:64e7:0:b0:42b:47da:c313 with SMTP id ffacd0b85a97d-42b593395a0mr12422355f8f.3.1763375667860;
        Mon, 17 Nov 2025 02:34:27 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17291sm25560904f8f.32.2025.11.17.02.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 02:34:27 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: claudiu.beznea@tuxon.dev,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH] phy: core: Remove extra space after '='
Date: Mon, 17 Nov 2025 12:34:22 +0200
Message-ID: <20251117103422.4041040-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_023430_137681_DFCC819A 
X-CRM114-Status: UNSURE (   9.47  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Remove extra space after '=' to comply with coding style.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/phy/phy-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 04a5a34e7a95..8a1e8c15e688 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -361,7 +361,7 @@ int phy_power_off(struct phy *phy)
 
 	mutex_lock(&phy->mutex);
 	if (phy->power_count == 1 && phy->ops->power_off) {
-		ret =  phy->ops->power_off(phy);
+		ret = phy->ops->power_off(phy);
 		if (ret < 0) {
 			dev_err(&phy->dev, "phy poweroff failed --> %d\n", ret);
 			mutex_unlock(&phy->mutex);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 777BCCCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AhjItZioLYkMWjSzF5Oq+L5fzfPxpvOXoZAaSCOd1mY=; b=1Wxew4mEtbmZ75
	x1MzX4rWaoq2TPzq/0c+zlJxzsS6zk2mksYgxVOz8LwTmM0hSdvMOG1vY+ww4NHYJcrtEFaedFaOp
	VljTRwV2/CAxBdYBNdV9DK0BVK4I/URaS7NaiFstcyvgrM9cs9g/IvQTbg1fzLYYkoSObzz3fMOtp
	QTyIwZPgpuWJHHcbWC3tkYDP1N/KyQkllsDlkvu/JBSvj2Xqcro5YiusKioEVHMFORb2C5xMKwNdO
	0r2n0dcgvl7LSB5rMB9SJOYre3bBdQmLFs9jaN10ylcZ8sXqAVRb4/8KbvV9Gne5SVcMZ8YLQ0Xna
	T3q3p4yBim3PxLNxdi6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9mwT-00000008MuO-0H5t;
	Fri, 17 Oct 2025 16:04:33 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9mwQ-00000008Mtw-1Tqv
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 16:04:31 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so1219864f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 09:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760717068; x=1761321868; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1XA1CkPbtaxpNOtSPg4ZNDO0+nr3/dCGqWcDsk880cQ=;
        b=EXu9nUlSB9arf1kYg60iLzT6Xezcu0EoBHV+nfFEHUjlIKR+MjaYoBJcfDMLp5j4Lv
         zzT4c/h6xegeXTBVJpj1EBJZQTHIp3nmmR4Jk0vZ7r23UoWQkB8KVdXyvvwbnsZ/sPdE
         SHQ+tjGxd/TVgeS9l86xGZAs6FqPdqY2JlWyQsyam+FA/B5/C1WTAfs7yK2K6+DwwOkJ
         rPWkymFU7riMWGpWskU5+GBjedPgutgnXys9iE4lQh4gGwYAw+ls/D8WCWysOk7JkbPp
         UcdiFis8JRhMzdT5l9t8pLxQYGfPxuL9vblQgMOCMhhZ3wSg/dFeIvc1Dg31Vh9m/MrM
         6S7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760717068; x=1761321868;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1XA1CkPbtaxpNOtSPg4ZNDO0+nr3/dCGqWcDsk880cQ=;
        b=a6K3oeZAT8WjBpQOKWiOvqIkkYckuwwAqniOhYV2J3Ed1F3IraXuNBUBQ29G7Q8tvs
         ihBZaK3EGrEu7oyZZep0ZvtPDF3dMOhX8BELjNsZtOYUFuIxFH+irXcREAiS2ONX9GHg
         VOs5mJUmdVuha6pOUlWBwDiY9bKIay20qwPQbshJ1JG5SIvL/9FM2DGUkyefBiFpJC7l
         kwsnD3bBsLBsBT5Zqpx+NhZ9QVs+p+0JC6v01ryDtibdYJNF2cQ7szAjPPXWFVzcFb0C
         fNTVZYeGtkV+sfGbyrWDvS8jV0TzjSRz9c9n1W6bOrActbl9nCYQSl4/J7IOd4Wc8NyZ
         oKQA==
X-Forwarded-Encrypted: i=1; AJvYcCU0Orzwym0jOrsUl7yc8sw1W1T+RCDyOJzUgXdosx9NLgYR975Q2ipJ3gpewAj1a9ZLDTQn+qb7W4Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1xgUmtMJTSkcyla1TDfb9RLgf94zcpjQuocvnNeEY68ZnN3d8
	dREx8tQWhQpsXOcR7sdlJsE696HawDT0/BU+toGYtqZ1Sb3IIxuUlqckMk3yRLrZ3Ak=
X-Gm-Gg: ASbGnctzX+c2q5GNyVKzzAbFUFPJEbwwKaR+saSCXzsDze+cPsOOTm4uJB4sDiFIlbg
	ZZlkjPNaIguDcU0pjgE64fNHmtwnWdctnvN+G4ySGsRwDTmpFatafyoNnIjWrUmV/BLYaYAUAZE
	5FClyip6efuNPJ9ixkfoIy6prb/KAn0/u5TjOLsPferM+kgDrs7upAIGOVKQXPW4mnsAiMurxA3
	Gg6r+F8IrAdSERVat3qZmgNVXYYNaGfuOLOiQOaPdIZEkthbYx1CzHA1QaPpn40lvxSi1B6nfKY
	3KByqTIMMg0JVTU+ZvUBmwiFzycdgq3+TSBTRVKZNOCJHInfMlbZkffnr58dHaUWCIZEgYORzqL
	B9lbvHHX5SC/sbXL8Ye8EyhvQHc0kTlDmz5rlC50esUwfCq9t82ocigAQqJAFMDsk6QEi2c/ysR
	hxwlc0vMMrir1B/crp
X-Google-Smtp-Source: AGHT+IG35xafSuQ5BPv2Fera9k8oHJR8EziSTLu7op3KCmIHoxM7gv1y6xtU5v4UpxQZ0+clT41dcQ==
X-Received: by 2002:a05:6000:4604:b0:427:6eb:8499 with SMTP id ffacd0b85a97d-42706eb84acmr1802064f8f.24.1760717068025;
        Fri, 17 Oct 2025 09:04:28 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-426ce5e8141sm40851309f8f.48.2025.10.17.09.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 09:04:27 -0700 (PDT)
Date: Fri, 17 Oct 2025 19:04:23 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Michael Walle <mwalle@kernel.org>, Andrew Davis <afd@ti.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] phy: ti: gmii-sel: Add a sanity check on the phy_id
Message-ID: <aPJpB-QI8FMpFGOk@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_090430_394031_01AB9AAD 
X-CRM114-Status: GOOD (  12.40  )
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

The "phy_id" comes from the device tree so it's going to be correct.
But static checkers sometimes complain when we have an upper bounds
check with no lower bounds check.  Also it's a bit unusual that the
lowest valid number is 1 instead of 0 so adding a check could
potentially help someone.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/phy/ti/phy-gmii-sel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 50adabb867cb..6cfe2538d15b 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -341,7 +341,7 @@ static struct phy *phy_gmii_sel_of_xlate(struct device *dev,
 	if (priv->soc_data->features & BIT(PHY_GMII_SEL_RMII_IO_CLK_EN) &&
 	    args->args_count < 2)
 		return ERR_PTR(-EINVAL);
-	if (phy_id > priv->num_ports)
+	if (phy_id < 1 || phy_id > priv->num_ports)
 		return ERR_PTR(-EINVAL);
 	if (phy_id != priv->if_phys[phy_id - 1].id)
 		return ERR_PTR(-EINVAL);
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

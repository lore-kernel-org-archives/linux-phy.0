Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DED48C43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8c8SXi3xzfjqYZj4SwPClJ7k20vNgyp0+bhGiFQXsY=; b=w5vEMSXd8Dhkz/
	gmEu0AOmN6VLvVOQlWamcCFqIb3lmzKI7Wa9OJlbGu+ygIkPGB3V3urKBmZ+xKLWiaV4ss14o+rR1
	I0iLXrh/KjvIfFzRklRHgsabY+GEnoXk7ubo9kmlLbo1qFu0MwnU9Neq9TQ09T/LuGlPhQmW91S8i
	TfuC7DXVbBW2A1aYN0WgkzZRY/sltTWw4sdCI2P75prrAqIIwb6urP4x7ufa8NDRqkp97bv74N2Mi
	2W+bfYZy3NBiN1gyVIB4o60Zioh3BPqZ2jyvRjubWM+Ydsdi0rx8TQXsr6tJ3/0CaFdZ4RuuSLpoy
	VDigEG4ui38IAdFXRZjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaw-006Dri-BX; Tue, 28 Jun 2022 12:45:30 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aat-006Dlp-JH
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:28 +0000
Received: by mail-ed1-x52b.google.com with SMTP id n8so3436972eda.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QkD5ZdlMfFp9BqXoXwOYIRoxn3i+2Ef4KXobvEMyiVo=;
        b=RARWGWYAnD1Tn9kDygIdnwtnUPjcHumdDo4lilQszfGD18lQdgNgi/Ryn1jc+D1oug
         D96C3smjnVPUr1RCcaPTZBUpoNhJsICKCnWV07vAJ+dil1HAN8mhg+3mc8S2vm0PAlDP
         tx6BBB8nKfouvX5z+OZPqAKaSu5FlF1sIgUgb7ml2HV5BKV16WYJx2jhYQYRirHYFpcH
         ongbZI5osfzqM9O1WAGweu+dmoyVyh7X66dqEPYg56HWLqVhBRX0Jjail790UpANcCmU
         3L34pCNmjrfoVERLs7tKWqbCa0iwLMJcHEwa+k0+sjm3gYzkTxIsGzv8NTUgsz9vCGhI
         wx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QkD5ZdlMfFp9BqXoXwOYIRoxn3i+2Ef4KXobvEMyiVo=;
        b=Q2HPxUdSenUDAtJiyTjwKmV3uVJVZsiZygCqVaXRlJR/1ie3P+UtTJJvf45RjYwy3w
         sJFLFsPHP0/aA6gpgRW9XDoez7HKVOAtVeqp4UQKz+Ir1qJuSkYtevYuFn6QMpeaoREW
         YVQoR3jtLyyFJ+immD2poLxvC4Z9h9TwMUN4vWT7E638EZQXWTFhv1hpNK8WJzjxn+Wr
         dQ/aPwz+TMrPH+Te1os+2KM7PVUnjAsxn2UB4Hiv88PzgosXmXa5f5LWsVvRPRrUOdro
         R/84heQKWqgwhV6/DfCj3N8Kky3DXr1gne7q0/UF6yhO9iNIIC8iyYgYN+oqVuV1BqPf
         WXSQ==
X-Gm-Message-State: AJIora8mvXLrNcxiBgMUkW9XX1exw5hHscwWw4k48AaSIdwcN9+YaeQZ
	azM7H37yEJc3AdEf5t5/ewp/5QLE9pg=
X-Google-Smtp-Source: AGRyM1ssn0vDK56CFH/r87RlWCyxx7oYUzSFnXO1WBdJwdhLCtV04NDaUAeCU7F3U3g+HfhhvVTPDg==
X-Received: by 2002:a05:6402:51c7:b0:437:a22c:60f5 with SMTP id r7-20020a05640251c700b00437a22c60f5mr8917530edd.281.1656420322252;
        Tue, 28 Jun 2022 05:45:22 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:21 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 6/9] reset: intel: Add and update compatible strings Lantiq SoCs
Date: Tue, 28 Jun 2022 14:44:38 +0200
Message-Id: <20220628124441.2385023-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054527_718344_C6098ABC 
X-CRM114-Status: GOOD (  13.96  )
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

Amazon-SE, Danube and xRX100 only have one reset request and one status
register whereas xRX200 has two of each. Add compatible strings for the
former three and update the compatible string for xRX200 to the same as
in Documentation/devicetree/bindings/mips/lantiq/rcu.txt (old RCU
binding documentation).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/reset/reset-intel-gw.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-intel-gw.c b/drivers/reset/reset-intel-gw.c
index effc177db80a..46ed7a693666 100644
--- a/drivers/reset/reset-intel-gw.c
+++ b/drivers/reset/reset-intel-gw.c
@@ -223,7 +223,7 @@ static int intel_reset_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct intel_reset_soc xrx200_data = {
+static const struct intel_reset_soc xway_data = {
 	.legacy =		true,
 	.reset_cell_count =	3,
 };
@@ -235,7 +235,10 @@ static const struct intel_reset_soc lgm_data = {
 
 static const struct of_device_id intel_reset_match[] = {
 	{ .compatible = "intel,rcu-lgm", .data = &lgm_data },
-	{ .compatible = "intel,rcu-xrx200", .data = &xrx200_data },
+	{ .compatible = "lantiq,ase-rcu", .data = &xway_data },
+	{ .compatible = "lantiq,danube-rcu", .data = &xway_data },
+	{ .compatible = "lantiq,xrx100-rcu", .data = &xway_data },
+	{ .compatible = "lantiq,xrx200-rcu", .data = &xway_data },
 	{}
 };
 
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

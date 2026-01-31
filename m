Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B001BD79769
	for <linux-phy@archiver.kernel.org>; Sat, 31 Jan 2026 12:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rS+knJzEoMg3WrcbQuNl3oj/ck1cpVC9LcF7FUp+7T0=; b=TqEnVvIW8mxMqR
	ifijKJTKbyrwgp3jYkvNXqg8herOS6w+LY/smRbH77u57K1oJoFZ6hs/xW64qdy4AQ8W/irLnS/in
	BqlH3O3oCoeQZWDjIy2UwvaWGi+gCLa1nDqdsfq0uYv1rhX0Kf8s6+WPJ1XG+ofLkmM9IL2OevYFF
	oQPeYIoBR1PjGHjoo60y/wZpPQxJxuwO5kZ6eA8Y4kSDMSscVhMv359t2haBtGeMVglgRwX0un4vI
	+IlRo5kuG57R6rOWWJjhYdQTbJ6IJ1VBSnr+HljKuAb/UqTgd5i1aYxq2plYS/sjB+nPUeB9cuUnd
	Myo3YgWT7cjrKBXtJUMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmAGF-00000002a5d-1zl0;
	Sat, 31 Jan 2026 12:39:35 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmAGC-00000002a5H-05Us
	for linux-phy@lists.infradead.org;
	Sat, 31 Jan 2026 12:39:33 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-432755545fcso1944788f8f.1
        for <linux-phy@lists.infradead.org>; Sat, 31 Jan 2026 04:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769863169; x=1770467969; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yC113ZlUkaXlTWmnQ1ckRTZJaeNcM82A2CvH4lSBOmM=;
        b=M+TbJO+MkM5SDOjvFUNwVWYAqczRJ6r4whUP3QnJGGHix80lO4HIvdjejD+qvObVXT
         ZtwqhOzRcV4RwOdZkQfoPC8MqAgHYSQ/xVfUidVwUCS5tnwj4ceTkskjzE829DKY54x5
         zSWzsmR/WXC+hLhgy+2LwbYX5Gt06rKiXvNkioUrvBMIk9uehFfy7AEar5cnGrGydbjc
         nArfKESBVtFWpqKCg06dsY9f5TgQTjkM1pumzXsaR3/PcZzgqwTpMQAPrVnW3NtYUqtm
         hVAMzBxGM1Z3XE2iHsx3pCDh457X5BCWlySxSGg4frGtie7XK+UGt8kwP4AK/zc44Spf
         jaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769863169; x=1770467969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yC113ZlUkaXlTWmnQ1ckRTZJaeNcM82A2CvH4lSBOmM=;
        b=ameEa9EeEvr7LINipoWUsRyduSeA3VjCDCzCoqljb/ZaVQMRGRi1SF9pmewL3eFkGD
         PDdp9fqlH0Y+pGO++ytYGmH/uLAEhpqZfItIyZSAC86Aza6HQmCmd/HekPclzI/gW7JD
         T1EksSjZsowf/25GBDEaTiLNK+M89UbmlwXP/kra3zkx1OZTs5npV3SGWjmPtQMhA717
         QrWdtADuk8TRKuhOM2YV2/5azZwSRJ++DeB5FCPX0WONyNJco94lpSfs9GjTwpxgmknz
         zyNcOc/DHmabKmJleFHXw+6vBO93R39AqkuEfsJo2kM2Q4gpRPDJ3PwzuoYKIho9mrNh
         pXkQ==
X-Gm-Message-State: AOJu0Ywtmb7BeI7zkBxpO0v6mWeVIMqO01ZQBmGHqdFzVJrnH7FoPEkK
	wBLD7qbNgbJAoA1Lj8w1CiN7GA3TGqYg0xCwDXOJzsh15p5580UZclVc
X-Gm-Gg: AZuq6aJTO9gcDe8a0ddv8MzBNcFW6mjlYJ9iuRXK1Smy0UehT/4d3/BFV25ljFF0z7J
	10nkz5ddB2TF0Kf/3OqpP6JPD6tdWkjG5JEeNZhj0kKhx5PgGQwXbtlX15bbEgZLruGJPI+rnxW
	4gK38vz2ym55Vto3fsSu1Oy46EPLl10+OHU+GOxEpjVR1ovrCUXucy1LRsSyjHd/JOjgmZD8Ke5
	ZvbyEGWFyWWpkfIM2Y9cHmSpZUr0IMfZ4vsvMs91oMVAFR0RauYRlq3ouNNKanYJl45rTtU7NeG
	fIw7T9MrfoA1vpk4J+yLr4bkLvebW+g8s8yZkmDMCnDZo8tLS4q9PFU/wHcutdRb96GRdYY1uui
	7gjuVTXC2qgaHm3A2c6ZwuqZsOaxrKfhI6vC2hA3wmDjr7DPER2MHW/Zxr5hfH+MFwIvVotibJb
	QcHK23vYlGmY/6lpUtlcTZX5JTRg==
X-Received: by 2002:a05:6000:2dc9:b0:435:9d70:f2a2 with SMTP id ffacd0b85a97d-435f3a880edmr9047652f8f.25.1769863169259;
        Sat, 31 Jan 2026 04:39:29 -0800 (PST)
Received: from localhost.localdomain ([196.235.54.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e474csm28819509f8f.2.2026.01.31.04.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 04:39:28 -0800 (PST)
From: Salah Triki <salah.triki@gmail.com>
To: JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Salah Triki <salah.triki@gmail.com>
Subject: [PATCH] phy: tegra: xusb: fix wrong cleanup function in tegra_xusb_pad_init()
Date: Sat, 31 Jan 2026 13:39:17 +0100
Message-ID: <20260131123917.258229-1-salah.triki@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_043932_083537_20B8E332 
X-CRM114-Status: GOOD (  12.27  )
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

In `tegra_xusb_pad_init()`, the code currently calls `device_unregister()`
if `dev_set_name()` or `device_add()` fails. This is technically incorrect.

`device_unregister()` is a combination of `device_del()` and `put_device()`
Calling `device_del()` is only valid if the device has been successfully
added to the system via `device_add()`. If `device_add()` fails or has not
been called yet, we must only use `put_device()` to drop the reference
count initialized by `device_initialize()`.

Fix this by calling `put_device()` instead of `device_unregister()` in the
error path.

Fixes: 53d2a715c2403 ("phy: Add Tegra XUSB pad controller support")

Signed-off-by: Salah Triki <salah.triki@gmail.com>
---
 drivers/phy/tegra/xusb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index c89df95aa6ca..2db5586401e5 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -180,7 +180,7 @@ int tegra_xusb_pad_init(struct tegra_xusb_pad *pad,
 	return 0;
 
 unregister:
-	device_unregister(&pad->dev);
+	put_device(&pad->dev);
 	return err;
 }
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

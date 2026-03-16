Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE68F506CB
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 13:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtqPHtSHTKB8VNxsyf1YPPQ5/vfR0MHQZZ8seIH21co=; b=T4FI0Vn0h5IbEB
	0GuJqXmoF9aP+MDC0uwKItTRWDPQC77H7pAaIXDpHXXKLQneaOHJuA3TK3wy74XJS/xLe3IB6j5gS
	iD/zaEyUcUyHatb8RsRQlZQ+zQcz9sHop10Gz+fOxC7psBdFCboPlnAb2e3ukBKR0p3pGt1d63xeb
	VE8f+RFSFs0YufrqAa+mZMS8gY9sSBt13a1+IqrLtS1XWL8axDHqcbOg3eUWdnBz5hVG5Ety+EgS4
	6GCLvTVllE38WDrox3QAA8tvoI6NMRutTVEoVFaREpARRkkupNf9WCVVLD1vxbWBKFR2vK5RzVlRh
	fKWzn8Fc5LdjXabcnnvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w27jQ-000000043Fv-0IWc;
	Mon, 16 Mar 2026 13:11:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w27jO-000000043EC-0PQA
	for linux-phy@bombadil.infradead.org;
	Mon, 16 Mar 2026 13:11:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=F1b1jbbseevrfxoqPkF+lAWkN6R2Yw+sAuGiH3k9yEI=; b=PNrt8KxfEIawuhnUGRzyZifV5t
	lg/kNqhqES01G0fupyAJJA+XS4giJ3QwROaZ/Uip11xsbRoqbTyJhPO6O7v2bUgtZNnAqyLi5Ekld
	v73uWxPbuMjBT5bqHGQGDFKs7c9hoZo1mH5QS+V5OlJDuOB9EwchS9KMcyj5sxO/tPkNo2hy3Ndn9
	uAwwp8276pfyQAypAOQKODng/jE3SeOXbUdQLMhJFXiVnl8+9KD7eJcwRTrNRbRqWIpSYhSdY3Enx
	uBAdH8qeQ2bfYaYcD+h2ULX7x9X9i9k/7STbUWmU4HdSO0xFaeLefNlSpNWVT302agC1iK5c4bPsb
	Ww7nyK0Q==;
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w27jL-00000006mWG-0H2B
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 13:11:36 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2ab46931cf1so40317415ad.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 06:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773666693; x=1774271493; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F1b1jbbseevrfxoqPkF+lAWkN6R2Yw+sAuGiH3k9yEI=;
        b=DaUx1jw8nQtLb0biAzsAEGzDamY7LhsL443UcfDN2nxM0K5C5wJuvT7klWWcupE3Dm
         TkfLQRhrzECIxXCL/Xxomep5qBKkZ0cdf6a0tCOrkwc6dqYHHUn3pfxp62W7xPqSMoJ2
         Iz7vgmZKJuOEsFy/GufvBhpHb/rFpgD0Q+JD/f4UpqgqsVIMaCJ/fpSp3XSahfg1jcR2
         Mud6wqFZGDLRKNpmuW8imJnIP3lWXOLvCJvg9I4p5Dkmvf5dUutsmB9LRhWera9EgUtT
         C1QbbZfZqIN6GCr92u9A3uWgJ/gtqHDwCwtF99R7fyy+lgBxYYcbkatp/aUzmZFMeIWL
         3LYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773666693; x=1774271493;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F1b1jbbseevrfxoqPkF+lAWkN6R2Yw+sAuGiH3k9yEI=;
        b=f5riHJ5Fjc5fbU4nipUAMhTmkkqn90Sr87UveTsLjkLgVomQIL5B87oM0qZrvanvkP
         aWPoGwTWV1j8pNkCM89hDTaWIiTR3Gk3ZrS8TzGeruOTlQZZpKX8ESI8nDW51RRbqvbL
         K+To6cRQF2ojapZJNhmrC6/9PBVrTmhK6VBFoxZQGC+eSwba9xkdt0R16qPw2WBlm4bx
         GbV4lwvLq9jdueQXBnnu0AZmhup3b+1EMAJ+IeRrJZYg36L0mV7gpDGu0B2N+m59Kjl2
         XR/IYK+s9UwYXmA91KlbXEP0JVyZfD0+9r2Yx4JJpYlwAJtRXiMpsavSEj/k44ZOCmPm
         x7nA==
X-Forwarded-Encrypted: i=1; AJvYcCWmJ4dDrAqGhZtjqMWnJ//cqekP5QSDGMT1iyKugvMs3zEqOSIIE0wU4CjjXxRaLdn1NHC+oOu8jkA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAggq0BJcYBBD1ulnS+2Vsj1p+0HtGH/Bv2kPaJy/h9daYagLV
	Z89GL2NKt6Tcpnn+SAAkbhoSpWu7b2viPbTYWvlVEZnpBQqHp9BfEX7w
X-Gm-Gg: ATEYQzyOOiG4gE2iHriZ/1lUVd9azyNe7Bil1IpUkbwIsI27Na5zaUxIhihugkONrWg
	BxLmYxAxonFnsK97Ipybu98zMAQwOs5w/lXrlZFuxq2S/NInnPz1yqUw4veWXuiC2eKaXRp4g3d
	LI7/MG3W44ELWfI7EDNrHVtBKhsZl/7R9r31fDdEX5JaKz10o5fv6KI2C8K/WzcsKggDze35wmH
	pNI+lc4zbWYP1/oVeTGkB5/eyEq9AGDO/JJdhC87BcEIoBBEVYRn+Zn89smW7wX7NvYqj1UmAg5
	BWae/TKw2LaUFYlAtgIOXo/Nknwlf2y4M8Tc3esRcMR/GFudCcfUR0YiHXVM6P9r75iCPXL8R1c
	HPYtErrUeLu775jEGke0xuAoPEPTB3IyYjsglZJjycClcZmZrjtvZOsoT8qkxaKTd/Ga81pyGub
	MX422vOPlNG7iGIP7hoF8Jmmj0aeHp+qLLed3J
X-Received: by 2002:a17:903:1a0b:b0:2b0:4d7d:fb9a with SMTP id d9443c01a7336-2b04d7e03famr53040625ad.26.1773666692409;
        Mon, 16 Mar 2026 06:11:32 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.167.147.240])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ee3d6sm110144905ad.57.2026.03.16.06.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 06:11:31 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Mon, 16 Mar 2026 21:11:26 +0800
Subject: [PATCH] phy: google-usb: Fix runtime PM cleanup on probe failure
MIME-Version: 1.0
Message-Id: <20260316-google-v1-1-30a034e87a2a@gmail.com>
X-B4-Tracking: v=1; b=H4sIAH0BuGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0Mz3fT8/PScVF3jxOS0RKM045RUyxQloOKCotS0zAqwQdGxtbUAer6
 7BVgAAAA=
X-Change-ID: 20260316-google-3acfa2f3de9d
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Naveen Kumar <mnkumar@google.com>, Joy Chakraborty <joychakr@google.com>, 
 Roy Luo <royluo@google.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773666688; l=1551;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=grNch3YEfme4XX2YLfL8Yx6byNhRmXe/JTenfdWfyZA=;
 b=sP8QxL06sH+Slw6m9BD5RTi2uMzfGj1T1foGh8SmtqPEkOB/2wc388Tqw4bIOUUQbOdBNIIz3
 MNRj8JVFU+DCPWHNmwF36TX1jYZZ07sf5SJyoMTTGKZqzD3RY82YNH+
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_131135_259311_DD9E0433 
X-CRM114-Status: GOOD (  10.96  )
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

In google_usb_phy_probe(), if typec_switch_register() fails,
pm_runtime_disable() is not called, leading to an unbalanced
runtime PM state on probe failure.

Switch to devm_pm_runtime_enable() to ensure that runtime PM is
automatically disabled both on probe failure and during driver
removal.

Fixes: cbce66669c82 ("phy: Add Google Tensor SoC USB PHY driver")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/phy-google-usb.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-google-usb.c b/drivers/phy/phy-google-usb.c
index ab20bc20f19e..79480f8b110e 100644
--- a/drivers/phy/phy-google-usb.c
+++ b/drivers/phy/phy-google-usb.c
@@ -251,7 +251,9 @@ static int google_usb_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(phy_provider),
 				     "failed to register phy provider\n");
 
-	pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
 
 	sw_desc.fwnode = dev_fwnode(dev);
 	sw_desc.drvdata = gphy;
@@ -271,7 +273,6 @@ static void google_usb_phy_remove(struct platform_device *pdev)
 	struct google_usb_phy *gphy = dev_get_drvdata(&pdev->dev);
 
 	typec_switch_unregister(gphy->sw);
-	pm_runtime_disable(&pdev->dev);
 }
 
 static const struct of_device_id google_usb_phy_of_match[] = {

---
base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
change-id: 20260316-google-3acfa2f3de9d

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

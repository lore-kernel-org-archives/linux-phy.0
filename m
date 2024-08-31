Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAF45CD129C
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 14:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdFI5tcJwpcZCMWR8CCEhmMQP8dNV2sWlvcNpGwRvEA=; b=2o/Wi4l9rAA0hD
	KCOkwlO2+PaNYpxMcRQrXee3xBJYYlFYJZz4A9QWpSE0jsWuY1kvEKtIZBZa7bOZvVvA6SYH+748e
	CqZuQxKds6Xkd8uV8XKaD9J/xmb/CrIXpDXVqlKExnsp1NVFRVyEYJBj4ymMQmi5PEPDQ1ay57krR
	lSDmeV9/SoD3Oof6gi4ABBIBlRlaQlk2I1OXFIAUk6yIjPnXEvsCKZ7ltoxgbhai+EJt18IharOTx
	X2DAzJsIBKHn/UK8UiaPEuyvJTYk9B1u7tyyzckSN/hKdV6v6NNiNH3Hkt4izm8Lb5sHlFrd+0grb
	QUMnGC8e8viHZxY6xjYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyV-00000009TkW-1Bol;
	Sat, 31 Aug 2024 14:21:11 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyS-00000009Tig-0cWV
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 14:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725114067;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y5O3GspAeKQ3pneZEdcCy+Sw5OHilzaQkJasxbh7z3U=;
	b=fEZve2OeorTK7NMm3EejtESaekEC1D8/AW99yHc8DH+krZW/JaZuYl3+EfI+r0fo4F5iIi
	s/cfQy4nC1OR3H5MkxSHaCT2JGDd+dQ0rw7XsPCEelJFyjBQr34vgBGWGEjTvhXATvnKXX
	qXShm36Ii3IJvGAbamfx5zEzYIEmX0w=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-596-UNIRLRDgMwesO4-JeuSJWA-1; Sat,
 31 Aug 2024 10:21:03 -0400
X-MC-Unique: UNIRLRDgMwesO4-JeuSJWA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 26D1A19560AD;
	Sat, 31 Aug 2024 14:21:01 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.42])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id AC60130001A4;
	Sat, 31 Aug 2024 14:20:55 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Sebastian Reichel <sre@kernel.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Enric Balletbo Serra <enric.balletbo@collabora.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/6] power: supply: ucs1002: Adjust ucs1002_set_usb_type() to accept string values
Date: Sat, 31 Aug 2024 16:20:35 +0200
Message-ID: <20240831142039.28830-3-hdegoede@redhat.com>
In-Reply-To: <20240831142039.28830-1-hdegoede@redhat.com>
References: <20240831142039.28830-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_072108_279387_2E10B087 
X-CRM114-Status: GOOD (  12.36  )
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

power_supply_sysfs.c accept wrrites of strings to "usb_type" for strings
values matching an entry in POWER_SUPPLY_USB_TYPE_TEXT[]. If such a
string value is written then the int value passed to ucs1002_set_property()
will be an enum power_supply_usb_type value.

Before this change ucs1002_set_usb_type() expected the value to be an index
into ucs1002_usb_types[]. Adjust ucs1002_set_usb_type() to use the enum
value directly so that writing string values works.

The list of supported types in ucs1002_usb_types[] is: PD, SDP, DCP, CDP.
The [POWER_SUPPLY_USB_TYPE_]SDP, DCP and CDP enum labels have a value of
1, 2 and 3. So userspace selecting SDP, DCP or CDP by writing 1, 2 or 3
will keep working. POWER_SUPPLY_USB_TYPE_PD which is mapped to the ucs1002
dedicated mode however has a value of 6. Before this change writing 0 would
select the dedicated mode. To preserve userspace API compatibility also map
POWER_SUPPLY_USB_TYPE_UNKNOWN (which is 0) to the dedicated mode.

Cc: Enric Balletbo Serra <enric.balletbo@collabora.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/power/supply/ucs1002_power.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/power/supply/ucs1002_power.c b/drivers/power/supply/ucs1002_power.c
index 7970843a4f48..b67d5b03d93e 100644
--- a/drivers/power/supply/ucs1002_power.c
+++ b/drivers/power/supply/ucs1002_power.c
@@ -308,10 +308,13 @@ static int ucs1002_set_usb_type(struct ucs1002_info *info, int val)
 {
 	unsigned int mode;
 
-	if (val < 0 || val >= ARRAY_SIZE(ucs1002_usb_types))
-		return -EINVAL;
-
-	switch (ucs1002_usb_types[val]) {
+	switch (val) {
+	/*
+	 * POWER_SUPPLY_USB_TYPE_UNKNOWN == 0, map this to dedicated for
+	 * userspace API compatibility with older versions of this driver
+	 * which mapped 0 to dedicated.
+	 */
+	case POWER_SUPPLY_USB_TYPE_UNKNOWN:
 	case POWER_SUPPLY_USB_TYPE_PD:
 		mode = V_SET_ACTIVE_MODE_DEDICATED;
 		break;
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

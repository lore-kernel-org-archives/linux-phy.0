Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DDC0CD13D8
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 14:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAy80asankvGX8OdHOto0dV/vzfCPZILJuSUmmNVF2c=; b=X1NXubxN5FGnVr
	VApF4/N12ZunKS5nbPLxS1j0ZsgR5KZitg9A1CkNBlc3TjadyzdjwrcK91mVtrgsTVALhR9T4q5f7
	rBEIeMBMc6J4wlnhf/Z7dDGbYwuETNDgiMqF6QvGpozwExxomEidqGtz0S59ig1vmTibHiZjANDT3
	6OE1UU/u+CclltgW+SQSQ/PND1EYMoUcYRTyPACjJ4B5o4ttCYbx46moH/vplS+zv8kLRkDN3N6kt
	bKA8xasiMMxKtqZRKHA+uRHOCRXK/nEWP+/1bSmv0kJNdnA/iT17zH+JIPNIp95uJqDiikZ1jY1Jv
	donrlZLi7hlXubWCsPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyb-00000009TnJ-3CeM;
	Sat, 31 Aug 2024 14:21:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyY-00000009TlF-1KFn
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 14:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725114073;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a+YaXcuOLFlVp84HCFFSCXL1mJivlfEZlF6lzWx9g7c=;
	b=LgolAHSLQGa2kaemCmO3TCbwU4ztLwjQ3dzfxlPdgtUWYEac545AMmtrKU7b+W1V8dU5k9
	bmbui8UWA2TFpY4tvXsmprvySpXepZOju99S8XQukIaqLObmDh0MvqgMkbuyR/Sn0mDP3f
	SByyLr9CBD9hQRxi519WyvaxhBxs6VQ=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-629-zT7G6qIhP6O32hWBOUjMtA-1; Sat,
 31 Aug 2024 10:21:07 -0400
X-MC-Unique: zT7G6qIhP6O32hWBOUjMtA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49E4A19560B7;
	Sat, 31 Aug 2024 14:21:05 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.42])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 323B13001FE8;
	Sat, 31 Aug 2024 14:21:00 +0000 (UTC)
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
Subject: [PATCH 3/6] power: supply: rt9467-charger: Remove "usb_type" property write support
Date: Sat, 31 Aug 2024 16:20:36 +0200
Message-ID: <20240831142039.28830-4-hdegoede@redhat.com>
In-Reply-To: <20240831142039.28830-1-hdegoede@redhat.com>
References: <20240831142039.28830-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_072114_449130_16BB62D2 
X-CRM114-Status: GOOD (  10.26  )
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

The "usb_type" property must be read-only for charger power-supply devices,
see: Documentation/ABI/testing/sysfs-class-power.

But the rt9467 driver allows writing 0/1 to it to disable/enable charging.
Other charger drivers use the "status" property for this and the rt9467
code also allows writing 0/1 to its "status" property and this does
the exact same thing as writing 0/1 to its "usb_type" property.

Drop write support for the "usb_type" property making it readonly to match
the ABI documentation. If userspace wants to disable/enable charging it
can use the "status" property for this.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/power/supply/rt9467-charger.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/power/supply/rt9467-charger.c b/drivers/power/supply/rt9467-charger.c
index fdfdc83ab045..f935bd761ac1 100644
--- a/drivers/power/supply/rt9467-charger.c
+++ b/drivers/power/supply/rt9467-charger.c
@@ -745,8 +745,6 @@ static int rt9467_psy_set_property(struct power_supply *psy,
 						    RT9467_RANGE_IPREC, val->intval);
 	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
 		return rt9467_psy_set_ieoc(data, val->intval);
-	case POWER_SUPPLY_PROP_USB_TYPE:
-		return regmap_field_write(data->rm_field[F_USBCHGEN], val->intval);
 	default:
 		return -EINVAL;
 	}
@@ -764,7 +762,6 @@ static int rt9467_chg_prop_is_writeable(struct power_supply *psy,
 	case POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT:
 	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
 	case POWER_SUPPLY_PROP_PRECHARGE_CURRENT:
-	case POWER_SUPPLY_PROP_USB_TYPE:
 		return 1;
 	default:
 		return 0;
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7831CD13D2
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 14:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I99KRqYykGA22RKyp7lhUFX9bM8tfuE4Lk8rWmQ5x/E=; b=2vfI68W1Dioq2E
	bwfMWpROCyTeIyaiPmVS4U+hXgqdrqk/hNt2gOAcRAmJ9+MvSiuqnwLcj2dksZ07Yqt9DOGwFRn1t
	YRiNG0YH2YiHDrfvvjKwPXHm8DFEtxpOCV3FWNXg6B5RZmDKxJk+/SMnV1Pa+3IbVxCMrpksW03ba
	qEKxMLITGVIIOYZSJ2ZchoSfDrgBuQiqz4ZdSanHRbduPWTcqRrnfmHqVuHhHQrbISi+UhL4XvYE2
	hyq3X+OR+3y1KUwMW+EcWIWK6hs5dkcvRInjZfm7lQYt9QstEhvG8r9OrFYZtm+YZsZRpOQ6NBs6q
	c5qCZV+8dupcyOHkEDow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyR-00000009Tie-1U2Y;
	Sat, 31 Aug 2024 14:21:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyL-00000009ThF-2fIc
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 14:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725114058;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G4fRU4GXiLRr9tyWkx+zPFkdV4614FpRfFryE8h7iDU=;
	b=GmKeor4DzSHPCQ4Ym0IQLgjye46SrNd3KD5ZlTln5Gn2NAGI0UevlC+YeMZqT62H7b1Nuh
	jPz4WLWuvYnrt3EjCy+VN0Yvk8StX5U9g2JAVbWMCwPdXxiFiNaOZJ9ABywcSNBiwr0jAD
	y9pbYEBZQgwSF4DnYPX5w98pgW5ss3U=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-519-5oMSUygFNq6SBHUQxEOdqg-1; Sat,
 31 Aug 2024 10:20:54 -0400
X-MC-Unique: 5oMSUygFNq6SBHUQxEOdqg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8F6B41955BEF;
	Sat, 31 Aug 2024 14:20:50 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.42])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 5DC7F30001A4;
	Sat, 31 Aug 2024 14:20:45 +0000 (UTC)
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
Subject: [PATCH 0/6] power: supply: Change usb_types from an array into a bitmask
Date: Sat, 31 Aug 2024 16:20:33 +0200
Message-ID: <20240831142039.28830-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_072101_774064_4A99CC7B 
X-CRM114-Status: GOOD (  20.82  )
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

Hi All,

When support for the "charge_behaviour" property was added the list of
available values was made a bitmask in power_supply_desc.

"usb_types" is very similar in that:
1. It is an enum
2. The list of available values is stored in power_supply_desc
3. When shown it shows all available values, with the active one surrounded
   by square brackets.

But "usb_types" uses an array with valid enum values instead of a bitmask.
This uses more memory then the bitmap approach and it makes it impossible
to have a shared generic show() function for properties which show
available values, with the active one surrounded by square brackets.

This patch-set moves "usb_types" over to a bitmask in power_supply_desc
to indicate the available values.

Patches 1 - 3:

It turns out that the ucs1002-power driver contained a surprise in that
it supports writing to "usb_type" even though the ABI doc says it is
read-only. Since we cannot break shipped userspace API, the ship has sailed
on this one. The first patch documents that writing "usb_type" is allowed,
but only for power-supply devices which provide USB power rather then
consume it.

Enum properties accept writing the FOO_TEXT[] string values, passing
the enum value matching the FOO_TEXT entry to set_property(), the second
patch adjusts ucs1002_set_usb_type() to directly accept enum values.

The rt9467 driver was another driver which allowed writing to "usb_type"
but there the use made no sense, so it is simply dropped.

Patches 4 - 6:

These patches implement the actual moving of usb_types to a bitmask.

Patch 6 is a bit of a bigbang patch moving all drivers over in one go,
touching a couple of drivers outside drivers/power/supply: 1 in
drivers/extcon/ 1 in drivers/phy/ and 5 in drivers/usb/typec/ since
the changes outside of drivers/power/supply are small I've chosen to
make all the changes in one go rather then have some sort of
intermediate state where both ways are supported.

For merging this I believe it would be best for an immutable branch / tag
to be created on the linux-power-supply tree and then send a pull-request
to the extcon, phy and usb-typec maintainers to merge the tag.

extcon, phy and typec maintainers can you please give your Acked-by for
patch 6/6 for merging these changes through the linux-power-supply tree?

This set is based on top of the latest linux-power-supply/for-next.

Regards,

Hans


Hans de Goede (6):
  power: supply: "usb_type" property may be written to
  power: supply: ucs1002: Adjust ucs1002_set_usb_type() to accept string
    values
  power: supply: rt9467-charger: Remove "usb_type" property write
    support
  power: supply: sysfs: Add power_supply_show_enum_with_available()
    helper
  power: supply: sysfs: Move power_supply_show_enum_with_available() up
  power: supply: Change usb_types from an array into a bitmask

 Documentation/ABI/testing/sysfs-class-power   |  7 +-
 drivers/extcon/extcon-intel-cht-wc.c          | 15 ++---
 drivers/phy/ti/phy-tusb1210.c                 | 11 +---
 drivers/power/supply/axp20x_usb_power.c       | 13 ++--
 drivers/power/supply/bq256xx_charger.c        | 15 ++---
 drivers/power/supply/cros_usbpd-charger.c     | 22 +++----
 .../power/supply/lenovo_yoga_c630_battery.c   |  7 +-
 drivers/power/supply/mp2629_charger.c         | 15 ++---
 drivers/power/supply/mt6360_charger.c         | 13 ++--
 drivers/power/supply/mt6370-charger.c         | 13 ++--
 drivers/power/supply/power_supply_core.c      |  4 --
 drivers/power/supply/power_supply_sysfs.c     | 66 ++++++-------------
 drivers/power/supply/qcom_battmgr.c           | 37 ++++++-----
 drivers/power/supply/qcom_pmi8998_charger.c   | 13 ++--
 drivers/power/supply/rk817_charger.c          |  9 +--
 drivers/power/supply/rn5t618_power.c          | 13 ++--
 drivers/power/supply/rt9467-charger.c         | 16 ++---
 drivers/power/supply/rt9471.c                 | 15 ++---
 drivers/power/supply/ucs1002_power.c          | 26 ++++----
 drivers/usb/typec/anx7411.c                   | 11 +---
 drivers/usb/typec/rt1719.c                    | 11 +---
 drivers/usb/typec/tcpm/tcpm.c                 | 11 +---
 drivers/usb/typec/tipd/core.c                 |  9 +--
 drivers/usb/typec/ucsi/psy.c                  | 11 +---
 include/linux/power_supply.h                  |  3 +-
 25 files changed, 132 insertions(+), 254 deletions(-)

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

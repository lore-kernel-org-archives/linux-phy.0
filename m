Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B87DC32773
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 19:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhpRKXTYm6izrDe0g5H3qXluCtX/7WdRGuWEdQ3d64s=; b=Tx59gEiHdeuD83
	OFPshs2GUC3AR1PnMyJ8dHeJ4fVZqFblOISyYg/UF6swDDQ7Ca/TWW08+Zq4C9A/5If4MTNZQfFFZ
	zXd0B+FTzGFTVvZlIA7+3tvBG6r/azQ+26B+Pv5Xa5iWNdkCwAXPZ+MK7Aq4JkDwPjSXo/OSwegrv
	XAMCp80vKwd5THxhrqAspXDqrSxJTwk25bCpP8jLCAlghYzwhxV9suoREqjUeLNDzq6YuotFkkjgR
	opxYe5+R54jvBwdjigeysuIoO72ZscUA26Vmb7tbZ8vUXlAKKWDzlGSLPvwcxGb9OSabK/I9DmuHs
	4eSrc6UDU7NDorp4yjFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOlU-005kNh-LV; Wed, 17 Aug 2022 19:31:44 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOlR-005kKJ-7H
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 19:31:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 099D8B81F4F;
	Wed, 17 Aug 2022 19:31:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0D01C4347C;
	Wed, 17 Aug 2022 19:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660764696;
	bh=SNZ70vt4bNjbtH48RRhcFsT0HkyKYDhAfV/NNF8Sj9I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SkOaWUehiFg+GvygEMhrqAyB4Tt0u6BZbWBJC25DJsFB51eLopLOOunbUSxBq/yzp
	 fJwrT4Nk3jEZJf011mniit1BiIyydgQno3tr5aA6AhWUnA3tLkDqidlUIbv+zTkHdv
	 KrqWGbXhfJ1jINkNHlBCKKo/kC9a7oXnjUCjjjUQEniQmMf1ABgzGPIJ4HC4Ai3o/X
	 dZTM1Ga/87yWTZd329aSvZOtMHMcY7uFv5iYF22OUpap7OpJwFlEdGU3F0xD8nVkkn
	 67RpshgzLjJj8A702Qku/xBaCAjppJap/icXN8gc+IlQN5/qRCmjPJNF/HyLywU6pi
	 VTrsSb+/GBtFA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Gregory Clement <gregory.clement@bootlin.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-kernel@vger.kernel.org,
	pali@kernel.org,
	josef.schlehofer@nic.cz,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH linux-phy 4/4] arm64: dts: armada-3720-turris-mox: Change comphy tx amplitude for 2500base-x mode
Date: Wed, 17 Aug 2022 21:31:19 +0200
Message-Id: <20220817193119.4463-5-kabel@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817193119.4463-1-kabel@kernel.org>
References: <20220817193119.4463-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_123142_344725_2AB88B08 
X-CRM114-Status: GOOD (  12.13  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Q2hhbmdlIGNvbXBoeSB0cmFuc21pdCBhbXBsaXR1ZGUgdG8gMTAyNSBtViBmb3IgMjUwMGJhc2Ut
eCBtb2RlIG9uCmNvbXBoeSBjb25uZWN0ZWQgdG8gVG9wYXouCgpUaGlzIGZpeGVzIGlzc3VlIHdo
ZXJlaW4gaWYgdGhlIDhiLzEwYiBlbmNvZGVkIHBhY2tldCBjb250YWlucyBhIGxvbmcKZW5vdWdo
IGFsdGVybmF0aW5nIHNlcXVlbmNlIG9mIGJpdHMgKDAxMDEwMS4uLiBvciAxMDEwMTAuLi4pLCB3
aGljaApoYXBwZW5zIGlmIHRoZSBwYWNrZXQgY29udGFpbnMgYSBzZXF1ZW5jZSBvZiAnSicgb3Ig
J1x4YjUnIGJ5dGVzLCB0aGUKcGFja2V0IG1heSBiZSBsb3N0IHdoZW4gc2VudCBmcm9tIEEzNzIw
IHRvIFRvcGF6IGR1ZSB0byBGQ1MgZXJyb3IuIFRoZQpwcm9iYWJpbGl0eSBvZiBsb3NzIGdyb3dz
IHdpdGggdGhlIG51bWJlciBvZiAnSidzIHdpdGggZGVmYXVsdCB0cmFuc21pdAphbXBsaXR1ZGUg
c2V0dGluZyAtIHdpdGggMTE0ICdKJ3MgdGhlIHByb2JhYmlsaXR5IGlzIGFib3V0IDUwJSwgd2l0
aCAxMjUKJ0oncyBhbG1vc3QgMTAwJSBvZiBwYWNrZXRzICBhcmUgbG9zdC4KCkZpeGVzOiA3MTA5
ZDgxN2RiMmUgKCJhcm02NDogZHRzOiBtYXJ2ZWxsOiBhZGQgRFRTIGZvciBUdXJyaXMgTW94IikK
U2lnbmVkLW9mZi1ieTogTWFyZWsgQmVow7puIDxrYWJlbEBrZXJuZWwub3JnPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyB8IDEwICsr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCmlu
ZGV4IGFkYTE2NGQ0MjNmMy4uNzRhN2FjMWY4ZWNiIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCkBAIC0xODEsNiAr
MTgxLDE2IEBAICZldGgxIHsKIAlwaHlzID0gPCZjb21waHkwIDE+OwogfTsKIAorJmNvbXBoeTAg
eworCS8qCisJICogU2V0IHBlYWsgdG8gcGVhayB0cmFuc21pdCBhbXBsaXR1ZGUgdG8gMTAyNSBt
ViB0byBmaXggaXNzdWUgd2hlcmVpbgorCSAqIGEgcGFja2V0IG1heSBiZSBsb3N0IGlmIGl0IGNv
bnRhaW5zIGEgbG9uZyBlbm91Z2ggc2VxdWVuY2Ugb2YgJ0onCisJICogb3IgJ1x4YjUnIGJ5dGVz
LgorCSAqLworCXR4LXAycC1taWNyb3ZvbHQgPSA8MTAyNTAwMD47CisJdHgtcDJwLW1pY3Jvdm9s
dC1uYW1lcyA9ICIyNTAwYmFzZS14IjsKK307CisKICZzZGhjaTAgewogCXdwLWludmVydGVkOwog
CWJ1cy13aWR0aCA9IDw0PjsKLS0gCjIuMzUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

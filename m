Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E56C3ABBE
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 02:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXBZEHxDEzNIvwjuQ8GFfQdTGN8YBTvOR4TeUmjLBUw=; b=qGs5HDJ3PJnJAc
	MXWsxP2tkh+wUdxGbQPKMCbXK5gq+TA/7t9vPquMaDO+o4Qe6RlztLDP/qiYrJUjWjA1YkgPeo9II
	tNJAykMdY/ayuC0lQd63iTLMHrfPDk9P5rLW4D04Bk4BPHbEqBQ1UIh8hVVnbbgsv7H7JJinWHEV0
	J5hMDkS5PybngH26ixu0qQZn+OPAANclQXxhFDUsWX8kcVF0MQv3byPFpTmaIm0cOUmyt/jza9FkC
	S6gB8DRO8g+VUc0+4q/qja+Mp7hFilFnza7ZrUO4UQTqFO2V/bsUFt69fNJTnYyxHfhgcWIXo9w2i
	6AtURtpJlcZ5gWEKTBOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC7nL-00000009goZ-0g32;
	Tue, 06 May 2025 02:12:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC4fF-00000008sxd-1XIe;
	Mon, 05 May 2025 22:51:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6136B4502D;
	Mon,  5 May 2025 22:51:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61A91C4CEE4;
	Mon,  5 May 2025 22:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746485516;
	bh=8Tzr5t+i7b+QkNadODBiccJKXrTWX5gnoQuN05CbYhM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OQG9QLLTwv83ss5/YyVzrOyhgFyudhdF/pel4sfc1iqVjIpAIEXb/7S2xEgX5T6w6
	 OtDjF4Wr036xIJGSTlQpagR8BpdUe2H1GZTZhA21xBwha6ueSglZ+1BtGIxdYM9VuR
	 l/1J7VQHheFCqCoRqzRU2m8a5FIXh8TfR/zpn29lzA/XRS4mGRrwQQGRs/B2HdcA13
	 CNlf3+wksMSHt/pP359ClrYoB15I6qvGYDJFbRFksGfDtTuZehxP5NniAeVtT9zfyt
	 JqjxQ453muPgRmwaKbcTOyvsFdlIbkD+qg0iBObnIumudsoo9SOBatITBbG53YMkmx
	 TTu65DqGfwCdg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	krzk@kernel.org,
	semen.protsenko@linaro.org,
	dan.carpenter@linaro.org,
	kauschluss@disroot.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH AUTOSEL 6.12 356/486] phy: exynos5-usbdrd: fix EDS distribution tuning (gs101)
Date: Mon,  5 May 2025 18:37:12 -0400
Message-Id: <20250505223922.2682012-356-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505223922.2682012-1-sashal@kernel.org>
References: <20250505223922.2682012-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.26
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_155157_425480_F31CDFF2 
X-CRM114-Status: GOOD (  13.04  )
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

RnJvbTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KClsgVXBzdHJl
YW0gY29tbWl0IDIxODYwZjM0MGJhNzZlZTA0MmU1NDMxZmY5MjUzN2Y4OWJjMTE0NzYgXQoKVGhp
cyBjb2RlJ3MgaW50ZW50aW9uIGlzIHRvIGNvbmZpZ3VyZSBsYW5lMCBhbmQgbGFuZTIgdHVuaW5n
cywgYnV0IGZvcgpsYW5lMiB0aGVyZSBpcyBhIHR5cG8gYW5kIGl0IGVuZHMgdXAgdHVuaW5nIHNv
bWV0aGluZyBlbHNlLgoKRml4IHRoZSB0eXBvLCBhcyBpdCBkb2Vzbid0IGFwcGVhciB0byBtYWtl
IHNlbnNlIHRvIGFwcGx5IGRpZmZlcmVudAp0dW5pbmdzIGZvciBsYW5lMCB2cyBsYW5lMi4KClRo
ZSBzYW1lIHR5cG8gYXBwZWFycyB0byBleGlzdCBpbiB0aGUgYm9vdGxvYWRlciwgaGVuY2Ugd2Ug
cmVzdG9yZSB0aGUKb3JpZ2luYWwgdmFsdWUgaW4gdGhlIHR5cG8nZCByZWdpc3RlcnMgYXMgd2Vs
bC4gVGhpcyBjYW4gYmUgcmVtb3ZlZApvbmNlIC8gaWYgdGhlIGJvb3Rsb2FkZXIgaXMgdXBkYXRl
ZC4KCk5vdGUgdGhhdCB0aGlzIGlzIGluY29ycmVjdCBpbiB0aGUgZG93bnN0cmVhbSBkcml2ZXIg
YXMgd2VsbCAtIHRoZQp2YWx1ZXMgaGFkIGJlZW4gY29waWVkIGZyb20gdGhlcmUuCgpSZXZpZXdl
ZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpUZXN0ZWQtYnk6
IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KU2lnbmVkLW9mZi1ieTog
QW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KVGVzdGVkLWJ5OiBXaWxs
IE1jVmlja2VyIDx3aWxsbWN2aWNrZXJAZ29vZ2xlLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI0MTIwNi1nczEwMS1waHktbGFuZXMtb3JpZW50YXRpb24tcGh5LXY0LTQt
ZjU5NjEyNjhiMTQ5QGxpbmFyby5vcmcKU2lnbmVkLW9mZi1ieTogVmlub2QgS291bCA8dmtvdWxA
a2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3Jn
PgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA3ICsrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKaW5kZXggNDZiOGY2OTg3YzYyYy4u
MjhkMDJhZTYwY2MxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9z
NS11c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5j
CkBAIC0xNTEzLDggKzE1MTMsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRy
ZF9waHlfdHVuaW5nIGdzMTAxX3R1bmVzX3BpcGUzX3ByZWluaXRbXSA9IHsKIAlQSFlfVFVOSU5H
X0VOVFJZX1BNQSgweDA5ZTAsIC0xLCAweDAwKSwKIAlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDA5
ZTQsIC0xLCAweDM2KSwKIAlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDFlN2MsIC0xLCAweDA2KSwK
LQlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDFlOTAsIC0xLCAweDAwKSwKLQlQSFlfVFVOSU5HX0VO
VFJZX1BNQSgweDFlOTQsIC0xLCAweDM2KSwKKwlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDE5ZTAs
IC0xLCAweDAwKSwKKwlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDE5ZTQsIC0xLCAweDM2KSwKKwkv
KiBmaXggYm9vdGxvYWRlciBidWcgKi8KKwlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDFlOTAsIC0x
LCAweDAyKSwKKwlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDFlOTQsIC0xLCAweDBiKSwKIAkvKiBp
bXByb3ZlIExWQ0MgKi8KIAlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDA4ZjAsIC0xLCAweDMwKSwK
IAlQSFlfVFVOSU5HX0VOVFJZX1BNQSgweDE4ZjAsIC0xLCAweDMwKSwKLS0gCjIuMzkuNQoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

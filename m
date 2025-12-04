Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17301D2A550
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 21:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmw/2nEfley/iU3kTHFhwJ2oaYVreyzqTijHTP4H3gM=; b=XEK7H0MI8w21N9
	IquhB427OtjPY6/KnglLqJS2x2HICp6JuIYwQo/2uzlIfuhNjn4LHCHKNXygYhIINvZLxJl4T1wpQ
	8V6ozpsmUn90AMCtQczzvYEvRkcgwWZXJ8EkSp6h0pez1qvVECvCSI/v3Nxd1BjhrgrO0W7TW564i
	QSrTG4QCxYwT1uRLsjch4xODF7f3fgW8dnoNelQCqPnXzY7FoPygHvVLTOuZNofZGq5uX3GA2Zv2k
	Hxl6QuRWmOBl9xKbCj+EJHpCtpE9FfAltXt4Pm7liAAX7aSuAhOZzEW6oGcwys6E3g3/NUQifVt+f
	9H2iYpSV/snC1QKgoCiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0k-00000008gYq-3V2x;
	Thu, 04 Dec 2025 21:37:14 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0f-00000008gVl-19Bw
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 21:37:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 93A0C6007C12;
	Thu,  4 Dec 2025 21:27:30 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id r-KcAZ9WELtN; Thu,  4 Dec 2025 21:27:28 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 285216007C27;
	Thu,  4 Dec 2025 21:27:26 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1764883646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gws7bqKRyNKCnBdDeWO44Ug9p/AFQeyiuCwnVQuZ3wk=;
	b=TK9PQ+fqy2nXv1tk7PhT4zhyVoHMNwKwQHm2sl5asqJWaSlpZI96R11Q8p4SAx+/lZsWVL
	TvcrelBK7FtCGqJ5aEDCtzTwcmromNjXWP7XHrmmnGUc4VlytBigoVvMWcORtrtSWoiZ+P
	UDQ5uaxhzD8ugS7o3vfuLweqCVviyb2cfqVT0mABJ+RFV4OoePuBb8Vh1jmmuJV/0GS8Bt
	ytYSist3DiXaO0leJbS8MjXWUs48W0BHXu2/Q8B4kby4jvFj6XRDD03NCSdLMlu4g9Yd/e
	HX4o1tsnccODznC2ZJoFIyS55u86kmusyg6CvVPNHiv9pzHJlfSgmOyPuJZB2Q==
Received: from [192.168.1.151] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 001E836013C;
	Thu,  4 Dec 2025 21:27:25 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Thu, 04 Dec 2025 21:27:19 +0000
Subject: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
MIME-Version: 1.0
Message-Id: <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764883644; l=4982;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=xf9W8khExmmglhR6CvPAqUspKha+T1FNlzX8AdCnkQg=;
 b=aQSppPE/K65eVVqVi1Ey+4rSDItbToDQShSiE2nBqNvkn3KPbsWhZVXUa9fVOUzkdsXDnS/Xd
 ygSs1457/IIC6VfJjPQFWDkQiKxUn++DiE89U/n761OxxibJyW4ousi
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_133709_761155_7723029E 
X-CRM114-Status: GOOD (  19.20  )
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

VGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgVVNCMiByb2xlIHN3aXRjaGluZyBvbiBUZWdy
YSByZWxpZXMgb24Kd2hpY2hldmVyIHRoZSBwcmV2aW91cyBVU0IgY29udHJvbGxlciBkcml2ZXIg
d2FzIHVzaW5nIHRoZSBQSFkgdG8gZmlyc3QKInlpZWxkIiBpdCBiYWNrIHRvIFVTQl9ST0xFX05P
TkUgYmVmb3JlIHRoZSBuZXh0IGNvbnRyb2xsZXIgY29uZmlndXJlcwppdCBmb3IgdGhlIG5ldyBy
b2xlLiBIb3dldmVyLCBubyBtZWNoYW5pc20gdG8gZ3VhcmFudGVlIHRoaXMgb3JkZXJpbmcKd2Fz
IGltcGxlbWVudGVkLCBhbmQgY3VycmVudGx5LCBpbiB0aGUgZ2VuZXJhbCBjYXNlLCB0aGUgY29u
ZmlndXJhdGlvbgpmdW5jdGlvbnMgdGVncmFfeGhjaV9pZF93b3JrKCkgYW5kIHRlZ3JhX3h1ZGNf
dXNiX3JvbGVfc3dfd29yaygpIGVuZCB1cApydW5uaW5nIGluIHRoZSBzYW1lIG9yZGVyIHJlZ2Fy
ZGxlc3Mgb2YgdGhlIHRyYW5zaXRpb24gYmVpbmcgSE9TVC0+REVWSUNFCm9yIERFVklDRS0+SE9T
VCwgbGVhZGluZyB0byBvbmUgb2YgdGhlc2UgdHJhbnNpdGlvbnMgZW5kaW5nIHVwIGluIGEKbm9u
LXdvcmtpbmcgc3RhdGUgZHVlIHRvIHRoZSBuZXcgY29uZmlndXJhdGlvbiBiZWluZyBjbG9iYmVy
ZWQgYnkgdGhlCnByZXZpb3VzIGNvbnRyb2xsZXIgZHJpdmVyIHNldHRpbmcgVVNCX1JPTEVfTk9O
RSBhZnRlciB0aGUgZmFjdC4KCkZpeCB0aGlzIGJ5IGludHJvZHVjaW5nIGEgaGVscGVyIHRoYXQg
d2FpdHMgZm9yIHRoZSBVU0IyIHBvcnTigJlzIGN1cnJlbnQKcm9sZSB0byBiZWNvbWUgVVNCX1JP
TEVfTk9ORSBhbmQgYWRkIGl0IGluIHRoZSBjb25maWd1cmF0aW9uIGZ1bmN0aW9ucwphYm92ZSBi
ZWZvcmUgc2V0dGluZyB0aGUgcm9sZSB0byBlaXRoZXIgVVNCX1JPTEVfSE9TVCBvcgpVU0JfUk9M
RV9ERVZJQ0UuIFRoZSBzcGVjaWZpYyBwYXJhbWV0ZXJzIG9mIHRoZSBoZWxwZXIgZnVuY3Rpb24g
YXJlCmNob2ljZXMgdGhhdCBzZWVtIHJlYXNvbmFibGUgaW4gbXkgdGVzdGluZyBhbmQgaGF2ZSBu
byBvdGhlciBiYXNpcy4KClRoaXMgd2FzIHRlc3RlZCBvbiBhIFRlZ3JhMjEwIHBsYXRmb3JtIChT
bWF1ZykuIEhvd2V2ZXIsIGR1ZSB0byB0aGUgc2ltaWxhcgphcHByb2FjaCBpbiBUZWdyYTE4NiBp
dCBpcyBsaWtlbHkgdGhhdCBub3Qgb25seSB0aGlzIHByb2JsZW0gZXhpc3RzIHRoZXJlCmJ1dCB0
aGF0IHRoaXMgcGF0Y2ggYWxzbyBmaXhlcyBpdC4KClNpZ25lZC1vZmYtYnk6IERpb2dvIEl2byA8
ZGlvZ28uaXZvQHRlY25pY28udWxpc2JvYS5wdD4KLS0tCiBkcml2ZXJzL3BoeS90ZWdyYS94dXNi
LmMgICAgICAgICAgICB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3VzYi9n
YWRnZXQvdWRjL3RlZ3JhLXh1ZGMuYyB8ICA0ICsrKysKIGRyaXZlcnMvdXNiL2hvc3QveGhjaS10
ZWdyYS5jICAgICAgIHwgMTUgKysrKysrKysrKy0tLS0tCiBpbmNsdWRlL2xpbnV4L3BoeS90ZWdy
YS94dXNiLmggICAgICB8ICAxICsKIDQgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMgYi9k
cml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKaW5kZXggYzg5ZGY5NWFhNmNhLi5lMDVjM2YyZDE0MjEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYworKysgYi9kcml2ZXJzL3BoeS90
ZWdyYS94dXNiLmMKQEAgLTc0MCw2ICs3NDAsMjkgQEAgc3RhdGljIHZvaWQgdGVncmFfeHVzYl9w
YXJzZV91c2Jfcm9sZV9kZWZhdWx0X21vZGUoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCkK
IAl9CiB9CiAKK2Jvb2wgdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUoc3RydWN0
IHRlZ3JhX3h1c2JfcGFkY3RsICpwYWRjdGwsIGludCBpbmRleCkKK3sKKwlzdHJ1Y3QgdGVncmFf
eHVzYl91c2IyX3BvcnQgKnVzYjIgPSB0ZWdyYV94dXNiX2ZpbmRfdXNiMl9wb3J0KHBhZGN0bCwK
KwkJCQkJCQkJICAgICAgaW5kZXgpOworCWludCByZXRyaWVzID0gNTsKKworCWlmICghdXNiMikg
eworCQlkZXZfZXJyKCZ1c2IyLT5iYXNlLmRldiwgIm5vIHBvcnQgZm91bmQgZm9yIFVTQjIgbGFu
ZSAldVxuIiwgaW5kZXgpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCisJZG8geworCQlpZiAodXNi
Mi0+cm9sZSA9PSBVU0JfUk9MRV9OT05FKQorCQkJcmV0dXJuIHRydWU7CisKKwkJdXNsZWVwX3Jh
bmdlKDUwLCA2MCk7CisJfSB3aGlsZSAocmV0cmllcy0tKTsKKworCWRldl9lcnIoJnVzYjItPmJh
c2UuZGV2LCAidGltZWQgb3V0IHdhaXRpbmcgZm9yIFVTQl9ST0xFX05PTkUiKTsKKworCXJldHVy
biBmYWxzZTsKK30KKwogc3RhdGljIGludCB0ZWdyYV94dXNiX3VzYjJfcG9ydF9wYXJzZV9kdChz
dHJ1Y3QgdGVncmFfeHVzYl91c2IyX3BvcnQgKnVzYjIpCiB7CiAJc3RydWN0IHRlZ3JhX3h1c2Jf
cG9ydCAqcG9ydCA9ICZ1c2IyLT5iYXNlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0
L3VkYy90ZWdyYS14dWRjLmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL3RlZ3JhLXh1ZGMuYwpp
bmRleCAwYzM4ZmMzN2I2ZTYuLjcyZDcyNTY1OWU1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy91c2Iv
Z2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMKKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdy
YS14dWRjLmMKQEAgLTY5OCw4ICs2OTgsMTIgQEAgc3RhdGljIHZvaWQgdGVncmFfeHVkY19yZXN0
b3JlX3BvcnRfc3BlZWQoc3RydWN0IHRlZ3JhX3h1ZGMgKnh1ZGMpCiAKIHN0YXRpYyB2b2lkIHRl
Z3JhX3h1ZGNfZGV2aWNlX21vZGVfb24oc3RydWN0IHRlZ3JhX3h1ZGMgKnh1ZGMpCiB7CisJaW50
IHBvcnQgPSB0ZWdyYV94dXNiX3BhZGN0bF9nZXRfcG9ydF9udW1iZXIoeHVkYy0+Y3Vycl91dG1p
X3BoeSk7CiAJaW50IGVycjsKIAorCWlmICghdGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xl
X25vbmUoeHVkYy0+cGFkY3RsLCBwb3J0KSkKKwkJcmV0dXJuOworCiAJcG1fcnVudGltZV9nZXRf
c3luYyh4dWRjLT5kZXYpOwogCiAJdGVncmFfcGh5X3h1c2JfdXRtaV9wYWRfcG93ZXJfb24oeHVk
Yy0+Y3Vycl91dG1pX3BoeSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVn
cmEuYyBiL2RyaXZlcnMvdXNiL2hvc3QveGhjaS10ZWdyYS5jCmluZGV4IDljNjlmY2NkYzZlOC4u
OTk0NDU5MzE2NmEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYwor
KysgYi9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYwpAQCAtMTM1MiwxOCArMTM1MiwyMyBA
QCBzdGF0aWMgdm9pZCB0ZWdyYV94aGNpX2lkX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3Jr
KQogCXN0cnVjdCB0ZWdyYV94dXNiX21ib3hfbXNnIG1zZzsKIAlzdHJ1Y3QgcGh5ICpwaHkgPSB0
ZWdyYV94dXNiX2dldF9waHkodGVncmEsICJ1c2IyIiwKIAkJCQkJCSAgICB0ZWdyYS0+b3RnX3Vz
YjJfcG9ydCk7CisJZW51bSB1c2Jfcm9sZSByb2xlID0gVVNCX1JPTEVfTk9ORTsKIAl1MzIgc3Rh
dHVzOwogCWludCByZXQ7CiAKIAlkZXZfZGJnKHRlZ3JhLT5kZXYsICJob3N0IG1vZGUgJXNcbiIs
IHN0cl9vbl9vZmYodGVncmEtPmhvc3RfbW9kZSkpOwogCi0JbXV0ZXhfbG9jaygmdGVncmEtPmxv
Y2spOwogCi0JaWYgKHRlZ3JhLT5ob3N0X21vZGUpCi0JCXBoeV9zZXRfbW9kZV9leHQocGh5LCBQ
SFlfTU9ERV9VU0JfT1RHLCBVU0JfUk9MRV9IT1NUKTsKLQllbHNlCi0JCXBoeV9zZXRfbW9kZV9l
eHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCBVU0JfUk9MRV9OT05FKTsKKwlpZiAodGVncmEtPmhv
c3RfbW9kZSkgeworCQlpZiAoIXRlZ3JhX3h1c2JfdXNiMl9wb3J0X3dhaXRfcm9sZV9ub25lKHRl
Z3JhLT5wYWRjdGwsCisJCQkJCQkJIHRlZ3JhLT5vdGdfdXNiMl9wb3J0KSkKKwkJCXJldHVybjsK
IAorCQlyb2xlID0gVVNCX1JPTEVfSE9TVDsKKwl9CisKKwltdXRleF9sb2NrKCZ0ZWdyYS0+bG9j
ayk7CisJcGh5X3NldF9tb2RlX2V4dChwaHksIFBIWV9NT0RFX1VTQl9PVEcsIHJvbGUpOwogCW11
dGV4X3VubG9jaygmdGVncmEtPmxvY2spOwogCiAJdGVncmEtPm90Z191c2IzX3BvcnQgPSB0ZWdy
YV94dXNiX3BhZGN0bF9nZXRfdXNiM19jb21wYW5pb24odGVncmEtPnBhZGN0bCwKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvcGh5L3RlZ3JhL3h1c2IuaCBiL2luY2x1ZGUvbGludXgvcGh5L3Rl
Z3JhL3h1c2IuaAppbmRleCA2Y2E1MWUwMDgwZWMuLmEwZDNkNWI3Y2YzMyAxMDA2NDQKLS0tIGEv
aW5jbHVkZS9saW51eC9waHkvdGVncmEveHVzYi5oCisrKyBiL2luY2x1ZGUvbGludXgvcGh5L3Rl
Z3JhL3h1c2IuaApAQCAtMzMsNSArMzMsNiBAQCBpbnQgdGVncmFfeHVzYl9wYWRjdGxfZGlzYWJs
ZV9waHlfc2xlZXB3YWxrKHN0cnVjdCB0ZWdyYV94dXNiX3BhZGN0bCAqcGFkY3RsLCBzdAogaW50
IHRlZ3JhX3h1c2JfcGFkY3RsX2VuYWJsZV9waHlfd2FrZShzdHJ1Y3QgdGVncmFfeHVzYl9wYWRj
dGwgKnBhZGN0bCwgc3RydWN0IHBoeSAqcGh5KTsKIGludCB0ZWdyYV94dXNiX3BhZGN0bF9kaXNh
YmxlX3BoeV93YWtlKHN0cnVjdCB0ZWdyYV94dXNiX3BhZGN0bCAqcGFkY3RsLCBzdHJ1Y3QgcGh5
ICpwaHkpOwogYm9vbCB0ZWdyYV94dXNiX3BhZGN0bF9yZW1vdGVfd2FrZV9kZXRlY3RlZChzdHJ1
Y3QgdGVncmFfeHVzYl9wYWRjdGwgKnBhZGN0bCwgc3RydWN0IHBoeSAqcGh5KTsKK2Jvb2wgdGVn
cmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUoc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3Rs
ICpwYWRjdGwsIGludCBpbmRleCk7CiAKICNlbmRpZiAvKiBQSFlfVEVHUkFfWFVTQl9IICovCgot
LSAKMi41Mi4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==

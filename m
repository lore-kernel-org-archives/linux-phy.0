Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D0DC55ABA
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 07:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPhR3C2V9QXreQQkQMUW7nAb4twrkDo1+rVl5GOYBJg=; b=1506sHfHa9YcHh
	Az4U2bcGJiN0Ivn0zAtrGJ+De5vAS9391VDQWNlBD1VsxXhyHyn0UjKZg2xWe043u6aw2Xq+RFduU
	lmk8nbKX4i9WL9DinA+DEG3mwG1B/UN28KthsQ8jVMkDKtgGSBDKx+c36uUmR+uVuBxrOTiTCI6Er
	KbugPftY9RaPPaISPuVdpx58PcRYHZqiGuA0VB2njl4sE+qWrrkZ+kMaiIIRaHTFP5i2cBjw1CfLK
	MXB/+z9nd+DNR5EUKUunhQCFXKYGNJRCZSd1uLKcC4XV0bh48IwJ6FI6CLSKrGxflH6LnHNn3sKfj
	uO8c8vIcjcLJDKkNIt0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9QY-00000001Dr5-2nw5;
	Tue, 04 Aug 2026 07:19:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9QX-00000001Dqw-0WQz
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 07:19:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2652060A78;
	Tue,  4 Aug 2026 07:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 795F21F000E9;
	Tue,  4 Aug 2026 07:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785827943;
	bh=cMGZhRgSvECecfQZ/g+tjyg9CTjQ2nh2a3Fnz0mMRk8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZBYNkduL12AkbPnZxqkZRaoD6A9nXbA0Sum7+Imnh/5Vuyuc4w2WjJELrSAZHRd9A
	 qqoRXix1RHXhXeN9O+W4nlEhE27fu3k8AzOr0YMdFkme8SOUn/C5F14nrEjlAXZcdx
	 Xf1atLsesEOO5NvpKD9DYSRt8v3Zg6HbVogixYELUg3J1vMXKWKwfxopAZehfcITVs
	 CB55HmfrqpobsS6afJxRTM54TLeN+qWAxgzxrywGKj5tceJJipQvCzNMgkD24Md7Tk
	 K0H4MDjU80jouaBgxZDoKhFGf7VZFlE66IPr0dl73Q3Z42U68g1HyRVKw+gm5sk4dh
	 tqNpdciUfEtPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/7] drm/display: Add soft depend for
 aux-hpd-typec-dp-bridge module
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260804070730.68-4-kernel@airkyi.com>
References: <20260804070730.68-1-kernel@airkyi.com>
 <20260804070730.68-4-kernel@airkyi.com>
Date: Tue, 04 Aug 2026 07:19:02 +0000
Message-Id: <20260804071903.795F21F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgTU9EVUxFX1NP
RlRERVBgIGFwcHJvYWNoIGZhaWxzIHRvIGxvYWQgdGhlIGBhdXgtaHBkLXR5cGVjLWRwLWJyaWRn
ZWAgbW9kdWxlIGlmIGBDT05GSUdfRFJNX0RJU1BMQVlfSEVMUEVSYCBpcyBidWlsdCBpbnRvIHRo
ZSBrZXJuZWwgKGA9eWApIGFuZCBgQ09ORklHX0RSTV9BVVhfSFBEX1RZUEVDX0JSSURHRWAgaXMg
YnVpbHQgYXMgYSBtb2R1bGUgKGA9bWApLgotIFtNZWRpdW1dIEFkZGluZyBhIHNvZnQgZGVwZW5k
ZW5jeSBvbiBgYXV4LWhwZC10eXBlYy1kcC1icmlkZ2VgIHRvIGEgY29yZSBEUk0gaGVscGVyIHVu
Y29uZGl0aW9uYWxseSBmb3JjZXMgdGhlIGxvYWRpbmcgb2YgdGhlIFVTQiBUeXBlLUMgc3Vic3lz
dGVtIG9uIGFsbW9zdCBhbnkgc3lzdGVtIHdpdGggYSBkaXNwbGF5LCBjYXVzaW5nIHNpZ25pZmlj
YW50IG1vZHVsZSBibG9hdC4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2NiAzLzddIGRybS9k
aXNwbGF5OiBBZGQgc29mdCBkZXBlbmQgZm9yIGF1eC1ocGQtdHlwZWMtZHAtYnJpZGdlIG1vZHVs
ZSAtLS0KY29tbWl0IGY2Yjk3YzBlN2E1Y2VhYjBkNDQzZGJhZGQ1MjQ2YzVjYzkzZjJlYzcKQXV0
aG9yOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cgpkcm0vZGlzcGxh
eTogQWRkIHNvZnQgZGVwZW5kIGZvciBhdXgtaHBkLXR5cGVjLWRwLWJyaWRnZSBtb2R1bGUKClRo
aXMgcGF0Y2ggYWRkcyBhIHNvZnQgZGVwZW5kZW5jeSBvbiB0aGUgYXV4LWhwZC10eXBlYy1kcC1i
cmlkZ2UgbW9kdWxlIHRvCnRoZSBjb3JlIGRybV9kaXNwbGF5X2hlbHBlciBtb2R1bGUuIEl0IGF0
dGVtcHRzIHRvIGVuc3VyZSB0aGUgYnJpZGdlIG1vZHVsZQppcyBhdXRvLWxvYWRlZCBiZWZvcmUg
dGhlIGRpc3BsYXkgaGVscGVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Rpc3Bs
YXkvZHJtX2Rpc3BsYXlfaGVscGVyX21vZC5jIGIvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJt
X2Rpc3BsYXlfaGVscGVyX21vZC5jCj4gaW5kZXggZDhhNmU2MjI4NzczNi4uZjAxNTJkNmIwYjJk
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZGlzcGxheV9oZWxw
ZXJfbW9kLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZGlzcGxheV9oZWxw
ZXJfbW9kLmMKWyAuLi4gXQo+IEBAIC0xOCw1ICsxOCw2IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBk
cm1fZGlzcGxheV9oZWxwZXJfbW9kdWxlX2V4aXQodm9pZCkKPiAgCWRybV9kcF9hdXhfZGV2X2V4
aXQoKTsKPiAgfQo+ICAKPiArTU9EVUxFX1NPRlRERVAoInByZTogYXV4LWhwZC10eXBlYy1kcC1i
cmlkZ2UiKTsKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgc29mdCBkZXBlbmRlbmN5IHVu
Y29uZGl0aW9uYWxseSBwdWxsIHRoZSBlbnRpcmUgVVNCIFR5cGUtQyBzdWJzeXN0ZW0KaW50byBt
ZW1vcnkgb24gYWxtb3N0IGV2ZXJ5IHN5c3RlbSB0aGF0IGxvYWRzIGEgc3RhbmRhcmQgRFJNIGRy
aXZlcj8KClNpbmNlIGF1eC1ocGQtdHlwZWMtZHAtYnJpZGdlIGRlcGVuZHMgb24gdHlwZWMua28s
IGl0IHNlZW1zIHRoaXMgd2lsbCBjYXVzZQp1bm5lY2Vzc2FyeSBtZW1vcnkgYmxvYXQgb24gc3lz
dGVtcyB3aXRob3V0IFR5cGUtQyBkaXNwbGF5cywgc2ltcGx5IGJlY2F1c2UKdGhlaXIgRFJNIGRy
aXZlciAobGlrZSBhbWRncHUsIGk5MTUsIG9yIG5vdXZlYXUpIHVzZXMgZHJtX2Rpc3BsYXlfaGVs
cGVyLgoKW1NldmVyaXR5OiBIaWdoXQpXaWxsIHRoaXMgYXBwcm9hY2ggZmFpbCB0byBhdXRvLWxv
YWQgdGhlIGJyaWRnZSBpZiBDT05GSUdfRFJNX0RJU1BMQVlfSEVMUEVSCmlzIGJ1aWx0IGludG8g
dGhlIGtlcm5lbCAoPXkpIGFuZCBDT05GSUdfRFJNX0FVWF9IUERfVFlQRUNfQlJJREdFIGlzIGJ1
aWx0CmFzIGEgbW9kdWxlICg9bSk/CgpJZiBkcm1fZGlzcGxheV9oZWxwZXIgaXMgYnVpbHQtaW4s
IG1vZHByb2JlIGlzIG5ldmVyIGludm9rZWQgZm9yIGl0IGR1cmluZwpib290LCB3aGljaCBtZWFu
cyB0aGUgTU9EVUxFX1NPRlRERVAgZGlyZWN0aXZlIGlzIGlnbm9yZWQuIEJlY2F1c2UgdGhlCmF1
eC1ocGQtdHlwZWMtZHAtYnJpZGdlIGxhY2tzIGEgTU9EVUxFX0RFVklDRV9UQUJMRSBvciB1ZGV2
IGxvYWRpbmcKbWVjaGFuaXNtLCB3b3VsZG4ndCBpdCBmYWlsIHRvIGxvYWQgZW50aXJlbHkgaW4g
dGhpcyBjb25maWd1cmF0aW9uLCBzaWxlbnRseQpicmVha2luZyBUeXBlLUMgRGlzcGxheVBvcnQg
aG90cGx1ZyBkZXRlY3Rpb24/Cgo+ICBtb2R1bGVfaW5pdChkcm1fZGlzcGxheV9oZWxwZXJfbW9k
dWxlX2luaXQpOwo+ICBtb2R1bGVfZXhpdChkcm1fZGlzcGxheV9oZWxwZXJfbW9kdWxlX2V4aXQp
OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDgwNDA3MDczMC42OC0xLWtlcm5lbEBhaXJreWkuY29tP3BhcnQ9MwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

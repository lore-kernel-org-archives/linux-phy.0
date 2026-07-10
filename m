Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6788DC43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0SgZLhUKJnCNTzbXwZkT4MZhpgn/YVCMbwN+5NMD48=; b=pAnY76VxBv1mMN
	6E+X8giVYRKbrOXpQ00HBXDb3GrUgXlQBhEewIpYKuMT9F08jg7WZ6+p4APfw54RUm5MXm8q+6gHj
	HN7ka1huvGR3QvO14VT3P5QTEVTNjLTF+Sn4hq4zj9DbhSOh1YzUWEVuph/pwqzeYv18G183fA1l/
	gUKirZ5DQ94q45drNcmLnhbmBAIe9GNarORfjOSehR2TqWK1/lVEDvJShbdLqzSgOr9UkxHaPx/su
	lfeezedLyVlz9o1kNTUURq/5LnumvtfQo4RrXv/LCSsLpJrbn69oornnKm2tO8sJg85ezhFdUy5ju
	ZQrhcDYF/s8yyEEng2nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIay-00000005mxk-0lJB;
	Fri, 10 Jul 2026 21:17:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIaw-00000005mxZ-20dy
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:17:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3653B401DA;
	Fri, 10 Jul 2026 21:17:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99A891F000E9;
	Fri, 10 Jul 2026 21:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718234;
	bh=3kAKtJifAmqhY5uQydDew1OG49zgWiKMKwW6/uKxx+g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A9yRTCpVv1OW31qXCYipnFdjOu5N5QSihN0rbj7r6OfKAFBBHDzYLx9uVm1/CJcNo
	 t4nDfqZOV1pghbpZwCh8dLSE7VT/FCKtYAiJp4mE1AmYlpHShG01MK2+Bf2M0iFnV4
	 IYgX9zKxeb2vL3jJ1wrD7p0FUbmbo6Ri+PFKrY7O3IWpH/tK6VFbDUP8tg4V/pD3kE
	 zZljgZVCqvFpisY8WUR/b2oSmMU1RDyvmeBrSJV/wFT/PzioHobbWKzFcrXsp7AYs3
	 J4YoqmeZCCHfOpBu8iNtEX9PSsXVFstsfA+7HR+XOs9USLwso3e3iIMVz1K/Gs1iJ/
	 Z6LGi6/LZSBVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 27/36] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert errors
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-27-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-27-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:17:13 +0000
Message-Id: <20260710211713.99A891F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtNZWRpdW1dIElmIFBIWSByZS1pbml0aWFsaXphdGlvbiBmYWlscyBkdXJpbmcgYSBtb2RlIGNo
YW5nZSwgdGhlIFUzIHBvcnQgaXMgbGVmdCBwZXJtYW5lbnRseSBkaXNhYmxlZCBhbmQgaW4gcmVz
ZXQsIGJ1dCB0aGUgc29mdHdhcmUgc3RhdGUgaW5jb3JyZWN0bHkgcmVtYWlucyBhY3RpdmUuCi0t
CgotLS0gUGF0Y2ggWzI3XTogW1BBVENIIHYxMiAyNy8zNl0gcGh5OiByb2NrY2hpcDogdXNiZHA6
IEhhbmRsZSBya191ZHBoeV9yZXNldF9kZWFzc2VydCBlcnJvcnMgLS0tCmNvbW1pdCAwMGUzMjE5
OGEwMGEzNzgwYjE5M2U1NDZiOGYxNmQyMjE4Y2VmYjc0CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2Jk
cDogSGFuZGxlIHJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0IGVycm9ycwoKVGhpcyBjb21taXQgbW9k
aWZpZXMgdGhlIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlIHRvIGhhbmRsZSBlcnJvcnMgcmV0dXJu
ZWQKYnkgcmVzZXQgZGVhc3NlcnRpb24sIGF2b2lkaW5nIGEgdGhlb3JldGljYWwgU0Vycm9yLgoK
Rml4ZXM6IDJmNzBiYmRkZWI0NSAoInBoeTogcm9ja2NoaXA6IGFkZCB1c2JkcCBjb21ibyBwaHkg
ZHJpdmVyIikKUmVwb3J0ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+CkNs
b3NlczogaHR0cHM6Ly9zYXNoaWtvLmRldi8jL21lc3NhZ2UvMjAyNjA2MjYyMTExNTEuMjMzMkYx
RjAwMEU5JTQwc210cC5rZXJuZWwub3JnCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jCj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVz
YmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+
IEBAIC04MDMsOCArODAzLDEyIEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfaW5pdChzdHJ1Y3Qgcmtf
dWRwaHkgKnVkcGh5KQo+ICAJLyogU3RlcCAxOiBwb3dlciBvbiBwbWEgYW5kIGRlYXNzZXJ0IGFw
YiByc3RuICovCj4gIAlya191ZHBoeV9ncmZyZWdfd3JpdGUodWRwaHktPnVkcGh5Z3JmLCAmY2Zn
LT5ncmZjZmcubG93X3B3cm4sIHRydWUpOwo+ICAKPiAtCXJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0
KHVkcGh5LCAicG1hX2FwYiIpOwo+IC0JcmtfdWRwaHlfcmVzZXRfZGVhc3NlcnQodWRwaHksICJw
Y3NfYXBiIik7Cj4gKwlyZXQgPSBya191ZHBoeV9yZXNldF9kZWFzc2VydCh1ZHBoeSwgInBtYV9h
cGIiKTsKPiArCWlmIChyZXQpCj4gKwkJZ290byBhc3NlcnRfcmVzZXRzOwoKW1NldmVyaXR5OiBN
ZWRpdW1dClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCByZXR1cm5pbmcgYW4gZXJy
b3IgaGVyZSBwcm9wYWdhdGVzIHVwIHRvCnJrX3VkcGh5X3Bvd2VyX29uKCkuIERvZXMgdGhpcyBs
ZWF2ZSB0aGUgVTMgcG9ydCBpbiBhIHBlcm1hbmVudGx5IGRpc2FibGVkCnN0YXRlPwoKV2hlbiBV
U0IzIGlzIGFjdGl2ZSBhbmQgYSBuZXcgbW9kZSBpcyBlbmFibGVkLCBya191ZHBoeV9wb3dlcl9v
bigpIHRyaWdnZXJzCnJlLWluaXRpYWxpemF0aW9uLiBJdCBkaXNhYmxlcyB0aGUgVTMgcG9ydCBh
bmQgY2FsbHMgcmtfdWRwaHlfaW5pdCgpLiBJZgpya191ZHBoeV9pbml0KCkgZmFpbHMgYW5kIHJl
dHVybnMgYW4gZXJyb3IgaGVyZSwgdGhlIGNhbGxlciBwcm9wYWdhdGVzIGl0CmltbWVkaWF0ZWx5
OgoKcmtfdWRwaHlfcG93ZXJfb24oKSB7CiAgICAgICAgLi4uCiAgICAgICAgcmV0ID0gcmtfdWRw
aHlfaW5pdCh1ZHBoeSk7CiAgICAgICAgaWYgKHJldCkKICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7CgogICAgICAgIGlmICh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKQogICAgICAgICAg
ICAgICAgcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxzZSk7CiAgICAgICAgLi4u
Cn0KCklmIHRoaXMgcGF0aCBpcyB0YWtlbiwgdGhlIFUzIHBvcnQgaXMgbGVmdCBwZXJtYW5lbnRs
eSBkaXNhYmxlZCBhbmQgaW4gcmVzZXQsCmJ1dCB0aGUgc29mdHdhcmUgc3RhdGUgKHVkcGh5LT5z
dGF0dXMpIGluY29ycmVjdGx5IHJlbWFpbnMgYWN0aXZlLiBUaGUgVVNCMwpjb250cm9sbGVyIGlz
IHVuYXdhcmUgdGhhdCB0aGUgUEhZIGhhcyBiZWVuIGZvcmNlZCBpbnRvIHJlc2V0LiAKCkNvdWxk
IHRoaXMgcmVzdWx0IGluIGEgc2lsZW50bHkgZHJvcHBlZCBVU0IzIGNvbm5lY3Rpb24sIHBvdGVu
dGlhbGx5IGNhdXNpbmcKSS9PIGVycm9ycyBmb3IgYWN0aXZlIHN0b3JhZ2UgZGV2aWNlcz8gCgpX
aGlsZSBhIHByZXZpb3VzIHBhdGNoIGluIHRoZSBzZXJpZXMgbWl0aWdhdGVzIHRoZSBTRXJyb3Ig
Ynkgc2FmZWx5IHJvdXRpbmcKdGhlIFBJUEUgY2xvY2sgdG8gVVRNSSwgdGhlIHN0YXRlIGluY29u
c2lzdGVuY3kgYW5kIGRlYWQgVVNCIGNvbm5lY3Rpb24gc2VlbQp0byByZW1haW4uCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzEw
LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjEyLTAtOGI0MWE5YTliZWYwQGNvbGxhYm9yYS5jb20/
cGFydD0yNwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

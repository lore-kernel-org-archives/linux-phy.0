Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75CABCD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 16:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiunIzSFkKNL32U8FkRmadnZQsDfEXIkFod+qkKaJoM=; b=ah9Xm60CFrL5I4
	PQjww+uwPMxvU88TEU5f9a88fnE9RgdIbntuwoDjic4pjJL8D9qd6Me2T0l98F7f9h6phUT3NUDLO
	YQYmFPu0yxx+bAeG7/jnCG8v8UII0lbM8dyHz+AQR+Pc5vSCzlh+maBV0j2lKZ7CQ70C9J7cS9nGY
	F3MypR8MTQz1JUrPSxYSMSyV3MwE6clbQ5mCWR9rf8LwGh25bWwKQ0oHEc8b6ihqKbEaXe6z6PTy8
	QSFKMr6v+K/1mVxaX87dOpw6yC6B9y+4+6x48sS0FUHxdnyDHFVRX6uvBMIbfzfTUQKmVkK6kEKG4
	14VAjuIMJeqbthC7BbRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY4ty-0000000BIHO-0hzI;
	Fri, 12 Jun 2026 16:38:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY4tw-0000000BIH0-3mod
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 16:38:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 42F4260008;
	Fri, 12 Jun 2026 16:38:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D5471F000E9;
	Fri, 12 Jun 2026 16:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781282316;
	bh=QUwoA2La5hrRAZoRb8RcYx50H7iw1ZedS5O39tRcvv0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bzz6wV3Jk0QxRGg5BllRx3qrB0qLEBdgiffID9PbPrPgjCH10lEw2KXfG31JcHLEX
	 ezK3nhoQcaGYnJMs8SGerwOEiy6SHwlYgnLoa800drA2czsRfUL4QUjPATWzp6sWnQ
	 adcBnRYDkH89UDgzUUoei1/gGhVr/PhMC3dGYoZOpHI0gvbsoqU7MdVYWqQyVXddAX
	 PxPWwq89hBr8gUfqWa9SoLHFe/s5jD9ijQZ3QBZn0C1t+z78jbtTigdlOnUC54AX1X
	 gZ2gJxJ3syx/fKHqLLbRvWXFDuie+XNH6KpfPXaee5dzpBawg1Zugl23G7GrlSgPvZ
	 hEnuBeIzc2IJA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 02/18] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-2-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-2-efc83069869f@collabora.com>
Date: Fri, 12 Jun 2026 16:38:35 +0000
Message-Id: <20260612163835.8D5471F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBT
dGF0ZSBkZXN5bmNocm9uaXphdGlvbiBvbiBgcmtfdWRwaHlfaW5pdGAgZmFpbHVyZSBjYXVzZXMg
c3Vic2VxdWVudCBwb3dlci1vbiByZXRyaWVzIHRvIGZhbHNlbHkgcmV0dXJuIHN1Y2Nlc3Mgd2l0
aG91dCByZS1pbml0aWFsaXppbmcgdGhlIGhhcmR3YXJlLCBsZWFkaW5nIHRvIGRlYWQgUEhZIG9y
IGJ1cyBoYW5ncy4KClByZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIFN1YnN5c3RlbSBwb3dl
ci1vZmYgcmVxdWVzdHMgcGVybWFuZW50bHkgbGVhayBgdWRwaHktPnN0YXR1c2AgYml0cyBpZiB0
aGUgVHlwZS1DIG1vZGUgaGFzIHBoeXNpY2FsbHkgY2hhbmdlZCwgY2F1c2luZyBhIHBlcnBldHVh
bCByZXNvdXJjZSBsZWFrIG9mIHRoZSBQSFkgY2xvY2tzLgotLQoKY29tbWl0IDkzZTI5NmVjZTFi
ZjAzNDQ5ZmNkYjdkMDQ4NWNiNzdkYTgwZGQ5YjcKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBE
byBub3QgbG9zZSBVU0IzIFBIWSBzdGF0dXMKClRoaXMgY29tbWl0IGZpeGVzIGFuIGlzc3VlIHdo
ZXJlIHRoZSBVU0IzIHRyYWNraW5nIGluZm9ybWF0aW9uIGlzIGxvc3QKd2hlbiB0aGUgRGlzcGxh
eVBvcnQgaXMgcmUtaW5pdGlhbGl6ZWQuIEl0IGRvZXMgdGhpcyBieSBwcmV2ZW50aW5nIHRoZQpz
dGF0dXMgdmFyaWFibGUgZnJvbSBiZWluZyBjbGVhcmVkIGR1cmluZyBtb2RlIGNoYW5nZXMgaW4g
dGhlIFBIWSBkcml2ZXIuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jCj4gaW5kZXggZmJhMzU1MTBkODhjZS4uNzQ0Y2M3YzY0MmY0OSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTEwMDksNyArMTAwOSw2IEBA
IHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTgg
bW9kZSkKPiAgCQkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxzZSk7Cj4gIAl9
IGVsc2UgaWYgKHVkcGh5LT5tb2RlX2NoYW5nZSkgewo+ICAJCXVkcGh5LT5tb2RlX2NoYW5nZSA9
IGZhbHNlOwo+IC0JCXVkcGh5LT5zdGF0dXMgPSBVRFBIWV9NT0RFX05PTkU7CgpbU2V2ZXJpdHk6
IEhpZ2hdCklmIHJrX3VkcGh5X2luaXQoKSBmYWlscyAoZm9yIGV4YW1wbGUsIHJldHVybmluZyAt
RVBST0JFX0RFRkVSIGFmdGVyIGEgbG9jawp0aW1lb3V0KSwgd2lsbCB0aGlzIGxlYWQgdG8gYSBw
ZXJtYW5lbnQgc3RhdGUgZGVzeW5jaHJvbml6YXRpb24/CgpCeSByZW1vdmluZyB0aGUgY2xlYXJp
bmcgb2YgdWRwaHktPnN0YXR1cywgaWYgdGhlIGluaXRpYWxpemF0aW9uIGZhaWxzLAp1ZHBoeS0+
bW9kZV9jaGFuZ2UgaXMgYWxyZWFkeSBzZXQgdG8gZmFsc2UgYnV0IHVkcGh5LT5zdGF0dXMgcmVt
YWlucwpub24temVyby4KCklmIHRoZSBzdWJzeXN0ZW0gbGF0ZXIgcmV0cmllcyBya191ZHBoeV9w
b3dlcl9vbigpLCBpdCB3aWxsIHNlZQp1ZHBoeS0+c3RhdHVzICE9IFVEUEhZX01PREVfTk9ORSBh
bmQgdWRwaHktPm1vZGVfY2hhbmdlID09IGZhbHNlLiBDb3VsZAp0aGlzIGNhdXNlIGl0IHRvIGJ5
cGFzcyBhbGwgaW5pdGlhbGl6YXRpb24sIGJsaW5kbHkgdXBkYXRlIHRoZSBzdGF0dXMsIGFuZApm
YWxzZWx5IHJldHVybiBzdWNjZXNzIHdoaWxlIHRoZSBQSFkgaGFyZHdhcmUgcmVtYWlucyBkaXNh
YmxlZCBhbmQgaW4gcmVzZXQ/CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3Rp
bmcgaXNzdWUsIGJ1dCByZW1vdmluZyB0aGUgZm9yY2VkIGNsZWFyaW5nIG9mCnVkcGh5LT5zdGF0
dXMgaGVyZSBleHBvc2VzIGEgcG90ZW50aWFsIHBlcm1hbmVudCByZXNvdXJjZSBsZWFrIG9mIHRo
ZSBQSFkKY2xvY2tzLgoKTG9va2luZyBhdCBya191ZHBoeV9wb3dlcl9vZmYoKToKCglpZiAoISh1
ZHBoeS0+bW9kZSAmIG1vZGUpKSB7CgkJZGV2X2luZm8odWRwaHktPmRldiwgIm1vZGUgMHglMDJ4
IGlzIG5vdCBzdXBwb3J0XG4iLCBtb2RlKTsKCQlyZXR1cm47Cgl9CgphbmQgcmtfdWRwaHlfdXNi
M19waHlfZXhpdCgpOgoKCWlmICghKHVkcGh5LT5tb2RlICYgVURQSFlfTU9ERV9VU0IpIHx8IHVk
cGh5LT5ocykKCQlyZXR1cm4gMDsKCklmIHRoZSBUeXBlLUMgbXVsdGlwbGV4ZXIgc3dpdGNoZXMg
ZnJvbSBEUF9VU0IgdG8gYSBEUF9PTkxZIG1vZGUsCnVkcGh5LT5tb2RlIGxvc2VzIHRoZSBVU0Ig
Yml0LiBJZiB0aGUgVVNCIGNvbnRyb2xsZXIgdGhlbiB1bmJpbmRzIGFuZCBjYWxscwpwaHlfZXhp
dCgpIHdoaWxlIGluIERQX09OTFkgbW9kZSwgdGhlIGVhcmx5IHJldHVybnMgYWJvdmUgcHJldmVu
dCBjbGVhcmluZwp0aGUgVURQSFlfTU9ERV9VU0IgYml0IGZyb20gdWRwaHktPnN0YXR1cy4KCldo
ZW4gRFAgZXZlbnR1YWxseSBwb3dlcnMgb2ZmLCB3aWxsIHVkcGh5LT5zdGF0dXMgcmVtYWluIG5v
bi16ZXJvIGR1ZSB0bwp0aGlzIG9ycGhhbmVkIFVTQiBiaXQsIHByZXZlbnRpbmcgcmtfdWRwaHlf
ZGlzYWJsZSgpIGZyb20gZXZlciBleGVjdXRpbmcKYW5kIGxlYWtpbmcgdGhlIFBIWSBjbG9ja3Mg
YW5kIHBvd2VyPwoKPiAgCQlpZiAodWRwaHktPm1vZGUgPT0gVURQSFlfTU9ERV9EUCkKPiAgCQkJ
cmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCB0cnVlKTsKPgoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxMi1yb2NrY2hp
cC11c2JkcC1jbGVhbnVwLXY1LTAtZWZjODMwNjk4NjlmQGNvbGxhYm9yYS5jb20/cGFydD0yCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

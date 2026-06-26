Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 479F9C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA7cURYXizrzsvW9TuSGE8z+aqwhhbH3xah9loP156w=; b=YZ6yKtNynGBU05
	QrdJLs7vdPM1e/Wuw/mPF7Yd7mW4U3orSa0J2QWlQwNYwaFLQ4P8cZVUfEVQvshZgcdm8pcWFvj6+
	Qc4RnYT5KfhfZCz/IbjEXegl+kj6zHk+zVeum5OHP53BxPa3OevZA7c3lEDUN+FXASm6pHNcqPoFt
	RhxIr9zy3/LdU+f9wCIUKfuZN8zzz2GJBqS+bY8E+gm+ZpvME1UJW5MQaSI6wr0k4iClJ9suPk3/U
	UxDMYBHt/fnvZ1/y4ofMCqmH5M0JoQFQgYB8KOtVNrldFqgtgs2EaDcW6EfvnHtBTe1ph5FrJBOzn
	hjKNa6dN8cc4NXMSw+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdE2m-0000000BtxI-0FAw;
	Fri, 26 Jun 2026 21:25:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdE2k-0000000BtxC-0NQq
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:24:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 63A0E600AA;
	Fri, 26 Jun 2026 21:24:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FE1C1F000E9;
	Fri, 26 Jun 2026 21:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782509097;
	bh=AP0PJssi/Tpup3ATo+7O0TDu0vvjiNMXY5NEmsuC6Lg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mlTuJfVRxrQC32ZZNxlMZpI4V5SyYYua6TfbPBooza+8d8Uv1Vmy1vko6UjcBQfib
	 rgprnWYRG1ArFrtPIzeVRjMSkY2lg3rhmYC63+kIDD9ajRR+7v3owk5wwGBAVGghIo
	 /sLjxnRyZ9GTfxT0bPnHALHMlt0B2Ypcm7wz6zDU7UCVPs191YH6rnvsrG9+/9bEEC
	 e5a6GNzN/ycYkTVv4hJp/qom66lKA1Q25/bUcBiHoUAQ5vjc9+sJUcRuHdwD5LTm5l
	 tsb1BArOriI/mD+/AD7REESFKSxDLqI5VzYhT/u2H/538aTAKDf3IXfRgjZlopR6Il
	 D1ckLbO9cuUng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 29/29] phy: rockchip: usbdp: Disable USB3 on probe
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-29-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-29-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:24:56 +0000
Message-Id: <20260626212456.8FE1C1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0
IG1pc3NpbmcgVVNCMyBwb3J0IGRpc2FibGUgaW4gdGhlIHBvd2VyLW9mZiBwYXRoIHJlY3JlYXRl
cyB0aGUgVS1Cb290IGZhaWx1cmUgc3RhdGUgb24gc3Vic2VxdWVudCBpbml0aWFsaXphdGlvbiwg
d2hpY2ggd2lsbCBub3cgcGVybWFuZW50bHkgZmFpbCBkdWUgdG8gdGhlIHJlbW92YWwgb2YgdGhl
IC1FUFJPQkVfREVGRVIgcmV0cnkgbWVjaGFuaXNtLgotLQoKTm90ZTogVGhlIGZvcm1hdCBvZiB0
aGlzIHJlcG9ydCBoYXMgYmVlbiBhbHRlcmVkIHRvIHVzZSBhIGZyZWUtZm9ybSBzdW1tYXJ5CmR1
ZSB0byBzdHJpY3QgYW50aS1yZWNpdGF0aW9uIHBvbGljaWVzIHByZXZlbnRpbmcgZGlyZWN0IHF1
b3Rpbmcgb2YgdGhlIHBhdGNoIGRpZmYuCgpjb21taXQgOGM3NzQ3MDRlMWNjM2ZhMGMxZGQ2ZTcz
MTE3ZTQ2NDFhMDhlZmIyOQpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVp
Y2hlbEBjb2xsYWJvcmEuY29tPgpTdWJqZWN0OiBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRGlzYWJs
ZSBVU0IzIG9uIHByb2JlCgpUaGlzIGNvbW1pdCBkaXNhYmxlcyBVU0IzIHN1cHBvcnQgZHVyaW5n
IHByb2JlIHRvIHN0YXJ0IHdpdGggYSBjbGVhbiBzdGF0ZSwKYW5kIHJlbW92ZXMgdGhlIC1FUFJP
QkVfREVGRVIgcmV0cnkgbWVjaGFuaXNtIGZvciBjbW4gYW5hIGxjcGxsIGxvY2sgdGltZW91dHMK
c2luY2UgdGhleSBzaG91bGQgb25seSBoYXBwZW4gb24gdGhlIGZpcnN0IHRyeSBpZiBVLUJvb3Qg
aGFkIGVuYWJsZWQgVVNCLgoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJv
ZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHJlbW92aW5nIHRoZSAtRVBST0JFX0RFRkVSCnJldHJ5
IG1lY2hhbmlzbSBtYWtlcyBhIHByZS1leGlzdGluZyBwb3dlci1vZmYgaXNzdWUgcGVybWFuZW50
bHkgZmF0YWwuCgpJbiBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYzpy
a191ZHBoeV9wb3dlcl9vZmYoKSwgd2hlbiB0aGUKUEhZIHRyYW5zaXRpb25zIHRvIFVEUEhZX01P
REVfTk9ORSwgdGhlIGNvZGUgZGlzYWJsZXMgdGhlIFBIWSBidXQgZG9lcyBub3QKZGlzYWJsZSB0
aGUgVVNCMyBwb3J0IGluIHRoZSBHUkY6Cgpya191ZHBoeV9wb3dlcl9vZmYoKQogICAgdWRwaHkt
PnN0YXR1cyAmPSB+bW9kZTsKICAgIGlmICh1ZHBoeS0+c3RhdHVzID09IFVEUEhZX01PREVfTk9O
RSkKICAgICAgICBya191ZHBoeV9kaXNhYmxlKHVkcGh5KTsKCldoZW4gdGhlIFVTQiBzdWJzeXN0
ZW0gcmVzdW1lcyBmcm9tIHN1c3BlbmQgb3IgZHJpdmVyIHVuYmluZC9iaW5kLCBpdCBjYWxscwpy
a191ZHBoeV9wb3dlcl9vbigpLiBTaW5jZSB1ZHBoeS0+c3RhdHVzIGlzIFVEUEhZX01PREVfTk9O
RSwgaXQgY2FsbHMKcmtfdWRwaHlfc2V0dXAoKSwgd2hpY2ggZXhlY3V0ZXMgdGhlIFBMTCBsb2Nr
OgoKcmtfdWRwaHlfcG93ZXJfb24oKQogICAgaWYgKHVkcGh5LT5zdGF0dXMgPT0gVURQSFlfTU9E
RV9OT05FKSB7CiAgICAgICAgcmV0ID0gcmtfdWRwaHlfc2V0dXAodWRwaHkpOwoKQmVjYXVzZSB0
aGUgVVNCMyBwb3J0IHdhcyBuZXZlciBkaXNhYmxlZCBpbiB0aGUgR1JGIGR1cmluZyBwb3dlci1v
ZmYsIHRoaXMKcmVjcmVhdGVzIHRoZSBleGFjdCB1bmNsZWFuIHN0YXRlIHRoYXQgY2F1c2VkIHRo
ZSBVLUJvb3QgbG9jayB0aW1lb3V0LiBXaXRob3V0CnRoZSAtRVBST0JFX0RFRkVSIHJldHJ5IG1l
Y2hhbmlzbSByZW1vdmVkIGJ5IHRoaXMgcGF0Y2gsIHRoZSBQTEwgbG9jayB3aWxsCnRpbWUgb3V0
IGFuZCByZXN1bHQgaW4gYSBwZXJtYW5lbnQgZmFpbHVyZSB0byByZXN1bWUuCgpTaG91bGQgcmtf
dWRwaHlfcG93ZXJfb2ZmKCkgYWxzbyBkaXNhYmxlIHRoZSBVU0IzIHBvcnQgYnkgY2FsbGluZwpy
a191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpIHdoZW4gdGhlIHN0YXR1cyByZWFj
aGVzIFVEUEhZX01PREVfTk9ORSwKc28gdGhlIG5leHQgcG93ZXItb24gc3RhcnRzIHdpdGggYSBj
bGVhbiBzdGF0ZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA2MjYtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12OC0wLTQ3ZjY4Mjk4
Nzg5NUBjb2xsYWJvcmEuY29tP3BhcnQ9MjkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

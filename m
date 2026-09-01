Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D136EC61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6V4IHWhehdwY8gLPQiwpzja6F5F+b7dPeBGiYy+dG8=; b=DF/Tps6URLDppo
	JlsIDGitZtyU/x49JX1MjIPz6IdOJA1uOs7vRjB8DYI2LTzC4lAQbmVM7nw6fRolac428gqfCQXB+
	jl2j1NAUY4N3jFp/lYH4DlG/grfyQyAjkI/GU4le1Wutxt2BqdOuF6avyp/Ck2X1u4sHotSYlZZzh
	UXtz7sdQtZl+mOfjsxS2eW+aP5Xl9BIxbo5bhynQA03G3kEdFk7iRdh70p35RQF1Hd0sm9tlw1hH6
	G6Q8lhcxt3IZRNZ7qWbvxCV/aDXyEg4PNu/9QLugfYdg83SQpd+q7Iucowu9kVds25ape7ipYYCgi
	PkbRoOjYxQmRSdB+XwGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1V3p-0000000DK7R-2Ehr;
	Tue, 01 Sep 2026 20:26:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1V3o-0000000DK6v-1ihC
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 20:26:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2FB7542BA5;
	Tue,  1 Sep 2026 20:26:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91BF31F000E9;
	Tue,  1 Sep 2026 20:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788294384;
	bh=BRB5urgMLJTYfoSmG3wFxm9ZNAlVK+rRPpkEdO5USDM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PcgUvZjgg5Cf/a68PU135KAWxcJciZLUl3/Dq6eJ8KEhG0/0YeC8qzZACn6OeDmgX
	 Tp3/npcIokVBNqzXgcAzW3V3T4GzRCBc6hYb8Yg2wM5fQXxvvePn+2HiI7wmKcrDR4
	 XckQsnyakVFP3WCKequlR5Nh1ZHtgy9jSOGUVATS3vuKd00lJ4Fy+E737wYwD6Td+8
	 USe7mGOLF0jKUc1StvR4+i6zrQg/YoWpPSsq32CX1wkX5GEw/EbQijRGnc6J4nbS3K
	 hUiZmJ1WdbUncLioBlFPfPamge2p6tF1wN30jYZ1sNxRdVHQ+F2ANSdepiIv6L0Cvb
	 /KLW0oqcLoECQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: olteanv@gmail.com, media-ci@linuxtv.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260901-x1e-csi2-phy-v16-1-dd863b929080@linaro.org>
References: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
 <20260901-x1e-csi2-phy-v16-1-dd863b929080@linaro.org>
Date: Tue, 01 Sep 2026 20:26:23 +0000
Message-Id: <20260901202623.91BF31F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHNjaGVtYSBp
bmNvcnJlY3RseSBwZXJtaXRzIENQSFkgYGJ1cy10eXBlYCAoMSkgZGVzcGl0ZSBiZWluZyB1bnN1
cHBvcnRlZCwgYW5kIHVuaXZlcnNhbGx5IG1hbmRhdGVzIGBjbG9jay1sYW5lc2Agd2hpY2ggaXMg
aW52YWxpZCBmb3IgQ1BIWS4KLSBbTG93XSBUaGUgY29uc3RyYWludCBgY29uc3Q6IDBgIChhbmQg
YGNvbnN0OiAzYCkgb24gYGNsb2NrLWxhbmVzYCBjYXVzZXMgYSB0eXBlIG1pc21hdGNoIHZhbGlk
YXRpb24gZmFpbHVyZS4KLS0KCmNvbW1pdCBmZTVmYzNkMTRlNjRjMDFhODVlNTRhYzIwYjUyNWQx
YmYyMWJiOTkxCkF1dGhvcjogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFy
by5vcmc+CmR0LWJpbmRpbmdzOiBwaHk6IHFjb206IEFkZCBDU0kyIEMtUEhZL0RQSFkgc2NoZW1h
CgpBZGQgYSBiYXNlIHNjaGVtYSBmb3IgdGhlIE1JUEkgQ1NJMiBQSFlzIG9uIFF1YWxjb21tIFNv
Q3Mgc3VwcG9ydGluZyBDLVBIWQphbmQgRC1QSFkgbW9kZXMuIFRoZSBjb21taXQgc3VibWl0dGVk
IGRlc2NyaWJlcyBELVBIWSBtb2RlcyBvbmx5LCBsZWF2aW5nCkMtUEhZIGZvciBmdXR1cmUgd29y
ay4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjE3ZGUwNzAxZWIxMDMKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgw
MTAwLWNzaTItcGh5LnlhbWwKClsgLi4uIF0KCj4gKyAgICAgICAgcGF0dGVyblByb3BlcnRpZXM6
Cj4gKyAgICAgICAgICAiXmVuZHBvaW50KEBbMDFdKT8kIjoKPiArICAgICAgICAgICAgJHJlZjog
L3NjaGVtYXMvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy55YW1sIwo+ICsgICAgICAgICAgICB1bmV2
YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKyAgICAgICAgICAgIHByb3BlcnRpZXM6Cj4gKyAg
ICAgICAgICAgICAgYnVzLXR5cGU6Cj4gKyAgICAgICAgICAgICAgICBlbnVtOgo+ICsgICAgICAg
ICAgICAgICAgICAtIDEgIyBNRURJQV9CVVNfVFlQRV9DU0kyX0NQSFkKPiArICAgICAgICAgICAg
ICAgICAgLSA0ICMgTUVESUFfQlVTX1RZUEVfQ1NJMl9EUEhZCgpbU2V2ZXJpdHk6IE1lZGl1bV0K
VGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRpb25zIHRoYXQgQy1QSFkgaXMgbGVmdCB0byBmdXR1cmUg
d29yaywgYnV0IGRvZXMKaW5jbHVkaW5nIE1FRElBX0JVU19UWVBFX0NTSTJfQ1BIWSBoZXJlIGV4
cGxpY2l0bHkgZW5hYmxlIEMtUEhZCmNvbmZpZ3VyYXRpb24/Cgo+ICsKPiArICAgICAgICAgICAg
ICBjbG9jay1sYW5lczoKPiArICAgICAgICAgICAgICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgICAg
ICAgICAgICAgIGRhdGEtbGFuZXM6Cj4gKyAgICAgICAgICAgICAgICBtaW5JdGVtczogMQo+ICsg
ICAgICAgICAgICAgICAgbWF4SXRlbXM6IDQKPiArICAgICAgICAgICAgICAgIGl0ZW1zOgo+ICsg
ICAgICAgICAgICAgICAgICBtaW5pbXVtOiAxCj4gKyAgICAgICAgICAgICAgICAgIG1heGltdW06
IDQKPiArICAgICAgICAgICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgICAgICAgICBE
YXRhIGxhbmUgcG9zaXRpb25zIGZvbGxvd2luZyB0aGlzIGVuZHBvaW50J3MgY2xvY2sKPiArICAg
ICAgICAgICAgICAgICAgbGFuZS4gUG9zaXRpb25zIGFyZSBhIHBlci1wb3J0IGxvZ2ljYWwgbnVt
YmVyaW5nLCBub3QKPiArICAgICAgICAgICAgICAgICAgcGFja2FnZSBwYWQgb3IgYmFsbCBwb3Np
dGlvbnMuCj4gKwo+ICsgICAgICAgICAgICByZXF1aXJlZDoKPiArICAgICAgICAgICAgICAtIGJ1
cy10eXBlCj4gKyAgICAgICAgICAgICAgLSBkYXRhLWxhbmVzCj4gKyAgICAgICAgICAgICAgLSBj
bG9jay1sYW5lcwo+ICsgICAgICAgICAgICAgIC0gcmVtb3RlLWVuZHBvaW50CgpbU2V2ZXJpdHk6
IE1lZGl1bV0KU2luY2UgQy1QSFkgZG9lcyBub3QgdXNlIGEgY2xvY2sgbGFuZSwgZG9lcyBtYW5k
YXRpbmcgY2xvY2stbGFuZXMgaW4gdGhpcwpyZXF1aXJlZCBibG9jayBpbmFkdmVydGVudGx5IGJy
ZWFrIGFueSBwb3RlbnRpYWwgQy1QSFkgY29uZmlndXJhdGlvbnMKdGhhdCBtaWdodCB1c2UgYnVz
LXR5cGUgPSA8MT4/Cgo+ICsKPiArICAgICAgICBhbGxPZjoKPiArICAgICAgICAgIC0gaWY6Cj4g
KyAgICAgICAgICAgICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgICAgICAgICAtIGVuZHBvaW50QDEK
PiArICAgICAgICAgICAgdGhlbjoKPiArICAgICAgICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAg
ICAgICAgICAgICAgZW5kcG9pbnRAMDoKPiArICAgICAgICAgICAgICAgICAgcHJvcGVydGllczoK
PiArICAgICAgICAgICAgICAgICAgICBjbG9jay1sYW5lczoKPiArICAgICAgICAgICAgICAgICAg
ICAgIGNvbnN0OiAwCgpbU2V2ZXJpdHk6IExvd10KU2luY2UgY2xvY2stbGFuZXMgaXMgcGFyc2Vk
IGZyb20gdGhlIGRldmljZSB0cmVlIGFzIGEgSlNPTiBhcnJheSAobGlrZSBbMF0pLAp3aWxsIHVz
aW5nIGEgc2NhbGFyIGludGVnZXIgY29uc3Q6IDAgaGVyZSBjYXVzZSBhIHR5cGUgbWlzbWF0Y2gg
dmFsaWRhdGlvbgpmYWlsdXJlIGR1cmluZyBkdF9iaW5kaW5nX2NoZWNrPwoKPiArICAgICAgICAg
ICAgICAgICAgICBkYXRhLWxhbmVzOgo+ICsgICAgICAgICAgICAgICAgICAgICAgbWF4SXRlbXM6
IDIKPiArICAgICAgICAgICAgICAgIGVuZHBvaW50QDE6Cj4gKyAgICAgICAgICAgICAgICAgIHBy
b3BlcnRpZXM6Cj4gKyAgICAgICAgICAgICAgICAgICAgY2xvY2stbGFuZXM6Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICBjb25zdDogMwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBhbHNvIG5l
ZWQgdG8gYmUgYW4gYXJyYXkgY29uc3RyYWludCBpbnN0ZWFkIG9mIGNvbnN0OiAzIHRvIHBhc3MK
c2NoZW1hIHZhbGlkYXRpb24/Cgo+ICsgICAgICAgICAgICAgICAgICAgIGRhdGEtbGFuZXM6Cj4g
KyAgICAgICAgICAgICAgICAgICAgICBpdGVtczoKPiArICAgICAgICAgICAgICAgICAgICAgICAg
LSBjb25zdDogNAo+ICsgICAgICAgICAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgICAgICAgICAg
LSBlbmRwb2ludEAwCj4gKyAgICAgICAgICAgIGVsc2U6Cj4gKyAgICAgICAgICAgICAgcGF0dGVy
blByb3BlcnRpZXM6Cj4gKyAgICAgICAgICAgICAgICAiXmVuZHBvaW50KEAwKT8kIjoKPiArICAg
ICAgICAgICAgICAgICAgcHJvcGVydGllczoKPiArICAgICAgICAgICAgICAgICAgICBjbG9jay1s
YW5lczoKPiArICAgICAgICAgICAgICAgICAgICAgIGNvbnN0OiAwCgpbU2V2ZXJpdHk6IExvd10K
U2ltaWxhcmx5LCBkb2VzIHRoaXMgZmFsbGJhY2sgcGF0aCBuZWVkIHRvIGNvbnN0cmFpbiBhbiBh
cnJheSByYXRoZXIgdGhhbgp1c2luZyBjb25zdDogMD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDEteDFlLWNzaTItcGh5LXYx
Ni0wLWRkODYzYjkyOTA4MEBsaW5hcm8ub3JnP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

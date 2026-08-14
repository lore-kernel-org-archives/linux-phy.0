Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C749C5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 03:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idqLD/pOBeVMInrukeBn3XEMpFDV8Dxk68bM2zpQZ9M=; b=4bvHrwK4lSzjh3
	VYbA3JdfaxNVW+XWGlRzfZ18Fpe6LMtjXswkam4NkZFACJcY83VDT8urbIqnPGzveXVN/SKrS4UCJ
	Ajf9SkMqyaB36n17lmtUPixB936XEgMCSE58s3ZHGywwhEH4pKEICzBKDZ4+GpY3YB/VqbxuS1asP
	7FDuNKjKDobMwpg3v5mP4xfhWZi4EO02giBku9JrwVdr1MfXDaT+Ge+n2jxKCoqIbPKyusvhkfEyc
	TclVU1ESsw7PugsmwWUeC4/969VhZ4QcdEIBpt2X5Z30N1BElm+ClrdoPoTgRS4Zk93KcO3OATQto
	98kTLPLZXtT4bg8wrt4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuiH5-00000001t9Y-0Jtz;
	Fri, 14 Aug 2026 03:08:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuiH3-00000001t9I-2lut
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 03:08:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EBDCC600AD;
	Fri, 14 Aug 2026 03:08:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A241F000E9;
	Fri, 14 Aug 2026 03:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786676880;
	bh=H+57uzBO/+u4CbYOIrLJkex0sLfHfhA3xOTphcq+F1I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m/qnC8TUy8ftjtmFI897CP/8XUoOTJVhyV9qVqzyFE2ZNKKUOyh0eazel8DPUk3i2
	 Kyq5Cv0DBzrj1fZTFUtUTBbxVrnPEcoSvFpHiZCTVchmGhAY8+8pvNSG59MZb0E488
	 NNKfSXYH5ZgHdbhEgMbKDiKPNn8ccgdgF+6Z/9TcC8E7MhACMPGgXAv1O/uEqGDgAt
	 kAGorkXjdBwpdGUzn+a6Oy1E2CQzsEtRZt0nmZey28GccEM5Tj920k9BIr9OL6dQuh
	 /HtI3LGAFWmleCVrq9L4+r/XoovuIaFWM8E0q38f9hdLLHV5CpXoc2hSZvC29bMNlU
	 T/pQiDA9aNadA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 12/38] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-12-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-12-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 03:07:59 +0000
Message-Id: <20260814030759.D0A241F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbmNvbXBsZXRlIGZpeCBhbGxvd3MgVVNCMyBjb3JydXB0aW9uIHdoZW4gcGh5X2Nv
bmZpZ3VyZSBpcyBjYWxsZWQgd2l0aG91dCBzZXRfbGFuZXMuCi0gW0hpZ2hdIE1pc3NpbmcgbXV0
ZXggaW4gcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSBjYXVzZXMgYSBUT0NUT1UgZGF0YSByYWNl
IHdpdGggVHlwZS1DIGV2ZW50cy4KLS0KCi0tLSBQYXRjaCBbMTJdOiBbUEFUQ0ggdjE0IDEyLzM4
XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogTGltaXQgRFAgbGFuZSBjb3VudCB0byBtdXhlZCBsYW5l
cyAtLS0KY29tbWl0IDhjYzI4ZTgxY2QzNjg2ODJhMjdiZDE4MGNjY2MzZmFlNmZhYWVjOTUKQXV0
aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
CnBoeTogcm9ja2NoaXA6IHVzYmRwOiBMaW1pdCBEUCBsYW5lIGNvdW50IHRvIG11eGVkIGxhbmVz
CgpUaGlzIGNvbW1pdCBhZGRzIGEgYm91bmRzIGNoZWNrIHRvIHByZXZlbnQgdGhlIERpc3BsYXlQ
b3J0IGNvbnRyb2xsZXIgZnJvbQpyZXF1ZXN0aW5nIG1vcmUgbGFuZXMgdGhhbiB0aGUgUEhZIGN1
cnJlbnRseSBoYXMgbXVsdGlwbGV4ZWQgZm9yIERQLiBCeQpyZWplY3RpbmcgaW52YWxpZCByZXF1
ZXN0cywgaXQgYWltcyB0byBwcm90ZWN0IFVTQjMgZnVuY3Rpb25hbGl0eSBmcm9tIGJlaW5nCmNv
cnJ1cHRlZCBieSBpbmNvcnJlY3Qgdm9sdGFnZSBjb25maWd1cmF0aW9ucy4KCkxpbms6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NTU0Ni45OEUxRjFGMDAwRTlA
c210cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+IGluZGV4IGM0ZDYyYjIzNGVhODAuLmIxNzJjZTZhNzIyZWUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0xMDk5LDYgKzEwOTksOSBA
QCBzdGF0aWMgaW50IHJrX3VkcGh5X2RwX3BoeV92ZXJpZnlfbGlua19yYXRlKHN0cnVjdCBya191
ZHBoeSAqdWRwaHksCj4gIHN0YXRpYyBpbnQgcmtfdWRwaHlfZHBfcGh5X3ZlcmlmeV9sYW5lcyhz
dHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LAo+ICAJCQkJCXN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNf
ZHAgKmRwKQo+ICB7Cj4gKwlpZiAoZHAtPmxhbmVzID4gdWRwaHktPmRwX2xhbmVzKQoKW1NldmVy
aXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIHVu
bG9ja2VkIHJlYWQgb2YKdWRwaHktPmRwX2xhbmVzIHJhY2Ugd2l0aCBjb25jdXJyZW50IFR5cGUt
QyBldmVudHM/CgpMb29raW5nIGF0IHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSwgaXQgcGVy
Zm9ybXMgdmFsaWRhdGlvbiBhbmQgc3RhdGUKdXBkYXRlcyB3aXRob3V0IGFjcXVpcmluZyB0aGUg
ZHJpdmVyJ3MgdWRwaHktPm11dGV4OgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHsKICAgICAgICBzdHJ1Y3Qgcmtf
dWRwaHkgKnVkcGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7CiAgICAgICAgLi4uCn0KCk1lYW53
aGlsZSwgYXN5bmNocm9ub3VzIFR5cGUtQyBjYWxsYmFja3MgbGlrZSBya191ZHBoeV90eXBlY19t
dXhfc2V0KCkKbXV0YXRlIHRoZXNlIHNhbWUgZmllbGRzIGNvbmN1cnJlbnRseSB3aGlsZSBjb3Jy
ZWN0bHkgaG9sZGluZyB1ZHBoeS0+bXV0ZXguCgpJZiBhIFR5cGUtQyBldmVudCBjaGFuZ2VzIHVk
cGh5LT5kcF9sYW5lcyBpbW1lZGlhdGVseSBhZnRlciB0aGlzIHVubG9ja2VkCmNoZWNrIHBhc3Nl
cywgY291bGQgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHByb2NlZWQgdXNpbmcgb3V0ZGF0
ZWQKdmFsdWVzIGFuZCB3cml0ZSBEUCBzZXR0aW5ncyB0byBVU0IzIGxhbmVzPwoKW1NldmVyaXR5
OiBIaWdoXQpUaGlzIGlzIGFsc28gYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMg
Y2hlY2sgZnVsbHkgcHJvdGVjdAp0aGUgdm9sdGFnZSBjb25maWd1cmF0aW9uIGxvb3BzIGlmIHBo
eV9jb25maWd1cmUoKSBpcyBjYWxsZWQgd2l0aApzZXRfdm9sdGFnZXM9MSBidXQgc2V0X2xhbmVz
PTA/CgpJZiBhIFR5cGUtQyBldmVudCByZWR1Y2VzIHRoZSBhdmFpbGFibGUgRFAgbGFuZXMsIHJr
X3VkcGh5X3R5cGVjX211eF9zZXQoKQp1cGRhdGVzIHVkcGh5LT5kcF9sYW5lcyBidXQgbm90IHRo
ZSBjYWNoZWQgdWRwaHktPmxhbmVzLiBJZiB0aGUgRFAKY29udHJvbGxlciBsYXRlciBhZGp1c3Rz
IHZvbHRhZ2VzIGR1cmluZyBsaW5rIHRyYWluaW5nICh3aXRob3V0IHNldHRpbmcKbGFuZXMpLCB0
aGlzIGNoZWNrIGluIHJrX3VkcGh5X2RwX3BoeV92ZXJpZnlfbGFuZXMoKSBpcyBza2lwcGVkLgoK
VGhlIGNvZGUgdGhlbiBsb29wcyBvdmVyIHRoZSBzdGFsZSB1ZHBoeS0+bGFuZXMgdmFsdWUgaW4g
Ym90aApya191ZHBoeV9kcF9waHlfdmVyaWZ5X3ZvbHRhZ2VzKCkgYW5kIHJrX3VkcGh5X2RwX3Bo
eV9jb25maWd1cmUoKToKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
OnJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSB7CiAgICAgICAgLi4uCiAgICAgICAgZm9yIChp
ID0gMDsgaSA8IHVkcGh5LT5sYW5lczsgaSsrKSB7CiAgICAgICAgICAgICAgICBsYW5lID0gdWRw
aHktPmRwX2xhbmVfc2VsW2ldOwogICAgICAgIC4uLgp9CgpXaWxsIHRoaXMgcmVzdWx0IGluIGFw
cGx5aW5nIERQIHZvbHRhZ2UgY29uZmlndXJhdGlvbnMgdG8gbGFuZXMgdGhhdCBoYXZlCmFscmVh
ZHkgYmVlbiByZWFzc2lnbmVkIHRvIFVTQjMsIGJ5cGFzc2luZyB0aGUgbmV3bHkgYWRkZWQgcHJv
dGVjdGlvbj8KCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICAJc3dpdGNoIChkcC0+bGFuZXMp
IHsKPiAgCWNhc2UgMToKPiAgCWNhc2UgMjoKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTMtcm9ja2NoaXAtdXNiZHAtY2xlYW51
cC12MTQtMC1iNWFkOWM2OGZhMTFAY29sbGFib3JhLmNvbT9wYXJ0PTEyCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

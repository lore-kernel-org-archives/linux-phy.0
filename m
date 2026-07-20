Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 324C8C4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUlcC7ih+OP2U2KbO1irmKZNfUMnknccV5+pu2dYp5g=; b=T7b6DDgd8BGK25
	KgEp16oZpOInlSF2kuN1pcS9+ovGDFixpZZ/qucTWEWEa4UyEeU/EGr6znWShSjOpBYNLst5hTQP1
	FKorPIBbOWjM+3udXyJW5WhMal166QytVRlt79UK3i7qCR6g6W8/lneYxfPZD2awq44elEZgnOtHn
	OZTPb4NQfkhpGZUz4INeNx239iHRacdNwO9R6RbGE+b7nYy1Ppkq7QMiVygf7lwtQpGen/haR1Efs
	lBGMXFieb5MweKZwXFjdzI1KkpybcC/baJhiJhI6+NRSqiyRXJ7v68kjSOltaBRYfjmf7z+vgzLN9
	FNRSrQx6hZWnPN9FsL2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloZ3-00000006tdO-3mTF;
	Mon, 20 Jul 2026 14:01:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloZ2-00000006tcu-3gKh
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:01:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1AE3360A6A;
	Mon, 20 Jul 2026 14:01:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 363571F000E9;
	Mon, 20 Jul 2026 14:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784556107;
	bh=NqzZ4A0iNV8jqhCPQAvgGK5PdbKuBDQhhICaZPd51fg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CE2JuyrGT2/8aFw9ma3Pph3IjiLBZfdr9EGf3t6nR1qQTGZX3OHXNMHtJQe9SXVOv
	 M3ckDyGnvdX5PDtr/Dc945AlgHLKkDk/3NoNX9h4al80elkJKDuaee5AHxpOFG+98x
	 8n89mCHVTIYWWghvKCzUEsfAz+ezXTvk0enRNkV0C572QJLVH0hc4fFp62Ielk8F8I
	 AqkySKhpiOsaBqNmnxXaaXOGTmyDNrhBEya07T6pWTP7lhnL2GAsEbwi5TgP3pdq98
	 jfU4dQdOQup3iqMPph7TEu9py14ZXOO+BAg2w1ntjxCnqi1i4qRaZtqRcSyg+rAqi0
	 hy5tlgMUfXQOA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Document MT8196 MediaTek
 PCI-Express Gen4 S-PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260720135344.84183-2-angelogioacchino.delregno@collabora.com>
References: <20260720135344.84183-1-angelogioacchino.delregno@collabora.com>
 <20260720135344.84183-2-angelogioacchino.delregno@collabora.com>
Date: Mon, 20 Jul 2026 14:01:46 +0000
Message-Id: <20260720140147.363571F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVHlwbyBpbiB0aGUgZGV2
aWNlIHRyZWUgYmluZGluZyBkZXNjcmlwdGlvbiBsaXN0aW5nIGFuIGludmFsaWQgUENJZSBsaW5r
IHJhdGUgKDYuMCBHVC9zIGluc3RlYWQgb2YgOC4wIEdUL3MpLgotLQoKLS0tIFBhdGNoIFsxXTog
W1BBVENIIHYyIDEvMl0gZHQtYmluZGluZ3M6IHBoeTogRG9jdW1lbnQgTVQ4MTk2IE1lZGlhVGVr
IFBDSS1FeHByZXNzIEdlbjQgUy1QSFkgLS0tCmNvbW1pdCA0NGVlNTUyZDIzZDE2OGFlYjM3OTg2
ZGYxYTk0YmExMTAxZmYxMjUyCkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6
IERvY3VtZW50IE1UODE5NiBNZWRpYVRlayBQQ0ktRXhwcmVzcyBHZW40IFMtUEhZCgpUaGlzIGNv
bW1pdCBhZGRzIGRldmljZSB0cmVlIGJpbmRpbmdzIGZvciB0aGUgTVQ4MTk2IE1lZGlhVGVrIFBD
SS1FeHByZXNzCkdlbjQgUy1QSFkuIEl0IGRvY3VtZW50cyB0aGUgY2FwYWJpbGl0aWVzLCByZWdp
c3RlciBzcGFjZXMsIGFuZCByZXF1aXJlZApwcm9wZXJ0aWVzIGZvciB0aGlzIFBIWS4KCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWss
bXQ4MTk2LXBjaWUtc3BoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9tZWRpYXRlayxtdDgxOTYtcGNpZS1zcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmMyNDg3MWY3ZTBlNWEKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxtdDgx
OTYtcGNpZS1zcGh5LnlhbWwKPiBAQCAtMCwwICsxLDkzIEBACgpbIC4uLiBdCgo+ICtkZXNjcmlw
dGlvbjoKPiArICBUaGUgTWVkaWFUZWsgUENJLUV4cHJlc3MgR2VuNCBTLVBIWSBpcyBjYXBhYmxl
IG9mIGRhdGEgc2VyaWFsaXphdGlvbgo+ICsgIGFuZCBkZS1zZXJpYWxpemF0aW9uIHdpdGggOCwg
MTAsIDEyOCBvciAxMzAgYml0cyAoMTZHVC9zKSBlbmNvZGluZwo+ICsgIGFuZCBkZWNvZGluZywg
aGFzIGFuYWxvZyBidWZmZXJzLCBlbGFzdGljIGJ1ZmZlcnMgYW5kIG1lY2hhbmlzbXMgZm9yCj4g
KyAgcmVjZWl2ZXIgZGV0ZWN0aW9uLgo+ICsgIFRoaXMgUEhZIHN1cHBvcnRzIGxpbmsgcmF0ZXMg
b2YgMi41LCA1LjAsIDYuMCBhbmQgMTYuMCBHVC9zIHBlci1sYW5lCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl4KCltTZXZlcml0eTogTG93XQpUaGlzIGlz
bid0IGEgYnVnLCBidXQgaXMgNi4wIEdUL3MgYSB0eXBvIGZvciA4LjAgR1QvcyBoZXJlPyAKClN0
YW5kYXJkIFBDSWUgbGluayByYXRlcyBhcmUgdHlwaWNhbGx5IDIuNSwgNS4wLCA4LjAgKEdlbjMp
LCBhbmQgMTYuMCBHVC9zLAp3aGlsZSA2LjAgR1QvcyBpcyBhIHJhdGUgdXN1YWxseSBhc3NvY2lh
dGVkIHdpdGggU0FUQSByYXRoZXIgdGhhbiBQQ0llLgoKPiArICBpbiBib3RoIFJvb3QgQ29tcGxl
eCAoUkMpIGFuZCBFbmQgUG9pbnQgKEVQKSBtb2RlcywgZGVwZW5kaW5nIG9uIHRoZQo+ICsgIGNo
b3NlbiBwb3J0LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDcyMDEzNTM0NC44NDE4My0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVn
bm9AY29sbGFib3JhLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B9C0C54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eD7ZJNkk9Ikq/ZigzAO+tCP5PqNrrDx35QceN0teTK0=; b=fjVsJCwYivthOv
	g/Mgcgn8PIW1emQRJWNU3MSqqDR1hiCiMoDr2CATq3RwpfP3Ox4bkQ0ciIdwrwUr09YLXSGBkDExT
	YlTgwm71P5oT60I8z/nGiYEEgeHSC9K0WMuPpPsEaKIVkw97KqEBMLXXtIQmCbZFFYAW82EZZXcYd
	xqWk2sJEKUrc/RqAzOr+WOhQfN8BUx4Tm9mUlcJ4S0FpsXXtBqRtwuUsNZhDx5hhMycmcf6cnqi8D
	lGxEwJwKjo/UNrlpsa5soWoSxiigdWH6VZBXUkAwEQVYeAfGBUBG+vK1sAVpw246v0Wkp7tQF2LMY
	6L04sO04AH2wuqwto8MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOCd-0000000AEs7-0agW;
	Thu, 30 Jul 2026 10:41:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOCb-0000000AErp-3jav
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:41:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6836343940;
	Thu, 30 Jul 2026 10:41:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C606C1F000E9;
	Thu, 30 Jul 2026 10:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785408085;
	bh=CjTAtVu3KYZkXZ9wcCH77hKReMY6yFhPPMguW0zSoE0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TgSmzxS3ZqCA3e3E/Gm+5p0Di4rNoybGAC1GY8FPo7oxFf9gvys5RfCw+1qKLaS4L
	 M0kqQpH1I4nKIHzuUKVxOWMd65/jx/8d1lhSxXli4dogu1cIoc9pTgwAOLvR00hCig
	 3prCn5S7z+VDvpyLQY54+U4Dveo7zLuHwRgX1GT/NxWyaoDAYrUakmFXYrthLnpyGP
	 2q42770o0Figw4+0YlV/n3xzJ4x3BLUrOo1LrUdsSRXgnm/kJZ6Kl+OLqhzb6J/ZRK
	 Yrc7BAtg29zegEGXUaqL1Z++BPYb4O/LIeUIOn7qdUGhgmG01wwldxivJhWfHDzM69
	 kzdU55FtL3HVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 18/26] scsi: ufs: mediatek: Don't acquire
 dvfsrc-vcore twice
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260730-mt8196-ufs-v10-18-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-18-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:41:24 +0000
Message-Id: <20260730104124.C606C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENvbnNvbGlkYXRpbmcg
YGR2ZnNyYy12Y29yZWAgaW50byBhIHNpbmdsZSBzaGFyZWQgcmVndWxhdG9yIGhhbmRsZSBwcmV2
ZW50cyB0aGUgcmVndWxhdG9yIGNvcmUgZnJvbSBhZ2dyZWdhdGluZyB2b2x0YWdlIGNvbnN0cmFp
bnRzLCBjYXVzaW5nIGluZGVwZW5kZW50IGZlYXR1cmVzIHRvIG92ZXJ3cml0ZSBlYWNoIG90aGVy
J3Mgdm9sdGFnZSByZXF1ZXN0cyBhbmQgbGVhZGluZyB0byBoYXJkd2FyZSB1bmRlcnZvbHRhZ2Uu
Ci0tCgotLS0gUGF0Y2ggWzE4XTogW1BBVENIIHYxMCAxOC8yNl0gc2NzaTogdWZzOiBtZWRpYXRl
azogRG9uJ3QgYWNxdWlyZSBkdmZzcmMtdmNvcmUgdHdpY2UgLS0tCmNvbW1pdCBmNDQ1YWRlMTQ1
MDgyY2JlNjBlM2RlZTJlOGE3MGFhMzJhZWM5ZDliCkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xp
IDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6
IERvbid0IGFjcXVpcmUgZHZmc3JjLXZjb3JlIHR3aWNlCgpUaGlzIHBhdGNoIGNvbnNvbGlkYXRl
cyB0aGUgZHZmc3JjLXZjb3JlIHJlZ3VsYXRvciBpbnRvIGEgc2luZ2xlIHNoYXJlZApoYW5kbGUg
b24gdGhlIGhvc3Qgc3RydWN0dXJlLCByYXRoZXIgdGhhbiBhY3F1aXJpbmcgdHdvIHNlcGFyYXRl
IHJlZmVyZW5jZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+IGluZGV4IDA4MjFkZTViOGE4
ZmMuLjgyMTRjZjBiM2ExNjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVk
aWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKWyAuLi4gXQo+
IEBAIC0yMDA1LDcgKzE5OTgsNyBAQCBzdGF0aWMgdm9pZCBfdWZzX210a19jbGtfc2NhbGUoc3Ry
dWN0IHVmc19oYmEgKmhiYSwgYm9vbCBzY2FsZV91cCkKPiAgCQl9Cj4gIAo+ICAJCWlmIChjbGtf
YmluZF92Y29yZSkgewo+IC0JCQlyZXQgPSByZWd1bGF0b3Jfc2V0X3ZvbHRhZ2UocmVnLCAwLCBJ
TlRfTUFYKTsKPiArCQkJcmV0ID0gcmVndWxhdG9yX3NldF92b2x0YWdlKGhvc3QtPnJlZ192Y29y
ZSwgMCwgSU5UX01BWCk7CgpbU2V2ZXJpdHk6IEhpZ2hdCldpbGwgY29uc29saWRhdGluZyB0byBh
IHNpbmdsZSBob3N0LT5yZWdfdmNvcmUgaGFuZGxlIHByZXZlbnQgdGhlIHJlZ3VsYXRvcgpjb3Jl
IGZyb20gcHJvcGVybHkgYWdncmVnYXRpbmcgdm9sdGFnZSBjb25zdHJhaW50cz8KCkR1cmluZyBh
IGNsb2NrIHNjYWxlLWRvd24sIHVmc19tdGtfY2xrX3NjYWxlX25vdGlmeSgpIHJ1bnMgX3Vmc19t
dGtfY2xrX3NjYWxlKCkKd2l0aCBzY2FsZV91cCA9IGZhbHNlIGR1cmluZyB0aGUgcHJlLWNoYW5n
ZSBub3RpZmljYXRpb24gcGhhc2UuIFNpbmNlCmhvc3QtPnJlZ192Y29yZSBpcyBub3cgYSBzaW5n
bGUgc2hhcmVkIGNvbnN1bWVyIGhhbmRsZSwgY2FsbGluZwpyZWd1bGF0b3Jfc2V0X3ZvbHRhZ2Uo
KSB3aXRoIDBWIGhlcmUgd2lsbCBpbW1lZGlhdGVseSBkcm9wIHRoZSBwaHlzaWNhbAp2b2x0YWdl
IGNvbnN0cmFpbnQuCgpIb3dldmVyLCB0aGUgY3J5cHRvIGJvb3N0IGNsb2NrIGlzbid0IGRvd25j
bG9ja2VkIHVudGlsIHRoZSBwb3N0LWNoYW5nZQpub3RpZmljYXRpb24gcGhhc2UgY2FsbHMgdWZz
X210a19ib29zdF9jcnlwdCgpLiBDYW4gdGhpcyB2aW9sYXRlIERWRlMKY29uc3RyYWludHMgYW5k
IGNhdXNlIGEgaGFyZHdhcmUgdW5kZXJ2b2x0YWdlIGJ5IGRyb3BwaW5nIHRoZSB2b2x0YWdlIHdo
aWxlCnRoZSBjcnlwdG8gY2xvY2sgaXMgc3RpbGwgcnVubmluZyBhdCBoaWdoIGZyZXF1ZW5jeT8K
Ckl0IGFwcGVhcnMgdGhlIHJlZ3VsYXRvciBjb3JlIHJlbGllcyBvbiBzZXBhcmF0ZSBjb25zdW1l
ciBoYW5kbGVzIHRvIGFnZ3JlZ2F0ZQptYXhpbXVtIHZvbHRhZ2UgcmVxdWVzdHMgYWNyb3NzIGlu
ZGVwZW5kZW50IGZlYXR1cmVzIGxpa2UgY2xvY2sgc2NhbGluZyBhbmQKY3J5cHRvIGJvb3N0LCB3
aGljaCBtaWdodCBleHBsYWluIHdoeSB0d28gc2VwYXJhdGUgcmVmZXJlbmNlcyB3ZXJlIG9yaWdp
bmFsbHkKdXNlZC4KCj4gIAkJCWlmIChyZXQpIHsKPiAgCQkJCWRldl9lcnIoaGJhLT5kZXYsICIl
czogRmFpbGVkIHRvIHNldCB2Y29yZSB0byBtaW5pbXVtOiAlcGVcbiIsCj4gIAkJCQkJX19mdW5j
X18sIEVSUl9QVFIocmV0KSk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMwLW10ODE5Ni11ZnMtdjEwLTAtYmM1ZWNlZjIwMmRj
QGNvbGxhYm9yYS5jb20/cGFydD0xOAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==

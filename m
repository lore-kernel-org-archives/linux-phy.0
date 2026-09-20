Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F007AC982CC
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fVEYXr7XEKVZJBY7UykhI4WgbDCuuBSOZ7dx8UL7As=; b=fnYrCzRE9/PrSc
	NIRVSZw0D7QxRsqztNocJPI2rDm8RcxaLQVFgWAD8k7Gb4whnGtFwCnkmi+d4YtNYgaPUjCwYmm8z
	+6Agbrd6y1GA9+Hq8QZknIU05+iemke0o1So4xQ9peeIw3lWLRf++//xJpsMGAv8USkrXvqF3Qpex
	4WPj0qEwT9BdD+n+1zM1aq3hvMKgWp6713kE1mhJ675xE2hznqXAowdoRSDhhZgp7Z2RjZlp2Dzfe
	h3LEanEox+N4ms862udazm6Cv2sdhStshN7C7bG0W81xS9wis9ZFIwEOkUquJb1xWUJP+L8MjV/nf
	eQ/Tls4ewcFJCKRXkDKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BS0-0000000H0SY-2gBp;
	Sun, 20 Sep 2026 06:55:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRx-0000000H0Qw-2ATp
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:54:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 62A39601FD;
	Sun, 20 Sep 2026 06:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D9F1F00893;
	Sun, 20 Sep 2026 06:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887296;
	bh=icjHCxhRYLZvp6aUGXetxGSkNHFCNbL9PoVkPWL+05Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ho38eIH210FDDOEiwWHatCZluRudE33Tl0L1ZVC0AJAVYU5jOxAXlV8fUZDDMu65x
	 NkTO6DdJNiuiLfY9R9uzrxSDFiUbPmNt6zSs8odPvcykGfbUKIrnJx2cq8ynfUsheG
	 2hDJM2o8vmxfSc9b59NJ1NQGzSvyQTU/OeeXPmJSK0rz4OM6kDm+VC6+FOK1mX0em7
	 eguOurwUuzoOy1gSqC1euwdP+LqfIgfRfZoCdGwWLHJ0XZVTQt3wvBe/eEvV/hrDi4
	 CmlhRPuKruAqmD/IvETnYs96WYhtp0TdWcczXD4aIyDdgHQR/XR+w63WTJhpXA4/YG
	 qnXIGrhtogzkQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 01/12] dt-bindings: phy: Add NXP S32G SerDes
 subsystem
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: vkoul@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, wsa+renesas@sang-engineering.com, linux-phy@lists.infradead.org, olteanv@gmail.com, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260919-s32g_serdes-v3-1-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-1-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:54:55 +0000
Message-Id: <20260920065455.72D9F1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IG1pc3NpbmcgcmVxdWlyZWQgZW5mb3JjZW1lbnQgZm9yIHBoeUAwIGFuZCBwaHlAMSBub2Rlcwot
LQoKY29tbWl0IDllMmNjZTgwNmE0ODMxMmE2MzljNTQwMjlkNWE4Yjg0ODcxZGFjZTcKQXV0aG9y
OiBKYW4gUGV0cm91cyAoT1NTKSA8amFuLnBldHJvdXNAb3NzLm54cC5jb20+CgpkdC1iaW5kaW5n
czogcGh5OiBBZGQgTlhQIFMzMkcgU2VyRGVzIHN1YnN5c3RlbQoKVGhpcyBjb21taXQgaW50cm9k
dWNlcyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBmb3IgdGhlIE5YUCBTMzJHMi9TMzJHMyBTZXJE
ZXMKc3Vic3lzdGVtLiBJdCBkZWZpbmVzIHRoZSBoYXJkd2FyZSBjb25zdHJhaW50cyBmb3IgdGhl
IGNvbWJvIFBIWSBzaGFyZWQKYmV0d2VlbiBQQ0llIGFuZCBEZXNpZ25XYXJlIFhQQ1MgaW5zdGFu
Y2VzLCBhbmQgc3BlY2lmaWVzIHRoYXQgYm90aCBsYW5lcwptdXN0IGFsd2F5cyBiZSBkZXNjcmli
ZWQgaW4gdGhlIGRldmljZSB0cmVlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsczMyZy1zZXJkZXMueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnhwLHMzMmctc2VyZGVzLnlhbWwKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjYzNDNkMDFiZmRlNDUKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAs
czMyZy1zZXJkZXMueWFtbAoKWyAuLi4gXQoKPiArcGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgJ15w
aHlAWzAxXSQnOgo+ICsgICAgZGVzY3JpcHRpb246IE9uZSBTZXJEZXMgbGFuZS4gVGhlIHVuaXQg
YWRkcmVzcyBpcyB0aGUgcGh5c2ljYWwgbGFuZSBpbmRleC4KPiArICAgIHR5cGU6IG9iamVjdAo+
ICsgICAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICsgICAgcHJvcGVydGllczoK
ClsgLi4uIF0KCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAg
LSByZWctbmFtZXMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIHJlc2V0
cwo+ICsgIC0gcmVzZXQtbmFtZXMKPiArICAtICcjYWRkcmVzcy1jZWxscycKPiArICAtICcjc2l6
ZS1jZWxscycKCltTZXZlcml0eTogTWVkaXVtXQpUaGUgY29tbWl0IG1lc3NhZ2UgZXhwbGljaXRs
eSBzdGF0ZXMgIkJvdGggbGFuZXMgbXVzdCBhbHdheXMgYmUgZGVzY3JpYmVkLCBldmVuCmEgbGFu
ZSB0aGUgYm9hcmQgZG9lcyBub3Qgd2lyZSBvdXQgdG8gYSBjb25uZWN0b3IiLCBidXQgaXMgdGhl
IHNjaGVtYSBhY3R1YWxseSAKZW5mb3JjaW5nIHRoaXM/CgpUaGUgcGF0dGVyblByb3BlcnRpZXMg
YmxvY2sgZGVmaW5lcyB0aGUgc2NoZW1hIGZvciB0aGUgbGFuZSBjaGlsZCBub2RlcywgYnV0IGl0
Cm9ubHkgYXBwbGllcyB2YWxpZGF0aW9uIGlmIHRob3NlIG5vZGVzIGFyZSBwcmVzZW50LiBCZWNh
dXNlIHRoZSBwaHlAMCBhbmQgcGh5QDEKbm9kZSBuYW1lcyBhcmUgbWlzc2luZyBmcm9tIHRoZSB0
b3AtbGV2ZWwgcmVxdWlyZWQgbGlzdCwgaXQgbG9va3MgbGlrZSBhCmRldmljZSB0cmVlIG9taXR0
aW5nIHRoZW0gd291bGQgc2lsZW50bHkgcGFzcyBkdF9iaW5kaW5nX2NoZWNrIHZhbGlkYXRpb24u
CgpTaW5jZSB0aGUgZHJpdmVyIHdpbGwgZmFpbCB0aGUgcHJvYmUgd2l0aCAtRUlOVkFMIGlmIHRo
ZSBsYW5lcyBhcmUgbWlzc2luZywKY291bGQgdGhlc2Ugbm9kZXMgYmUgZXhwbGljaXRseSByZXF1
aXJlZCBpbiB0aGUgc2NoZW1hIHRvIGZ1bGx5IGVuZm9yY2UgdGhlCnN0YXRlZCBoYXJkd2FyZSBj
b25zdHJhaW50cz8KCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKClsgLi4uIF0K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA5MTktczMyZ19zZXJkZXMtdjMtMC05ZDY4ODY4YzFlODlAb3NzLm54cC5jb20/cGFydD0x
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

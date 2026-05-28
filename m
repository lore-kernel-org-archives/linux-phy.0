Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8260ECD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztCMUmWfJv2qORF0jW5dthviWDitjGFQE5hvFd5n47Y=; b=psUJi/0I/vHDq9
	ba4OwSN3qM6gbQjeQoTaGUsLe5Noer5yBQjqVotdY0aZIWZgjSK4Ps6nQx1Alt/5JYWxY4CVbFhng
	79QuTQCrHgfgC/YieNpjl7vdHNCksj3gQ6yU1BHe43mlRCDU+hrWs3RW8ggj+Ynox9aY2di2S2X11
	xJ6tZC00XOjSE/8cLKj1Hyf0FV7wZBG4TjBaytNi8kZYWuvahQYlndTOjfIOp5zBHxrA8Rja4QMqo
	ZvQEJNSWsMowYqSumbovsW4gT6o8YNAomn5T/DdNEbF7gmVteksgw8JGNLBA+R2TL+9kEQ7QJ4xsh
	gQtXurHURJO9ThXksLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeiu-000000067LC-0LOS;
	Thu, 28 May 2026 17:40:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeis-000000067Ky-22xs
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:40:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ADC6C6020A;
	Thu, 28 May 2026 17:40:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBE8A1F000E9;
	Thu, 28 May 2026 17:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779990045;
	bh=BwNOb92YHl3crDPJMDHmEU2HrEqk3CyfGTDAqLIlKYY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NAgH5qOckpzCWHjodGaX3PXwM4pFsOZXRh0mEvvBH+a8m2GzuHxHVH2fuvutDwAcw
	 O8xNOS0w4DETiwOL1XzndL0MNNn2W/7GthalrHAG0bzmWkL9hJeT5OjLgHNEYdxJw2
	 9bhQX98d+lufHWVD/NHKEiR7TU+Q+Ka0xn/6pi69X2IeB6HHMWLW6PvnCo2yNUYGXL
	 tW1f2APCJUPpk2qoG3Isqs0IUGCPSSSsxGYkTOKdCeOtETrrrrmHKD2XsRB2gkjJQ1
	 C7plIF1ebGgSL0vETqIlg7NuGRmFqiWN/WXlUjus8uYH4cM/O3dJQTEoQ4V+dW3xvl
	 kE8IXt7qAqU0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH phy-next 01/13] dt-bindings: phy: lynx-10g: initial
 document
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260528172404.733196-2-vladimir.oltean@nxp.com>
References: <20260528172404.733196-2-vladimir.oltean@nxp.com>
Date: Thu, 28 May 2026 17:40:44 +0000
Message-Id: <20260528174044.EBE8A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW52YWxpZCBKU09OIFNj
aGVtYSBzeW50YXggZm9yIHRoZSBgcmVnYCBwcm9wZXJ0eSBjb25zdHJhaW50LgotLQoKY29tbWl0
IGUyMTk0MDUyNzY4Mzk4Mzc5ODljMzA2MjdkMTA5ZmYzOWMxNWUzNjEKQXV0aG9yOiBWbGFkaW1p
ciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAuY29tPgoKZHQtYmluZGluZ3M6IHBoeTogbHlu
eC0xMGc6IGluaXRpYWwgZG9jdW1lbnQKClRoaXMgY29tbWl0IGFkZHMgYSBuZXcgZGV2aWNlIHRy
ZWUgYmluZGluZyBzY2hlbWEgZm9yIHRoZSAxMEcgTHlueCBTZXJEZXMuCkl0IGRlZmluZXMgdGhl
IHJlZ2lzdGVyIG1hcCBjb25zdHJhaW50cyBhbmQgYWxsb3dzIGZsZXhpYmlsaXR5IGZvciB0aGUK
I3BoeS1jZWxscyBwcm9wZXJ0eS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvZnNsLGx5bngtMTBnLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L2ZzbCxseW54LTEwZy55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi45OTNmMDc2YmJhNGU2Cj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZnNsLGx5bngtMTBn
LnlhbWwKWyAuLi4gXQo+IHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICAgIl5waHlAWzAtN10kIjoKPiAg
ICAgdHlwZTogb2JqZWN0Cj4gICAgIGRlc2NyaXB0aW9uOiBTZXJEZXMgbGFuZSAoc2luZ2xlIFJY
L1RYIGRpZmZlcmVudGlhbCBwYWlyKQo+IAo+ICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgIHJlZzoK
PiAgICAgICAgIG1pbmltdW06IDAKPiAgICAgICAgIG1heGltdW06IDcKCltTZXZlcml0eTogTG93
XQpXaWxsIHRoaXMgY2F1c2UgYSBtZXRhLXNjaGVtYSB2YWxpZGF0aW9uIGVycm9yIGR1cmluZyBt
YWtlIGR0X2JpbmRpbmdfY2hlY2s/CgpUaGUgcmVnIHByb3BlcnR5IGlzIHBhcnNlZCBhcyBhbiBh
cnJheSB0eXBlIGJ5IGR0LXNjaGVtYS4gQXBwbHlpbmcgbWluaW11bQphbmQgbWF4aW11bSBkaXJl
Y3RseSB0byBhbiBhcnJheSBwcm9wZXJ0eSBpcyBpbnZhbGlkIGluIEpTT04gU2NoZW1hLCBhcyB0
aG9zZQprZXl3b3JkcyBhcmUgb25seSBhcHBsaWNhYmxlIHRvIG51bWVyaWMgdHlwZXMuCgpTaG91
bGQgdGhlc2UgY29uc3RyYWludHMgYmUgd3JhcHBlZCBpbnNpZGUgYW4gaXRlbXMgbGlzdD8KClsg
Li4uIF0KPiBhbGxPZjoKPiAgIC0gaWY6Cj4gICAgICAgcHJvcGVydGllczoKPiAgICAgICAgIGNv
bXBhdGlibGU6Cj4gICAgICAgICAgIGNvbnRhaW5zOgo+ICAgICAgICAgICAgIGVudW06Cj4gICAg
ICAgICAgICAgICAtIGZzbCxsczEwMjhhLXNlcmRlcwo+ICAgICAgICAgICAgICAgLSBmc2wsbHMx
MDQ2YS1zZXJkZXMxCj4gICAgICAgICAgICAgICAtIGZzbCxsczEwNDZhLXNlcmRlczIKPiAgICAg
ICAgICAgICAgIC0gZnNsLGxzMTA4OGEtc2VyZGVzMQo+ICAgICAgICAgICAgICAgLSBmc2wsbHMx
MDg4YS1zZXJkZXMyCj4gICAgIHRoZW46Cj4gICAgICAgcGF0dGVyblByb3BlcnRpZXM6Cj4gICAg
ICAgICAiXnBoeUBbMC03XSQiOgo+ICAgICAgICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAg
IHJlZzoKPiAgICAgICAgICAgICAgIG1pbmltdW06IDAKPiAgICAgICAgICAgICAgIG1heGltdW06
IDMKCltTZXZlcml0eTogTG93XQpDb3VsZCB0aGUgc2FtZSBtZXRhLXNjaGVtYSB2YWxpZGF0aW9u
IGlzc3VlIG9jY3VyIGhlcmU/IAoKU2luY2UgcmVnIGlzIGFuIGFycmF5LCBwZXJoYXBzIHRoaXMg
Y29uc3RyYWludCB3b3VsZCBiZSBiZXR0ZXIgZW5mb3JjZWQgYnkKcmVqZWN0aW5nIGludmFsaWQg
dW5pdCBhZGRyZXNzZXMgaW4gdGhlIHRoZW4gY2xhdXNlIGVudGlyZWx5LCBmb3IgZXhhbXBsZSwK
Ynkgc2V0dGluZyAiXnBoeUBbNC03XSQiOiBmYWxzZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjgxNzI0MDQuNzMzMTk2LTEt
dmxhZGltaXIub2x0ZWFuQG54cC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

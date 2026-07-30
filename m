Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 682EAC54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FTktdRaM26UhZyQkcxYPzCN1RO19PXiQj8TIAlO0mM=; b=JaNALhDxc4O9CT
	n2uNfE+5cGmJnX83Iu+Ndio6lwiqepdfHiRVIBdtdnD2EzVXxJveLo9P11WSiy++kNptXae/gtpbL
	l935/dLN8IdDVwB1caYpwhjESsfLe6u1v+jYRPi8HcdDb+sVwwygSeh04EhckqjLy/Som3viOSJbf
	Fr3rjV44Yeovg7FyBFxSfq85/L2AhTfcRYxjutXwJ4fTyhsJLVV92gjVZy4mp8lKCHIMhqViAR3xy
	0YGH7MZFjh85/5R+7cber9N9YH6JVcn216K4xkMvC7/PGJFe9zIUvezDxhCRE9Y++k8LGOtfkht81
	U2ZJkD7PvB8G2iQ2kxtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNYW-0000000A7zH-42oE;
	Thu, 30 Jul 2026 10:00:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNYV-0000000A7yq-3iHQ
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 09:59:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 55D5E600AB;
	Thu, 30 Jul 2026 09:59:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88ED01F000E9;
	Thu, 30 Jul 2026 09:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785405599;
	bh=WK2tHPEkzBY2stLBdpC+fE4u48BNObxZFm8c/FNCDFM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=igOVAejB/OUbAzCHWVWjSSqRus6Ju7IUtE0GOUwaAXfEOBAabcicXh7NLGDU2x00I
	 SJ2E05ZfPDyWBkLmGRnRQqY1a/nHsyV7KwSc3/ybfX9jS95PdtUe7rJW0nEiPWll8Y
	 HoSYa7ZJTZ7DVC3kNOrFOoMx6fA0YSrc4jLJpyi7dXYhuXKkEqUR8HbOS1mwkEjMeU
	 +aHSayHpWmqzezIl/nE2vRcaZEm6klGlvRdWwfOaRg/U5FO04EFWz4SmbFqUh5ff/h
	 idphYHK140k5YpheYQM8rWZMSI1uiiXrRn4ytm2ENCtSjXjV62baPwPb9IycRi+ACi
	 64diCu6dIJA+g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 03/26] dt-bindings: ufs: mediatek,ufs: Add mt8196
 variant
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-scsi@vger.kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-3-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-3-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 09:59:58 +0000
Message-Id: <20260730095958.88ED01F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gQSB0eXBvIGluIHRo
ZSBgbWVkaWF0ZWssbXQ4MTkyLXVmc2hjaWAgY29uZGl0aW9uYWwgYmxvY2sgdXNlcyBgY2xvY2tz
LW5hbWVzYCBpbnN0ZWFkIG9mIGBjbG9jay1uYW1lc2AsIGJ5cGFzc2luZyBhcnJheSBsZW5ndGgg
dmFsaWRhdGlvbi4KLSBbTG93XSBUaGUgYmluZGluZyBvbWl0cyBhIHN1cHBseSBwcm9wZXJ0eSBm
b3IgdGhlIGBBVkREMDlfVUZTXzFgIHBpbiwgdHlpbmcgaXQgdG8gYEFWREQwOV9VRlNgLCB3aGlj
aCB2aW9sYXRlcyB0aGUgcHJpbmNpcGxlIHRoYXQgRGV2aWNlIFRyZWUgZGVzY3JpYmVzIHRoZSBT
b0MgaGFyZHdhcmUgcmF0aGVyIHRoYW4gYSBzcGVjaWZpYyBib2FyZCdzIHBvd2VyIHJvdXRpbmcu
Ci0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjEwIDAzLzI2XSBkdC1iaW5kaW5nczogdWZzOiBt
ZWRpYXRlayx1ZnM6IEFkZCBtdDgxOTYgdmFyaWFudCAtLS0KY29tbWl0IGUwZWVlYWVjMDA5Mjcy
ZDQwZGRiYzJmZWU4OTAyNzgyYzE1ZTc3NmMKQXV0aG9yOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5p
Y29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKZHQtYmluZGluZ3M6IHVmczogbWVkaWF0
ZWssdWZzOiBBZGQgbXQ4MTk2IHZhcmlhbnQKClRoZSBNVDgxOTYgU29DJ3MgVUZTIGNvbnRyb2xs
ZXIgdXNlcyBhIGRpZmZlcmVudCBzZXQgb2Ygc3VwcGxpZXMsIG1ha2luZyBpdAppbmNvbXBhdGli
bGUgd2l0aCBNVDgxOTUuIFRoaXMgY29tbWl0IGFkZHMgYSBjb21wYXRpYmxlIHN0cmluZyBmb3Ig
bXQ4MTk2CmFuZCB1cGRhdGVzIHRoZSBiaW5kaW5nLiBJdCBhbHNvIG5vdGVzIHRoYXQgdGhlIEFW
REQwOV9VRlMgYW5kIEFWREQwOV9VRlNfMQpwaW5zIGFyZSBjb21tb25lZCB0b2dldGhlciBvbiB0
aGUgcmVmZXJlbmNlZCBib2FyZC4KCj4gV2hpbGUgaXQgZG9lcyBoYXZlIGEgQVZERDA5X1VGU18x
IHBpbiBpbiBhZGRpdGlvbiB0byB0aGUgQVZERDA5X1VGUyBwaW4sCj4gaXQgYXBwZWFycyB0aGF0
IHRoZXNlIHR3byBwaW5zIGFyZSBjb21tb25lZCB0b2dldGhlciwgYXMgdGhlIGJvYXJkCj4gc2No
ZW1hdGljIEkgaGF2ZSBhY2Nlc3MgdG8gdXNlcyB0aGUgc2FtZSBzdXBwbHkgZm9yIGJvdGgsIGFu
ZCB0aGUKPiBkb3duc3RyZWFtIGRyaXZlciBkb2VzIG5vdCBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRo
ZSB0d28gc3VwcGxpZXMgZWl0aGVyLgoKW1NldmVyaXR5OiBMb3ddCkRvZXMgb21pdHRpbmcgYSBz
ZXBhcmF0ZSBzdXBwbHkgcHJvcGVydHkgZm9yIHRoZSBBVkREMDlfVUZTXzEgcGluIHZpb2xhdGUg
dGhlCnByaW5jaXBsZSB0aGF0IERldmljZSBUcmVlIGJpbmRpbmdzIHNob3VsZCBkZXNjcmliZSB0
aGUgU29DIGhhcmR3YXJlIHJhdGhlcgp0aGFuIGEgc3BlY2lmaWMgYm9hcmQncyBwb3dlciByb3V0
aW5nPwoKSWYgYSBmdXR1cmUgYm9hcmQgZGVzaWduIHN1cHBsaWVzIHRoZSBBVkREMDlfVUZTIGFu
ZCBBVkREMDlfVUZTXzEgcGlucyBmcm9tCnNlcGFyYXRlIHZvbHRhZ2UgcmVndWxhdG9ycywgdGhl
IGN1cnJlbnQgYmluZGluZyB3b3VsZG4ndCBiZSBhYmxlIHRvIGFjY3VyYXRlbHkKZGVzY3JpYmUg
dGhhdCBoYXJkd2FyZS4KCldoaWxlIHJldmlld2luZyB0aGUgZmlsZSB0b3VjaGVkIGJ5IHRoaXMg
cGF0Y2gsIEkgbm90aWNlZCBhIHJlZ3Jlc3Npb24gaW4gdGhlCmNvbmRpdGlvbmFsIGJsb2NrIGZv
ciB0aGUgbXQ4MTkyLXVmc2hjaSBjb21wYXRpYmxlIHN0cmluZzoKCkRvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91ZnMvbWVkaWF0ZWssdWZzLnlhbWw6YWxsT2YKPiAgIC0gaWY6Cj4g
ICAgICAgcHJvcGVydGllczoKPiAgICAgICAgIGNvbXBhdGlibGU6Cj4gICAgICAgICAgIGNvbnRh
aW5zOgo+ICAgICAgICAgICAgIGNvbnN0OiBtZWRpYXRlayxtdDgxOTItdWZzaGNpCj4gICAgIHRo
ZW46Cj4gICAgICAgcHJvcGVydGllczoKPiAgICAgICAgIGNsb2NrczoKPiAgICAgICAgICAgbWlu
SXRlbXM6IDMKPiAgICAgICAgICAgbWF4SXRlbXM6IDMKPiAgICAgICAgIGNsb2Nrcy1uYW1lczoK
PiAgICAgICAgICAgbWluSXRlbXM6IDMKPiAgICAgICAgICAgbWF4SXRlbXM6IDMKCltTZXZlcml0
eTogTWVkaXVtXQpJcyB0aGUgImNsb2Nrcy1uYW1lcyIgcHJvcGVydHkgYSB0eXBvIGhlcmU/IEl0
IHNlZW1zIGxpa2UgdGhpcyBzaG91bGQgYmUKImNsb2NrLW5hbWVzIi4KCkJlY2F1c2Ugb2YgdGhl
IHR5cG8sIHRoZSBsZW5ndGggb2YgdGhlIGNsb2NrLW5hbWVzIGFycmF5IGlzIG5vdCBwcm9wZXJs
eQpjb25zdHJhaW5lZCBmb3IgbXQ4MTkyLXVmc2hjaS4gQW4gaW52YWxpZCBkZXZpY2UgdHJlZSB3
aXRoIDMgY2xvY2tzIGJ1dCBhCm1pc21hdGNoZWQgbnVtYmVyIG9mIGNsb2NrLW5hbWVzIGNvdWxk
IHNpbGVudGx5IHBhc3MgZHRfYmluZGluZ19jaGVjayB2YWxpZGF0aW9uLgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMC1tdDgx
OTYtdWZzLXYxMC0wLWJjNWVjZWYyMDJkY0Bjb2xsYWJvcmEuY29tP3BhcnQ9MwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

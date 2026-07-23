Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 463E8C531CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 08:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wo/+TdXme73v0M7eVFQ/RYribgwZjrYNzxLAQ7ZzUMc=; b=L2T0Cn3q6ASu+g
	7cH3ap8h2WODi6ydUSsBvI4sW+cgAC7zM/X4Nr3Yo3EZdFvZf6nnbouRgi3MeTmh+OwTh39/9DIm2
	MvsWILsF0ndHngjKs83nKsuR8DsSndqTYB7zZc8qmEM001A4LtvYC+l8wD9iMDgf62kaxtlX1bgcO
	anj8KZ4n5BucHOn3LxykoHqx4DiSHRgwzo15N+1sOOCvIXX7iDLtQbh6IBWPWRy0jS8IPEXaCcGQU
	c2tQtTNc6gJrczvumHMVCVy0Y1lq3O7jDEIYKkotxqMGhuwLu7V6wfrg2LLROw0qsRf9sT0PwSyGh
	0XmULrQkyCxTDlhz21GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmp61-0000000DmIN-3wxm;
	Thu, 23 Jul 2026 08:48:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmp60-0000000DmI8-1TMA
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 08:48:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D74924346C;
	Thu, 23 Jul 2026 08:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BBF81F000E9;
	Thu, 23 Jul 2026 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784796479;
	bh=lCJfs2334AP5Ui00qhLYvVq9O7LnNTY3IJ06v6XgRUo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SQ/kXVi4U75YYoCT1y/3EYasCbVzDq9AAZvLTathrgRBXyjp4NsqgjnQdL5I/2tTo
	 gg+AC0xTScLMnu+MPdSJHyxDx8TP4A/F+hxa5HxYXKLxjM8Tx53zLnh+pp0XSrmPKj
	 1PebzDgc2uRn4bD9EJRTNXR9+7KdX7GsRY2T5H5KJvwtVmoa0us3C9eHlO+YSmwPwW
	 t4nX+fBgNw21H4OcW/aozMs323bWzxOxjNgEP/z2WspgbV5XkqGbOM1HyN5ll/UTJA
	 Wz+uqpiydfw0DBIIpcXs14WJSr/ANR7hCbzLW+f1V97OEF+ed3bFNjfjTSE/T4G33I
	 uK2WnUenlieUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add binding for T-Head TH1520
 USB PHY
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
Cc: vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260723084316.3573714-2-zhengxingda@iscas.ac.cn>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
 <20260723084316.3573714-2-zhengxingda@iscas.ac.cn>
Date: Thu, 23 Jul 2026 08:47:57 +0000
Message-Id: <20260723084759.3BBF81F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlICdyZWcnIHBy
b3BlcnR5IGlzIG9taXR0ZWQgZnJvbSB0aGUgJ3JlcXVpcmVkJyBsaXN0IGZvciBhIG1lbW9yeS1t
YXBwZWQgUEhZLgotIFtNZWRpdW1dIFRoZSAnYXZkZDMzLXVzYjMtc3VwcGx5JyBpcyBvbWl0dGVk
IGZyb20gdGhlICdyZXF1aXJlZCcgbGlzdCBiYXNlZCBvbiBzb2Z0d2FyZSBsaW1pdGF0aW9ucyBy
YXRoZXIgdGhhbiBoYXJkd2FyZSBkZXNjcmlwdGlvbi4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRD
SCB2MiAxLzJdIGR0LWJpbmRpbmdzOiBwaHk6IGFkZCBiaW5kaW5nIGZvciBULUhlYWQgVEgxNTIw
IFVTQiBQSFkgLS0tCmNvbW1pdCA5MWI0ODQwZWUxNTM2NDEzN2ZhY2IxOTA1NTgwZDRkZjJiYTU3
NjYzCkF1dGhvcjogSWNlbm93eSBaaGVuZyA8emhlbmd4aW5nZGFAaXNjYXMuYWMuY24+CgpkdC1i
aW5kaW5nczogcGh5OiBhZGQgYmluZGluZyBmb3IgVC1IZWFkIFRIMTUyMCBVU0IgUEhZCgpUaGlz
IGNvbW1pdCBhZGRzIGEgZGV2aWNlIHRyZWUgYmluZGluZyBmb3IgdGhlIFQtSGVhZCBUSDE1MjAg
VVNCIFBIWSwKd2hpY2ggaXMgYSBTeW5vcHN5cyBVU0IgMy4wIEZlbXRvUEhZIHdpdGggY3VzdG9t
IGdsdWUgbG9naWMuCgo+IENoYW5nZXMgaW4gdjI6Cj4gLSBMaWZ0ZWQgYXZkZDMzLXVzYjMtc3Vw
cGx5IGZyb20gcmVxdWlyZWQgcHJvcGVydGllcyBsaXN0LiBCZWNhdXNlIG9mCj4gICB0aGlzIHRo
ZSBSLWIgZnJvbSBDb25vciBpc24ndCBhZGRlZCB5ZXQgZm9yIHJlY29uZmlybWF0aW9uLiAoVGhl
Cj4gICByZWxhdGVkIHJlZ3VsYXRvciBpc24ndCB5ZXQgY29udHJvbGxhYmxlIGJlY2F1c2Ugbm8g
ZHJpdmVyIGlzCj4gICBhdmFpbGFibGUuKQoKW1NldmVyaXR5OiBNZWRpdW1dClNpbmNlIGRldmlj
ZSB0cmVlIGJpbmRpbmdzIG11c3QgZGVzY3JpYmUgaGFyZHdhcmUgaW5kZXBlbmRlbnRseSBvZiBz
b2Z0d2FyZQpzdGF0ZSwgc2hvdWxkbid0IHRoaXMgcGh5c2ljYWwgc3VwcGx5IGJlIHJlcXVpcmVk
IGlmIHRoZSBoYXJkd2FyZSBtYW5kYXRlcyBpdD8KClNvZnR3YXJlIGxpbWl0YXRpb25zIGFyZSB0
eXBpY2FsbHkgaGFuZGxlZCBpbiB0aGUgYm9hcmQgRFRTIChlLmcuLCB1c2luZyBhCmZpeGVkLXJl
Z3VsYXRvciksIHJhdGhlciB0aGFuIGNvbXByb21pc2luZyB0aGUgZ2VuZXJpYyBoYXJkd2FyZSBz
Y2hlbWEuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3RoZWFkLHRoMTUyMC11c2ItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3RoZWFkLHRoMTUyMC11c2ItcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3RoZWFkLHRoMTUyMC11c2ItcGh5LnlhbWwKWyAuLi4gXQo+ICtyZXF1aXJlZDoK
PiArICAtIGNvbXBhdGlibGUKPiArICAtICIjcGh5LWNlbGxzIgo+ICsgIC0gY2xvY2tzCj4gKyAg
LSBjbG9jay1uYW1lcwo+ICsgIC0gcmVzZXRzCj4gKyAgLSByZXNldC1uYW1lcwoKW1NldmVyaXR5
OiBNZWRpdW1dClNpbmNlIHRoaXMgaXMgYSBtZW1vcnktbWFwcGVkIFBIWSwgc2hvdWxkbid0IHRo
ZSByZWcgcHJvcGVydHkgYmUgaW5jbHVkZWQgaW4KdGhlIHJlcXVpcmVkIGxpc3Q/CgpXaXRob3V0
IGl0LCBkZXZpY2UgdHJlZSBub2RlcyBtaXNzaW5nIHRoZSByZWcgcHJvcGVydHkgd2lsbCBzaWxl
bnRseSBwYXNzCnNjaGVtYSB2YWxpZGF0aW9uLCBsZWFkaW5nIHRvIGluY29tcGxldGUgaGFyZHdh
cmUgZGVzY3JpcHRpb25zIHRoYXQgZmFpbCBhdApydW50aW1lLgoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMzA4NDMxNi4zNTcz
NzE0LTEtemhlbmd4aW5nZGFAaXNjYXMuYWMuY24/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

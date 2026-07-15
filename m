Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FEB7C44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xP9h4cl5oX/6mbFp9+6GU3AQMCGqA7BZdrZRpwUT7Zo=; b=iQxD8/iLiywVB5
	R97i8GEs2JWbsGsJPz9GOx2aa1l06s5iVPFOiX1Gna+ATxezm5pokG8zUMHCp4kuimWmBEPNoF1e1
	TK/oeuN+IY1ToT7FTfQL0Hxwfkz3FL6dOEIu5uYnBWBn1KH+XBGeuZXUNIWvLluuInHJ6EdTjNq20
	p9bFLFwYWSO8AS3+suuHxfHW9OTcpohT6/tqJbo3lU9FYbkRH+B3kCFe3Fb7GW3pdcXKLqb25bwMf
	j13BNARLAQORJAIOLFLJeH58skem/KrG22UgeXEUH3AxgexzzriHaOKOkceS38vCztI0SdYF8Wit/
	fwdS3KgLsRLgeEMYAxiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54K-0000000Fly1-38yi;
	Wed, 15 Jul 2026 19:14:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54H-0000000FlwJ-31qm
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:14:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1E51361838;
	Wed, 15 Jul 2026 19:14:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5784D1F00A3D;
	Wed, 15 Jul 2026 19:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784142890;
	bh=LaUTGNXIKTQxykhOsEkVPArO+SO+J/GC0U043647SAI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EhBlaQcpkcZzFzgLQezNiz/JQm+/OHBpiTW7XUoUu4l9OfRwa+QPHywn1QwQ7vrO2
	 6CgM1yXDsVo6iJbPmxkoRwv3YBefHnBB+EmdKoqt1oKTKnROFu/eLrBGpSa0x88iZB
	 cQuyG+0TzqyU3Mr9xgBSRZg8lHm2ebzRZ3TblcgkHU22STNeL7pgLpUYwomjbka0Fo
	 YcwUnVGHCHKwD28eT4Se5D1rQz7IEXcJKZo/aagkkUFd7Prr7JuE4QVypCdkxp3Szy
	 WCIQdFzwDCVSfgYlt8x1bWHPmpg3U7a8g4rhrdHb5Se3nlHeHXENo0JdXDSBbJ4eLs
	 cmzAaTPe5ChLg==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 03/10] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: "Coia Prant" <coiaprant@gmail.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260714191341.690906-4-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-4-coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 19:14:49 +0000
Message-Id: <20260715191450.5784D1F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwYXRjaCBicmVh
a3MgZGV2aWNlIHRyZWUgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBieSBmb3JjaW5nIHRoZSBTR01J
SSBNQUMgc2VsZWN0aW9uIHRvIEdNQUMwIHdoZW4gdGhlIG9wdGlvbmFsIGByb2NrY2hpcCxzZ21p
aS1tYWMtc2VsYCBwcm9wZXJ0eSBpcyBhYnNlbnQsIG92ZXJyaWRpbmcgdGhlIGhhcmR3YXJlIGRl
ZmF1bHQuCi0tCgotLS0gUGF0Y2ggWzNdOiBbUkZDIFBBVENIIDAzLzEwXSBwaHk6IHJvY2tjaGlw
OiBuYW5lbmctY29tYnBoeTogYWRkIFNHTUlJIE1BQyBzZWxlY3Rpb24gZm9yIFJLMzU2OCAtLS0K
Y29tbWl0IDYwNWY4NjkzNmZkMjMxMDkyYWI4NDg5ZjE1ZGY1MDc3MDIyNTU5MTIKQXV0aG9yOiBD
b2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKcGh5OiByb2NrY2hpcDogbmFuZW5nLWNv
bWJwaHk6IGFkZCBTR01JSSBNQUMgc2VsZWN0aW9uIGZvciBSSzM1NjgKClRoaXMgY29tbWl0IGFk
ZHMgc3VwcG9ydCBmb3Igcm91dGluZyB0aGUgU0dNSUkgaW50ZXJmYWNlIHRvIGVpdGhlciBHTUFD
MApvciBHTUFDMSBvbiBSSzM1NjggYnkgaW50cm9kdWNpbmcgdGhlIHJvY2tjaGlwLHNnbWlpLW1h
Yy1zZWwgRFQgcHJvcGVydHkuCgpMaW5rOiBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrMy9kb2Nz
L2h3L2RhdGFzaGVldC9Sb2NrY2hpcCUyMFJLMzU2OCUyMFRSTSUyMFBhcnQxJTIwVjEuMS0yMDIx
MDMwMS5wZGYgKFBhZ2UgMjI5KQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKClsgLi4uIF0KCj4gQEAgLTM3NSw2ICszNzcs
OSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2NvbWJwaHlfcGFyc2VfZHQoc3RydWN0IGRldmljZSAq
ZGV2LCBzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeQo+ICAKPiAgCXByaXYtPmV4dF9yZWZjbGsgPSBk
ZXZpY2VfcHJvcGVydHlfcHJlc2VudChkZXYsICJyb2NrY2hpcCxleHQtcmVmY2xrIik7Cj4gIAo+
ICsJcHJpdi0+c2dtaWlfbWFjX3NlbCA9IDA7Cj4gKwlkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIo
ZGV2LCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIsICZwcml2LT5zZ21paV9tYWNfc2VsKTsKPiAr
Cj4gIAlwcml2LT5waHlfcnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoZGV2
LCAicGh5Iik7CgpbIC4uLiBdCgo+IEBAIC04NzMsNiArODc4LDggQEAgc3RhdGljIGludCByazM1
NjhfY29tYnBoeV9jZmcoc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiAqcHJpdikKPiAgCQli
cmVhazsKPiAgCj4gIAljYXNlIFBIWV9UWVBFX1NHTUlJOgo+ICsJCXJvY2tjaGlwX2NvbWJwaHlf
cGFyYW1fd3JpdGUocHJpdi0+cGlwZV9ncmYsICZjZmctPnBpcGVfc2dtaWlfbWFjX3NlbCwKPiAr
CQkJCQlwcml2LT5zZ21paV9tYWNfc2VsID4gMCk7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhp
cyBicmVhayBkZXZpY2UgdHJlZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5PwoKV2hlbiB0aGUgcm9j
a2NoaXAsc2dtaWktbWFjLXNlbCBwcm9wZXJ0eSBpcyBtaXNzaW5nIGZyb20gYW4gb2xkZXIgZGV2
aWNlCnRyZWUsIHByaXYtPnNnbWlpX21hY19zZWwgZGVmYXVsdHMgdG8gMCBpbiByb2NrY2hpcF9j
b21icGh5X3BhcnNlX2R0KCkuCgpCeSB1bmNvbmRpdGlvbmFsbHkgY2FsbGluZyByb2NrY2hpcF9j
b21icGh5X3BhcmFtX3dyaXRlKCkgaGVyZSwgdGhlIGRyaXZlcgpub3cgYWN0aXZlbHkgY2xlYXJz
IHRoZSBNQUMgc2VsZWN0aW9uIGJpdCB0byAwIChHTUFDMCkuCgpCZWNhdXNlIHRoZSBoYXJkd2Fy
ZSByZXNldCB2YWx1ZSBpcyBHTUFDMSwgdGhpcyBhY3RpdmVseSBvdmVycmlkZXMgdGhlIGRlZmF1
bHQKaGFyZHdhcmUgYW5kIGJvb3Rsb2FkZXIgc3RhdGUgdGhhdCBvbGRlciBkZXZpY2UgdHJlZXMg
d2VyZSByZWx5aW5nIG9uLgoKQ291bGQgdGhlIGNvZGUgY2hlY2sgaWYgdGhlIHByb3BlcnR5IHdh
cyBhY3R1YWxseSBwcmVzZW50IGJlZm9yZSB3cml0aW5nCnRvIHRoZSByZWdpc3RlciwgdG8gZW5z
dXJlIHRoZSBoYXJkd2FyZSBkZWZhdWx0IGlzIHByZXNlcnZlZCBmb3IgZXhpc3RpbmcKc2V0dXBz
PwoKPiAgCQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBpcGVfZ3JmLCAmY2Zn
LT5waXBlX3hwY3NfcGh5X3JlYWR5LCB0cnVlKTsKPiAgCQlyb2NrY2hpcF9jb21icGh5X3BhcmFt
X3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnBpcGVfcGh5bW9kZV9zZWwsIHRydWUpOwoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDcxNDE5MTM0MS42OTA5MDYtMS1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AF2C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RsK4XhQB5Hwm9t4Im3FQIKgheu1Wmo2ZbY0KqDBli0=; b=0cK8YhdzBi/ft0
	gYO9LNM7nufhKBed6/b1R2tYkF0UnLA+kwE3sh/Iu6jtEtC2Fwb59C/Q1qfo8HCr+tYY6bz0hF4Pw
	o0gL7XNSIjOKfe7dMfcqUPu+a9NHI+FZxEv38JsWKzhg1fsd8r9T7tswyPzMJxirjpXxdMXzG7Beb
	4qaboB/SL1Yv1w6lqW2rtGLElxcXWYh/GPOJw0cXcgitgjrXPLI2XKA/VKd+JZXmn4FGg7doJG7G2
	fZ2W7UB4r7e6lc3h9m5zBg1jU+uNXSygrLuhxeAmvCHxNcbow6//jK8f8KVmZtpc0Vxc4Y9cGmD0m
	/mS2Q6ZTZQat8/cUAqfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDwm-0000000BtpI-1g7W;
	Fri, 26 Jun 2026 21:18:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDwk-0000000BtpC-2TFp
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:18:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DEB02600AA;
	Fri, 26 Jun 2026 21:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182AD1F000E9;
	Fri, 26 Jun 2026 21:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508725;
	bh=kJDWhwpIegHAhg50uijjwBHDJLTPo5vc4osFFAqo36E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G9Acj8kINyLKX5gQ/grqaH68ZQdbEScJHvXourk4J+0OvTKUb7zZ2lMWLNnVcb2SX
	 gDq1V5hkXbCRD0izCi8cZBbKPk8nn1TfoW1CYhojv6KAk7kcgGVionJSEJyttI+nij
	 zYDCad1E+UEWR5lFD1ATbp4S3KBwT31iBc+UEwucrqvsLjYiSzyekH6ghMXV5mJgnA
	 mq3qMXks9ZcLGHJzlUXuCyfPy4TEPTAtfkVOVjn4bzv94gtJZBeHoBu8UMvwHVizCY
	 ufyySeCMtHl64jW3XUJkJkF98w7a0mzpC6+o7GtBdytXOxoSWR6n+dijCVzferx11V
	 QYZPisp7D7Eow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 20/29] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-20-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-20-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:18:44 +0000
Message-Id: <20260626211845.182AD1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBIYXJkd2FyZSBsYW5lIG11eGluZyBpcyBuZXZlciBhY3RpdmVseSB1cGRhdGVkIGZv
ciBVU0Itb25seSBkZXZpY2VzIHVwb24gcmVwbHVnIG9yIG9yaWVudGF0aW9uIGNoYW5nZSwgYnJl
YWtpbmcgVVNCIFN1cGVyU3BlZWQgaW4gcmV2ZXJzZSBvcmllbnRhdGlvbiBvbiBwb3J0cyB0aGF0
IGRvIG5vdCBwb3dlci1jeWNsZSB0aGUgUEhZLgotLQoKY29tbWl0IDUyYjY1NmVmNDFjMDNmYTk5
MzJjNTZmODg1MDUwMjcyMjVlMDVkOTYKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0
aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0
IHRoZSBQSFkgb24gb3JpZW50YXRpb24gY2hhbmdlCgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBk
cml2ZXIgdG8gcmVjb3JkIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5nZXMgYW5kIHNldCB0aGUKcGh5
X25lZWRzX3JlaW5pdCBmbGFnLiBJdCBhaW1zIHRvIGZpeCBEUCBmdW5jdGlvbmFsaXR5IGJyZWFr
aW5nIHdoZW4gdGhlIGNhYmxlCmlzIHJlLXBsdWdnZWQgd2l0aCBhIHN3YXBwZWQgb3JpZW50YXRp
b24uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXgg
MWJiMjJmYzE4YzlmOS4uM2QyMjI3NjhkYzNjOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTYyNiw2ICs2MjYsNyBAQCBzdGF0aWMgaW50IHJr
X3VkcGh5X29yaWVuX3N3X3NldChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCj4gIAkJCQkg
ZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbikKPiAgewo+ICAJc3RydWN0IHJrX3VkcGh5ICp1
ZHBoeSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShzdyk7Cj4gKwlib29sIGZsaXBwZWQgPSBv
cmllbiA9PSBUWVBFQ19PUklFTlRBVElPTl9SRVZFUlNFOwo+ICAKPiAgCW11dGV4X2xvY2soJnVk
cGh5LT5tdXRleCk7Cj4gIAo+IEBAIC02MzcsNyArNjM4LDEwIEBAIHN0YXRpYyBpbnQgcmtfdWRw
aHlfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgCQlnb3RvIHVu
bG9ja19yZXQ7Cj4gIAl9Cj4gIAo+IC0JdWRwaHktPmZsaXAgPSBvcmllbiA9PSBUWVBFQ19PUklF
TlRBVElPTl9SRVZFUlNFOwo+ICsJaWYgKHVkcGh5LT5mbGlwICE9IGZsaXBwZWQpCj4gKwkJdWRw
aHktPnBoeV9uZWVkc19yZWluaXQgPSB0cnVlOwo+ICsKPiArCXVkcGh5LT5mbGlwID0gZmxpcHBl
ZDsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRv
ZXMgdGhpcyBhY3R1YWxseSBmbHVzaCB0aGUgcmUtaW5pdGlhbGl6YXRpb24KdG8gdGhlIGhhcmR3
YXJlIGlmIHRoZSBVU0IgUEhZIGlzIGFscmVhZHkgcnVubmluZz8KCldoZW4gYSB1c2VyIHJlcGx1
Z3MgYSBVU0Itb25seSBUeXBlLUMgZGV2aWNlIGluIHJldmVyc2Ugb3JpZW50YXRpb24gb24gYSBw
b3J0CndoZXJlIHRoZSBVU0IgY29udHJvbGxlciBkb2VzIG5vdCBwb3dlci1jeWNsZSB0aGUgUEhZ
IG9uIHVucGx1ZywgZm9yIGV4YW1wbGUgaW4KaG9zdCBtb2RlLCBya191ZHBoeV9vcmllbl9zd19z
ZXQoKSBub3RlcyB0aGUgb3JpZW50YXRpb24gY2hhbmdlIGFuZCBzZXRzCnVkcGh5LT5waHlfbmVl
ZHNfcmVpbml0ID0gdHJ1ZS4KCkhvd2V2ZXIsIGJlY2F1c2UgdGhlIFVTQiBjb250cm9sbGVyIGtl
ZXBzIHRoZSBQSFkgcG93ZXJlZCBvbiwKdWRwaHktPnN0YXR1cyAmIFVEUEhZX01PREVfVVNCIHJl
bWFpbnMgdHJ1ZS4KCldoZW4gcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpIGlzIGNhbGxlZCBsYXRl
ciB0byBoYW5kbGUgdGhlIG11eCBldmVudCwgaXQKYXBwZWFycyB0byBza2lwIGFjdGl2ZWx5IHJl
LWluaXRpYWxpemluZyB0aGUgUEhZIGlmIHRoZSBVU0IgbW9kZSBpcyBhbHJlYWR5CmFjdGl2ZToK
CiAgICBpZiAoKHVkcGh5LT5tb2RlICYgVURQSFlfTU9ERV9VU0IpICYmICEodWRwaHktPnN0YXR1
cyAmIFVEUEhZX01PREVfVVNCKSAmJgogICAgICAgIHVkcGh5LT51c2JfaW5fdXNlICYmICF1ZHBo
eS0+aHMpCiAgICAgICAgcmV0dXJuIHJrX3VkcGh5X3Bvd2VyX29uKHVkcGh5LCBVRFBIWV9NT0RF
X1VTQik7CgogICAgcmV0dXJuIDA7CgpDb3VsZCB0aGlzIGxlYXZlIHRoZSBoYXJkd2FyZSBzdHVj
ayBpbiB0aGUgb2xkIG9yaWVudGF0aW9uIHN0YXRlIGFuZCBicmVhayBVU0IKU3VwZXJTcGVlZCwg
Y2F1c2luZyBpdCB0byBmYWxsIGJhY2sgdG8gVVNCIDIuMCB1cG9uIHJldmVyc2UgcmVwbHVnPwoK
PiAgCXJrX3VkcGh5X3NldF90eXBlY19kZWZhdWx0X21hcHBpbmcodWRwaHkpOwo+ICAJcmtfdWRw
aHlfdXNiX2J2YWxpZF9lbmFibGUodWRwaHksIHRydWUpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyNi1yb2NrY2hpcC11c2Jk
cC1jbGVhbnVwLXY4LTAtNDdmNjgyOTg3ODk1QGNvbGxhYm9yYS5jb20/cGFydD0yMAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

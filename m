Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FD6C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7rmYMRIC+mQ0dp5+RSrWh2U9+6hGtO5IjP356cIeRI=; b=3XQCrEwfTu56Ry
	PJS1MxuHfGAe3FIyReRTC/9FUvvPiS7vCVQfW/neJCiRZKCHXbs28z630luizHVc1AUxvO4aD+YMm
	lq99guXCtTyUtX0SzXvU5BHhslf5EVQJL+ZOQKoXdamgHqWEaCoxjYKWrUVJP2uRmIUuyRm9Jp7lJ
	0ulRNKarLnKNKefJDyc5EbtyPkqNFCkUhktpi8Qoy0ssdjpvx9gadiEA8y8eWPy6fGjy+zVSs0dBK
	cmlKYUXFFX9PKudz59SelmPrWsMJXIxE6MWUDfcrLK66CWB/gI86EYBp0c+WVCz63at4uh0j+rxfY
	34YGbW0lrzv83VH6gyIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIbW-00000005n0g-122d;
	Fri, 10 Jul 2026 21:17:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIbU-00000005n0R-3KRL
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:17:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 22BBF60052;
	Fri, 10 Jul 2026 21:17:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53B981F000E9;
	Fri, 10 Jul 2026 21:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718267;
	bh=J21CImOksovrOYuVYaZdWQYvBKjp1a6itO/Eo0bE9gY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YbAJDl69jzrNIXnDNc32KCPRIfhT+qafoWYUqWrIZbTm3+DLq9n+f+hGRJnj471td
	 vKO7A5ztPlisIr/QUlzipqS4H0Z1ShwIU3LvM0aG4bSjW53U80VivdQv0ainBTvl5D
	 Pj16L1u4rljBZeRrpclRWLMX9ydCJ0YyDqB9X7Y+AegMwUzqt2VLaiLNdoyue7ZDQb
	 ZDIJSvjPEW8z5m+5KCxjVDMmbJI6faiKmPUE7ynSSwhIsRutV8xjaIFp2jl1MBwPGL
	 vmWpy+R3HUAdegmvk0765P5h8jfQtr+JOu5JlwaScsrq/JKzLqfYmIoNOvjF8vXc7F
	 I5G/Ct4XbG0RA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 23/36] phy: rockchip: usbdp: Clear USB status on PHY
 exit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-23-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-23-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:17:46 +0000
Message-Id: <20260710211747.53B981F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBD
bGVhcmluZyB0aGUgVVNCIHN0YXR1cyBmbGFnIHdpdGhvdXQgY2hlY2tpbmcgaWYgdGhlIFBIWSBz
aG91bGQgYmUgY29tcGxldGVseSBkaXNhYmxlZCBsZWFkcyB0byBhIGNsb2NrIHJlZmVyZW5jZSBh
bmQgUEhZIHBvd2VyIGxlYWsuCgpQcmUtZXhpc3RpbmcgaXNzdWVzOgotIFtIaWdoXSBUaGUgYHJr
X3VkcGh5X2RwX3BoeV9jb25maWd1cmVgIGZ1bmN0aW9uIGFjY2Vzc2VzIGFuZCBtb2RpZmllcyBz
aGFyZWQgUEhZIGRyaXZlciBzdGF0ZSB3aXRob3V0IGhvbGRpbmcgdGhlIHByb3BlciBzdWJzeXN0
ZW0gbG9jayAoYHVkcGh5LT5tdXRleGApLgotLQoKLS0tIFBhdGNoIFsyM106IFtQQVRDSCB2MTIg
MjMvMzZdIHBoeTogcm9ja2NoaXA6IHVzYmRwOiBDbGVhciBVU0Igc3RhdHVzIG9uIFBIWSBleGl0
IC0tLQpjb21taXQgODc3ODBkNDdiNGRhNDA3OGFkYjE2ODRjYTllYmI2ZmMwNTI5ZDg2YwpBdXRo
b3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoK
cGh5OiByb2NrY2hpcDogdXNiZHA6IENsZWFyIFVTQiBzdGF0dXMgb24gUEhZIGV4aXQKICAgIApF
bnN1cmUgdGhlIFVTQiBzdGF0dXMgZmxhZyBpcyBjbGVhcmVkIHdoZW4gdGhlIFVTQjMgUEhZIGlz
CmV4aXRlZCB3aGlsZSB0aGUgc3lzdGVtIGlzIGluIERQLW9ubHkgbW9kZS4KCkNsb3NlczogaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL21lc3NhZ2UvMjAyNjA2MjUtcm9ja2NoaXAtdXNiZHAtY2xlYW51
cC12Ny0yNC0zOGViM2NmNjU0ZmQlNDBjb2xsYWJvcmEuY29tCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggOGMxNjViY2FiNzk2OC4uYTc0MmJkZTcx
NTViZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4g
QEAgLTEyNzMsOCArMTI3MywxMCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X3VzYjNfcGh5X2V4aXQo
c3RydWN0IHBoeSAqcGh5KQo+ICAJZ3VhcmQobXV0ZXgpKCZ1ZHBoeS0+bXV0ZXgpOwo+ICAKPiAg
CS8qIERQIG9ubHkgb3IgaGlnaC1zcGVlZCAqLwo+IC0JaWYgKCEodWRwaHktPm1vZGUgJiBVRFBI
WV9NT0RFX1VTQikgfHwgdWRwaHktPmhzKQo+ICsJaWYgKCEodWRwaHktPm1vZGUgJiBVRFBIWV9N
T0RFX1VTQikgfHwgdWRwaHktPmhzKSB7Cj4gKwkJdWRwaHktPnN0YXR1cyAmPSB+VURQSFlfTU9E
RV9VU0I7Cj4gIAkJcmV0dXJuIDA7Cj4gKwl9CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBl
YXJseSByZXR1cm4gYnlwYXNzIHJrX3VkcGh5X2Rpc2FibGUoKSBpZiB0aGUgUEhZIHNob3VsZCBi
ZSBjb21wbGV0ZWx5CmRpc2FibGVkPwoKSWYgdGhlIERQIHNpZGUgaXMgbm90IGFjdGl2ZSwgdWRw
aHktPnN0YXR1cyBkcm9wcyB0byBVRFBIWV9NT0RFX05PTkUgKDApIGhlcmUuCkJlY2F1c2UgdGhl
IGZ1bmN0aW9uIHJldHVybnMgZWFybHksIGl0IGJ5cGFzc2VzIHJrX3VkcGh5X3Bvd2VyX29mZigp
IGFuZCBmYWlscwp0byBjYWxsIHJrX3VkcGh5X2Rpc2FibGUodWRwaHkpLgoKV2lsbCB0aGlzIGxl
YXZlIHRoZSBQSFkgaGFyZHdhcmUgcGVybWFuZW50bHkgcG93ZXJlZCBvbiBhbmQgdGhlIGNsb2Nr
IGNvdW50cwp1bmJhbGFuY2VkPwoKVGhlIG5leHQgdGltZSB0aGUgUEhZIGlzIHBvd2VyZWQgb24s
IHN0YXR1cyA9PSAwIHdvdWxkIGNhdXNlIGFub3RoZXIgY2FsbCB0bwpya191ZHBoeV9zZXR1cCgp
LCB3aGljaCBjYWxscyBjbGtfYnVsa19wcmVwYXJlX2VuYWJsZSgpIGFnYWluLCBjYXVzaW5nIGEK
Y3VtdWxhdGl2ZSBjbG9jayByZWZlcmVuY2UgbGVhay4KCj4gIAo+ICAJcmtfdWRwaHlfcG93ZXJf
b2ZmKHVkcGh5LCBVRFBIWV9NT0RFX1VTQik7CgpbIC4uLiBdCgpkcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCkgewogICAg
Li4uCiAgICBzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7CiAg
ICBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICpkcCA9ICZvcHRzLT5kcDsKICAgIHUzMiBp
LCB2YWwsIGxhbmU7CiAgICBpbnQgcmV0OwoKICAgIGlmIChkcC0+c2V0X3JhdGUpIHsKICAgIC4u
Lgp9CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBk
b2VzIHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSBhY2Nlc3MgYW5kCm1vZGlmeSBzaGFyZWQg
UEhZIGRyaXZlciBzdGF0ZSB3aXRob3V0IGhvbGRpbmcgdGhlIHByb3BlciBzdWJzeXN0ZW0gbG9j
az8KClRoZSBQSFkgY29yZSBmcmFtZXdvcmsgY2FsbHMgLmNvbmZpZ3VyZSB3aGljaCByZWFkcyB1
ZHBoeS0+ZHBfbGFuZXMgYW5kCnVkcGh5LT5kcF9sYW5lX3NlbCwgYW5kIHdyaXRlcyB1ZHBoeS0+
bGFuZXMgd2l0aG91dCBhY3F1aXJpbmcgdWRwaHktPm11dGV4LgoKQ29uY3VycmVudGx5LCBhIFR5
cGUtQyBldmVudCBoYW5kbGVkIGJ5IHJrX3VkcGh5X3R5cGVjX211eF9zZXQoKSBvcgpya191ZHBo
eV9vcmllbl9zd19zZXQoKSBtaWdodCBhbHRlciB0aG9zZSBzaGFyZWQgZmllbGRzIHdoaWxlIGhv
bGRpbmcgdGhlIG11dGV4LgoKQ291bGQgdGhpcyByYWNlIGNvbmRpdGlvbiBsZWFkIHRvIHRoZSBo
YXJkd2FyZSBiZWluZyBwcm9ncmFtbWVkIHdpdGgKaW5jb25zaXN0ZW50IGxhbmUgbWFwcGluZ3Mg
ZHVyaW5nIG5vcm1hbCBUeXBlLUMgaG90cGx1ZyBhbmQgRFAgbW9kZXNldHRpbmc/CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzEw
LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjEyLTAtOGI0MWE5YTliZWYwQGNvbGxhYm9yYS5jb20/
cGFydD0yMwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

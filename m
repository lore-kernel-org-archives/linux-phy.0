Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3696BC5DF89
	for <linux-phy@archiver.kernel.org>; Fri, 21 Aug 2026 14:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykWy1n4D+XeG/2CflPtNUfQcCkI+1Izf///wUzdilaA=; b=2V61SPQh/LqTuK
	LS5X78q44lDYasFOWapzIbXP3FT5cjQNV/hOWRMyahe2G2aqd8en83Qmphm0SuvCj0hMiyY1HkKRk
	kymchsOXUXWstWOEkussFbkiNEBsNqb8MSeUWvWEMpnOhJAVx6ncCyxrLI/bA7wiy/tTTMQR6mHBG
	v4e8RSi/7yVlm6bGfJsTQJCmaZdqIkeBJ2HUXuRWAbpInhKzK664Vw5WOh/KGvrSKgkzYHxEPNW/F
	7gWqadE6jWL8Jw985Se2AgmLj8dayM3EegC+UQmaQ5lrpfrAKqqbwMsG74ox4kJs8le4JdiPYDj1E
	XFGeuybyosOgXQ9OF4HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPoa-0000000DUMP-3upF;
	Fri, 21 Aug 2026 14:01:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPoZ-0000000DUM3-11Qm
	for linux-phy@lists.infradead.org;
	Fri, 21 Aug 2026 14:01:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 754FD43EF7;
	Fri, 21 Aug 2026 14:01:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D53A1F000E9;
	Fri, 21 Aug 2026 14:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787320906;
	bh=j+UkI5uYGrqFSRqCJ2A/XSrlRVjmahw9YI1n3CskruM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bxCtd2hWRow+J94WcSaAJuSad0ZDPTqLISgxXn1mIJSKJAh/bnjmkghttM2Qrp5Ia
	 MXHCUeqEwWVCIfm074GJoM/yMVZ6pxkRqQkNPhvGMQuyJBEfeySSJMbU6yBfmIiYo4
	 sLFcPqasJ3RLEZgQV9wWZEHnZlQMtwSzOLjDArxZnC9lDMtacwPI3kAiZT8RNVHQAw
	 wI4a/XXwVmT1wgHh6wiFpwdxybaniYXZiYGDRFM7C4w4Vy70OQHY8QwF2z2ps7Lh0M
	 88k9dLb0z6HfaXwLX6ilOnum7MVhzVSr/fhdotDhmt6LTYHa9sPXyZdlEjjp5o8qyX
	 jk/8JqMGFu5VA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] phy: apple: atc: Implement the USB4 pipehandler
 state
To: "Sven Peter" <sven@kernel.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260821-b4-atcphy-usb4-v1-3-45c0b741e0c0@kernel.org>
References: <20260821-b4-atcphy-usb4-v1-0-45c0b741e0c0@kernel.org>
 <20260821-b4-atcphy-usb4-v1-3-45c0b741e0c0@kernel.org>
Date: Fri, 21 Aug 2026 14:01:45 +0000
Message-Id: <20260821140146.0D53A1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBN
aXNzaW5nIGNsZWFudXAgb2YgYFBJUEVIQU5ETEVSX09WRVJSSURFYCByZWdpc3RlcnMgb24gbG9j
ayBmYWlsdXJlIGxlYXZlcyBsaW5rIGRldGVjdGlvbiBwZXJtYW5lbnRseSBkaXNhYmxlZC4KClBy
ZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWwgc3RhdGUgdXBkYXRlIG9m
IGBhdGNwaHktPnBpcGVoYW5kbGVyX3VwID0gdHJ1ZWAgb24gdGhlIGVycm9yIHBhdGggbWFza3Mg
aGFyZHdhcmUgY29uZmlndXJhdGlvbiBmYWlsdXJlcy4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRD
SCAzLzNdIHBoeTogYXBwbGU6IGF0YzogSW1wbGVtZW50IHRoZSBVU0I0IHBpcGVoYW5kbGVyIHN0
YXRlIC0tLQpjb21taXQgNmI5MGMwNGY4Y2Q0ZTdhM2Y4MThhNGJjMGViMTA1Nzk5NmJiMTg0NQpB
dXRob3I6IFN2ZW4gUGV0ZXIgPHN2ZW5Aa2VybmVsLm9yZz4KCnBoeTogYXBwbGU6IGF0YzogSW1w
bGVtZW50IHRoZSBVU0I0IHBpcGVoYW5kbGVyIHN0YXRlCgpUaGlzIGNvbW1pdCBpbXBsZW1lbnRz
IHRoZSBVU0I0IHBpcGVoYW5kbGVyIHN0YXRlIGZvciB0aGUgQXBwbGUgQVRDIFBIWSBkcml2ZXIu
Ckl0IHN3aXRjaGVzIHRoZSBkd2MzJ3MgUElQRSBpbnRlcmZhY2UgdG8gdGhlIFVTQjQgTkhJIHdo
aWNoIHRha2VzIGNhcmUgb2YKdHVubmVsaW5nIFVTQjMgb3ZlciBVU0I0LgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvYXBwbGUvYXRjLmMgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwo+IGlu
ZGV4IDk2MTU4ZDM0ODY1NjAuLjYxM2JjZDBhZTg4NjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvYXBwbGUvYXRjLmMKPiArKysgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwo+IEBAIC0xMDg0
LDYgKzEwODQsNDEgQEAgc3RhdGljIGludCBhdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX3Vz
YjMoc3RydWN0IGFwcGxlX2F0Y3BoeSAqYXRjcGh5LCBib29sIGgKPiAgCXJldHVybiAwOwo+ICB9
Cj4gIAo+ICtzdGF0aWMgaW50IGF0Y3BoeV9jb25maWd1cmVfcGlwZWhhbmRsZXJfdXNiNChzdHJ1
Y3QgYXBwbGVfYXRjcGh5ICphdGNwaHkpCj4gK3sKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0g
YXRjcGh5X3BpcGVoYW5kbGVyX2NoZWNrKGF0Y3BoeSk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVy
biByZXQ7Cj4gKwo+ICsJLyogRm9yY2UgZGlzYWJsZSBsaW5rIGRldGVjdGlvbiAqLwo+ICsJY2xl
YXIzMihhdGNwaHktPnJlZ3MucGlwZWhhbmRsZXIgKyBQSVBFSEFORExFUl9PVkVSUklERV9WQUxV
RVMsCj4gKwkJUElQRUhBTkRMRVJfT1ZFUlJJREVfVkFMX1JYREVURUNUMCB8IFBJUEVIQU5ETEVS
X09WRVJSSURFX1ZBTF9SWERFVEVDVDEpOwo+ICsJc2V0MzIoYXRjcGh5LT5yZWdzLnBpcGVoYW5k
bGVyICsgUElQRUhBTkRMRVJfT1ZFUlJJREUsIFBJUEVIQU5ETEVSX09WRVJSSURFX1JYVkFMSUQp
Owo+ICsJc2V0MzIoYXRjcGh5LT5yZWdzLnBpcGVoYW5kbGVyICsgUElQRUhBTkRMRVJfT1ZFUlJJ
REUsIFBJUEVIQU5ETEVSX09WRVJSSURFX1JYREVURUNUKTsKPiArCj4gKwlyZXQgPSBhdGNwaHlf
cGlwZWhhbmRsZXJfbG9jayhhdGNwaHkpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoYXRj
cGh5LT5kZXYsICJGYWlsZWQgdG8gbG9jayBwaXBlaGFuZGxlclxuIik7Cj4gKwkJcmV0dXJuIHJl
dDsKPiArCX0KCltTZXZlcml0eTogSGlnaF0KSWYgYXRjcGh5X3BpcGVoYW5kbGVyX2xvY2soKSBm
YWlscyBhbmQgcmV0dXJucyBlYXJseSwgdGhlIGxpbmsgZGV0ZWN0aW9uCm92ZXJyaWRlIGJpdHMg
KFBJUEVIQU5ETEVSX09WRVJSSURFX1JYVkFMSUQgYW5kClBJUEVIQU5ETEVSX09WRVJSSURFX1JY
REVURUNUKSBhcmUgbGVmdCBzZXQuCgpEb2VzIHRoaXMgcGVybWFuZW50bHkgZGlzYWJsZSBsaW5r
IGRldGVjdGlvbiBvbiB0aGUgUEhZIGhhcmR3YXJlIGZvcgpzdWJzZXF1ZW50IHJldHJpZXMgdW50
aWwgYSBoYXJkIHJlc2V0IG9jY3Vycz8KClsgLi4uIF0KCj4gQEAgLTExMzAsMTAgKzExNjUsOCBA
QCBzdGF0aWMgaW50IGF0Y3BoeV9jb25maWd1cmVfcGlwZWhhbmRsZXIoc3RydWN0IGFwcGxlX2F0
Y3BoeSAqYXRjcGh5LCBib29sIGhvc3QpCj4gIAkJYXRjcGh5LT5waXBlaGFuZGxlcl91cCA9IHRy
dWU7Cj4gIAkJYnJlYWs7Cj4gIAljYXNlIEFUQ1BIWV9QSVBFSEFORExFUl9TVEFURV9VU0I0Ogo+
IC0JCWRldl93YXJuKGF0Y3BoeS0+ZGV2LAo+IC0JCQkgIkFUQ1BIWV9QSVBFSEFORExFUl9TVEFU
RV9VU0I0IG5vdCBpbXBsZW1lbnRlZDsgZmFsbGluZyBiYWNrIHRvIFVTQjJcbiIpOwo+IC0JCXJl
dCA9IGF0Y3BoeV9jb25maWd1cmVfcGlwZWhhbmRsZXJfZHVtbXkoYXRjcGh5KTsKPiAtCQlhdGNw
aHktPnBpcGVoYW5kbGVyX3VwID0gZmFsc2U7Cj4gKwkJcmV0ID0gYXRjcGh5X2NvbmZpZ3VyZV9w
aXBlaGFuZGxlcl91c2I0KGF0Y3BoeSk7Cj4gKwkJYXRjcGh5LT5waXBlaGFuZGxlcl91cCA9IHRy
dWU7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBp
ZiBhdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX3VzYjQoKQpyZXR1cm5zIGFuIGVycm9yLCB0
aGUgc29mdHdhcmUgc3RhdGUgYXRjcGh5LT5waXBlaGFuZGxlcl91cCBpcyBzdGlsbAp1bmNvbmRp
dGlvbmFsbHkgc2V0IHRvIHRydWUuCgpXaGVuIGEgc3Vic2VxdWVudCBjYWxsZXIgKHN1Y2ggYXMg
dGhlIGdlbmVyaWMgeGhjaSBjb2RlKSBpbnZva2VzCmF0Y3BoeV91c2IzX3NldF9tb2RlKCksIGl0
IGNoZWNrcyBhdGNwaHktPnBpcGVoYW5kbGVyX3VwLCBhc3N1bWVzIHRoZSBQSFkKaXMgc3VjY2Vz
c2Z1bGx5IGNvbmZpZ3VyZWQsIGFuZCByZXR1cm5zIDAgd2l0aG91dCBhY3R1YWxseSBkb2luZyBh
bnl0aGluZy4KCkNvdWxkIHRoaXMgc3RhdGUgZGVzeW5jaHJvbml6YXRpb24gbWFzayBoYXJkd2Fy
ZSBjb25maWd1cmF0aW9uIGZhaWx1cmVzIGFuZApwcmV2ZW50IHN1YnNlcXVlbnQgdmFsaWQgcmV0
cmllcyBmcm9tIHN1Y2Nlc3NmdWxseSBpbml0aWFsaXppbmcgdGhlIFBIWT8KCj4gIAkJYnJlYWs7
Cj4gIAljYXNlIEFUQ1BIWV9QSVBFSEFORExFUl9TVEFURV9EVU1NWToKPiAgCQlyZXQgPSBhdGNw
aHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX2R1bW15KGF0Y3BoeSk7CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODIxLWI0LWF0Y3Bo
eS11c2I0LXYxLTAtNDVjMGI3NDFlMGMwQGtlcm5lbC5vcmc/cGFydD0zCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07B7CC88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bbjFYU5NuV60RPqyGbYwbSA0RiaPS589ixKidrahIQ=; b=c3SWyibPp25pap
	6X0RrycLbHG4m7LV/JUf5t5jPVdL1W1udOC/7depkiWu0ssQ7ZG4LBES/SlNZ4+LVU6CQPBKCczhv
	gi2mn21VW/oHjfguiel4j2j+gOJfbsrUJ+8hwxLpLJYd7UFVxhPkX7u54pWCuV+d9gUWhCdkTF0sB
	zzQ+OvV3rOOvbe3/qdL9HmcU5My6Dvb9e/YfqI7HgxQhAComEZzcEbsO4ojy1R6pPlPzU9MOiv8la
	jLWqSk/VThiFK0EgGG6l6Y2TOsacPzf8Bmu5wxAJUGroYmzhfxEjboAOU0jBJz7Xv7OSBk7b4fiwR
	Dp2UjonR5Nj7gYC33CKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5la2-00000001jdR-2u2o;
	Sun, 13 Sep 2026 14:53:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5la0-00000001jd6-3nmj
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:53:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 56A914021E;
	Sun, 13 Sep 2026 14:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD2A51F000FF;
	Sun, 13 Sep 2026 14:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789311196;
	bh=THXMB0cwhof3F6EMJ7XVjHsXE/pd+3MulSn+hRcf4Fw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HwZ55Kz8uakXOzpd3kdwnb5MqgpOrWSKr4LYVXTuiVwO6LlZkxD6qp01c1769S4M/
	 ab3OzqlheoGd0co54Tyvok7Dk3Wyz/1VHDnyZPk8rZU5Fb/Usi6VFYFOzrX/Iam4+Z
	 bZru8gBLqEXcCpDQPbMB4mwmibZjM99ywxbHNs0dqWtbbco5RqtOEva5xde9en6oB3
	 b9QkM8+cRCktl94iN7/Tcn5llRksMbAC9b5zb1vIuRhMlO7mubhRck6Ob0kDHWTdXV
	 KSw0b2vLFgnI8w/9iRSalkfG6/7mjEOidRrG7BRhHL/+nXoIHOoMS9mwHWZexgdj2c
	 orThekKzKKGEw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-5-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-5-0f505b9c394b@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 14:53:15 +0000
Message-Id: <20260913145315.BD2A51F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBQ
cm9iZSBmYWlscyB1bmNvbmRpdGlvbmFsbHkgaWYgQ09ORklHX0dFTkVSSUNfUEhZIGlzIGRpc2Fi
bGVkIGJlY2F1c2UgdGhlIGVycm9yIGNoZWNrIG1pc3NlcyAtRU5PU1lTLgoKUHJlLWV4aXN0aW5n
IGlzc3VlczoKLSBbSGlnaF0gTWlzc2luZyBsb2NrIGFuZCBsaWZlY3ljbGUgcHJvdGVjdGlvbiB3
aGVuIGFjY2Vzc2luZyB4SENJIGRydmRhdGEgbGVhZHMgdG8gTlVMTCBwb2ludGVyIGRlcmVmZXJl
bmNlIGR1cmluZyBjb25jdXJyZW50IGRyaXZlciB1bmJpbmQuCi0tCgpjb21taXQgZmRhMzdhZjgz
ZmEyNGY5Y2EzYzA0NzJhNGQ2ZjRkNDVkMDFiM2NlNgpBdXRob3I6IEtyaXNobmEgS3VyYXBhdGkg
PGtyaXNobmEua3VyYXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KCnVzYjogZHdjMzogcWNvbTogTW9k
aWZ5IGludGVycnVwdCBoYW5kbGluZyBmb3IgZVVTQjIgUGh5IHRhcmdldHMKClRoaXMgcGF0Y2gg
bW9kaWZpZXMgdGhlIGludGVycnVwdCBoYW5kbGluZyBmb3IgZVVTQjIgUEhZIHRhcmdldHMgaW4g
aG9zdAptb2RlIHRvIGNvbmZpZ3VyZSB3YWtldXAgaW50ZXJydXB0cyBkaWZmZXJlbnRseSBiYXNl
ZCBvbiB0aGUgY29ubmVjdGVkIGRldmljZQpzcGVlZC4gVGhlIGRyaXZlciBub3cgcXVlcmllcyB0
aGUgUEhZIHR5cGUgYW5kIGNvbmZpZ3VyZXMgRFAvRE0gZWRnZQppbnRlcnJ1cHRzIGFjY29yZGlu
Z2x5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYyBiL2RyaXZl
cnMvdXNiL2R3YzMvZHdjMy1xY29tLmMKPiBpbmRleCBhYzY4YjQyMThiNTZiLi5lNmI2YmViMzhm
Y2JhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1xY29tLmMKPiArKysgYi9k
cml2ZXJzL3VzYi9kd2MzL2R3YzMtcWNvbS5jClsgLi4uIF0KPiBAQCAtNjgzLDYgKzcwNSwxNyBA
QCBzdGF0aWMgaW50IGR3YzNfcWNvbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAJaWYgKGlnbm9yZV9waXBlX2NsaykKPiAgCQlkd2MzX3Fjb21fc2VsZWN0X3V0bWlfY2xr
KHFjb20pOwo+ICAKPiArCXBoeSA9IGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChkZXYsIGRldi0+
b2Zfbm9kZSwgMCk7Cj4gKwlpZiAoSVNfRVJSKHBoeSkpIHsKPiArCQlpZiAoUFRSX0VSUihwaHkp
ICE9IC1FTk9ERVYpIHsKCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGlzIHVuY29uZGl0aW9uYWxs
eSBmYWlsIHRvIHByb2JlIHdoZW4gQ09ORklHX0dFTkVSSUNfUEhZIGlzIGRpc2FibGVkPwoKSWYg
dGhlIGtlcm5lbCBpcyBidWlsdCB3aXRob3V0IGdlbmVyaWMgUEhZIHN1cHBvcnQsIGRldm1fb2Zf
cGh5X2dldF9ieV9pbmRleCgpCnJldHVybnMgRVJSX1BUUigtRU5PU1lTKS4gU2luY2UgdGhpcyBj
aGVjayBvbmx5IGFsbG93cyAtRU5PREVWIGFzIGEgYmVuaWduCmVycm9yLCBhbiAtRU5PU1lTIHJl
dHVybiB3aWxsIGNhdXNlIHRoZSBkcml2ZXIgdG8gaW52b2tlIGRldl9lcnJfcHJvYmUoKSBhbmQK
YWJvcnQgaW5pdGlhbGl6YXRpb24uCgpTaG91bGQgdGhpcyBjaGVjayBhbHNvIGhhbmRsZSAtRU5P
U1lTIHRvIGFsbG93IGdyYWNlZnVsIGZhbGxiYWNrIHdoZW4KdGhlIFBIWSBzdWJzeXN0ZW0gaXMg
ZGlzYWJsZWQsIHNpbWlsYXIgdG8gaG93IHRoZSBEV0MzIGNvcmUgaGFuZGxlcyBpdD8KKGUuZy4s
IGlmIChQVFJfRVJSKHBoeSkgIT0gLUVOT0RFViAmJiBQVFJfRVJSKHBoeSkgIT0gLUVOT1NZUykp
Cgo+ICsJCQlyZXQgPSBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihwaHkpLAo+ICsJCQkJCSAg
ICAiZmFpbGVkIHRvIGdldCB1c2IyIHBoeVxuIik7Cj4gKwkJCWdvdG8gY2xrX2Rpc2FibGU7Cj4g
KwkJfQo+ICsJCXBoeSA9IE5VTEw7Cj4gKwl9Cj4gKwlxY29tLT5oYXNfZXVzYjJfcGh5ID0gKHBo
eV9nZXRfdHlwZShwaHkpID09IFBIWV9UWVBFX0VVU0IyKTsKPiArCj4gIAlxY29tLT5tb2RlID0g
dXNiX2dldF9kcl9tb2RlKGRldik7CgpXaGlsZSByZXZpZXdpbmcgdGhlIGRyaXZlciBjb250ZXh0
LCBJIG5vdGljZWQgYSBwcmUtZXhpc3RpbmcgaXNzdWUgaW4gdGhlCnN1cnJvdW5kaW5nIGNvZGVi
YXNlOgoKZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYzpkd2MzX3Fjb21fcmVhZF91c2IyX3Nw
ZWVkKCkgewogICAgLi4uCgkvKgoJICogRklYTUU6IEZpeCB0aGlzIGxheWVyaW5nIHZpb2xhdGlv
bi4KCSAqLwoJaGNkID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEoZHdjLT54aGNpKTsKCiNpZmRlZiBD
T05GSUdfVVNCCgl1ZGV2ID0gdXNiX2h1Yl9maW5kX2NoaWxkKGhjZC0+c2VsZi5yb290X2h1Yiwg
cG9ydF9pbmRleCArIDEpOwogICAgLi4uCn0KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBh
IGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBkb2VzIHRoaXMgbWlzc2luZyBsaWZl
Y3ljbGUKcHJvdGVjdGlvbiBmb3IgdGhlIHhIQ0kgZHJ2ZGF0YSBsZWFkIHRvIGEgTlVMTCBwb2lu
dGVyIGRlcmVmZXJlbmNlPwoKSWYgdGhlIGNoaWxkIHhoY2ktcGxhdCBkcml2ZXIgZmFpbHMgdG8g
cHJvYmUsIG9yIGlmIGEgdXNlciB1bmJpbmRzIGl0IHZpYSBzeXNmcwooZS5nLiwgZWNobyB4aGNp
LWhjZCA+IC9zeXMvYnVzL3BsYXRmb3JtL2RyaXZlcnMveGhjaS1oY2QvdW5iaW5kKSwgdGhlIGRy
aXZlcgpjb3JlIGNhbGxzIGRldl9zZXRfZHJ2ZGF0YShkZXYsIE5VTEwpLiBUaGlzIHJlbGVhc2Vz
IHRoZSBQTSB1c2FnZSBjb3VudCBhbmQKY2F1c2VzIHRoZSBwYXJlbnQgZHdjMy1xY29tIGNvbnRy
b2xsZXIgdG8gZW50ZXIgcnVudGltZSBzdXNwZW5kLgoKV2hlbiBkd2MzX3Fjb21fcnVudGltZV9z
dXNwZW5kKCkgdGhlbiBjYWxscyBkd2MzX3Fjb21fcmVhZF91c2IyX3NwZWVkKCksIGl0CmJsaW5k
bHkgcmV0cmlldmVzIHRoZSBub3ctTlVMTCBkcnZkYXRhIHZpYSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0
YSgpIGFuZAppbW1lZGlhdGVseSBkZXJlZmVyZW5jZXMgaXQgd2hlbiBhY2Nlc3NpbmcgaGNkLT5z
ZWxmLnJvb3RfaHViLgoKQ291bGQgdGhpcyByYWNlIGNvbmRpdGlvbiB0cmlnZ2VyIGEga2VybmVs
IHBhbmljIGR1cmluZyBhIGNvbmN1cnJlbnQgZHJpdmVyCnVuYmluZD8KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTMtZXVzYjIt
aW50ZXJydXB0LXY4LXY4LTAtMGY1MDViOWMzOTRiQG9zcy5xdWFsY29tbS5jb20/cGFydD01Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

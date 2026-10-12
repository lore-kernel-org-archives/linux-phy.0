Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3975CA9EDE
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 17:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOsgtlIpZl+hd/g0tkMtEjFMS26Q1deejn5eS0dsYco=; b=gQMvEMtA+4yQ39
	8p6yiksb/3qrEo+hKJlLhnb/Y8dIGfFGrlXS2fEQFv2FfuCu/q1NaWcgeaS4e+bvwVFrP/PXOTE5c
	8tp8Kt79rjzqTdATwPFJZvl1Nh7DK5HDKqfcxWQo5FMtZGjWfsMnHIrAdNcr7XnqOwr1cTbjryCuN
	WUyQPdzivWvulJY8noKGUP21LlunpMzIcj0D8bCH8u+GEWT6TRHQD6nv4CzNrWOZ4HD2Q8qULsySO
	sAzuKgFc7SpEJiJOqLuGqwbk59a6O3bWdjStDD826WcendDMsEtouPF3kqyyYUNbWGiK13u3NXF0j
	iK5hzIBDAD/xde+Uitgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGK9l-0000000B9WY-1EnT;
	Mon, 12 Oct 2026 17:49:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGK9k-0000000B9WS-1udv
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 17:49:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CE81A4389C;
	Mon, 12 Oct 2026 17:49:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 656151F0089B;
	Mon, 12 Oct 2026 17:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791827387;
	bh=G7f/FzC1+RxMWcQJh+jY/abezR/UKpWUE4IPNEwyNkg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W0zmpN89RBNhK6PTvdCUS/eOlxcV1eyUp9Ms/CTR1+Ed+hKPf9YQ+YKC2F1x+zXJb
	 A4q4bsdMPoMGATblebZ6LTn4srRv/T1X61CuP9Efu7AmGaTXm1Ls9EYROdRk1SNukG
	 6OmHjtXtbjtyJReCOgDzj7qQ28qieMzEdhXb2fkUkO4OY5bgN+BNkL0P48BuIrih/f
	 4PW2uXlAXqsWHc85ogmPmd/HaNo8nM9uUgoU+0b7+gyUl+6yvryWe+1rLPjbTgCnhB
	 dzRd2iUK+fe8zM7Vkb3rGJ4K3d+4MVPFPu3V/nD/ffAtUCkfLKbklMKxcODBmS1HOf
	 xcG8liY/KwVrg==
Message-ID: <sashiko-outbox-168495@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/6] phy: realtek: usb2: introduce phy_reg_desc
 struct to the driver
To: "Rustam Adilov" <adilov@disroot.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261012173739.36377-2-adilov@disroot.org>
References: <20261012173739.36377-1-adilov@disroot.org>
 <20261012173739.36377-2-adilov@disroot.org>
Date: Mon, 12 Oct 2026 17:49:46 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByZWFsdGVr
OiBkYXRhIHJhY2UgYmV0d2VlbiBkZWJ1Z2ZzIGFuZCBQSFkgb3BzIGNvcnJ1cHRzIGhhcmR3YXJl
IHN0YXRlCi0tCgpjb21taXQgZDE2Yzc5NDNmOGIzZmQ0YjBjZmU1NWZjNzVlYzEyZDA5NTExZWFm
NApBdXRob3I6IFJ1c3RhbSBBZGlsb3YgPGFkaWxvdkBkaXNyb290Lm9yZz4KCnBoeTogcmVhbHRl
azogdXNiMjogaW50cm9kdWNlIHBoeV9yZWdfZGVzYyBzdHJ1Y3QgdG8gdGhlIGRyaXZlcgoKVGhp
cyBjb21taXQgaW50cm9kdWNlcyBhIHBoeV9yZWdfZGVzYyBzdHJ1Y3QgdG8gdGhlIHJlYWx0ZWsg
dXNiMiBkcml2ZXIuIEl0CnN0b3JlcyBwZXItU29DIGRpZmZlcmVuY2VzIHN1Y2ggYXMgcmVnaXN0
ZXIgb2Zmc2V0cyBhbmQgYnVzeSBiaXRzLiBUaGlzCmF2b2lkcyBkdXBsaWNhdGlvbiBpbiBkcml2
ZXIgZGF0YSBmb3IgUlRMOTYwN0MgYW5kIFJURCBTb0NzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0
ay11c2IyLmMKPiBpbmRleCAyNDg1NTBlZjk4Y2FiLi5lOGQwZjAxMTllYzBhIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jCgpbIC4uLiBdCgo+IEBAIC0xOTAsMjkgKzE5OSwzMSBA
QCBzdGF0aWMgaW50IHJ0a19waHlfd3JpdGUoc3RydWN0IHBoeV9yZWcgKnBoeV9yZWcsIGNoYXIg
YWRkciwgY2hhciBkYXRhKQo+ICAJdW5zaWduZWQgaW50IHZhbDsKPiAgCXZvaWQgX19pb21lbSAq
cmVnX3dyYXBfdnN0YXR1cyA9IHBoeV9yZWctPnJlZ193cmFwX3ZzdGF0dXM7Cj4gIAl2b2lkIF9f
aW9tZW0gKnJlZ19ndXNiMnBoeWFjYzAgPSBwaHlfcmVnLT5yZWdfZ3VzYjJwaHlhY2MwOwo+ICsJ
Y29uc3Qgc3RydWN0IHBoeV9yZWdfZGVzYyAqcmVnX2Rlc2MgPSBwaHlfcmVnLT5kZXNjOwo+ICAJ
aW50IHNoaWZ0X2JpdHMgPSBwaHlfcmVnLT52c3RhdHVzX2luZGV4ICogODsKPiAgCWludCByZXQg
PSAwOwo+ICAKPiAgCS8qIHdyaXRlIGRhdGEgdG8gVlN0YXR1c091dDIgKGRhdGEgb3V0cHV0IHRv
IHBoeSkgKi8KPiAtCXdyaXRlbCgodTMyKWRhdGEgPDwgc2hpZnRfYml0cywgcmVnX3dyYXBfdnN0
YXR1cyk7Cj4gKwl3cml0ZWwoKHUzMilkYXRhIDw8IHNoaWZ0X2JpdHMsCj4gKwkgICAgICAgcmVn
X3dyYXBfdnN0YXR1cyArIHJlZ19kZXNjLT52c3RhdHVzX29mZnNldCk7Cj4gIAo+IC0JcmV0ID0g
dXRtaV93YWl0X3JlZ2lzdGVyKHJlZ19ndXNiMnBoeWFjYzAsIFBIWV9WU1RTX0JVU1ksIDApOwo+
ICsJcmV0ID0gdXRtaV93YWl0X3JlZ2lzdGVyKHJlZ19ndXNiMnBoeWFjYzAsIHJlZ19kZXNjLT52
c3RhdHVzX2J1c3ksIDApOwo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiAtCS8q
IFZDdHJsID0gbG93IG5pYmJsZSBvZiBhZGRyLCBzZXQgUEhZX05FV19SRUdfUkVRICovCj4gLQl2
YWwgPSBQSFlfTkVXX1JFR19SRVEgfCAoR0VUX0xPV19OSUJCTEUoYWRkcikgPDwgUEhZX1ZDVFJM
X1NISUZUKTsKPiArCS8qIFZDdHJsID0gbG93IG5pYmJsZSBvZiBhZGRyLCBzZXQgcmVnX2Rlc2Mt
Pm5ld19yZWdfcmVxICovCj4gKwl2YWwgPSByZWdfZGVzYy0+bmV3X3JlZ19yZXEgfCAoR0VUX0xP
V19OSUJCTEUoYWRkcikgPDwgUEhZX1ZDVFJMX1NISUZUKTsKPiAgCj4gIAl3cml0ZWwodmFsLCBy
ZWdfZ3VzYjJwaHlhY2MwKTsKCltTZXZlcml0eTogTWVkaXVtXQpDYW4gdGhpcyBtdWx0aS1zdGVw
IHN0YXRlIHdyaXRlIGJlIGludGVycnVwdGVkIGFuZCBjb3JydXB0ZWQgYnkgY29uY3VycmVudApk
ZWJ1Z2ZzIGFjY2Vzc2VzPwoKQSB1c2VyIHdpdGggcm9vdCBwcml2aWxlZ2VzIHJlYWRpbmcgdGhl
IGRlYnVnZnMgZmlsZSBwYXJhbWV0ZXIgdmlhCnJ0a191c2IyX3BhcmFtZXRlcl9zaG93KCkgaW4g
ZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYyByZXBlYXRlZGx5CmNhbGxzIHJ0a19w
aHlfc2V0X3BhZ2UoKSBhbmQgcnRrX3BoeV9yZWFkKCkgd2l0aG91dCBhY3F1aXJpbmcgYW55CmRy
aXZlci1zcGVjaWZpYyBsb2NrOgoKICAgIC8qIFNldCBwYWdlIDAgKi8KICAgIHBoeV9kYXRhX3Bh
Z2UgPSBwaHlfY2ZnLT5wYWdlMDsKICAgIHJ0a19waHlfc2V0X3BhZ2UocGh5X3JlZywgMCk7CgpJ
ZiB0aGUga2VybmVsIGNvbmN1cnJlbnRseSBleGVjdXRlcyBhIFBIWSBzdGF0ZSBjaGFuZ2UgKHN1
Y2ggYXMKcnRrX3BoeV9jb25uZWN0KCkgb3IgcnRrX3BoeV9pbml0KCkpLCBjb3VsZCB0aGVpciBy
ZWdpc3RlciBhY2Nlc3NlcyBjb2xsaWRlCmFuZCBjb3JydXB0IHRoZSBQSFkncyBpbnRlcm5hbCBy
ZWdpc3RlciBhY2Nlc3Mgc3RhdGUgbWFjaGluZT8KCkFkZGl0aW9uYWxseSwgc2luY2Ugc3RydWN0
IHJ0a19waHkgbGFja3MgYSByZWZlcmVuY2UgdG8gc3RydWN0IHBoeSwgaXQKYXBwZWFycyB0aGUg
ZGVidWdmcyBjYWxsYmFjayBjYW5ub3QgYWNxdWlyZSBwaHktPm11dGV4LiBJcyB0aGVyZSBhbm90
aGVyIHdheQp0byBzeW5jaHJvbml6ZSB0aGVzZSBhY2Nlc3Nlcz8KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTIxNzM3MzkuMzYz
NzctMS1hZGlsb3ZAZGlzcm9vdC5vcmc/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

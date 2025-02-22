Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4EA6C021B6
	for <linux-phy@archiver.kernel.org>; Sat, 22 Feb 2025 11:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZKI/V8yC+wDfZeboW1uqlINsa7i3Hb5c4pSyb4WDac=; b=i5Enhc7p2KkvrP
	NsZS6gRAuZXm1AVi75mPYlPAluRpn12hPpEeH5WugqWlB8dSAGkHfGruabFWjMC7by2DT0n4SCD8Q
	Qlj0aEe4X5dppy/8pZ6PeZpgUibXp5S3GTqkVORSUTvqamSafK16zyYjQisBQN1z0gaaDljmaaC0l
	simEiSw3zfHgafHaZGAfQYtZ/6A6UanzOLipQ+x0JXFWvHNN9GKclmGKLYO6Mq3bE4C6rCuay+YJw
	XYIYPKEb3X/gE5UefgXEiemUg92+iSaDWveidjyhZskgDKQKUByy6BKojvYTW8d6ZWCtxFENOdezM
	38fcnFVMbCr/B9WaDlsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlndq-00000007uPm-2iZ6;
	Sat, 22 Feb 2025 11:25:54 +0000
Received: from mail-m32109.qiye.163.com ([220.197.32.109])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlndo-00000007uOX-0eP8;
	Sat, 22 Feb 2025 11:25:53 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id bdb51f7f;
	Sat, 22 Feb 2025 19:25:41 +0800 (GMT+08:00)
Message-ID: <799ccbd2-0c3b-4a55-b47e-1899975c4020@rock-chips.com>
Date: Sat, 22 Feb 2025 19:25:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 08/14] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-9-damon.ding@rock-chips.com>
 <3340006.44csPzL39Z@diego>
Content-Language: en-US
In-Reply-To: <3340006.44csPzL39Z@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQktJTlZCTR8fSEgaTx5MHh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a952d67f14803a3kunmbdb51f7f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NhQ6Agw6HDIKER8cNz4OTxY2
	SFEaFA5VSlVKTE9LSUlITk9ISktIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKQ0pPNwY+
DKIM-Signature: a=rsa-sha256;
	b=ENxxpIdc+fRY3imBB4Fvef5vOGZG6fA5wJ7ZQJ3/Q4CHHOsDZlC+5/w3k4E3rp5BOTyNBD/acHQvH9bxtM6Ew6mLSBkk31732mwP2INmd+pp5ON4Wv4pZ1/ZSYTKU/EsXsoRaBhyh7otaP6W3DmyJLjc4G1myUF7V4vX7iQqVTg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=4IlcUWxsBK99tkFDt+EwbEGgFcki2T86lZTSUVVIHWQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_032552_383579_8358CBF2 
X-CRM114-Status: GOOD (  14.18  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI1LzEvMzEgNDozMywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
RGFtb24sCj4gCj4gQW0gRG9ubmVyc3RhZywgMjMuIEphbnVhciAyMDI1LCAxMTowNzo0MSBNRVog
c2NocmllYiBEYW1vbiBEaW5nOgo+PiBNb3ZlIGRybV9vZl9maW5kX3BhbmVsX29yX2JyaWRnZSgp
IGEgbGl0dGxlIGxhdGVyIGFuZCBjb21iaW5lIGl0IHdpdGgKPj4gY29tcG9uZW50X2FkZCgpIGlu
dG8gYSBuZXcgZnVuY3Rpb24gcm9ja2NoaXBfZHBfbGlua19wYW5lbCgpLiBUaGUgZnVuY3Rpb24K
Pj4gd2lsbCBzZXJ2ZSBhcyBkb25lX3Byb2JpbmcoKSBjYWxsYmFjayBvZiBkZXZtX29mX2RwX2F1
eF9wb3B1bGF0ZV9idXMoKSwKPj4gYWlkaW5nIHRvIHN1cHBvcnQgZm9yIG9idGFpbmluZyB0aGUg
ZURQIHBhbmVsIHZpYSB0aGUgRFAgQVVYIGJ1cy4KPj4KPj4gSWYgZmFpbGVkIHRvIGdldCB0aGUg
cGFuZWwgZnJvbSB0aGUgRFAgQVVYIGJ1cywgaXQgd2lsbCB0aGVuIHRyeSB0aGUgb3RoZXIKPj4g
d2F5IHRvIGdldCBwYW5lbCBpbmZvcm1hdGlvbiB0aHJvdWdoIHRoZSBwbGF0Zm9ybSBidXMuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+
Cj4+Cj4+IC0tLQo+IAo+PiBAQCAtNDUwLDkgKzQ2MSwxNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlw
X2RwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgCWlmIChJU19FUlIo
ZHAtPmFkcCkpCj4+ICAgCQlyZXR1cm4gUFRSX0VSUihkcC0+YWRwKTsKPj4gICAKPj4gLQlyZXQg
PSBjb21wb25lbnRfYWRkKGRldiwgJnJvY2tjaGlwX2RwX2NvbXBvbmVudF9vcHMpOwo+PiAtCWlm
IChyZXQpCj4+IC0JCXJldHVybiByZXQ7Cj4+ICsJcmV0ID0gZGV2bV9vZl9kcF9hdXhfcG9wdWxh
dGVfYnVzKGFuYWxvZ2l4X2RwX2dldF9hdXgoZHAtPmFkcCksIHJvY2tjaGlwX2RwX2xpbmtfcGFu
ZWwpOwo+IAo+IFRoaXMgY2F1c2VzIGFuIHVuZGVmaW5lZC1yZWZlcmVuY2UgZXJyb3IsIHNvIHlv
dSBwcm9iYWJseSBuZWVkIHNvbWV0aGluZyBsaWtlOgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29u
ZmlnCj4gaW5kZXggZjljYmJiNDBiMzZmLi5mYTk0NmE4MDk4NTggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvS2NvbmZpZwo+IEBAIC04LDYgKzgsNyBAQCBjb25maWcgRFJNX1JPQ0tDSElQCj4gICAg
ICAgICAgc2VsZWN0IERSTV9QQU5FTAo+ICAgICAgICAgIHNlbGVjdCBWSURFT01PREVfSEVMUEVS
Uwo+ICAgICAgICAgIHNlbGVjdCBEUk1fQU5BTE9HSVhfRFAgaWYgUk9DS0NISVBfQU5BTE9HSVhf
RFAKPiArICAgICAgIHNlbGVjdCBEUk1fRElTUExBWV9EUF9BVVhfQlVTIGlmIFJPQ0tDSElQX0FO
QUxPR0lYX0RQCj4gICAgICAgICAgc2VsZWN0IERSTV9EV19IRE1JIGlmIFJPQ0tDSElQX0RXX0hE
TUkKPiAgICAgICAgICBzZWxlY3QgRFJNX0RXX0hETUlfUVAgaWYgUk9DS0NISVBfRFdfSERNSV9R
UAo+ICAgICAgICAgIHNlbGVjdCBEUk1fRFdfTUlQSV9EU0kgaWYgUk9DS0NISVBfRFdfTUlQSV9E
U0kKPiAKPiAKPiAKPiAKPiAKClllYWgsIEkgd2lsbCBhZGQgYSBuZXcgc2VwYXJhdGUgY29tbWl0
IHRvIGRvIGl0IGluIHRoZSBuZXh0IHZlcnNpb24uCgpCZXN0IHJlZ2FyZHMKRGFtb24KCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

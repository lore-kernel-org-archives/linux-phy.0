Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86AC9C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 13 Nov 2022 23:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJZPfVx6MtIunTCFOf6PpzTD4iYsTQB3fOs761d2E9c=; b=T0fkX74nkacVtd
	rBOFkVa/rLkAcysJopFAtntq/e3fI3+usCNoapNmhYDU9xBCPPsFoabIFTAviHniVPqCI8Qv+y0nY
	YZVILAGcahWBH4Gcv/0wIdDSyN4ML27yzh+abyPpMqVa+YlmTy2D8MeclD7v0lxNub7Q2mTNWGRIS
	JJBMVt6nNR1t73YzOJWP5UdcQbH8Zn07XwVFKjp7JNQ9fSwwAWKMp8he0X6JiW5/I9BYiviR/Z6Qu
	z+ovaJSAKr1aOwA9IiRKrihBIcnjYRbRnZ03dhQ2tatrM6MAIZFOD9QNAN1hgZzYiXkD/PpjXCPab
	Alj7UhVL2H7vAUMC8wlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouMmQ-00EvV4-RH; Sun, 13 Nov 2022 23:52:50 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouMmF-00EvS8-GD; Sun, 13 Nov 2022 23:52:41 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 0884B5C0004;
	Sun, 13 Nov 2022 18:52:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Sun, 13 Nov 2022 18:52:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1668383555; x=
	1668469955; bh=A1qCJOUp0QpjL2/Kd4K7cMVRGDRzG+dWyUIbUehmaoc=; b=C
	0E+yoyxLEgGO7iC18IQRFmc5933zobUI4SwVPrOccR5rmk+48VReTwEZLYUzQNRC
	Edp7OoFitE1i8agthD+psT368zAatLPgvvJKhygxQDmcxqyZWuoIPcCyVsEvFa5n
	5Ly+mzN08O4+9Ij7YFs+5FFMw0Wm4bSr2Pt2qiZ3JYWX0K3S0ISXn54tdqDgoz8a
	7D7drigvJfam3KoJw9uBmuLN2xxVJG9QukXdi+ksEtH2EnOsdItrP4U8QJlDGtuu
	KyfbLMYO0KU0EexvaTxsqX+dv6Jg1mxCdk8bkbTQ63607L6e/6VD3OHZ5Xj8tL2i
	LMvwZcXG6tWEsiXQxcRZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1668383555; x=
	1668469955; bh=A1qCJOUp0QpjL2/Kd4K7cMVRGDRzG+dWyUIbUehmaoc=; b=L
	FtAOhrhaiEr1PjpPVS2l5wJmCptnNpXvrtjwu7ZIkfYmkcOBPXJL/6id7m+gFrVQ
	Qs/ODM9m2VE14s50iREpLczF3wMobC49hvqMYk0mbF8Mad0LwVINdFuIij46S4sl
	kTChOpDQlJ1+DrNN6WY+0KXqHN60TgrTnkjdk+l1rLNcFSGh534aM4L5oOzmgkyy
	HcjMCgBwLAhiMazvxBmmDcgogOHDoRB5ebuHzMlosnKwUz6H1VgB7DU+xVt8EkbA
	5qqv20cUdfox2pdkr6nOvumhYfWbtN88kQf5Re0E1GSOp1zJLbZyC46OBOxC63Kk
	zo8k9J5npQ0pXjOnsMUkA==
X-ME-Sender: <xms:QoNxYzpkSvsxW7YbvX9D4Z6AAwVBaFde7RT2EwknGDg8gFflymhFnw>
    <xme:QoNxY9rkJs6729LL4zGUZMv9YNUYaO-v1GELEJHr4RJPeTrrJnl1uMGgFvjyqi69e
    U4JdHR77TGbR0YCHg>
X-ME-Received: <xmr:QoNxYwOlg7TNqj_Kyb0vX4wxCm9j6Hgm_2QwUTcrHn_vt-H1QtGyJBuf-MK02ZSB4RTXnYcIBQZPO1CJk91SF0DW2Zv_rnhgFkf7AoVu4EQP1n6h6fSHIE5I5A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugdduhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepgfdtgfelffekveelvdeuteetfefgleelhfejteeiuefhheetueef
    fefgheefveefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:QoNxY25g9R9n8r4cWQpXJEu1uY2a9m_CTmcONKygxkHTYK1H1aM96Q>
    <xmx:QoNxYy6nyJUdWoQkjy9Zf82k7iIUTWShHz7TCrQ97-MWNCMjbvTdqg>
    <xmx:QoNxY-ge8Y_FJ4lx3iNVn_bVIkY4D9wGjFcUkZZYIxf3f61L_fU17w>
    <xmx:Q4NxY1JovrwwsaVar9lSOpVMx0jvRjfsZy_pOaxujJPqpaA9h9kqKA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 18:52:33 -0500 (EST)
Message-ID: <7b2606df-3ae5-2699-66bd-12815ffc785b@sholland.org>
Date: Sun, 13 Nov 2022 17:52:33 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 10/11] phy: sun4i-usb: Replace types with explicit
 quirk flags
Content-Language: en-US
To: Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-11-andre.przywara@arm.com>
 <D8382138-8943-46F7-B6A6-F83DF98E26AE@icenowy.me>
From: Samuel Holland <samuel@sholland.org>
In-Reply-To: <D8382138-8943-46F7-B6A6-F83DF98E26AE@icenowy.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_155240_025947_B4AE322C 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTEvNi8yMiAwOTo1NCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPiAKPiAKPiDkuo4gMjAyMuW5
tDEx5pyINuaXpSBHTVQrMDg6MDAg5LiL5Y2IMTE6NDg6MjUsIEFuZHJlIFByenl3YXJhIDxhbmRy
ZS5wcnp5d2FyYUBhcm0uY29tPiDlhpnliLA6Cj4+IFNvIGZhciB3ZSB3ZXJlIGFzc2lnbmluZyBz
b21lIGNydWRlICJ0eXBlIiAoU29DIG5hbWUsIHJlYWxseSkgdG8gZWFjaAo+PiBBbGx3aW5uZXIg
VVNCIFBIWSBtb2RlbCwgdGhlbiBndWFyZGluZyBjZXJ0YWluIHF1aXJrcyBiYXNlZCBvbiB0aGlz
Lgo+PiBUaGlzIGRvZXMgbm90IG9ubHkgbG9vayB3ZWlyZCwgYnV0IGdldHMgbW9yZSBvciBtb3Jl
IGN1bWJlcnNvbWUgdG8KPj4gbWFpbnRhaW4uCj4+Cj4+IFJlbW92ZSB0aGUgYm9ndXMgdHlwZSBu
YW1lcyBhbHRvZ2V0aGVyLCBpbnN0ZWFkIGludHJvZHVjZSBmbGFncyBmb3IgZWFjaAo+PiBxdWly
aywgYW5kIGV4cGxpY2l0bHkgY2hlY2sgZm9yIHRoZW0uCj4+IFRoaXMgaW1wcm92ZXMgcmVhZGFi
aWxpdHksIGFuZCBzaW1wbGlmaWVzIGZ1dHVyZSBleHRlbnNpb25zLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBBbmRyZSBQcnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT4KPj4gLS0tCj4+IGRy
aXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMgfCA1MCArKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0KPj4gMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDM1IGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40
aS11c2IuYyBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPj4gaW5kZXgg
NTFmYjI0YzZkY2IzLi40MjIxMjljNjYyODIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L2Fs
bHdpbm5lci9waHktc3VuNGktdXNiLmMKPj4gKysrIGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3Bo
eS1zdW40aS11c2IuYwo+PiBAQCAtOTksMjcgKzk5LDE3IEBACj4+ICNkZWZpbmUgREVCT1VOQ0Vf
VElNRQkJCW1zZWNzX3RvX2ppZmZpZXMoNTApCj4+ICNkZWZpbmUgUE9MTF9USU1FCQkJbXNlY3Nf
dG9famlmZmllcygyNTApCj4+Cj4+IC1lbnVtIHN1bjRpX3VzYl9waHlfdHlwZSB7Cj4+IC0Jc3Vu
NGlfYTEwX3BoeSwKPj4gLQlzdW42aV9hMzFfcGh5LAo+PiAtCXN1bjhpX2EzM19waHksCj4+IC0J
c3VuOGlfYTgzdF9waHksCj4+IC0Jc3VuOGlfaDNfcGh5LAo+PiAtCXN1bjhpX3I0MF9waHksCj4+
IC0Jc3VuOGlfdjNzX3BoeSwKPj4gLQlzdW41MGlfYTY0X3BoeSwKPj4gLQlzdW41MGlfaDZfcGh5
LAo+PiAtfTsKPj4gLQo+PiBzdHJ1Y3Qgc3VuNGlfdXNiX3BoeV9jZmcgewo+PiAJaW50IG51bV9w
aHlzOwo+PiAJaW50IGhzaWNfaW5kZXg7Cj4+IC0JZW51bSBzdW40aV91c2JfcGh5X3R5cGUgdHlw
ZTsKPj4gCXUzMiBkaXNjX3RocmVzaDsKPj4gCXUzMiBoY2lfcGh5X2N0bF9jbGVhcjsKPj4gCXU4
IHBoeWN0bF9vZmZzZXQ7Cj4+IAlib29sIGRlZGljYXRlZF9jbG9ja3M7Cj4+IAlib29sIHBoeTBf
ZHVhbF9yb3V0ZTsKPj4gKwlib29sIHBoeTJfaXNfaHNpYzsKPiAKPiBNYXliZSB1c2UgYSBgaW50
IGhzaWNfcGh5YCBpbnN0ZWFkPyBCdXQgdGhlIHByb2JsZW0gaXMgdGhpcyBwcmFjdGljZSBpcwo+
IGFzc3VtaW5nIFVTQjAgY291bGQgbm90IGJlIEhTSUMgLS0gYWx0aG91Z2ggVVNCMCBpcyB1c3Vh
bGx5IE9URy4KClRoZXJlIGlzIGFscmVhZHkgYSBgaHNpY19pbmRleGAgdmFyaWFibGUgaW4gdGhl
IHN0cnVjdCB3ZSBjYW4gdXNlLgoKUmVnYXJkcywKU2FtdWVsCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

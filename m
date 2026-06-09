Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30073CD6E79
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 02:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Af3wXQy1JVWTHNoY/+0j5m7378zPnmHJqwaPW5HTU3E=; b=SMNxLEBtwtspAq
	OEA2JEgI9eWNgPP7J0FAggjToxY8XrI5qe78tz7eUoF1rwWTLnhoiIiipzwF/PNxcTJHWkkkrdZsm
	fjlOeaBeKTXj4PVP82qrzG9o6ngTPnMoDWcfLDr/MyMU9xIKp3llJErmYjvRtNKSfzF+MRwUCGa5F
	EUiE2vfwDHRoIJbV6EC9Eo5SPAP2EkewChdulPxU4KNd6eIORsHXRwBfbLpHU5MvReEOBGngSBu7B
	+SQIIMjyeIdnp8LOA2Ru0Bs76OhmojaLph4dZpay2Bl4klleGr9pLouSnKmJEydftmMxOjS2k2BiH
	8jG4C3/qFcbPoZFbiTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWmCj-00000004d4H-2Qix;
	Tue, 09 Jun 2026 02:28:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWmCi-00000004d4B-3XoX
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 02:28:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D95904191A;
	Tue,  9 Jun 2026 02:28:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B9DF1F00893;
	Tue,  9 Jun 2026 02:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780972115;
	bh=cwxpf8kSX8737xmFn9bWE+GiAzV9m+yFDvV80gYy6eg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ox0dD+AnTk5/0KPqZP+MqAYw17kd6W1fdHSxOUNBd2pti7O4xlqZ5msjw8IdBfENt
	 6UMAmONixeWmg1PuJ/fGK86QERQvNU9Mb5B8I2HfepcuFvmSnTVNVpKWvB2Z5SiKeq
	 ZMMSUBCIOzbntzm3Vfpw/z3cVnD3MTJCwzx83K/mf03Gg+mvsnaG/7OOSijE3iKBZL
	 6Nt+LoTO3UnqCw5PIb6xL6KnL5fBgJhnSSk0m/Z05FZVCApCSrU4CDdiNspN024adn
	 6kntGrv3s/O0dueDDqHdsb010sVlcct73DSZtvaCLoJ0qmgnxk29wfsNr+rEdBggYB
	 n7gh0yyIEhttQ==
Date: Mon, 8 Jun 2026 19:28:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Petr Wozniak <petr.wozniak@gmail.com>
Cc: netdev@vger.kernel.org, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, maxime.chevallier@bootlin.com, bjorn@mork.no,
 olek2@wp.pl
Subject: Re: [PATCH v2 net-next] net: phy: mdio-i2c: defer RollBall bridge
 probe to PHY discovery
Message-ID: <20260608192834.4244bcc9@kernel.org>
In-Reply-To: <20260605053056.1977-1-petr.wozniak@gmail.com>
References: <20260604181207.17468-1-petr.wozniak@gmail.com>
	<20260605053056.1977-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
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

T24gRnJpLCAgNSBKdW4gMjAyNiAwNzozMDo1NiArMDIwMCBQZXRyIFdvem5pYWsgd3JvdGU6Cj4g
Y29tbWl0IDhmZTEyNTg5MmY0MCAoIm5ldDogcGh5OiBzZnA6IHByb2JlIGZvciBSb2xsQmFsbCBJ
MkMtdG8tTURJTwo+IGJyaWRnZSBpbiBtZGlvLWkyYyIpIGludHJvZHVjZWQgYSByZWdyZXNzaW9u
OiB0aGUgUm9sbEJhbGwgSTJDLXRvLU1ESU8KPiBicmlkZ2UgaXMgbm90IHlldCByZWFkeSB0byBy
ZXNwb25kIHRvIENNRF9SRUFEL0NNRF9ET05FIGN5Y2xlcyB3aGVuCj4gc2ZwX3NtX2FkZF9tZGlv
X2J1cygpIHJ1bnMgaW4gU0ZQX1NfSU5JVC4gIFRoZSAyMDAgbXMgcHJvYmUgdGltZXMgb3V0LAo+
IGkyY19taWlfcHJvYmVfcm9sbGJhbGwoKSByZXR1cm5zIC1FTk9ERVYsIGFuZCBzZnBfc21fYWRk
X21kaW9fYnVzKCkKPiBzZXRzIG1kaW9fcHJvdG9jb2wgPSBNRElPX0kyQ19OT05FLiAgQnkgdGhl
IHRpbWUgc2ZwX3NtX3Byb2JlX2Zvcl9waHkoKQo+IHJ1bnMgKHVwIHRvIH4xNyBzIGxhdGVyIG9u
IGFmZmVjdGVkIGhhcmR3YXJlKSwgdGhlIGJyaWRnZSBpcyBmdWxseQo+IGluaXRpYWxpemVkIOKA
lCBidXQgUEhZIHByb2JpbmcgaXMgc2tpcHBlZCBiZWNhdXNlIHRoZSBwcm90b2NvbCBoYXMKPiBh
bHJlYWR5IGJlZW4gY2hhbmdlZCB0byBOT05FLgo+IAo+IFRoaXMgYWZmZWN0cyBib3RoIG1vZHVs
ZXMgaW5zZXJ0ZWQgYmVmb3JlIGJvb3QgYW5kIGhvdHBsdWdnZWQgbW9kdWxlcyBvbgo+IGhhcmR3
YXJlIHdoZXJlIGJyaWRnZSBpbml0aWFsaXphdGlvbiBleGNlZWRzIHRoZSAyMDAgbXMgcHJvYmUg
d2luZG93Cj4gKGNvbmZpcm1lZDogRkxZUFJPIFNGUC0xMEdULUNTLTMwTSB3aXRoIEFxdWFudGlh
IEFRUjExM0MsIGhvdHBsdWdnZWQpLgo+IAo+IE1vdmUgdGhlIHByb2JlIGZyb20gaTJjX21paV9p
bml0X3JvbGxiYWxsKCkg4oCUIGNhbGxlZCBhdCBidXMtY3JlYXRpb24KPiB0aW1lIOKAlCB0byBz
ZnBfc21fcHJvYmVfZm9yX3BoeSgpIGluIHNmcC5jLCB3aGVyZSBpdCBydW5zIGFmdGVyIHRoZSBT
RlAKPiBzdGF0ZSBtYWNoaW5lJ3MgbW9kdWxlIGluaXRpYWxpemF0aW9uIGRlbGF5cy4gIEV4cG9y
dCB0aGUgcHJvYmUgZnVuY3Rpb24KPiBhcyBtZGlvX2kyY19wcm9iZV9yb2xsYmFsbCgpIHNvIHNm
cC5jIGNhbiBjYWxsIGl0Lgo+IAo+IEZvciBSVEw4MjYxQkUtYmFzZWQgbW9kdWxlczogdGhlIHBy
b2JlIGNvcnJlY3RseSByZXR1cm5zIC1FTk9ERVYgYXQgUEhZCj4gZGlzY292ZXJ5IHRpbWUsIGNh
dXNpbmcgc2ZwX3NtX3Byb2JlX2Zvcl9waHkoKSB0byBkZXN0cm95IHRoZSBNRElPIGJ1cwo+IGFu
ZCBzZXQgTURJT19JMkNfTk9ORSDigJQgZWxpbWluYXRpbmcgdGhlIDUrIG1pbnV0ZSBQSFkgcHJv
YmUgcmV0cnkgbG9vcC4KPiAKPiBGb3IgZ2VudWluZSBSb2xsQmFsbCBtb2R1bGVzIChlLmcuIEZM
WVBSTyBTRlAtMTBHVC1DUy0zME0gd2l0aCBBcXVhbnRpYQo+IEFRUjExM0MpOiB0aGUgcHJvYmUg
bm93IHJ1bnMgYWZ0ZXIgaW5pdGlhbGl6YXRpb24gaXMgY29tcGxldGUgYW5kCj4gY29ycmVjdGx5
IHJldHVybnMgMCDigJQgUEhZIGRldGVjdGlvbiBwcm9jZWVkcyBub3JtYWxseS4KCiQgZ2l0IHB3
IHNlcmllcyBhcHBseSAxMTA2MzQxCkZhaWxlZCB0byBhcHBseSBwYXRjaDoKQXBwbHlpbmc6IG5l
dDogcGh5OiBtZGlvLWkyYzogZGVmZXIgUm9sbEJhbGwgYnJpZGdlIHByb2JlIHRvIFBIWSBkaXNj
b3ZlcnkKZXJyb3I6IGNvcnJ1cHQgcGF0Y2ggYXQgLmdpdC9yZWJhc2UtYXBwbHkvcGF0Y2g6NDQK
ZXJyb3I6IGNvdWxkIG5vdCBidWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVzZSAnZ2l0IGFtIC0t
c2hvdy1jdXJyZW50LXBhdGNoPWRpZmYnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoCmhpbnQ6IFdo
ZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVl
Ii4KaGludDogSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0t
c2tpcCIgaW5zdGVhZC4KaGludDogVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBz
dG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KaGludDogRGlzYWJsZSB0aGlzIG1l
c3NhZ2Ugd2l0aCAiZ2l0IGNvbmZpZyBzZXQgYWR2aWNlLm1lcmdlQ29uZmxpY3QgZmFsc2UiClBh
dGNoIGZhaWxlZCBhdCAwMDAxIG5ldDogcGh5OiBtZGlvLWkyYzogZGVmZXIgUm9sbEJhbGwgYnJp
ZGdlIHByb2JlIHRvIFBIWSBkaXNjb3ZlcnkKLS0gCnB3LWJvdDogY3IKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

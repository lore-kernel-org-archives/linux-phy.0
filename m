Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACBF5C4708D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Dec 2022 15:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFL9D8pEQqvXGc2rlqxOS5EDuo3yC9qQjp+G/A7xgnk=; b=29H6I7Ywp6wFaA
	ObB0/3LzKaNZrnd18X7nKDGeGrBZ3OW72A7mSWDk6UHEgpfCTQjGw4RBswNdp2jmxaZsQ9jlC44qA
	liSkkT/sZVhOPw8YKbbPm5GEeUORaewbOjfLGhPw3/Dk+K+shlu9jBngITZqqWxD9jwT0kSzsQe/c
	9TydGFk82wUbI2Gbsx4ltJGC/roCHRvH1EtOgLlEf60yAGqkx7VtqupP69asYOJkHkLsN70vYj/eP
	V0/r+HJO0Q/cNWoHU9dhPRgE5ywoj2h3rslwuYw1ErMx6zzZm+ATkiHrGbGP9f+58X6SU4VAIIzRI
	lKBmfwC31I0Gz1o7ekrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Uc9-003vJl-Vp; Sat, 03 Dec 2022 15:39:41 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Uby-003vGb-Ni; Sat, 03 Dec 2022 15:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=ejL1rXUuDNdJH+iLvnYHG3SjKkQ42huDov+rDB0RZoM=; b=bp
	Qq1n4vy6Z2Qb97g+S32Gw7EeAY857gCRhsLrf9XK6QoQQJF+2FTXncf1XS9ao8m/cSyjtkTt1R92y
	n8k+ovD8ulWh680JhXlsyVBy0WTbOOj9E7LSPnxhUTax8HhXrZ3Jr61fggIEM6e0aOy538dgNRJXf
	PRhQI5xirBV3VAc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1p1UbE-004H6v-Cl; Sat, 03 Dec 2022 16:38:44 +0100
Date: Sat, 3 Dec 2022 16:38:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chunfeng Yun =?utf-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>
Cc: "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"nathan@kernel.org" <nathan@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	Eddie Hung =?utf-8?B?KOa0quato+mRqyk=?= <Eddie.Hung@mediatek.com>,
	Tianping Fang =?utf-8?B?KOaWueWkqeW5syk=?= <Tianping.Fang@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"llvm@lists.linux.dev" <llvm@lists.linux.dev>,
	"trix@redhat.com" <trix@redhat.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>
Subject: Re: [PATCH v4 3/3] phy: mediatek: tphy: add debugfs files
Message-ID: <Y4tthBgulCK3ggBT@lunn.ch>
References: <20221110132716.12294-1-chunfeng.yun@mediatek.com>
 <20221110132716.12294-3-chunfeng.yun@mediatek.com>
 <Y3+uGjpMQcEWQrew@matsya>
 <70407a789b48a4fbd498e392450eb9db76e025bf.camel@mediatek.com>
 <Y4S/GhUcrxJ9W/gE@lunn.ch>
 <5c0cc00a37c4cfa03d91e834fb649d52d4ddb041.camel@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c0cc00a37c4cfa03d91e834fb649d52d4ddb041.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221203_073930_786511_FC167789 
X-CRM114-Status: GOOD (  13.34  )
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

T24gU2F0LCBEZWMgMDMsIDIwMjIgYXQgMDI6NTM6MTlQTSArMDAwMCwgQ2h1bmZlbmcgWXVuICjk
upHmmKXls7ApIHdyb3RlOgo+IE9uIE1vbiwgMjAyMi0xMS0yOCBhdCAxNTowMCArMDEwMCwgQW5k
cmV3IEx1bm4gd3JvdGU6Cj4gPiBPbiBNb24sIE5vdiAyOCwgMjAyMiBhdCAwNzoyNjowMkFNICsw
MDAwLCBDaHVuZmVuZyBZdW4gKOS6keaYpeWzsCkgd3JvdGU6Cj4gPiA+IE9uIFRodSwgMjAyMi0x
MS0yNCBhdCAyMzoxNyArMDUzMCwgVmlub2QgS291bCB3cm90ZToKPiA+ID4gPiBPbiAxMC0xMS0y
MiwgMjE6MjcsIENodW5mZW5nIFl1biB3cm90ZToKPiA+ID4gPiA+IFRoZXNlIGRlYnVnZnMgZmls
ZXMgYXJlIG1haW5seSB1c2VkIHRvIG1ha2UgZXllIGRpYWdyYW0gdGVzdAo+ID4gPiA+ID4gZWFz
aWVyLAo+ID4gPiA+ID4gZXNwZWNpYWxseSBoZWxwZnVsIHRvIGRvIEhRQSB0ZXN0IGZvciBhIG5l
dyBJQyB3aXRob3V0IGVmdXNlCj4gPiA+ID4gPiBlbmFibGVkLgo+ID4gCj4gPiBFeHBvcnRpbmcg
ZGF0YSBmb3IgZXllIGRpYWdyYW1zIHNlZW1zIGxpa2Ugc29tZXRoaW5nIG1hbnkgUEhZcyBjb3Vs
ZAo+ID4gdXNlLiBQbGVhc2UgY29uc2lkZXIgYWRkaW5nIGFuIG9mZmljaWFsIHVuaWZvcm0gQVBJ
IHdoaWNoIGFueSBQSFkKPiA+IGNvdWxkIHVzZSwgc28gd2UgZG9uJ3QgZW5kIHVwIHdpdGggbG90
cyBvZiBpbmNvbXBhdGlibGUgZm9ybWF0cyBpbgo+ID4gZGVidWdmcy4KPiBHb29kIGlkZWEsIGJ1
dCBpdCBzZWVtcyBkaWZmaWN1bHQgdG8gZG8gaXQgZHVlIHRvIHRoZSBzZXR0aW5ncyBvZiBwaHkK
PiBjb250cm9sbGVycyBhcmUgbm90IGNvbW1vbi4KCkRvIHlvdSBoYXZlIGNsZWFyIGRvY3VtZW50
YXRpb24gYWJvdXQgdGhlIHZhbHVlcyBhcmUgZXhwb3J0aW5nPyBEbyB5b3UKaGF2ZSBhIGRvY3Vt
ZW50ZWQgcHJvY2VkdXJlIGZvciB0aGUgdGVzdHM/CgpXZSBuZWVkIHRvIGNvbGxlY3QgdG9nZXRo
ZXIgZG9jdW1lbnRhdGlvbiBmcm9tIG11bHRpcGxlIHZlbmRvcnMgYW5kCnNlZSB3aGF0IGlzIGNv
bW1vbi4gTWF5YmUgbm90aGluZyBpcyBjb21tb24sIG1heWJlIGEgbG90IGlzIGluIGNvbW1vbi4K
V2Ugd29uJ3Qga25vdyB1bnRpbCB3ZSBhY3R1YWxseSBjb21wYXJlIHRoZW0uCgpJIGltcGxlbWVu
dGVkIGNhYmxlIHRlc3RpbmcgZm9yIEV0aGVybmV0IFBIWXMuIFRoZXkgYXJlIGFsbCBkaWZmZXJl
bnQsCmJ1dCBhY3R1YWwgZ2l2ZSB2ZXJ5IHNpbWlsYXIgcmVzdWx0cywgc28gY2FuIGhhdmUgb25l
IGNvbW1vbgpkZXNjcmlwdGlvbi4gSG93IG1hbnkgZGlmZmVyZW50IHdheXMgaXMgdGhlcmUgdG8g
bWFrZSBleWUgZGlhZ3JhbQp0ZXN0cz8KCglBbmRyZXcKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

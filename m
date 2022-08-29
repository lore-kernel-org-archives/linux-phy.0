Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D89ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 08:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKIv1S/WMkHVwLnUN6JfAsOKtOsBTpPw1A035baJH6E=; b=NZZ4bZQAn8JDXy
	GB+9zsWQydMuvOJDH2SvMq22ILtwweRC8qMtZjd2CSyh0cXVo40l4bxzKF2Ap3+kiDXUucuVzCih7
	ABkJCNse7KgCJD/SiwNvwaOhN+u2i4qSbBfh3kmA8qq8uOB6r8+faSdOq3NRcjVhTL/QdGfvbs0lU
	VYsBksbaF3ReTB9ayUlQyb51SCLKmffsZyqf8AalbRWJUsRnqs/qFOAw7LmSsjnbbtBlkVB9bpd4l
	plm+laCik60iTKUJJIN0wrYO65JjvdWuzQVxpU+8BkBhfcGHrFTKs2PGo5nqHDRqowskjdqFiDl2E
	9Y2LeheBrf0KkzIpRfzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSaIW-006Huu-Pa; Mon, 29 Aug 2022 08:39:08 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSaCt-006EUm-5x
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 08:33:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 958E9B80D8F;
	Mon, 29 Aug 2022 08:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 268AFC433B5;
	Mon, 29 Aug 2022 08:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661761997;
	bh=FN0sk5sdPh5oeTDY0v3gu53kXDQRqasQOZEAIQjCz/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j4jqLOT642bH7+eRsHRTQzPZ1GzgA4MrjQs4hyBA59B0rv6+TR1fWajTTUr6ncYXl
	 v13Fe4vBV8dUttR8u8xWSvivC55nHVoDzGXdG5Tw4gZGGNBYi8SDOF4AH5NxYwgXL0
	 VEwTIKi5PSSZSkmVQMdhvwhE1zXV16ln07WuOw7C+xqD8830Ud36texqBT/Kvt14Sy
	 054mC7aWQbeeVwbB+kf4ImG/srShimL49ja2GlUNZhVX9vw3Cy/ZtRhGTb3tLU5xpj
	 YlKTXjVnMN9dODzW01EJxxFm+IOQNX1zdWYKX5FmxOMlyj2AcTje53CBhNbLIpzuNE
	 CLlvXWd3PJEWg==
Received: by pali.im (Postfix)
	id 64F4A7DE; Mon, 29 Aug 2022 10:33:14 +0200 (CEST)
Date: Mon, 29 Aug 2022 10:33:14 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220829083314.ewdrc7jky5npxgvu@pali>
References: <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
 <20220813231050.l5xadzdpavmmtdbq@pali>
 <20220825130059.5kat4fhddwj2nf4r@pali>
 <20220826001558.5cf887a5@thinkpad>
 <20220826050019.kvb7vca6fiwzajcx@shindev>
 <20220826140536.68eee458@dellmb>
 <20220829002009.q3ypdmybfbohk5pw@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220829002009.q3ypdmybfbohk5pw@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_013319_549138_6FC4AEF5 
X-CRM114-Status: GOOD (  27.84  )
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

T24gTW9uZGF5IDI5IEF1Z3VzdCAyMDIyIDAwOjIwOjEwIFNoaW5pY2hpcm8gS2F3YXNha2kgd3Jv
dGU6Cj4gT24gQXVnIDI2LCAyMDIyIC8gMTQ6MDUsIE1hcmVrIEJlaMO6biB3cm90ZToKPiA+IE9u
IEZyaSwgMjYgQXVnIDIwMjIgMDU6MDA6MjAgKzAwMDAKPiA+IFNoaW5pY2hpcm8gS2F3YXNha2kg
PHNoaW5pY2hpcm8ua2F3YXNha2lAd2RjLmNvbT4gd3JvdGU6Cj4gPiAKPiA+ID4gT24gQXVnIDI2
LCAyMDIyIC8gMDA6MTUsIE1hcmVrIEJlaMO6biB3cm90ZToKPiA+ID4gPiBPbiBUaHUsIDI1IEF1
ZyAyMDIyIDE1OjAwOjU5ICswMjAwCj4gPiA+ID4gUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gPiA+ID4gICAKPiA+ID4gPiA+IE9uIFN1bmRheSAxNCBBdWd1c3QgMjAyMiAw
MToxMDo1MCBQYWxpIFJvaMOhciB3cm90ZTogIAo+ID4gPiA+ID4gPiBPbiBTYXR1cmRheSAxMyBB
dWd1c3QgMjAyMiAyMzowMjozNCBTaGluaWNoaXJvIEthd2FzYWtpIHdyb3RlOiAgCj4gPiA+IAo+
ID4gPiBbLi4uXQo+ID4gPiAKPiA+ID4gPiA+ID4gUGVyZmVjdCEgU28gdGhlIGlzc3VlIGlzIHdp
dGggbXZlYnVfYTM3MDBfY29tcGh5X3Jlc2V0KCkgZnVuY3Rpb24uCj4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiBUaGlzIGZ1bmN0aW9uIGlzIG5vdCBpbiBURi1BIGNvZGUgYW5kIG5laXRoZXIgaW4g
bXkgb3JpZ2luYWwga2VybmVsCj4gPiA+ID4gPiA+IGRyaXZlciBpbXBsZW1lbnRhdGlvbiAoc3Rp
bGwgYXZhaWxhYmxlIGhlcmUpOgo+ID4gPiA+ID4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9wYWxpL2xpbnV4LmdpdC9jb21taXQvP2g9cGh5LW12ZWJ1
LWEzNzAwLWNvbXBoeSZpZD00NTg4OTAyYTM1MjgxOTViY2ZkZGE5ZjllMWUxNDI2MmExOTU1ZGYx
Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBNYXJlaywgdGhpcyBmdW5jdGlvbiBtdmVidV9hMzcw
MF9jb21waHlfcmVzZXQoKSB3YXMgaW1wbGVtZW50ZWQgYnkgeW91Lgo+ID4gPiA+ID4gPiBDb3Vs
ZCB5b3UgcGxlYXNlIGxvb2sgYXQgaXQsIHdoeSB5b3UgYWRkZWQgdGhpcyBmdW5jdGlvbiBhbmQg
dHJ5IHRvIGZpeAo+ID4gPiA+ID4gPiBpdD8gSXMgdGhpcyBmdW5jdGlvbiBuZWVkZWQgYXQgYWxs
PyAgICAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gUElORz8gQW55IHByb2dyZXNzIGhlcmU/ICAKPiA+
ID4gPiAKPiA+ID4gPiBOb3QgeWV0LCBzb3JyeS4gTWF5YmUgd2UgY291bGQgZG8gc29tZXRoaW5n
IGxpa2UgSSBhbSBhdHRhY2hpbmcsIHVudGlsCj4gPiA+ID4gSSBoYXZlIHRpbWUgdG8gcGxheSB3
aXRoIGl0Pwo+ID4gPiA+IAo+ID4gPiA+IFNlZSBhdHRhY2hlZCBmaWxlLiAgCj4gPiA+IAo+ID4g
PiBNZXJlaywgdGhhbmtzIGZvciB0aGUgcmVzcG9uc2UuIEkgYXBwbGllZCB0aGUgYXR0YWNoZWQg
cGF0Y2ggdG8gdjUuMTguMTYga2VybmVsCj4gPiA+IGFuZCBvYnNlcnZlZCB0aGUgImF0YTE6IFNB
VEEgbGluayBkb3duIChTU3RhdHVzIDEwMCBTQ29udHJvbCAzMDApIiBtZXNzYWdlIGlzCj4gPiA+
IGF2b2lkZWQuIEl0IGxvb2tzIHdvcmtpbmcuCj4gPiA+IAo+ID4gCj4gPiBIZWxsbyBTaGluaWNo
aXJvLAo+ID4gCj4gPiB3b3VsZCB5b3UgYmUgYWJsZSB0byB0ZXN0IGFub3RoZXIgcGF0Y2ggSSBh
bSBhdHRhY2hpbmcsIG9uIGNsZWFuIGtlcm5lbD8KPiA+IFdoZXRoZXIgeW91ciBkaXNrIHdvcmtz
IG9yIG5vdC4uLgo+IAo+IFN1cmUsIGJ1dCB1bmZvcnR1bmF0ZWx5LCBpdCBkaWQgbm90IHdvcmsu
IFdpdGggImEzNzIwLWNvbXBoeS10ZXN0LTIucGF0Y2giLAo+IHN0aWxsIHRoZSBlcnJvciAiYXRh
MTogU0FUQSBsaW5rIGRvd24gKFNTdGF0dXMgMTAwIFNDb250cm9sIDMwMCkiIGlzIHByaW50ZWQs
Cj4gYW5kIG15IFNTRCBpcyBub3QgZGV0ZWN0ZWQuCj4gCj4gVG8gYmUgcHJlY2lzZSwgdGhpcyB0
aW1lIEkgc3dpdGNoZWQgYmFzZSBrZXJuZWwgZnJvbSB2NS4xOC4xNiB0byB2NS4xOS40LCBzaW5j
ZQo+IHY1LjE4LnkgYnJhbmNoIHJlYWNoZWQgdG8gRU9MLiBXaXRoIHY1LjE5LjQsIG15IG9ic2Vy
dmF0aW9uIGlzIGNvbnNpc3RlbnQgd2l0aAo+IHY1LjE4LjE2Lgo+IAo+IC0gdjUuMTguMTY6Cj4g
ICAgd2l0aG91dCBwYXRjaDogZXJyb3IgImF0YTE6IFNBVEEgbGluayBkb3duIChTU3RhdHVzIDEw
MCBTQ29udHJvbCAzMDApIgo+ICAgIHdpdGggImEzNzIwLWNvbXBoeS1zYXRhLnBhdGNoIjogbm8g
YXRhIGVycm9yLiBteSBTU0QgZGV0ZWN0ZWQKPiAKPiAtIHY1LjE5LjQ6Cj4gICAgd2l0aG91dCBw
YXRjaDogZXJyb3IgImF0YTE6IFNBVEEgbGluayBkb3duIChTU3RhdHVzIDEwMCBTQ29udHJvbCAz
MDApIgo+ICAgIHdpdGggImEzNzIwLWNvbXBoeS1zYXRhLnBhdGNoIjogbm8gYXRhIGVycm9yLiBt
eSBTU0QgZGV0ZWN0ZWQKPiAgICB3aXRoICJhMzcyMC1jb21waHktdGVzdC0yLnBhdGNoIjogZXJy
b3IgImF0YTE6IFNBVEEgbGluayBkb3duIChTU3RhdHVzIDEwMCBTQ29udHJvbCAzMDApIgoKT2ss
IHNlZW1zIHRoYXQgZGVidWdnaW5nIHJlc2V0IGNhbGxiYWNrIHdvdWxkIHRha2UgbXVjaCBtb3Jl
IHRpbWUgdGhhbgp3ZSB0aG91Z2h0LiBXZSBuZWVkIHdvcmtpbmcgZHJpdmVyIGluIG1haW5saW5l
IGFuZCBzdGFibGUga2VybmVscywgaGVuY2UKbm93IEkgc2VudCBhIHBhdGNoIChwcmVzZW50ZWQg
ZWFybGllcikgdG8gY29tcGxldGVseSByZW1vdmUgUEhZIHJlc2V0CnN1cHBvcnQgKHVudGlsIHdl
IGZpZ3VyZSBvdXQgd2hlcmUgaXMgdGhlIGlzc3VlKS4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

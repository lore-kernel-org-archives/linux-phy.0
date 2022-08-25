Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB14C28D13
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 13:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5SxcwP3FgKGlX7DjC4TIwyBkIJMoRql6bVJbXaafsA=; b=tHlYnz4/Tuiz+B
	SsAyrvvxLVn2GDZaDWqF4UHTG8RXf8vbuRWXRd6ECJVkXv2o6QpPRhTe0HnvNBowWT3XmUCkJyC1j
	B/6RQR0FtH6f9kuyV2QlUPymHEcMz3UrlhphhCp6od4+mPf9e+m5iQOoqji3fZZv4UuYF8O15mA6q
	h5zieqS20TiNJJCkDAIq1Xed7ZcB7jKs2qHZ7gc/cCMZbcP/HdrrhcuRL2L9wbW/3Nlq1YCqZ4dTS
	4ZVH0tDfJqAeQgpupqboho0UnZvrisJKGv3UcoYyg5vkKEHUruJ1j+ZErcfJ+YIejuOAsnlhbOO1Z
	epoKdZgNTHznyfBXkVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRCTt-00EGRZ-A0; Thu, 25 Aug 2022 13:01:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRCTn-00EGJz-TS
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 13:01:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4B8EB61C33;
	Thu, 25 Aug 2022 13:01:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DAC9C433D6;
	Thu, 25 Aug 2022 13:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661432462;
	bh=/TLJq1woRZKbNETnbEiMUveyIZ16XgR/Z39AFzBEgno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I2qhRTpWYNnAclCoROANEx2L4DQDYjEtMHbg0TdQeh2q1lZPLIhvd45dGICUez4eM
	 ssUB5eusnSnXb1Hibj2shUv4kl8eAJGI6zTd5ATqAqyDaCUeELDe2PSPVkTZh6wOZA
	 WgmSB9vQDbTewMi5wvlwWcivAyReLjF4ZRkU05RieZaeX9+CwinfCfgdTPch6cWTJg
	 lYu1g0G+eaoM6dWwnHntHvirfXSJAR0ZuIc8qY9+ziDWFgDxzZdnLwwK4xybYMlFc2
	 XWLFHySKaFkUm874GhD8TtB06RNVy0oxeaFW4IW8TQ3MI1cGwa5gi/V3gk77guiiVQ
	 +htQbbGH7Kyeg==
Received: by pali.im (Postfix)
	id 6C7E0742; Thu, 25 Aug 2022 15:00:59 +0200 (CEST)
Date: Thu, 25 Aug 2022 15:00:59 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
	Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220825130059.5kat4fhddwj2nf4r@pali>
References: <20220813010033.erkdwf24arlz7zer@shindev>
 <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
 <20220813231050.l5xadzdpavmmtdbq@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813231050.l5xadzdpavmmtdbq@pali>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_060104_051283_1C0930AD 
X-CRM114-Status: GOOD (  35.57  )
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

T24gU3VuZGF5IDE0IEF1Z3VzdCAyMDIyIDAxOjEwOjUwIFBhbGkgUm9ow6FyIHdyb3RlOgo+IE9u
IFNhdHVyZGF5IDEzIEF1Z3VzdCAyMDIyIDIzOjAyOjM0IFNoaW5pY2hpcm8gS2F3YXNha2kgd3Jv
dGU6Cj4gPiBPbiBBdWcgMTMsIDIwMjIgLyAxNDo1MCwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiA+
IE9uIFNhdHVyZGF5IDEzIEF1Z3VzdCAyMDIyIDEyOjQ3OjMwIFNoaW5pY2hpcm8gS2F3YXNha2kg
d3JvdGU6Cj4gPiA+ID4gT24gQXVnIDEzLCAyMDIyIC8gMTQ6MDEsIFBhbGkgUm9ow6FyIHdyb3Rl
Ogo+ID4gPiA+ID4gT24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMTE6NTM6MzkgU2hpbmljaGly
byBLYXdhc2FraSB3cm90ZToKPiA+ID4gPiA+ID4gT24gQXVnIDEzLCAyMDIyIC8gMTE6MzIsIFBh
bGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIFNhdHVyZGF5IDEzIEF1Z3VzdCAyMDIy
IDAxOjM1OjM1IFNoaW5pY2hpcm8gS2F3YXNha2kgd3JvdGU6Cj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBbLi4uXQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBPaywgdGhhbmtzIGZvciB0ZXN0
aW5nLiBJdCBsb29rcyBsaWtlIHRoYXQgcmVzZXQgY29kZSBoYXMgc29tZSBpc3N1ZXMuCj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQ291bGQgeW91IHBsZWFzZSB0ZXN0IHRoaXMgY2hhbmdl
Pwo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IEBAIC0xMzkzLDcgKzE0MzYsOCBAQCBzdGF0
aWMgaW50IG12ZWJ1X2EzNzAwX2NvbXBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gPiA+ID4gPiA+ICAJCSAqIFRvIGF2b2lkIHJlbHlpbmcgb24gdGhlIGJvb3Rsb2Fk
ZXIvZmlybXdhcmUgY29uZmlndXJhdGlvbiwKPiA+ID4gPiA+ID4gPiAgCQkgKiBwb3dlciBvZmYg
YWxsIGNvbXBoeXMuCj4gPiA+ID4gPiA+ID4gIAkJICovCj4gPiA+ID4gPiA+ID4gLQkJbXZlYnVf
YTM3MDBfY29tcGh5X3Jlc2V0KHBoeSk7Cj4gPiA+ID4gPiA+ID4gKy8vCQltdmVidV9hMzcwMF9j
b21waHlfcmVzZXQocGh5KTsKPiA+ID4gPiA+ID4gPiArCQltdmVidV9hMzcwMF9jb21waHlfcG93
ZXJfb2ZmKHBoeSk7Cj4gPiA+ID4gPiA+ID4gIAkJbGFuZS0+bmVlZHNfcmVzZXQgPSBmYWxzZTsK
PiA+ID4gPiA+ID4gPiAgCX0KPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gSXQgc2hvdWxkIHJlcGxhY2UgcmVzZXQgY29kZSBieSBwb3dlciBvZmYgYXQgYmVnaW5u
aW5nIC8gcHJvYmUgdGltZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFRoaXMgY2hhbmdlIGFs
c28gYXZvaWRlZCB0aGUgImF0YTE6IFNBVEEgbGluayBkb3duIChTU3RhdHVzIDAgU0NvbnRyb2wg
MzAwKSIKPiA+ID4gPiA+ID4gbWVzc2FnZSwgYW5kIG15IFNTRCB3YXMgZGV0ZWN0ZWQgYXMgL2Rl
di9zZGEuIEdvb2Qgc3ltcHRvbXMgZm9yIG1lLiBGWUksIEkKPiA+ID4gPiA+ID4gYXR0YWNoIHRo
ZSBjb25zb2xlIGxvZyB3aXRoIHRoaXMgY2hhbmdlLiAoVGhpcyB0aW1lLCBmb2xsb3dpbmcgbWVz
c2FnZXMgd2VyZQo+ID4gPiA+ID4gPiBwcmludGVkLiBOb3Qgc3VyZSBpZiB0aGV5IGFyZSBpbXBv
cnRhbnQgb3Igbm90LikKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFsgICAgMi45MzczNzZdIG12
ZWJ1LWEzNzAwLWNvbXBoeSBkMDAxODMwMC5waHk6IGludmFsaWQgQ09NUEhZIG1vZGUKPiA+ID4g
PiA+ID4gWyAgICAyLjk0MzU4MV0gbXZlYnUtYTM3MDAtY29tcGh5IGQwMDE4MzAwLnBoeTogaW52
YWxpZCBDT01QSFkgbW9kZQo+ID4gPiA+ID4gPiBbICAgIDIuOTQ5Njc5XSBtdmVidS1hMzcwMC1j
b21waHkgZDAwMTgzMDAucGh5OiBpbnZhbGlkIENPTVBIWSBtb2RlCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IFRob3NlIGVycm9ycyBhcmUgaW1wb3J0YW50LCBpdCBtZWFucyB0aGF0IHBvd2VyX29mZiBk
aWQgbm90aGluZyBhbmQgd2FzCj4gPiA+ID4gPiBza2lwcGVkLiBTbyB0ZXN0IGRpZCBub3RoaW5n
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIHJlcGxhY2UgbXZlYnVfYTM3
MDBfY29tcGh5X3Bvd2VyX29mZiBpbXBsZW1lbnRhdGlvbgo+ID4gPiA+ID4gd2l0aCB0aGlzIG9u
ZSBhbmQgdHJ5IGl0IGFnYWluPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBzdGF0aWMgaW50IG12ZWJ1
X2EzNzAwX2NvbXBoeV9wb3dlcl9vZmYoc3RydWN0IHBoeSAqcGh5KQo+ID4gPiA+ID4gewo+ID4g
PiA+ID4gCXN0cnVjdCBtdmVidV9hMzcwMF9jb21waHlfbGFuZSAqbGFuZSA9IHBoeV9nZXRfZHJ2
ZGF0YShwaHkpOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAJc3dpdGNoIChsYW5lLT5pZCkgewo+ID4g
PiA+ID4gCWNhc2UgMDoKPiA+ID4gPiA+IAkJbXZlYnVfYTM3MDBfY29tcGh5X3VzYjNfcG93ZXJf
b2ZmKGxhbmUpOwo+ID4gPiA+ID4gCQltdmVidV9hMzcwMF9jb21waHlfZXRoZXJuZXRfcG93ZXJf
b2ZmKGxhbmUpOwo+ID4gPiA+ID4gCQlyZXR1cm4gMDsKPiA+ID4gPiA+IAljYXNlIDE6Cj4gPiA+
ID4gPiAJCW12ZWJ1X2EzNzAwX2NvbXBoeV9wY2llX3Bvd2VyX29mZihsYW5lKTsKPiA+ID4gPiA+
IAkJbXZlYnVfYTM3MDBfY29tcGh5X2V0aGVybmV0X3Bvd2VyX29mZihsYW5lKTsKPiA+ID4gPiA+
IAkJcmV0dXJuIDA7Cj4gPiA+ID4gPiAJY2FzZSAyOgo+ID4gPiA+ID4gCQltdmVidV9hMzcwMF9j
b21waHlfdXNiM19wb3dlcl9vZmYobGFuZSk7Cj4gPiA+ID4gPiAJCW12ZWJ1X2EzNzAwX2NvbXBo
eV9zYXRhX3Bvd2VyX29mZihsYW5lKTsKPiA+ID4gPiA+IAkJcmV0dXJuIDA7Cj4gPiA+ID4gPiAJ
ZGVmYXVsdDoKPiA+ID4gPiA+IAkJZGV2X2VycihsYW5lLT5kZXYsICJpbnZhbGlkIENPTVBIWSBt
b2RlXG4iKTsKPiA+ID4gPiA+IAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiAJfQo+ID4gPiA+
ID4gfQo+ID4gPiA+IAo+ID4gPiA+IFRoYW5rcywgYnV0IHRoaXMgaHVuayBmYWlsZWQgdG8gY29t
cGlsZSB3aXRoIHRoZSBlcnJvciBiZWxvdy4KPiA+ID4gPiAKPiA+ID4gPiByaXZlcnMvcGh5L21h
cnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jOiBJbiBmdW5jdGlvbiAnbXZlYnVfYTM3MDBf
Y29tcGh5X3Bvd2VyX29mZic6Cj4gPiA+ID4gZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUt
YTM3MDAtY29tcGh5LmM6MTIyOToxNzogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1
bmN0aW9uICdtdmVidV9hMzcwMF9jb21waHlfdXNiM19wb3dlcl9vZmYnOyBkaWQgeW91IG1lYW4g
J212ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29uJz8gWy1XZXJyb3I9aW1wbGljaXQtZnVu
Y3Rpb24tZGVjbGFyYXRpb25dCj4gPiA+ID4gIDEyMjkgfCAgICAgICAgICAgICAgICAgbXZlYnVf
YTM3MDBfY29tcGh5X3VzYjNfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gPiA+ICAgICAgIHwgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gPiA+ICAgICAg
IHwgICAgICAgICAgICAgICAgIG12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29uCj4gPiA+
ID4gY2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCj4gPiA+ID4gCj4g
PiA+ID4gRG8gSSBuZWVkIHRvIGFkZCBtdmVidV9hMzcwMF9jb21waHlfdXNiM19wb3dlcl9vZmYo
KSBmdW5jdGlvbj8KPiA+ID4gCj4gPiA+IEluIG15IG9yaWdpbmFsIHZlcnNpb24gb2YgdGhpcyBk
cml2ZXIgSSBoYXZlOgo+ID4gPiAKPiA+ID4gc3RhdGljIHZvaWQgbXZlYnVfYTM3MDBfY29tcGh5
X3VzYjNfcG93ZXJfb2ZmKHN0cnVjdCBtdmVidV9hMzcwMF9jb21waHlfbGFuZSAqbGFuZSkKPiA+
ID4gewo+ID4gPiAJLyoKPiA+ID4gCSAqIEN1cnJlbnRseSB0aGUgVVNCMyBNQUMgd2lsbCBjb250
cm9sIHRoZSBVU0IzIFBIWSB0byBzZXQgaXQgdG8gbG93Cj4gPiA+IAkgKiBzdGF0ZSwgdGh1cyBk
byBub3QgbmVlZCB0byBwb3dlciBvZmYgVVNCMyBQSFkgYWdhaW4uCj4gPiA+IAkgKi8KPiA+ID4g
fQo+ID4gPiAKPiA+ID4gU28gcGxlYXNlIHJlbW92ZSBtdmVidV9hMzcwMF9jb21waHlfdXNiM19w
b3dlcl9vZmYoKSBjYWxscyBhcyBpdCBkb2VzCj4gPiA+IG5vdGhpbmcuCj4gPiAKPiA+IE9rYXks
IEkgdHJpZWQgd2l0aCB0aGUgZWRpdCBhbmQgcmVzdWx0IGxvb2tzIHBvc2l0aXZlOgo+ID4gCj4g
PiAtICJpbnZhbGlkIENPTVBIWSBtb2RlIiBtZXNzYWdlcyBkaXNhcHBlcGFyZWQKPiA+IC0gTm8g
ImF0YTE6IFNBVEEgbGluayBkb3duIChTU3RhdHVzIDAgU0NvbnRyb2wgMzAwKSIgbWVzc2FnZQo+
ID4gLSBNeSBTU0Qgd2FzIGRldGVjdGVkIGFzIC9kZXYvc2RhCj4gPiAKPiA+IEZZSSwgSSBhdHRh
Y2ggY29uc29sZSBsb2cgYW5kIHRoZSBwYXRjaCBJIHVzZWQuCj4gPiAKPiA+IC0tIAo+ID4gU2hp
bidpY2hpcm8gS2F3YXNha2kKPiAKPiBQZXJmZWN0ISBTbyB0aGUgaXNzdWUgaXMgd2l0aCBtdmVi
dV9hMzcwMF9jb21waHlfcmVzZXQoKSBmdW5jdGlvbi4KPiAKPiBUaGlzIGZ1bmN0aW9uIGlzIG5v
dCBpbiBURi1BIGNvZGUgYW5kIG5laXRoZXIgaW4gbXkgb3JpZ2luYWwga2VybmVsCj4gZHJpdmVy
IGltcGxlbWVudGF0aW9uIChzdGlsbCBhdmFpbGFibGUgaGVyZSk6Cj4gaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcGFsaS9saW51eC5naXQvY29tbWl0Lz9o
PXBoeS1tdmVidS1hMzcwMC1jb21waHkmaWQ9NDU4ODkwMmEzNTI4MTk1YmNmZGRhOWY5ZTFlMTQy
NjJhMTk1NWRmMQo+IAo+IE1hcmVrLCB0aGlzIGZ1bmN0aW9uIG12ZWJ1X2EzNzAwX2NvbXBoeV9y
ZXNldCgpIHdhcyBpbXBsZW1lbnRlZCBieSB5b3UuCj4gQ291bGQgeW91IHBsZWFzZSBsb29rIGF0
IGl0LCB3aHkgeW91IGFkZGVkIHRoaXMgZnVuY3Rpb24gYW5kIHRyeSB0byBmaXgKPiBpdD8gSXMg
dGhpcyBmdW5jdGlvbiBuZWVkZWQgYXQgYWxsPwoKUElORz8gQW55IHByb2dyZXNzIGhlcmU/Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53EE6C19F2D
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 23:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuWmotXogRwgqHMprAfrXOxcrafS4/SOawXJCA+0cEY=; b=OyxUDGmtmy/qH+
	glV0H4osJOYGAvXUw9tOoQjFmrAj5Xhxdufg06iE6+4N0f3OFtgZ5BrDJ/EyJdm6Fnt12n9WUxkMx
	0dUgO6Y8BsgvkD88IiFPItRb57QbvQGI2LiPneYxFtnKcu+x0/jZc7icPYj1FDJioydZwZUeIxryg
	JwUNjJilS29tqICCjbGtrLYS5oplCGJQAc6Ppoe+X7xrbanwSgduaWydhaO+XrAS2KiYYAQVjg9h2
	sHh2rXMxRDZzFWMzfsOvGJSDgPLmWK8tZ8ygG+phUe+aoJmy6uiZlyhenDbfb6YrrB7PJQncsH63A
	a/Y+3+90qO7PaRIKhCIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oN0He-000yQB-Cb; Sat, 13 Aug 2022 23:11:10 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oN0HY-000yLb-Eq
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 23:11:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 14A8EB80920;
	Sat, 13 Aug 2022 23:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77F0AC433B5;
	Sat, 13 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660432253;
	bh=Wrf4tZqeIiZwYExE4mWUOl8z70vngeoooM1RHVSGYF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ia5MU+EmZtMMIINMgSrGtzxeSBMOZrv3VjiuN4bvL8Az36RcjMjuybgMTcrCCsNcf
	 hJnPAhMbk59doUSLhwPl9oEYM6YZUF/CgY/P955BQnWBjbsXw7L8aDa9RQpvDt/yTk
	 +cdSFuJZibj+9fFsapLvSOmwHKzNrj9ZC+YJqMUr2uPojG8PwA8XXKitkKSB1rInMj
	 Mb0lNr8kaimoy88TX6AINzKcjsD7Z6Hryc+x+ttKPZjxhZEi535YvN6vx9+GXTtCCa
	 VK0FsspbBq6R5NFkv00gSZ0u/8MZLTZY8zRubE+pdZR9jIqjpdiGHn+lMhFrVUgy2D
	 MuxARAvGU3Ybw==
Received: by pali.im (Postfix)
	id 94CAEC30; Sun, 14 Aug 2022 01:10:50 +0200 (CEST)
Date: Sun, 14 Aug 2022 01:10:50 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
	Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220813231050.l5xadzdpavmmtdbq@pali>
References: <20220813001501.ib4wayiw3qsgiqhu@pali>
 <20220813010033.erkdwf24arlz7zer@shindev>
 <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813230233.3hyvkoexqitfnlte@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220813_161106_655685_990DA145 
X-CRM114-Status: GOOD (  32.96  )
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

T24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMjM6MDI6MzQgU2hpbmljaGlybyBLYXdhc2FraSB3
cm90ZToKPiBPbiBBdWcgMTMsIDIwMjIgLyAxNDo1MCwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBP
biBTYXR1cmRheSAxMyBBdWd1c3QgMjAyMiAxMjo0NzozMCBTaGluaWNoaXJvIEthd2FzYWtpIHdy
b3RlOgo+ID4gPiBPbiBBdWcgMTMsIDIwMjIgLyAxNDowMSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4g
PiA+ID4gT24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMTE6NTM6MzkgU2hpbmljaGlybyBLYXdh
c2FraSB3cm90ZToKPiA+ID4gPiA+IE9uIEF1ZyAxMywgMjAyMiAvIDExOjMyLCBQYWxpIFJvaMOh
ciB3cm90ZToKPiA+ID4gPiA+ID4gT24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMDE6MzU6MzUg
U2hpbmljaGlybyBLYXdhc2FraSB3cm90ZToKPiA+ID4gPiA+IAo+ID4gPiA+ID4gWy4uLl0KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiBPaywgdGhhbmtzIGZvciB0ZXN0aW5nLiBJdCBsb29rcyBsaWtl
IHRoYXQgcmVzZXQgY29kZSBoYXMgc29tZSBpc3N1ZXMuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiBDb3VsZCB5b3UgcGxlYXNlIHRlc3QgdGhpcyBjaGFuZ2U/Cj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBAQCAtMTM5Myw3ICsxNDM2LDggQEAgc3RhdGljIGludCBtdmVidV9hMzcwMF9jb21waHlf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiA+ID4gIAkJICogVG8g
YXZvaWQgcmVseWluZyBvbiB0aGUgYm9vdGxvYWRlci9maXJtd2FyZSBjb25maWd1cmF0aW9uLAo+
ID4gPiA+ID4gPiAgCQkgKiBwb3dlciBvZmYgYWxsIGNvbXBoeXMuCj4gPiA+ID4gPiA+ICAJCSAq
Lwo+ID4gPiA+ID4gPiAtCQltdmVidV9hMzcwMF9jb21waHlfcmVzZXQocGh5KTsKPiA+ID4gPiA+
ID4gKy8vCQltdmVidV9hMzcwMF9jb21waHlfcmVzZXQocGh5KTsKPiA+ID4gPiA+ID4gKwkJbXZl
YnVfYTM3MDBfY29tcGh5X3Bvd2VyX29mZihwaHkpOwo+ID4gPiA+ID4gPiAgCQlsYW5lLT5uZWVk
c19yZXNldCA9IGZhbHNlOwo+ID4gPiA+ID4gPiAgCX0KPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gSXQgc2hvdWxkIHJlcGxhY2UgcmVzZXQgY29kZSBieSBwb3dlciBvZmYg
YXQgYmVnaW5uaW5nIC8gcHJvYmUgdGltZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhpcyBjaGFu
Z2UgYWxzbyBhdm9pZGVkIHRoZSAiYXRhMTogU0FUQSBsaW5rIGRvd24gKFNTdGF0dXMgMCBTQ29u
dHJvbCAzMDApIgo+ID4gPiA+ID4gbWVzc2FnZSwgYW5kIG15IFNTRCB3YXMgZGV0ZWN0ZWQgYXMg
L2Rldi9zZGEuIEdvb2Qgc3ltcHRvbXMgZm9yIG1lLiBGWUksIEkKPiA+ID4gPiA+IGF0dGFjaCB0
aGUgY29uc29sZSBsb2cgd2l0aCB0aGlzIGNoYW5nZS4gKFRoaXMgdGltZSwgZm9sbG93aW5nIG1l
c3NhZ2VzIHdlcmUKPiA+ID4gPiA+IHByaW50ZWQuIE5vdCBzdXJlIGlmIHRoZXkgYXJlIGltcG9y
dGFudCBvciBub3QuKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBbICAgIDIuOTM3Mzc2XSBtdmVidS1h
MzcwMC1jb21waHkgZDAwMTgzMDAucGh5OiBpbnZhbGlkIENPTVBIWSBtb2RlCj4gPiA+ID4gPiBb
ICAgIDIuOTQzNTgxXSBtdmVidS1hMzcwMC1jb21waHkgZDAwMTgzMDAucGh5OiBpbnZhbGlkIENP
TVBIWSBtb2RlCj4gPiA+ID4gPiBbICAgIDIuOTQ5Njc5XSBtdmVidS1hMzcwMC1jb21waHkgZDAw
MTgzMDAucGh5OiBpbnZhbGlkIENPTVBIWSBtb2RlCj4gPiA+ID4gCj4gPiA+ID4gVGhvc2UgZXJy
b3JzIGFyZSBpbXBvcnRhbnQsIGl0IG1lYW5zIHRoYXQgcG93ZXJfb2ZmIGRpZCBub3RoaW5nIGFu
ZCB3YXMKPiA+ID4gPiBza2lwcGVkLiBTbyB0ZXN0IGRpZCBub3RoaW5nLgo+ID4gPiA+IAo+ID4g
PiA+IENvdWxkIHlvdSBwbGVhc2UgcmVwbGFjZSBtdmVidV9hMzcwMF9jb21waHlfcG93ZXJfb2Zm
IGltcGxlbWVudGF0aW9uCj4gPiA+ID4gd2l0aCB0aGlzIG9uZSBhbmQgdHJ5IGl0IGFnYWluPwo+
ID4gPiA+IAo+ID4gPiA+IHN0YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5X3Bvd2VyX29mZihz
dHJ1Y3QgcGh5ICpwaHkpCj4gPiA+ID4gewo+ID4gPiA+IAlzdHJ1Y3QgbXZlYnVfYTM3MDBfY29t
cGh5X2xhbmUgKmxhbmUgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiA+ID4gPiAKPiA+ID4gPiAJ
c3dpdGNoIChsYW5lLT5pZCkgewo+ID4gPiA+IAljYXNlIDA6Cj4gPiA+ID4gCQltdmVidV9hMzcw
MF9jb21waHlfdXNiM19wb3dlcl9vZmYobGFuZSk7Cj4gPiA+ID4gCQltdmVidV9hMzcwMF9jb21w
aHlfZXRoZXJuZXRfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gPiA+IAkJcmV0dXJuIDA7Cj4gPiA+ID4g
CWNhc2UgMToKPiA+ID4gPiAJCW12ZWJ1X2EzNzAwX2NvbXBoeV9wY2llX3Bvd2VyX29mZihsYW5l
KTsKPiA+ID4gPiAJCW12ZWJ1X2EzNzAwX2NvbXBoeV9ldGhlcm5ldF9wb3dlcl9vZmYobGFuZSk7
Cj4gPiA+ID4gCQlyZXR1cm4gMDsKPiA+ID4gPiAJY2FzZSAyOgo+ID4gPiA+IAkJbXZlYnVfYTM3
MDBfY29tcGh5X3VzYjNfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gPiA+IAkJbXZlYnVfYTM3MDBfY29t
cGh5X3NhdGFfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gPiA+IAkJcmV0dXJuIDA7Cj4gPiA+ID4gCWRl
ZmF1bHQ6Cj4gPiA+ID4gCQlkZXZfZXJyKGxhbmUtPmRldiwgImludmFsaWQgQ09NUEhZIG1vZGVc
biIpOwo+ID4gPiA+IAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gCX0KPiA+ID4gPiB9Cj4gPiA+
IAo+ID4gPiBUaGFua3MsIGJ1dCB0aGlzIGh1bmsgZmFpbGVkIHRvIGNvbXBpbGUgd2l0aCB0aGUg
ZXJyb3IgYmVsb3cuCj4gPiA+IAo+ID4gPiByaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEz
NzAwLWNvbXBoeS5jOiBJbiBmdW5jdGlvbiAnbXZlYnVfYTM3MDBfY29tcGh5X3Bvd2VyX29mZic6
Cj4gPiA+IGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jOjEyMjk6
MTc6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiAnbXZlYnVfYTM3MDBf
Y29tcGh5X3VzYjNfcG93ZXJfb2ZmJzsgZGlkIHlvdSBtZWFuICdtdmVidV9hMzcwMF9jb21waHlf
dXNiM19wb3dlcl9vbic/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+
ID4gPiAgMTIyOSB8ICAgICAgICAgICAgICAgICBtdmVidV9hMzcwMF9jb21waHlfdXNiM19wb3dl
cl9vZmYobGFuZSk7Cj4gPiA+ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gPiAgICAgICB8ICAgICAgICAgICAgICAgICBtdmVidV9h
MzcwMF9jb21waHlfdXNiM19wb3dlcl9vbgo+ID4gPiBjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcg
dHJlYXRlZCBhcyBlcnJvcnMKPiA+ID4gCj4gPiA+IERvIEkgbmVlZCB0byBhZGQgbXZlYnVfYTM3
MDBfY29tcGh5X3VzYjNfcG93ZXJfb2ZmKCkgZnVuY3Rpb24/Cj4gPiAKPiA+IEluIG15IG9yaWdp
bmFsIHZlcnNpb24gb2YgdGhpcyBkcml2ZXIgSSBoYXZlOgo+ID4gCj4gPiBzdGF0aWMgdm9pZCBt
dmVidV9hMzcwMF9jb21waHlfdXNiM19wb3dlcl9vZmYoc3RydWN0IG12ZWJ1X2EzNzAwX2NvbXBo
eV9sYW5lICpsYW5lKQo+ID4gewo+ID4gCS8qCj4gPiAJICogQ3VycmVudGx5IHRoZSBVU0IzIE1B
QyB3aWxsIGNvbnRyb2wgdGhlIFVTQjMgUEhZIHRvIHNldCBpdCB0byBsb3cKPiA+IAkgKiBzdGF0
ZSwgdGh1cyBkbyBub3QgbmVlZCB0byBwb3dlciBvZmYgVVNCMyBQSFkgYWdhaW4uCj4gPiAJICov
Cj4gPiB9Cj4gPiAKPiA+IFNvIHBsZWFzZSByZW1vdmUgbXZlYnVfYTM3MDBfY29tcGh5X3VzYjNf
cG93ZXJfb2ZmKCkgY2FsbHMgYXMgaXQgZG9lcwo+ID4gbm90aGluZy4KPiAKPiBPa2F5LCBJIHRy
aWVkIHdpdGggdGhlIGVkaXQgYW5kIHJlc3VsdCBsb29rcyBwb3NpdGl2ZToKPiAKPiAtICJpbnZh
bGlkIENPTVBIWSBtb2RlIiBtZXNzYWdlcyBkaXNhcHBlcGFyZWQKPiAtIE5vICJhdGExOiBTQVRB
IGxpbmsgZG93biAoU1N0YXR1cyAwIFNDb250cm9sIDMwMCkiIG1lc3NhZ2UKPiAtIE15IFNTRCB3
YXMgZGV0ZWN0ZWQgYXMgL2Rldi9zZGEKPiAKPiBGWUksIEkgYXR0YWNoIGNvbnNvbGUgbG9nIGFu
ZCB0aGUgcGF0Y2ggSSB1c2VkLgo+IAo+IC0tIAo+IFNoaW4naWNoaXJvIEthd2FzYWtpCgpQZXJm
ZWN0ISBTbyB0aGUgaXNzdWUgaXMgd2l0aCBtdmVidV9hMzcwMF9jb21waHlfcmVzZXQoKSBmdW5j
dGlvbi4KClRoaXMgZnVuY3Rpb24gaXMgbm90IGluIFRGLUEgY29kZSBhbmQgbmVpdGhlciBpbiBt
eSBvcmlnaW5hbCBrZXJuZWwKZHJpdmVyIGltcGxlbWVudGF0aW9uIChzdGlsbCBhdmFpbGFibGUg
aGVyZSk6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Bh
bGkvbGludXguZ2l0L2NvbW1pdC8/aD1waHktbXZlYnUtYTM3MDAtY29tcGh5JmlkPTQ1ODg5MDJh
MzUyODE5NWJjZmRkYTlmOWUxZTE0MjYyYTE5NTVkZjEKCk1hcmVrLCB0aGlzIGZ1bmN0aW9uIG12
ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldCgpIHdhcyBpbXBsZW1lbnRlZCBieSB5b3UuCkNvdWxkIHlv
dSBwbGVhc2UgbG9vayBhdCBpdCwgd2h5IHlvdSBhZGRlZCB0aGlzIGZ1bmN0aW9uIGFuZCB0cnkg
dG8gZml4Cml0PyBJcyB0aGlzIGZ1bmN0aW9uIG5lZWRlZCBhdCBhbGw/CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

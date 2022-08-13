Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE237C19F2D
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 12:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAlpxR01DpTA1UO632PVUJiVcTkvu0tgbAtnfaIrqtI=; b=tOMNfkkl6oWjF1
	UDFPhQuIDDvn5+et6cwCZy6IL6+IwP/KoKx8QO9Ie2c/03T6jj+rxEU/Xw4aWvVjvWv0R9m/saVEA
	r8sxv+/LjYAruLzcJVFXmkWkMirsC97QQaQu9Jxg93jljkcVu3zQz8jQ6vUhnSdJhEX08+rwkVCDw
	c4OWgYzGGiDLKfQ7inM/8ReAsFxXbVnG4UTpea/EC3SSIKDGKGjor/2jIjk8UKMtRx5KNXdC8f43M
	7APDX1V7hahtpC8Lj6XwA6HPbJX1Y7ZATQQP1Zgjg7pbZgcvoh3MN4IbMKmWdaj71PCP1YE24/5B7
	lo5cR48g28YZIYHrnacw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMqbV-00EZW7-11; Sat, 13 Aug 2022 12:51:01 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMqbS-00EZUc-5t
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 12:50:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CD236B8013C;
	Sat, 13 Aug 2022 12:50:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 430E0C433C1;
	Sat, 13 Aug 2022 12:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660395055;
	bh=yU5g848slaJef0cMqCEVYAFuYqj0tv+EuOloz6xvvt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CAhxoAJw8+FLGt174QJDFji/vJdkhVGc8pR+jNgoyIumf3FnNlfODtxZkr//kRKbl
	 zXeFv/DHp8nwG6lPJ/VaZX4gWiYbx9lLJbjKemCpvwbW4ROn0647PjOxPxL5c1wq9R
	 P4JYZ8Pf9AvwCfqbBZYZG4Opc3Nf558cuxGLQd+OXYlxk+SkmQtLFh8xbr5A+n0CEK
	 iGWHy8EDuWfiAsndfG7WW96Zl3SGBVBfDOsKNZyBxjur5dvnCWVzUtCxcpq/A+oxxX
	 T6DCUCLw+1s7vieFRz/E6qNeVMlnoobS9Jzl8x05aWrmUbMuy5+DhH8Lfr+OPj+G4V
	 iy/FlVwxbqrVQ==
Received: by pali.im (Postfix)
	id 761C4C30; Sat, 13 Aug 2022 14:50:52 +0200 (CEST)
Date: Sat, 13 Aug 2022 14:50:52 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220813125052.hjd6lhh4fcc7jl5u@pali>
References: <20220812135505.vukoik6moxzedlq6@pali>
 <20220813000235.5vwwmamngm6lirwv@shindev>
 <20220813001501.ib4wayiw3qsgiqhu@pali>
 <20220813010033.erkdwf24arlz7zer@shindev>
 <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813124729.qondfc7z5eoeoq7p@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220813_055058_530231_E3E8608E 
X-CRM114-Status: GOOD (  27.83  )
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

T24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMTI6NDc6MzAgU2hpbmljaGlybyBLYXdhc2FraSB3
cm90ZToKPiBPbiBBdWcgMTMsIDIwMjIgLyAxNDowMSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBP
biBTYXR1cmRheSAxMyBBdWd1c3QgMjAyMiAxMTo1MzozOSBTaGluaWNoaXJvIEthd2FzYWtpIHdy
b3RlOgo+ID4gPiBPbiBBdWcgMTMsIDIwMjIgLyAxMTozMiwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4g
PiA+ID4gT24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMDE6MzU6MzUgU2hpbmljaGlybyBLYXdh
c2FraSB3cm90ZToKPiA+ID4gCj4gPiA+IFsuLi5dCj4gPiA+IAo+ID4gPiA+IE9rLCB0aGFua3Mg
Zm9yIHRlc3RpbmcuIEl0IGxvb2tzIGxpa2UgdGhhdCByZXNldCBjb2RlIGhhcyBzb21lIGlzc3Vl
cy4KPiA+ID4gPiAKPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIHRlc3QgdGhpcyBjaGFuZ2U/Cj4g
PiA+ID4gCj4gPiA+ID4gQEAgLTEzOTMsNyArMTQzNiw4IEBAIHN0YXRpYyBpbnQgbXZlYnVfYTM3
MDBfY29tcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gIAkJ
ICogVG8gYXZvaWQgcmVseWluZyBvbiB0aGUgYm9vdGxvYWRlci9maXJtd2FyZSBjb25maWd1cmF0
aW9uLAo+ID4gPiA+ICAJCSAqIHBvd2VyIG9mZiBhbGwgY29tcGh5cy4KPiA+ID4gPiAgCQkgKi8K
PiA+ID4gPiAtCQltdmVidV9hMzcwMF9jb21waHlfcmVzZXQocGh5KTsKPiA+ID4gPiArLy8JCW12
ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldChwaHkpOwo+ID4gPiA+ICsJCW12ZWJ1X2EzNzAwX2NvbXBo
eV9wb3dlcl9vZmYocGh5KTsKPiA+ID4gPiAgCQlsYW5lLT5uZWVkc19yZXNldCA9IGZhbHNlOwo+
ID4gPiA+ICAJfQo+ID4gPiA+ICAKPiA+ID4gPiAKPiA+ID4gPiBJdCBzaG91bGQgcmVwbGFjZSBy
ZXNldCBjb2RlIGJ5IHBvd2VyIG9mZiBhdCBiZWdpbm5pbmcgLyBwcm9iZSB0aW1lLgo+ID4gPiAK
PiA+ID4gVGhpcyBjaGFuZ2UgYWxzbyBhdm9pZGVkIHRoZSAiYXRhMTogU0FUQSBsaW5rIGRvd24g
KFNTdGF0dXMgMCBTQ29udHJvbCAzMDApIgo+ID4gPiBtZXNzYWdlLCBhbmQgbXkgU1NEIHdhcyBk
ZXRlY3RlZCBhcyAvZGV2L3NkYS4gR29vZCBzeW1wdG9tcyBmb3IgbWUuIEZZSSwgSQo+ID4gPiBh
dHRhY2ggdGhlIGNvbnNvbGUgbG9nIHdpdGggdGhpcyBjaGFuZ2UuIChUaGlzIHRpbWUsIGZvbGxv
d2luZyBtZXNzYWdlcyB3ZXJlCj4gPiA+IHByaW50ZWQuIE5vdCBzdXJlIGlmIHRoZXkgYXJlIGlt
cG9ydGFudCBvciBub3QuKQo+ID4gPiAKPiA+ID4gWyAgICAyLjkzNzM3Nl0gbXZlYnUtYTM3MDAt
Y29tcGh5IGQwMDE4MzAwLnBoeTogaW52YWxpZCBDT01QSFkgbW9kZQo+ID4gPiBbICAgIDIuOTQz
NTgxXSBtdmVidS1hMzcwMC1jb21waHkgZDAwMTgzMDAucGh5OiBpbnZhbGlkIENPTVBIWSBtb2Rl
Cj4gPiA+IFsgICAgMi45NDk2NzldIG12ZWJ1LWEzNzAwLWNvbXBoeSBkMDAxODMwMC5waHk6IGlu
dmFsaWQgQ09NUEhZIG1vZGUKPiA+IAo+ID4gVGhvc2UgZXJyb3JzIGFyZSBpbXBvcnRhbnQsIGl0
IG1lYW5zIHRoYXQgcG93ZXJfb2ZmIGRpZCBub3RoaW5nIGFuZCB3YXMKPiA+IHNraXBwZWQuIFNv
IHRlc3QgZGlkIG5vdGhpbmcuCj4gPiAKPiA+IENvdWxkIHlvdSBwbGVhc2UgcmVwbGFjZSBtdmVi
dV9hMzcwMF9jb21waHlfcG93ZXJfb2ZmIGltcGxlbWVudGF0aW9uCj4gPiB3aXRoIHRoaXMgb25l
IGFuZCB0cnkgaXQgYWdhaW4/Cj4gPiAKPiA+IHN0YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5
X3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCj4gPiB7Cj4gPiAJc3RydWN0IG12ZWJ1X2EzNzAw
X2NvbXBoeV9sYW5lICpsYW5lID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiAKPiA+IAlzd2l0
Y2ggKGxhbmUtPmlkKSB7Cj4gPiAJY2FzZSAwOgo+ID4gCQltdmVidV9hMzcwMF9jb21waHlfdXNi
M19wb3dlcl9vZmYobGFuZSk7Cj4gPiAJCW12ZWJ1X2EzNzAwX2NvbXBoeV9ldGhlcm5ldF9wb3dl
cl9vZmYobGFuZSk7Cj4gPiAJCXJldHVybiAwOwo+ID4gCWNhc2UgMToKPiA+IAkJbXZlYnVfYTM3
MDBfY29tcGh5X3BjaWVfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gCQltdmVidV9hMzcwMF9jb21waHlf
ZXRoZXJuZXRfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gCQlyZXR1cm4gMDsKPiA+IAljYXNlIDI6Cj4g
PiAJCW12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29mZihsYW5lKTsKPiA+IAkJbXZlYnVf
YTM3MDBfY29tcGh5X3NhdGFfcG93ZXJfb2ZmKGxhbmUpOwo+ID4gCQlyZXR1cm4gMDsKPiA+IAlk
ZWZhdWx0Ogo+ID4gCQlkZXZfZXJyKGxhbmUtPmRldiwgImludmFsaWQgQ09NUEhZIG1vZGVcbiIp
Owo+ID4gCQlyZXR1cm4gLUVJTlZBTDsKPiA+IAl9Cj4gPiB9Cj4gCj4gVGhhbmtzLCBidXQgdGhp
cyBodW5rIGZhaWxlZCB0byBjb21waWxlIHdpdGggdGhlIGVycm9yIGJlbG93Lgo+IAo+IHJpdmVy
cy9waHkvbWFydmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmM6IEluIGZ1bmN0aW9uICdtdmVi
dV9hMzcwMF9jb21waHlfcG93ZXJfb2ZmJzoKPiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVi
dS1hMzcwMC1jb21waHkuYzoxMjI5OjE3OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2Yg
ZnVuY3Rpb24gJ212ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29mZic7IGRpZCB5b3UgbWVh
biAnbXZlYnVfYTM3MDBfY29tcGh5X3VzYjNfcG93ZXJfb24nPyBbLVdlcnJvcj1pbXBsaWNpdC1m
dW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgMTIyOSB8ICAgICAgICAgICAgICAgICBtdmVidV9hMzcw
MF9jb21waHlfdXNiM19wb3dlcl9vZmYobGFuZSk7Cj4gICAgICAgfCAgICAgICAgICAgICAgICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgICAgfCAgICAgICAgICAgICAg
ICAgbXZlYnVfYTM3MDBfY29tcGh5X3VzYjNfcG93ZXJfb24KPiBjYzE6IHNvbWUgd2FybmluZ3Mg
YmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKPiAKPiBEbyBJIG5lZWQgdG8gYWRkIG12ZWJ1X2EzNzAw
X2NvbXBoeV91c2IzX3Bvd2VyX29mZigpIGZ1bmN0aW9uPwoKSW4gbXkgb3JpZ2luYWwgdmVyc2lv
biBvZiB0aGlzIGRyaXZlciBJIGhhdmU6CgpzdGF0aWMgdm9pZCBtdmVidV9hMzcwMF9jb21waHlf
dXNiM19wb3dlcl9vZmYoc3RydWN0IG12ZWJ1X2EzNzAwX2NvbXBoeV9sYW5lICpsYW5lKQp7Cgkv
KgoJICogQ3VycmVudGx5IHRoZSBVU0IzIE1BQyB3aWxsIGNvbnRyb2wgdGhlIFVTQjMgUEhZIHRv
IHNldCBpdCB0byBsb3cKCSAqIHN0YXRlLCB0aHVzIGRvIG5vdCBuZWVkIHRvIHBvd2VyIG9mZiBV
U0IzIFBIWSBhZ2Fpbi4KCSAqLwp9CgpTbyBwbGVhc2UgcmVtb3ZlIG12ZWJ1X2EzNzAwX2NvbXBo
eV91c2IzX3Bvd2VyX29mZigpIGNhbGxzIGFzIGl0IGRvZXMKbm90aGluZy4KCj4gSSBzdXNwZW5k
IHRoaXMgd29yayBoZXJlIHRvZGF5LiBXaWxsIHJlc3VtZSBpdCB0b21vcnJvdy4gVGhhbmsgeW91
IGZvciB5b3VyCj4gYWN0aW9ucyBzbyBmYXIuIFdpc2ggdGhpcyBpc3N1ZSBnZXRzIHJlc29sdmVk
IHNvb24uCj4gCj4gLS0gCj4gU2hpbidpY2hpcm8gS2F3YXNha2kKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

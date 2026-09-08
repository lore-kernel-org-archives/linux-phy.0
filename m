Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 776EAC79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 06:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NBIPUw0/a2Vcbx0Aqut6uIcSHpdl2zpKYcdyyEiyV8=; b=0Zb/XLm0o3rB9P
	flKTkB5M9G6kQpHX/Cvy2Cr8JFikZMD6oluPB5LNhy1zLAqV8cxZuOqmPxWmxCP2No8fsyBCDZ6MD
	iA95oaGlw0jEj4evPOF3RtpPj+4NNAEomlLlcGdDOeZcoVfrd2/AyJpn0VwkSzWRupmIYL6BIlBPD
	qP7Uo6wCotW+7HiL5dui268D4VKnma5mvqTwa9RI+nZ/5iBW+Kd96BkRrfhRQI8Hbw9BSm2r4xUzb
	ogqtc0fF5Cv3K/Z8RP0Z3TX/WgK//XGLUgQswe/1fmVEVJsRhH8t9xFhldzQ1QnNECKRqw0GrwSo5
	/DL1WF+e6rLTPOVrKFbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3pb3-00000008CUe-09Wn;
	Tue, 08 Sep 2026 06:46:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3pb0-00000008CUR-38td
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 06:46:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2EAE8435A0;
	Tue,  8 Sep 2026 06:46:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55A8F1F00A3A;
	Tue,  8 Sep 2026 06:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788849978;
	bh=SpRLoEjwfJIto8OqiNLUyzfu/DuCb0af7mLXDRonxgQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k3qZ0WHzCWeNiqDW4zaymVchSRHamgu/y7Ve+1VwMlNDcIyyK8EFKzk5gDpXG/u1s
	 OrRYEQNVqNSyyN2mYILmWxDOOzuzPPDexpUlU4Zgt+fRsThMwPnOx2+FpT/ZvC6+fj
	 k00FuwNgZfCKagyGnbDoBijoONKtG29W88jK8UyoOZR8AJLBa2Vp3OP3r9OvP9bC9g
	 3pcVedP+hKWLQtizVq8UCg/5ojuTE/bIdUzgsGWfoVmTsQ75t0jrw4x7FVc/Xbr1S0
	 Z0MNUWj3JCh7J9F06Ix2urs/Cd76QYM7xqxZdgWb/gVPRwP9+f7ZRu6o6dadwLe9KM
	 W33ejNARS+OfA==
Date: Tue, 8 Sep 2026 08:46:09 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2] phy: renesas: phy-rzg3e-usb3: Use SYSTEM_SLEEP_PM_OPS
 instead of NOIRQ
Message-ID: <hpjrkv3bpbx4rfz2v6bumntiw5k36etktnv4bvxs2dhuv5wr3x@m4estpjcreo3>
References: <20260527082052.117289-1-ovidiu.panait.rb@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260527082052.117289-1-ovidiu.panait.rb@renesas.com>
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

T24gV2VkLCBNYXkgMjcsIDIwMjYgYXQgMDg6MjA6NTJBTSArMDAwMCwgT3ZpZGl1IFBhbmFpdCB3
cm90ZToKPiBPbiB0aGUgUmVuZXNhcyBSWi9WMkggcGxhdGZvcm0sIGlmIHRoZSB4aGNpIGRyaXZl
ciBpcyB1bmJvdW5kIGFuZCB0aGUKPiBzeXN0ZW0gaXMgc3VzcGVuZGVkIGFmdGVyd2FyZHMsIGEg
UE0gdW5kZXJmbG93IGVycm9yIHdpbGwgb2NjdXI6Cj4gCj4gICMgZWNobyAxNTg1MDAwMC51c2Ig
PiAvc3lzL2J1cy9wbGF0Zm9ybS9kcml2ZXJzL3hoY2ktcmVuZXNhcy1oY2QvdW5iaW5kCj4gICMg
c3lzdGVtY3RsIHN1c3BlbmQKPiAgMTU4NzAwMDAudXNiLXBoeTogUE06IGRwbV9ydW5fY2FsbGJh
Y2soKTogZ2VucGRfcmVzdW1lX25vaXJxIHJldHVybnMgLTEzCj4gIDE1ODcwMDAwLnVzYi1waHk6
IFBNOiBmYWlsZWQgdG8gcmVzdW1lIG5vaXJxOiBlcnJvciAtMTMKPiAgMTU4NzAwMDAudXNiLXBo
eTogUnVudGltZSBQTSB1c2FnZSBjb3VudCB1bmRlcmZsb3chCj4gCj4gV2hlbiB0aGUgeGhjaSBk
cml2ZXIgaXMgdW5ib3VuZCwgdGhlIHJ1bnRpbWUgUE0gdXNhZ2UgY291bnQgb2YgdGhlIFBIWQo+
IGRyb3BzIHRvIDAuIFNpbmNlIHRoZSBzdXNwZW5kL3Jlc3VtZSBjYWxsYmFja3MgYXJlIGluIHRo
ZSBub2lycSBwaGFzZSwKPiB0aGUgcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpIG9uIHJlc3Vt
ZSBlcnJvcnMgb3V0IHdpdGggLUVBQ0NFUyBhbmQKPiB0aGUgdXNhZ2UgY291bnQgc3RheXMgYXQg
MC4gVGhlIHN1YnNlcXVlbnQgcHV0IGluIGRldmljZV9jb21wbGV0ZSgpCj4gdGhlbiB1bmRlcmZs
b3dzIHRoZSBjb3VudGVyLgo+IAo+IFRvIGZpeCB0aGlzLCBtb3ZlIHRoZSBzdXNwZW5kL3Jlc3Vt
ZSBjYWxsYmFja3Mgb3V0IG9mIHRoZSBub2lycSBwaGFzZSBieQo+IHN3aXRjaGluZyBmcm9tIE5P
SVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMgdG8gU1lTVEVNX1NMRUVQX1BNX09QUy4KPiAKCldoaWxl
IHRoaXMgcGF0Y2ggZml4ZXMgdGhlIHJ1bnRpbWUgUE0gdW5kZXJmbG93LCBpdCBkb2VzIG5vdCBu
ZWNlc3NhcmlseSBmaXggdGhlCnVuZGVybHlpbmcgaXNzdWUuIFRoZSBpc3N1ZSBoZXJlIGlzIHRo
YXQgdGhlIFBIWSB3YXMgYWxyZWFkeSBzdXNwZW5kZWQgZHVlIHRvCnhoY2kgZHJpdmVyIHVuYm91
bmQgYW5kIHRoZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgaW4KcnpnM2VfcGh5X3VzYjNf
cmVzdW1lKCkgdW5uZWNlc3NhcmlseSB0cmllcyB0byB3YWtlcyB1cCB0aGUgUEhZLgoKSSB0aGlu
ayB3aGF0IHlvdSBuZWVkIGlzIHBtX3J1bnRpbWVfZm9yY2Vfe3N1c3BlbmQvcmVzdW1lfSB0byBj
b25kaXRpb25hbGx5CnJlc3VtZSB0aGUgUEhZIGluIGl0cyByemczZV9waHlfdXNiM19yZXN1bWUo
KSBjYWxsYmFjay4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=

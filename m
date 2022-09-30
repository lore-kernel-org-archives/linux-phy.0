Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3227C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 23:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnmvXWJ6Q5pyY7/Dyb25ze/BuQQUxbJ8Ofhse/qw9dQ=; b=trdT9L4DXQgUyA
	tipXsmLw3pTtrI8unRlq9K/omSzygI2Xqwwbg0XQBBFZCDEEP5zP+Pi3+hER1XeIYhzodQW7fXIZ6
	XxKdGhTnz2YMjzVTObc6UsklUchTMNT2xhZLzfgsqv3g8e7LZaz5qpB5UA9wrdUcMPZIigdsRUiYd
	IHMEfxB0CTwMZLqG6BJFcFikbQk4lih7ltpK/XfnwJsOYR+cUXQZIeX5386VGXwWHjhltyudr9BZB
	Rl/IznunW8+bCRXCCxgwuIJiC37MDbBkvA5x1NUuObQ4AYUjkBhhr5JIqXO2R09Pf2eI7dVfgKtFS
	u/8qCpU17sTvY8QJJ0pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oePhU-00CAPo-9x; Fri, 30 Sep 2022 23:45:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oePhS-00CAOQ-4Y
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 23:45:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A611262570
	for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 23:45:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0494C433D6;
	Fri, 30 Sep 2022 23:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664581545;
	bh=VIeRlxu7gqZyslh9p93xBVwDRcF0wlz+dNT2nGCJ1vE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rbimAoLNk/8KE9Dm4mYlBgG+0/rmEiKuIgH3+raELnMECUGvOT4KuR/8Qj/cYaHks
	 8Rr+Tq25VPl/N3ZH1WuKCJ46U1/XGYmSZpul5tRIxSJzk4DREUJi4liZGgkpmIrArB
	 soJBORyXYW3yFaRf/TJmgKOnz7u2ywGGXjuDs4k32Dul0OG0l7pTzML+XzOmErm6iw
	 RWhiO4KZKNeX52jeUuCpe6XsSUIdm4fqHxbr3bZZslSNOnhKXdTklS+Bzm4VC/D6dO
	 i3hfULItFcjIu+QCZmiTVUwH+1LBl2m0QU+FHiaP+DJ3EZrgBmlDYMFsEz6+p6JNsh
	 xzrbIeKqX950w==
Received: by pali.im (Postfix)
	id DABBE93F; Sat,  1 Oct 2022 01:45:41 +0200 (CEST)
Date: Sat, 1 Oct 2022 01:45:41 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <20220930234541.hsf6ryketcdukpia@pali>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
 <Yy6uaaZUbZsBSqrw@matsya>
 <20220924083127.oht57ivvsr4obrjr@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220924083127.oht57ivvsr4obrjr@pali>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_164546_280476_42D6BBC8 
X-CRM114-Status: GOOD (  34.92  )
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

T24gU2F0dXJkYXkgMjQgU2VwdGVtYmVyIDIwMjIgMTA6MzE6MjcgUGFsaSBSb2jDoXIgd3JvdGU6
Cj4gT24gU2F0dXJkYXkgMjQgU2VwdGVtYmVyIDIwMjIgMTI6NDQ6NDkgVmlub2QgS291bCB3cm90
ZToKPiA+IE9uIDIxLTA5LTIyLCAxMDowNSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiA+IE9uIFdl
ZG5lc2RheSAyMSBTZXB0ZW1iZXIgMjAyMiAwNTowMzowMSBTaGluaWNoaXJvIEthd2FzYWtpIHdy
b3RlOgo+ID4gPiA+IE9uIFNlcCAyMCwgMjAyMiAvIDE0OjExLCBQYWxpIFJvaMOhciB3cm90ZToK
PiA+ID4gPiA+IFR1cnJpcyBNT1ggYm9hcmQgd2l0aCBvbGRlciBBUk0gVHJ1c3RlZCBGaXJtd2Fy
ZSB2ZXJzaW9uIHYxLjUgaXMgbm90IGFibGUKPiA+ID4gPiA+IHRvIGRldGVjdCBhbnkgVVNCIDMu
MCBkZXZpY2UgY29ubmVjdGVkIHRvIFVTQi1BIHBvcnQgb24gTW94LUEgbW9kdWxlIGFmdGVyCj4g
PiA+ID4gPiBjb21taXQgMGE2ZmM3MGQ3NmJkICgicGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3
MDAtY29tcGh5OiBSZW1vdmUgYnJva2VuCj4gPiA+ID4gPiByZXNldCBzdXBwb3J0IikuIE9uIHRo
ZSBvdGhlciBoYW5kIFVTQiAyLjAgZGV2aWNlcyBjb25uZWN0ZWQgdG8gdGhlIHNhbWUKPiA+ID4g
PiA+IFVTQi1BIHBvcnQgYXJlIHdvcmtpbmcgZmluZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSXQg
bG9va3MgYXMgaWYgdGhlIG9sZGVyIGZpcm13YXJlIGNvbmZpZ3VyZXMgQ09NUEhZIHJlZ2lzdGVy
cyBmb3IgVVNCIDMuMAo+ID4gPiA+ID4gc29tZWhvdyBpbmNvbXBhdGlibHkgZm9yIGtlcm5lbCBk
cml2ZXIuIEV4cGVyaW1lbnRzIHNob3cgdGhhdCByZXNldHRpbmcKPiA+ID4gPiA+IENPTVBIWSBy
ZWdpc3RlcnMgdmlhIHNldHRpbmcgU0ZUX1JTVCBhdXRvLWNsZWFyaW5nIGJpdCBpbiBDT01QSFlf
U0ZUX1JFU0VUCj4gPiA+ID4gPiByZWdpc3RlciBmaXhlcyB0aGlzIGlzc3VlLgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBSZXNldCB0aGUgQ09NUEhZIGluIG12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bv
d2VyX29uKCkgZnVuY3Rpb24gYXMgYSBmaXJzdAo+ID4gPiA+ID4gc3RlcCBhZnRlciBzZWxlY3Rp
bmcgQ09NUEhZIGxhbmUgYW5kIFVTQiAzLjAgZnVuY3Rpb24uIFdpdGggdGhpcyBjaGFuZ2UKPiA+
ID4gPiA+IFR1cnJpcyBNT1ggYm9hcmQgY2FuIHN1Y2Nlc3NmdWxseSBkZXRlY3QgVVNCIDMuMCBk
ZXZpY2VzIGFnYWluLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBCZWZvcmUgdGhlIGFib3ZlIG1lbnRp
b25lZCBjb21taXQgdGhpcyByZXNldCB3YXMgaW1wbGVtZW50ZWQgaW4gUEhZIHJlc2V0Cj4gPiA+
ID4gPiBtZXRob2QsIHNvIHRoaXMgaXMgdGhlIHJlYXNvbiB3aHkgdGhlcmUgd2FzIG5vIGlzc3Vl
IHdpdGggb2xkZXIgZmlybXdhcmUKPiA+ID4gPiA+IHZlcnNpb24gdGhlbi4KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gRml4ZXM6IDBhNmZjNzBkNzZiZCAoInBoeTogbWFydmVsbDogcGh5LW12ZWJ1LWEz
NzAwLWNvbXBoeTogUmVtb3ZlIGJyb2tlbiByZXNldCBzdXBwb3J0IikKPiA+ID4gPiA+IFJlcG9y
dGVkLWJ5OiBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+Cj4gPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgo+ID4gPiA+ID4gLS0tCj4gPiA+
ID4gPiBTaGluaWNoaXJvLCBjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHRoYXQgYWxsIFVTQiBmdW5j
dGlvbmFsaXR5IHN0aWxsCj4gPiA+ID4gPiB3b3JrcyBjb3JyZWN0bHkgb24geW91ciBib2FyZD8K
PiA+ID4gPiA+IC0tLQo+ID4gPiA+IAo+ID4gPiA+IFN1cmUuIFRMO0RSLCB0aGlzIHBhdGNoIHdv
cmtzIG9rIGZvciBteSBlc3ByZXNzb2JpbiB2NyBib2FyZC4KPiA+ID4gPiAKPiA+ID4gPiBUZXN0
ZWQtYnk6IFNoaW4naWNoaXJvIEthd2FzYWtpIDxzaGluaWNoaXJvLmthd2FzYWtpQHdkYy5jb20+
Cj4gPiA+ID4gCj4gPiA+ID4gSSBwcmVwYXJlZCBiYXNlIGtlcm5lbCB2NS4xOS4xMCBhcHBseWlu
ZyB0aGUgY29tbWl0IDBhNmZjNzBkNzZiZC4gUmVnYXJkbGVzcwo+ID4gPiA+IHdoZXRoZXIgdGhp
cyBmaXggcGF0Y2ggZm9yIFR1cnJpeCBNT1ggYm9hcmQgaXMgYXBwbGllZCBvciBub3QsIHR3byBV
U0IgcG9ydHMgb24KPiA+ID4gPiBteSBlc3Byc3NvYmluIHY3IGJvYXJkIHdvcmtlZCBhcyBleHBl
Y3RlZC4gSSBjb25maXJtZWQgaXQgYnkgdXNpbmcgVVNCIHRodW1iCj4gPiA+ID4gZHJpdmUuIFRo
ZSBkcml2ZSB3YXMgZGV0ZWN0ZWQgYW5kIGl0cyBwYXJ0aXRpb24gd2FzIG1vdW50ZWQgc3VjY2Vz
c2Z1bGx5IHVzaW5nCj4gPiA+ID4gZWl0aGVyIG9mIHRoZSB0d28gVVNCIHBvcnRzLgo+ID4gPiAK
PiA+ID4gVGhhbmsgeW91IGZvciB0ZXN0aW5nISBBbnl3YXksIHBsZWFzZSBjaGVjayB0aGF0IFVT
QiAzLjAgZGV2aWNlIGlzCj4gPiA+IHdvcmtpbmcgZmluZS4gQmVjYXVzZSBhcyBJIHdyb3RlIGlu
IGNvbW1pdCBtZXNzYWdlLCBvbiBUdXJyaXMgTW94IHdhcwo+ID4gPiBVU0IgMi4wIGRldmljZSB3
b3JraW5nIGZpbmUsIGJ1dCBVU0IgMy4wIG5vdC4gQW5kIG1heWJlIGNoZWNrIGluIHN5c3RlbQo+
ID4gCj4gPiB1cGRhdGUgdGhlIGxvZyBub3c/Cj4gCj4gV2hhdCBkbyB5b3Ugd2FudCB0byB1cGRh
dGU/CgpWaW5vZCwgY291bGQgeW91IGRlc2NyaWJlIGEgYml0IG1vcmUgd2hhdCBpcyBuZWVkZWQg
dG8gdXBkYXRlPyBCZWNhdXNlCnRoaXMgcGF0Y2ggZml4ZXMgcmVncmVzc2lvbiAtIFVTQiAzLjAg
c3VwcG9ydCBvbiBUdXJyaXMgTW94IGJvYXJkLgoKPiA+ID4gKGxzdXNiKSB0aGF0IFVTQiAzLjAg
ZGV2aWNlIHdhcyByZWFsbHkgZGV0ZWN0ZWQgYXMgVVNCIDMuMCBiZWNhdXNlIFVTQgo+ID4gPiAz
LjAgZGV2aWNlcyBoYXZlIHN1cHBvcnRlZCBhbHNvIGZhbGxiYWNrIFVTQiAyLjAvMS54IGxlZ2Fj
eSBtb2RlLgo+ID4gPiAKPiA+ID4gPiBJIGFsc28gY29uZmlybWVkIFNBVEEgcG9ydCBpcyBvayAo
bXkgU1NEIGNhcmQgd2FzIGRldGVjdGVkIHdpdGhvdXQgZXJyb3IKPiA+ID4gPiBtZXNzYWdlKSBh
bmQgdGhyZWUgbmV0d29yayBwb3J0cyB3b3JrcyBvayAoIkxpbmsgaXMgVXAiIG1lc3NhZ2Ugb24g
bmV0d29yayBjYWJsZQo+ID4gPiA+IGNvbm5lY3Rpb24pLiBJIGRpZCBzYW1lIGNvbmZpcm1hdGlv
bnMgd2l0aCB0aGUgbGF0ZXN0IGZpcm13YXJlIChURi1BIGFuZCBVLWJvb3QpCj4gPiA+ID4gYW5k
IG9sZCBmaXJtd2FyZSAod2l0aCB2ZXJzaW9uIGRhdGUgaW4gMjAxNykuIEFsbCBsb29rcyBnb29k
IGZvciBtZS4KPiA+ID4gPiAKPiA+ID4gPiAtLSAKPiA+ID4gPiBTaGluJ2ljaGlybyBLYXdhc2Fr
aQo+ID4gCj4gPiAtLSAKPiA+IH5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

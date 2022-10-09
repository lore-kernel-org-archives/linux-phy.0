Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3582C433FE
	for <linux-phy@archiver.kernel.org>; Sun,  9 Oct 2022 12:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mo/YRCRBOInUxH9FoC2FxHLU5zam6DQhzQxW6r3bNwA=; b=wq46aWopcaDKlm
	O+7BB97yDWDVP0ar0tzTlxtR4j5C27GGrQ3M4w+FXzP4blQOTjZSyXy4PXPp9BgGOH3zqEu1MOkKB
	lEh7TI3uxdQ3HRAQgEpAZpGKRuCdw4Z0G6a/oFmmD/FWJr7oWeRJNNySu9RQkIpwr0sQX4fIKD1HO
	h/hP1YdI1Wn/1O1SKj0HnBTJCNaVehnn9LSLgCdmCAO0HQoJ9QqM99Ke1ZKgmvCK5vQ/53gN1lMEg
	Urx28QCIgL3pUm+euD5k5eUB23cvpeLs5LzsGUxM0Z+oBmQ9POXGiq7V1qrC0iR4SbWM/zdKuVxuL
	iRplsYUzz1Ft244Qyx0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV6C-00FVM3-52; Sun, 09 Oct 2022 12:08:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV65-00FVKN-Cq
	for linux-phy@lists.infradead.org; Sun, 09 Oct 2022 12:08:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 03C0560AE9
	for <linux-phy@lists.infradead.org>; Sun,  9 Oct 2022 12:07:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C24AC433C1;
	Sun,  9 Oct 2022 12:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665317276;
	bh=TD2U5RH5LV2i/Q8kMwTbp5Ja2hirl7cPjSO+Esa4hFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g/mQlHz7rBsEvtQHtgeQhEvHRY2tScSxXojFBzjLUYkDpFGL0hpSkoDygvUHF6afE
	 TMqJ6CTBSy/xUaNlBphAni+OpK5sjJoPdHE6YukTmRRcNxOTD8CaAuJvtHgLlM3gO9
	 +9ZO6ZdG76oz/6DV+WVr97XyjNp6O799CAKbOJ7Trzayzycv9JkmqKQzYkVkBYHiiZ
	 VnBz2MkT5RwsNGRlPafo9mGzcDzIRdpEPSxE2AgCtRE6MPbhc7JUPUxAJLYEIToEdQ
	 OMaBg220nqOcb2lXqhzyYVS4xCiVDkAqSR+jc+amaVBPXyDWK5IPI9v64SdZZ+/9rL
	 U60T6LcZG+ohw==
Received: by pali.im (Postfix)
	id B935C7C1; Sun,  9 Oct 2022 14:07:53 +0200 (CEST)
Date: Sun, 9 Oct 2022 14:07:53 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <20221009120753.zaifeojyuegcmzyc@pali>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
 <Yy6uaaZUbZsBSqrw@matsya>
 <20220924083127.oht57ivvsr4obrjr@pali>
 <20220930234541.hsf6ryketcdukpia@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930234541.hsf6ryketcdukpia@pali>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_050757_544810_F904E85D 
X-CRM114-Status: GOOD (  35.52  )
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

Vmlub2Q6IFBJTkc/CgpPbiBTYXR1cmRheSAwMSBPY3RvYmVyIDIwMjIgMDE6NDU6NDEgUGFsaSBS
b2jDoXIgd3JvdGU6Cj4gT24gU2F0dXJkYXkgMjQgU2VwdGVtYmVyIDIwMjIgMTA6MzE6MjcgUGFs
aSBSb2jDoXIgd3JvdGU6Cj4gPiBPbiBTYXR1cmRheSAyNCBTZXB0ZW1iZXIgMjAyMiAxMjo0NDo0
OSBWaW5vZCBLb3VsIHdyb3RlOgo+ID4gPiBPbiAyMS0wOS0yMiwgMTA6MDUsIFBhbGkgUm9ow6Fy
IHdyb3RlOgo+ID4gPiA+IE9uIFdlZG5lc2RheSAyMSBTZXB0ZW1iZXIgMjAyMiAwNTowMzowMSBT
aGluaWNoaXJvIEthd2FzYWtpIHdyb3RlOgo+ID4gPiA+ID4gT24gU2VwIDIwLCAyMDIyIC8gMTQ6
MTEsIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+ID4gPiBUdXJyaXMgTU9YIGJvYXJkIHdpdGgg
b2xkZXIgQVJNIFRydXN0ZWQgRmlybXdhcmUgdmVyc2lvbiB2MS41IGlzIG5vdCBhYmxlCj4gPiA+
ID4gPiA+IHRvIGRldGVjdCBhbnkgVVNCIDMuMCBkZXZpY2UgY29ubmVjdGVkIHRvIFVTQi1BIHBv
cnQgb24gTW94LUEgbW9kdWxlIGFmdGVyCj4gPiA+ID4gPiA+IGNvbW1pdCAwYTZmYzcwZDc2YmQg
KCJwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IFJlbW92ZSBicm9rZW4KPiA+
ID4gPiA+ID4gcmVzZXQgc3VwcG9ydCIpLiBPbiB0aGUgb3RoZXIgaGFuZCBVU0IgMi4wIGRldmlj
ZXMgY29ubmVjdGVkIHRvIHRoZSBzYW1lCj4gPiA+ID4gPiA+IFVTQi1BIHBvcnQgYXJlIHdvcmtp
bmcgZmluZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEl0IGxvb2tzIGFzIGlmIHRoZSBvbGRl
ciBmaXJtd2FyZSBjb25maWd1cmVzIENPTVBIWSByZWdpc3RlcnMgZm9yIFVTQiAzLjAKPiA+ID4g
PiA+ID4gc29tZWhvdyBpbmNvbXBhdGlibHkgZm9yIGtlcm5lbCBkcml2ZXIuIEV4cGVyaW1lbnRz
IHNob3cgdGhhdCByZXNldHRpbmcKPiA+ID4gPiA+ID4gQ09NUEhZIHJlZ2lzdGVycyB2aWEgc2V0
dGluZyBTRlRfUlNUIGF1dG8tY2xlYXJpbmcgYml0IGluIENPTVBIWV9TRlRfUkVTRVQKPiA+ID4g
PiA+ID4gcmVnaXN0ZXIgZml4ZXMgdGhpcyBpc3N1ZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
IFJlc2V0IHRoZSBDT01QSFkgaW4gbXZlYnVfYTM3MDBfY29tcGh5X3VzYjNfcG93ZXJfb24oKSBm
dW5jdGlvbiBhcyBhIGZpcnN0Cj4gPiA+ID4gPiA+IHN0ZXAgYWZ0ZXIgc2VsZWN0aW5nIENPTVBI
WSBsYW5lIGFuZCBVU0IgMy4wIGZ1bmN0aW9uLiBXaXRoIHRoaXMgY2hhbmdlCj4gPiA+ID4gPiA+
IFR1cnJpcyBNT1ggYm9hcmQgY2FuIHN1Y2Nlc3NmdWxseSBkZXRlY3QgVVNCIDMuMCBkZXZpY2Vz
IGFnYWluLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gQmVmb3JlIHRoZSBhYm92ZSBtZW50aW9u
ZWQgY29tbWl0IHRoaXMgcmVzZXQgd2FzIGltcGxlbWVudGVkIGluIFBIWSByZXNldAo+ID4gPiA+
ID4gPiBtZXRob2QsIHNvIHRoaXMgaXMgdGhlIHJlYXNvbiB3aHkgdGhlcmUgd2FzIG5vIGlzc3Vl
IHdpdGggb2xkZXIgZmlybXdhcmUKPiA+ID4gPiA+ID4gdmVyc2lvbiB0aGVuLgo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gRml4ZXM6IDBhNmZjNzBkNzZiZCAoInBoeTogbWFydmVsbDogcGh5LW12
ZWJ1LWEzNzAwLWNvbXBoeTogUmVtb3ZlIGJyb2tlbiByZXNldCBzdXBwb3J0IikKPiA+ID4gPiA+
ID4gUmVwb3J0ZWQtYnk6IE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KPiA+ID4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KPiA+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiA+IFNoaW5pY2hpcm8sIGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgdGhh
dCBhbGwgVVNCIGZ1bmN0aW9uYWxpdHkgc3RpbGwKPiA+ID4gPiA+ID4gd29ya3MgY29ycmVjdGx5
IG9uIHlvdXIgYm9hcmQ/Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTdXJl
LiBUTDtEUiwgdGhpcyBwYXRjaCB3b3JrcyBvayBmb3IgbXkgZXNwcmVzc29iaW4gdjcgYm9hcmQu
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRlc3RlZC1ieTogU2hpbidpY2hpcm8gS2F3YXNha2kgPHNo
aW5pY2hpcm8ua2F3YXNha2lAd2RjLmNvbT4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSBwcmVwYXJl
ZCBiYXNlIGtlcm5lbCB2NS4xOS4xMCBhcHBseWluZyB0aGUgY29tbWl0IDBhNmZjNzBkNzZiZC4g
UmVnYXJkbGVzcwo+ID4gPiA+ID4gd2hldGhlciB0aGlzIGZpeCBwYXRjaCBmb3IgVHVycml4IE1P
WCBib2FyZCBpcyBhcHBsaWVkIG9yIG5vdCwgdHdvIFVTQiBwb3J0cyBvbgo+ID4gPiA+ID4gbXkg
ZXNwcnNzb2JpbiB2NyBib2FyZCB3b3JrZWQgYXMgZXhwZWN0ZWQuIEkgY29uZmlybWVkIGl0IGJ5
IHVzaW5nIFVTQiB0aHVtYgo+ID4gPiA+ID4gZHJpdmUuIFRoZSBkcml2ZSB3YXMgZGV0ZWN0ZWQg
YW5kIGl0cyBwYXJ0aXRpb24gd2FzIG1vdW50ZWQgc3VjY2Vzc2Z1bGx5IHVzaW5nCj4gPiA+ID4g
PiBlaXRoZXIgb2YgdGhlIHR3byBVU0IgcG9ydHMuCj4gPiA+ID4gCj4gPiA+ID4gVGhhbmsgeW91
IGZvciB0ZXN0aW5nISBBbnl3YXksIHBsZWFzZSBjaGVjayB0aGF0IFVTQiAzLjAgZGV2aWNlIGlz
Cj4gPiA+ID4gd29ya2luZyBmaW5lLiBCZWNhdXNlIGFzIEkgd3JvdGUgaW4gY29tbWl0IG1lc3Nh
Z2UsIG9uIFR1cnJpcyBNb3ggd2FzCj4gPiA+ID4gVVNCIDIuMCBkZXZpY2Ugd29ya2luZyBmaW5l
LCBidXQgVVNCIDMuMCBub3QuIEFuZCBtYXliZSBjaGVjayBpbiBzeXN0ZW0KPiA+ID4gCj4gPiA+
IHVwZGF0ZSB0aGUgbG9nIG5vdz8KPiA+IAo+ID4gV2hhdCBkbyB5b3Ugd2FudCB0byB1cGRhdGU/
Cj4gCj4gVmlub2QsIGNvdWxkIHlvdSBkZXNjcmliZSBhIGJpdCBtb3JlIHdoYXQgaXMgbmVlZGVk
IHRvIHVwZGF0ZT8gQmVjYXVzZQo+IHRoaXMgcGF0Y2ggZml4ZXMgcmVncmVzc2lvbiAtIFVTQiAz
LjAgc3VwcG9ydCBvbiBUdXJyaXMgTW94IGJvYXJkLgo+IAo+ID4gPiA+IChsc3VzYikgdGhhdCBV
U0IgMy4wIGRldmljZSB3YXMgcmVhbGx5IGRldGVjdGVkIGFzIFVTQiAzLjAgYmVjYXVzZSBVU0IK
PiA+ID4gPiAzLjAgZGV2aWNlcyBoYXZlIHN1cHBvcnRlZCBhbHNvIGZhbGxiYWNrIFVTQiAyLjAv
MS54IGxlZ2FjeSBtb2RlLgo+ID4gPiA+IAo+ID4gPiA+ID4gSSBhbHNvIGNvbmZpcm1lZCBTQVRB
IHBvcnQgaXMgb2sgKG15IFNTRCBjYXJkIHdhcyBkZXRlY3RlZCB3aXRob3V0IGVycm9yCj4gPiA+
ID4gPiBtZXNzYWdlKSBhbmQgdGhyZWUgbmV0d29yayBwb3J0cyB3b3JrcyBvayAoIkxpbmsgaXMg
VXAiIG1lc3NhZ2Ugb24gbmV0d29yayBjYWJsZQo+ID4gPiA+ID4gY29ubmVjdGlvbikuIEkgZGlk
IHNhbWUgY29uZmlybWF0aW9ucyB3aXRoIHRoZSBsYXRlc3QgZmlybXdhcmUgKFRGLUEgYW5kIFUt
Ym9vdCkKPiA+ID4gPiA+IGFuZCBvbGQgZmlybXdhcmUgKHdpdGggdmVyc2lvbiBkYXRlIGluIDIw
MTcpLiBBbGwgbG9va3MgZ29vZCBmb3IgbWUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0tIAo+ID4g
PiA+ID4gU2hpbidpY2hpcm8gS2F3YXNha2kKPiA+ID4gCj4gPiA+IC0tIAo+ID4gPiB+Vmlub2QK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1C05C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 12:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ+lNZQaAnyqamzdWhP2bicPiiQu/w4eBMTs+OqtPDg=; b=tRxXyg8wnk/ucA
	K6ZPDAM+FIZlaubYHpOJoJ2zX06bv9AGH9wLvk7NXHYxrTi0J4rlaD1CGQGFJ+pdrjJdAWgQ1AycU
	E9d0m1xWL2pIp1i9ewpljVmfpKbEfAYKQi9M/XW52lN6EUvpzB4dEHEUzL6DUgo5E5nZsbGOfhZKN
	YSX3cNA810CCgiLcPnWHe6uMl3aXv0+gKPeniGK7YGvVGYv3m4pwFuKsYpaXVzn07JOL5YPpeHlZA
	42Wsya1g0QeEVtjdeqBW1nybB/nGohi30iNIbqvKT/pmcsKvsfAcPK3G17y8EJ3Nw4krgGX7RVh8W
	eMFTfY/H5NkDPwq9BlXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oazI9-00BNbv-EY; Wed, 21 Sep 2022 12:57:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oazI7-00BNbb-Dk
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 12:57:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AF58662B38;
	Wed, 21 Sep 2022 12:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B58A7C433D6;
	Wed, 21 Sep 2022 12:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663765046;
	bh=OGgXPceGJJkLuXVPedJyDxmwKaBfo87tdcas+G7ybtk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nMWUMwS/MzJ6pLnBI0IxFYB9qkdvRmn3atnmw6qHtxUXK4uJcHbwZwmXml2Ipj2Hg
	 LmE37t+J31lAlNcztOHWK2UsAIYpL2iq7Hg5Ov5YRaeKWy3cD2Q6JP3mOP+Vf+KE2W
	 rI/UFuovWCsPPuOhF5eXJFHMsth1BuAWPf8tSTAzasuXHR2Nj+KmxJPr7kCSHNtSgD
	 A+UdV5MQH47BVb6sLcPgMm/wFAzisbqn2c5IsnEiqn4XRRem7XHiyf7o8qH9Rhm+oJ
	 Tv5AjzeFe9sHC8LWnK440NsVjefNzSwQkvjuJf/4IpOOeLuqd1jJ1rp7WlcdjPWcNs
	 S5YCFPVLa2MHg==
Received: by pali.im (Postfix)
	id 9E10C789; Wed, 21 Sep 2022 14:57:22 +0200 (CEST)
Date: Wed, 21 Sep 2022 14:57:22 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <20220921125722.enp2tffhuz55enwv@pali>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
 <20220921124457.26hjljy7fcv45zfk@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921124457.26hjljy7fcv45zfk@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_055727_577080_1499499A 
X-CRM114-Status: GOOD (  32.76  )
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

T24gV2VkbmVzZGF5IDIxIFNlcHRlbWJlciAyMDIyIDEyOjQ0OjU4IFNoaW5pY2hpcm8gS2F3YXNh
a2kgd3JvdGU6Cj4gT24gU2VwIDIxLCAyMDIyIC8gMDg6MDUsIFBhbGkgUm9ow6FyIHdyb3RlOgo+
ID4gT24gV2VkbmVzZGF5IDIxIFNlcHRlbWJlciAyMDIyIDA1OjAzOjAxIFNoaW5pY2hpcm8gS2F3
YXNha2kgd3JvdGU6Cj4gPiA+IE9uIFNlcCAyMCwgMjAyMiAvIDE0OjExLCBQYWxpIFJvaMOhciB3
cm90ZToKPiA+ID4gPiBUdXJyaXMgTU9YIGJvYXJkIHdpdGggb2xkZXIgQVJNIFRydXN0ZWQgRmly
bXdhcmUgdmVyc2lvbiB2MS41IGlzIG5vdCBhYmxlCj4gPiA+ID4gdG8gZGV0ZWN0IGFueSBVU0Ig
My4wIGRldmljZSBjb25uZWN0ZWQgdG8gVVNCLUEgcG9ydCBvbiBNb3gtQSBtb2R1bGUgYWZ0ZXIK
PiA+ID4gPiBjb21taXQgMGE2ZmM3MGQ3NmJkICgicGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3
MDAtY29tcGh5OiBSZW1vdmUgYnJva2VuCj4gPiA+ID4gcmVzZXQgc3VwcG9ydCIpLiBPbiB0aGUg
b3RoZXIgaGFuZCBVU0IgMi4wIGRldmljZXMgY29ubmVjdGVkIHRvIHRoZSBzYW1lCj4gPiA+ID4g
VVNCLUEgcG9ydCBhcmUgd29ya2luZyBmaW5lLgo+ID4gPiA+IAo+ID4gPiA+IEl0IGxvb2tzIGFz
IGlmIHRoZSBvbGRlciBmaXJtd2FyZSBjb25maWd1cmVzIENPTVBIWSByZWdpc3RlcnMgZm9yIFVT
QiAzLjAKPiA+ID4gPiBzb21laG93IGluY29tcGF0aWJseSBmb3Iga2VybmVsIGRyaXZlci4gRXhw
ZXJpbWVudHMgc2hvdyB0aGF0IHJlc2V0dGluZwo+ID4gPiA+IENPTVBIWSByZWdpc3RlcnMgdmlh
IHNldHRpbmcgU0ZUX1JTVCBhdXRvLWNsZWFyaW5nIGJpdCBpbiBDT01QSFlfU0ZUX1JFU0VUCj4g
PiA+ID4gcmVnaXN0ZXIgZml4ZXMgdGhpcyBpc3N1ZS4KPiA+ID4gPiAKPiA+ID4gPiBSZXNldCB0
aGUgQ09NUEhZIGluIG12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29uKCkgZnVuY3Rpb24g
YXMgYSBmaXJzdAo+ID4gPiA+IHN0ZXAgYWZ0ZXIgc2VsZWN0aW5nIENPTVBIWSBsYW5lIGFuZCBV
U0IgMy4wIGZ1bmN0aW9uLiBXaXRoIHRoaXMgY2hhbmdlCj4gPiA+ID4gVHVycmlzIE1PWCBib2Fy
ZCBjYW4gc3VjY2Vzc2Z1bGx5IGRldGVjdCBVU0IgMy4wIGRldmljZXMgYWdhaW4uCj4gPiA+ID4g
Cj4gPiA+ID4gQmVmb3JlIHRoZSBhYm92ZSBtZW50aW9uZWQgY29tbWl0IHRoaXMgcmVzZXQgd2Fz
IGltcGxlbWVudGVkIGluIFBIWSByZXNldAo+ID4gPiA+IG1ldGhvZCwgc28gdGhpcyBpcyB0aGUg
cmVhc29uIHdoeSB0aGVyZSB3YXMgbm8gaXNzdWUgd2l0aCBvbGRlciBmaXJtd2FyZQo+ID4gPiA+
IHZlcnNpb24gdGhlbi4KPiA+ID4gPiAKPiA+ID4gPiBGaXhlczogMGE2ZmM3MGQ3NmJkICgicGh5
OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBSZW1vdmUgYnJva2VuIHJlc2V0IHN1
cHBvcnQiKQo+ID4gPiA+IFJlcG9ydGVkLWJ5OiBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5v
cmc+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4K
PiA+ID4gPiAtLS0KPiA+ID4gPiBTaGluaWNoaXJvLCBjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHRo
YXQgYWxsIFVTQiBmdW5jdGlvbmFsaXR5IHN0aWxsCj4gPiA+ID4gd29ya3MgY29ycmVjdGx5IG9u
IHlvdXIgYm9hcmQ/Cj4gPiA+ID4gLS0tCj4gPiA+IAo+ID4gPiBTdXJlLiBUTDtEUiwgdGhpcyBw
YXRjaCB3b3JrcyBvayBmb3IgbXkgZXNwcmVzc29iaW4gdjcgYm9hcmQuCj4gPiA+IAo+ID4gPiBU
ZXN0ZWQtYnk6IFNoaW4naWNoaXJvIEthd2FzYWtpIDxzaGluaWNoaXJvLmthd2FzYWtpQHdkYy5j
b20+Cj4gPiA+IAo+ID4gPiBJIHByZXBhcmVkIGJhc2Uga2VybmVsIHY1LjE5LjEwIGFwcGx5aW5n
IHRoZSBjb21taXQgMGE2ZmM3MGQ3NmJkLiBSZWdhcmRsZXNzCj4gPiA+IHdoZXRoZXIgdGhpcyBm
aXggcGF0Y2ggZm9yIFR1cnJpeCBNT1ggYm9hcmQgaXMgYXBwbGllZCBvciBub3QsIHR3byBVU0Ig
cG9ydHMgb24KPiA+ID4gbXkgZXNwcnNzb2JpbiB2NyBib2FyZCB3b3JrZWQgYXMgZXhwZWN0ZWQu
IEkgY29uZmlybWVkIGl0IGJ5IHVzaW5nIFVTQiB0aHVtYgo+ID4gPiBkcml2ZS4gVGhlIGRyaXZl
IHdhcyBkZXRlY3RlZCBhbmQgaXRzIHBhcnRpdGlvbiB3YXMgbW91bnRlZCBzdWNjZXNzZnVsbHkg
dXNpbmcKPiA+ID4gZWl0aGVyIG9mIHRoZSB0d28gVVNCIHBvcnRzLgo+ID4gCj4gPiBUaGFuayB5
b3UgZm9yIHRlc3RpbmchIEFueXdheSwgcGxlYXNlIGNoZWNrIHRoYXQgVVNCIDMuMCBkZXZpY2Ug
aXMKPiA+IHdvcmtpbmcgZmluZS4gQmVjYXVzZSBhcyBJIHdyb3RlIGluIGNvbW1pdCBtZXNzYWdl
LCBvbiBUdXJyaXMgTW94IHdhcwo+ID4gVVNCIDIuMCBkZXZpY2Ugd29ya2luZyBmaW5lLCBidXQg
VVNCIDMuMCBub3QuIEFuZCBtYXliZSBjaGVjayBpbiBzeXN0ZW0KPiA+IChsc3VzYikgdGhhdCBV
U0IgMy4wIGRldmljZSB3YXMgcmVhbGx5IGRldGVjdGVkIGFzIFVTQiAzLjAgYmVjYXVzZSBVU0IK
PiA+IDMuMCBkZXZpY2VzIGhhdmUgc3VwcG9ydGVkIGFsc28gZmFsbGJhY2sgVVNCIDIuMC8xLngg
bGVnYWN5IG1vZGUuCj4gCj4gQWgsIEkgc2VlLiBGb3IgdGhhdCBjaGVjaywgSSBjb25uZWN0ZWQg
bXkgVVNCIDMuMSBkcml2ZSB0byB0aGUgVVNCIDMuMCBwb3J0IG9mCj4gbXkgZXNwcmVzc29iaW4s
IHRoZW4gY2hlY2tlZCAnbHN1c2IgLXZ0JyBhbmQgc3lzZnM6Cj4gCj4gJCBsc3VzYiAtdnQKPiAv
OiAgQnVzIDAzLlBvcnQgMTogRGV2IDEsIENsYXNzPXJvb3RfaHViLCBEcml2ZXI9eGhjaS1oY2Qv
MXAsIDUwMDBNCj4gICAgIElEIDFkNmI6MDAwMyBMaW51eCBGb3VuZGF0aW9uIDMuMCByb290IGh1
Ygo+ICAgICB8X18gUG9ydCAxOiBEZXYgMiwgSWYgMCwgQ2xhc3M9TWFzcyBTdG9yYWdlLCBEcml2
ZXI9dXNiLXN0b3JhZ2UsIDUwMDBNCj4gICAgICAgICBJRCAwNzgxOjU1ODMgU2FuRGlzayBDb3Jw
LiBVbHRyYSBGaXQKPiAvOiAgQnVzIDAyLlBvcnQgMTogRGV2IDEsIENsYXNzPXJvb3RfaHViLCBE
cml2ZXI9eGhjaS1oY2QvMXAsIDQ4ME0KPiAgICAgSUQgMWQ2YjowMDAyIExpbnV4IEZvdW5kYXRp
b24gMi4wIHJvb3QgaHViCj4gLzogIEJ1cyAwMS5Qb3J0IDE6IERldiAxLCBDbGFzcz1yb290X2h1
YiwgRHJpdmVyPW9yaW9uLWVoY2kvMXAsIDQ4ME0KPiAgICAgSUQgMWQ2YjowMDAyIExpbnV4IEZv
dW5kYXRpb24gMi4wIHJvb3QgaHViCj4gCj4gJCBjYXQgL3N5cy9idXMvdXNiL2RldmljZXMvMy0x
L3ZlcnNpb24gCj4gIDMuMDAKPiAKPiBVU0IzIHBvcnQgaXMgbGlzdGVkIHVuZGVyIHRoZSBCdXMg
MDMsICIzLjAiIHJvb3QgaHViLiBBY2NvcmRpbmcgdG8gc3lzZnMsIGl0cwo+IFVTQiB2ZXJzaW9u
IGlzIDMuMDAuIEkgb2JzZXJ2ZWQgc2FtZSBvdXRwdXRzIHdpdGggYW5kIHdpdGhvdXQgdGhlIHBh
dGNoIGZvcgo+IFR1cnJpcyBNT1ggYm9hcmQuCj4gCj4gQXJlIHRoZXNlIGdvb2QgZW5vdWdoPyBJ
ZiBvdGhlciBjaGVjayBpcyBuZWVkZWQsIHBsZWFzZSBsZXQgbWUga25vdy4KClBlcmZlY3QsIHRo
YXQgaXMgZW5vdWdoISBJZiBVU0IgMy4xIGRyaXZlIGlzIGRldGVjdGVkIGFuZCB3b3JraW5nIHRo
ZW4KZXZlcnl0aGluZyBpcyBPSy4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=

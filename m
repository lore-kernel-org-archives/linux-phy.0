Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92071C4725D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 06:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TjPHWARJ2xktJOxx2FlRFOFfN6EK/zOqHrnX47lFtY=; b=4F+0X81DpUhQVh
	d2VBL5kIJSXDnwiufyW3SkHB8fT354dMtaAjrvrx3S98AvvOHP/AwLfOlFqA8Xhl34myFGHPNRWlj
	bmg4ZZqQBWyxfbKXtFw3TiONaQCCbJMxHk2oxIVBjAV0oMlcFY9C0V8PWtUWsjALd7K76rT7+Y+H2
	FWLUk4I+d5u4RMHjtc5JepuD/jKH5anY1wja7XO4nmAKZtI96/O32CCKW8E7U8KDWALx34DwkRRIa
	cOUbPz+Jb3zYCF37YompcEaOQdhv5xWRiUu6e0fGr9OYaQ7wRtjwuWzNQbujNg3OS0dxwkpBRtFlz
	PRFXiLs2PvpVJVPn5L3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRnZy-00AhYi-0Z;
	Mon, 22 Jan 2024 06:14:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRnZs-00AhXM-2D
	for linux-phy@lists.infradead.org;
	Mon, 22 Jan 2024 06:14:40 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 40M6Ds3P056965;
	Mon, 22 Jan 2024 00:13:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1705904034;
	bh=aMRk3G/zudbpMm1J9wHh8HkzZmrJoEqNPMez3+2ReM0=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=otfN9K2Ef89mBE+UDlXbLXAJtjnrehwXyO1ZywSCPyGM2fGHeOO5W55cgMlCtWzAz
	 m1p86JV1b4T/A5C2AIqu4hXb7g4vFS3dCiJJ7bNEvW4h+BxyA2Twox62Nd+lwPR8oU
	 E6y9ZoCXdyODXJX0qT0gZXyhl5RKsjLEUMozUEyU=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 40M6DsFw008279
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 22 Jan 2024 00:13:54 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 22
 Jan 2024 00:13:52 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 22 Jan 2024 00:13:52 -0600
Received: from [172.24.227.9] (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 40M6Dmaf083625;
	Mon, 22 Jan 2024 00:13:49 -0600
Message-ID: <5b7cd38c-7047-4528-ac6b-8d7a31a1f22f@ti.com>
Date: Mon, 22 Jan 2024 11:43:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <ylal@codeaurora.org>, <regressions@lists.linux.dev>,
        <jan.kiszka@siemens.com>, <s-vadapalli@ti.com>
Subject: Re: [REGRESSION] Keystone PCI driver probing and SerDes PLL timeout
Content-Language: en-US
To: Kishon Vijay Abraham I <kvijayab@amd.com>,
        Diogo Ivo
	<diogo.ivo@siemens.com>,
        Greg KH <gregkh@linuxfoundation.org>
References: <20240111141331.3715265-1-diogo.ivo@siemens.com>
 <2024011246-corned-disregard-7123@gregkh>
 <1cce86b1-b309-40e0-afff-45baeb013e1f@siemens.com>
 <88e450b5-5be0-2203-3474-45778503699d@amd.com>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <88e450b5-5be0-2203-3474-45778503699d@amd.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_221436_895531_81EE5097 
X-CRM114-Status: GOOD (  31.19  )
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

CgpPbiAyMi8wMS8yNCAxMToyMiwgS2lzaG9uIFZpamF5IEFicmFoYW0gSSB3cm90ZToKPiArU2lk
ZGhhcnRoCj4gCj4gSGkgRGlvZ28sCj4gCj4gT24gMS8xMi8yMDI0IDU6MTYgUE0sIERpb2dvIEl2
byB3cm90ZToKPj4KPj4gT24gMS8xMi8yNCAwNzo1NywgR3JlZyBLSCB3cm90ZToKPj4+IE9uIFRo
dSwgSmFuIDExLCAyMDI0IGF0IDAyOjEzOjMwUE0gKzAwMDAsIERpb2dvIEl2byB3cm90ZToKPj4+
PiBIZWxsbywKPj4+Pgo+Pj4+IFdoZW4gdGVzdGluZyB0aGUgSU9UMjA1MCBBZHZhbmNlZCBNLjIg
cGxhdGZvcm0gd2l0aCBMaW51eCBDSVAgNi4xCj4+Pj4gd2UgY2FtZSBhY3Jvc3MgYSBicmVha2Fn
ZSBpbiB0aGUgcHJvYmluZyBvZiB0aGUgS2V5c3RvbmUgUENJIGRyaXZlcgo+Pj4+IChkcml2ZXJz
L3BoeS90aS9wY2kta2V5c3RvbmUuYykuIFRoaXMgcHJvYmluZyB3YXMgd29ya2luZyBjb3JyZWN0
bHkKPj4+PiBpbiB0aGUgcHJldmlvdXMgdmVyc2lvbiB3ZSB3ZXJlIHVzaW5nLCB2NS4xMC4KPj4+
Pgo+Pj4+IEluIG9yZGVyIHRvIGRlYnVnIHRoaXMgd2UgY2hhbmdlZCBvdmVyIHRvIG1haW5saW5l
IExpbnV4IGFuZCBiaXNzZWN0aW5nCj4+Pj4gbGVhZCB1cyB0byBmaW5kIHRoYXQgY29tbWl0IGU2
MTFmOGNkODcxNyBpcyB0aGUgY3VscHJpdCwgYW5kIHdpdGggaXQgYXBwbGllZAo+Pj4+IHdlIGdl
dCB0aGUgZm9sbG93aW5nIG1lc3NhZ2VzOgo+Pj4+Cj4+Pj4gW8KgwqAgMTAuOTU0NTk3XSBwaHkt
YW02NTQgOTEwMDAwLnNlcmRlczogRmFpbGVkIHRvIGVuYWJsZSBQTEwKPj4+PiBbwqDCoCAxMC45
NjAxNTNdIHBoeSBwaHktOTEwMDAwLnNlcmRlcy4zOiBwaHkgcG93ZXJvbiBmYWlsZWQgLS0+IC0x
MTAKPj4+PiBbwqDCoCAxMC45Njc0ODVdIGtleXN0b25lLXBjaWUgNTUwMDAwMC5wY2llOiBmYWls
ZWQgdG8gZW5hYmxlIHBoeQo+Pj4+IFvCoMKgIDEwLjk3MzU2MF0ga2V5c3RvbmUtcGNpZTogcHJv
YmUgb2YgNTUwMDAwMC5wY2llIGZhaWxlZCB3aXRoIGVycm9yIC0xMTAKPj4+Pgo+Pj4+IFRoaXMg
dGltZW91dCBpcyBvY2N1cmluZyBpbiBzZXJkZXNfYW02NTRfZW5hYmxlX3BsbCgpLCBjYWxsZWQg
ZnJvbSB0aGUKPj4+PiBwaHlfb3BzIC5wb3dlcl9vbigpIGhvb2suCj4+Pj4KPj4+PiBEdWUgdG8g
dGhlIG5hdHVyZSBvZiB0aGUgZXJyb3IgbWVzc2FnZXMgYW5kIHRoZSBjb250ZW50cyBvZiB0aGUg
Y29tbWl0IHdlCj4+Pj4gYmVsaWV2ZSB0aGF0IHRoaXMgaXMgZHVlIHRvIGFuIHVuaWRlbnRpZmll
ZCByYWNlIGNvbmRpdGlvbiBpbiB0aGUgcHJvYmluZyBvZgo+Pj4+IHRoZSBLZXlzdG9uZSBQQ0kg
ZHJpdmVyIHdoZW4gZW5hYmxpbmcgdGhlIFBIWSBQTExzLCBzaW5jZSBjaGFuZ2VzIGluIHRoZQo+
Pj4+IHdvcmtxdWV1ZSB0aGUgZGVmZXJyZWQgcHJvYmluZyBydW5zIG9uIHNob3VsZCBub3QgYWZm
ZWN0IGlmIHByb2Jpbmcgd29ya3MKPj4+PiBvciBub3QuIFRvIGZ1cnRoZXIgc3VwcG9ydCB0aGUg
ZXhpc3RlbmNlIG9mIGEgcmFjZSBjb25kaXRpb24sIGNvbW1pdAo+Pj4+IDg2YmZiYjdjZTRmNiAo
YSBzY2hlZHVsZXIgY29tbWl0KSBmaXhlcyBwcm9iaW5nLCBtb3N0IGxpa2VseSB1bmludGVudGlv
bmFsbHkKPj4+PiBtZWFuaW5nIHRoYXQgdGhlIHByb2JsZW0gbWF5IGFyaXNlIGluIHRoZSBmdXR1
cmUgYWdhaW4uCj4+Pj4KPj4+PiBPbmUgcG9zc2libGUgZXhwbGFuYXRpb24gaXMgdGhhdCB0aGVy
ZSBhcmUgcHJlLXJlcXVpc2l0ZXMgZm9yIGVuYWJsaW5nIHRoZSBQTEwKPj4+PiB0aGF0IGFyZSBu
b3QgYmVpbmcgbWV0IHdoZW4gZTYxMWY4Y2Q4NzE3IGlzIGFwcGxpZWQ7IHRvIHNlZSBpZiB0aGlz
IGlzIHRoZSBjYXNlCj4+Pj4gaGVscCBmcm9tIHBlb3BsZSBtb3JlIGZhbWlsaWFyIHdpdGggdGhl
IGhhcmR3YXJlIGRldGFpbHMgd291bGQgYmUgdXNlZnVsLgo+Pj4+Cj4+Pj4gQXMgb2ZmaWNpYWwg
c3VwcG9ydCBzcGVjaWZpY2FsbHkgZm9yIHRoZSBJT1QyMDUwIEFkdmFuY2VkIE0uMiBwbGF0Zm9y
bSB3YXMKPj4+PiBpbnRyb2R1Y2VkIGluIExpbnV4IHY2LjMgKHNvIGluIHRoZSBtaWRkbGUgb2Yg
dGhlIGNvbW1pdHMgbWVudGlvbmVkIGFib3ZlKQo+Pj4+IGFsbCBvZiBvdXIgdGVzdGluZyB3YXMg
ZG9uZSB3aXRoIHRoZSBsYXRlc3QgbWFpbmxpbmUgRGV2aWNlVHJlZSB3aXRoIFsxXQo+Pj4+IGFw
cGxpZWQgb24gdG9wLgo+Pj4+Cj4+Pj4gVGhpcyBpcyBiZWluZyByZXBvcnRlZCBhcyBhIHJlZ3Jl
c3Npb24gZXZlbiB0aG91Z2ggdGVjaG5pY2FsbHkgdGhpbmdzIGFyZQo+Pj4+IHdvcmtpbmcgd2l0
aCB0aGUgY3VycmVudCBzdGF0ZSBvZiBtYWlubGluZSBzaW5jZSB3ZSBiZWxpZXZlIHRoZSBjdXJy
ZW50IGZpeAo+Pj4+IHRvIGJlIGFuIHVuaW50ZW5kZWQgYnktcHJvZHVjdCBvZiBvdGhlciB3b3Jr
Lgo+Pj4+Cj4+Pj4gI3JlZ3pib3QgaW50cm9kdWNlZDogZTYxMWY4Y2Q4NzE3Cj4+PiBBICJyZWdy
ZXNzaW9uIiBmb3IgYSBjb21taXQgdGhhdCB3YXMgaW4gNS4xMywgaS5lLiBhbG1vc3QgMiB5ZWFy
cyBhZ28sCj4+PiBpcyBhIGJpdCB0b3VnaCwgYW5kIG5vdCBzb21ldGhpbmcgSSB3b3VsZCBjb25z
aWRlciByZWFsbHkgYSAicmVncmVzc2lvbiIKPj4+IGFzIGl0IGlzIGNvcmUgY29kZSB0aGF0IGV2
ZXJ5b25lIHJ1bnMuwqAgR2l2ZW4geW91IHBvaW50IGF0IHNjaGVkdWxlcgo+Pj4gY2hhbmdlcyBh
bHNvIGZpeGluZyB0aGUgaXNzdWUsIHRoaXMgc2VlbXMgbGlrZSBhIGhpbnQgYXMgdG8gd2hhdCBp
cwo+Pj4gd3Jvbmcgd2l0aCB5b3VyIGRyaXZlci9wbGF0Zm9ybSwgYnV0IGlzIG5vdCB0aGUgcm9v
dCBjYXVzZSBvZiBpdCBhbmQKPj4+IG5lZWRzIHRvIGJlIHJlc29sdmVkLsKgIFBsZWFzZSBsb29r
IGF0IGZpeGluZyBpdCBpbiB5b3VyIGRyaXZlcnM/wqAgQXJlCj4+PiB0aGV5IGFsbCBpbiBMaW51
cydzIHRyZWU/Cj4+Pgo+Pj4gdGhhbmtzLAo+Pj4KPj4+IGdyZWcgay1oCj4+IEhlbGxvLAo+Pgo+
PiBJIHNlZSB0aGUgcG9pbnQgdGhhdCB0aGlzIGNvZGUgaGFzIGJlZW4gbGl2aW5nIGluIHRoZSBr
ZXJuZWwgZm9yIGEKPj4gbG9uZyB0aW1lIG5vdyBhbmQgdGhhdCBpdCBiZWNvbWVzIG1vcmUgZGlm
ZmljdWx0IHRvIGp1c3RpZnkgaXQgYXMKPj4gYSByZWdyZXNzaW9uOyBJIHJlcG9ydGVkIGl0IGFz
IHN1Y2ggYmFzZWQgb24gdGhlIHN1cHBvc2l0aW9uIHRoYXQKPj4gdGhlIGN1cnJlbnQgZml4IGlz
IG5vdCB0aGUgcHJvcGVyIG9uZSBhbmQgdGhhdCB0ZWNobmljYWxseSB0aGlzCj4+IHN1cHBvcnQg
d2FzIGJyb2tlbiBiZXR3ZWVuIHRoZSBpZGVudGlmaWVkIGNvbW1pdHMuCj4+Cj4+IElmIHRoaXMg
c2l0dWF0aW9uIGlzIGluY29tcGF0aWJsZSB3aXRoIGEgcmVncmVzc2lvbiByZXBvcnQgdGhlbiBp
dAo+PiBjYW4gYmUgZHJvcHBlZCBhcyBvbmUgYW5kIHdlIGtlZXAgaXQgaXMgYXMgYSBidWcgcmVw
b3J0IGZvciB3aGljaAo+PiB3ZSBhcmUgbG9va2luZyBmb3IgaW5wdXQgZnJvbSB0aGUgY29tbXVu
aXR5Lgo+Pgo+PiBJIGFncmVlIHRoYXQgdGhpcyBuZWVkcyB0byBiZSBmaXhlZCBpbiB0aGUgZHJp
dmVyIHNpbmNlIGFsbCBvdGhlcgo+PiBkcml2ZXJzIGFyZSB3b3JraW5nIGZpbmUgd2l0aCBlNjEx
ZjhjZDg3MTcsIGFuZCB5ZXMsIGFsbCBvZiB0aGUKPj4gZHJpdmVycyBpbiBxdWVzdGlvbiBhcmUg
aW4gbWFpbmxpbmUsIHdoZXJlIHdlIHBlcmZvcm1lZCB0aGUgYmlzc2VjdGlvbi4KPiAKPiBMb29r
cyBsaWtlIFNpZGRoYXJ0aCBmcm9tIFRJIGZpeGVkIGEgc2ltaWxhciBpc3N1ZSByZXBvcnRlZCBi
eSB5b3UgaGVyZS4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMwOTI3MDQxODQ1LjEy
MjIwODAtMS1zLXZhZGFwYWxsaUB0aS5jb20KCktpc2hvbiwKClRoYW5rIHlvdSBmb3IgbG9vcGlu
ZyBtZSBpbi4KCkRpb2dvLAoKVGhlIGlzc3VlIHlvdSBhcmUgcmVmZXJyaW5nIHRvIGlzIGlkZW50
aWNhbCB0byB0aGUgb25lIGZpeGVkIGluIHRoZSBwYXRjaCBzaGFyZWQKYWJvdmUgYnkgS2lzaG9u
LiBJIGhhZCBhbHNvIGJpc2VjdGVkIHRoZSBjdWxwcml0IHRvIGNvbW1pdCBlNjExZjhjZDg3MTcg
d2hpY2gKZG9lc24ndCBoYXZlIGFueXRoaW5nIHRvIGRvIHdpdGggUENJZS9TZXJkZXMgaW4gcGFy
dGljdWxhci4gSXQgb25seSBzZWVtcyB0bwpleHBvc2UgdGhlIHVuZGVybHlpbmcgcmFjZSBjb25k
aXRpb24gd2hpY2ggaGFzIGFsd2F5cyBleGlzdGVkLiBUaGUgZml4IGhhcyBiZWVuCm1lcmdlZCBh
bmQgaXMgbm93IGEgcGFydCBvZiBtYWlubGluZSBMaW51eDoKaHR0cHM6Ly9naXRodWIuY29tL3Rv
cnZhbGRzL2xpbnV4L2NvbW1pdC9jMTJjYTExMGM2MTNhODFjYjBmMDA5OTAxOWM4MzlkMDc4Y2Qw
ZjM4CgpBZGRpdGlvbmFsbHksIHlvdSBtaWdodCBydW4gaW50byBhbiBpc3N1ZSBvbmNlIHlvdSBm
aXggdGhlIGFib3ZlIHdoaWNoIGhhcHBlbnMKdG8gYmUgYSA0NSBzZWNvbmQgZGVsYXkgd2hlbiBu
byBFbmRwb2ludCBEZXZpY2UgaXMgY29ubmVjdGVkIHRvIHRoZSBQQ0llCmNvbm5lY3Rvci4gSSBo
YXZlIHBvc3RlZCBhIHBhdGNoIGZvciBmaXhpbmcgdGhhdCBpc3N1ZSBhcyB3ZWxsOgpodHRwczov
L2xvcmUua2VybmVsLm9yZy9yLzIwMjMxMDE5MDgxMzMwLjI5NzU0NzAtMS1zLXZhZGFwYWxsaUB0
aS5jb20vCgotLSAKUmVnYXJkcywKU2lkZGhhcnRoLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

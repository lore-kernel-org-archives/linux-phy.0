Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FCF1CED274
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 07:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZSFCusC3fgnj1CZlnPAZQp4f/7uQYmsSvje7MYDEag=; b=nWvlLXcYHFiTOt
	eEIgXFZWmTo1EH93p8zbSmuWXcl3wjT1m2n7rrWZTiI/5zo8JXm/n7hajBPpE21Tg9k2Xsp/5GVeL
	zVAjkgcj7PXIhapqL36ACQuTm4ydep6ZOCXJz4RbkFN7UkGnk/SIaWQzDZrrfj2fkAx6rjlrLgJnx
	SANYCy/LpSb+N4VO2d73jl+Xs3Ps1vdrXwn6SArnmGKhiOP658DofENVcBTxIZOGtv7Fv7EcXeDhO
	1Y/ck1QWitFhe39TvoCi6GAjcxPnP8e1RLe9t5QM7dFon73wWMH8+HhvGUMonCX2nALP5yMtfP+I6
	qpy/XoHa6lBDwa1h49Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy4DH-00000004jUh-0Whj;
	Tue, 08 Oct 2024 07:00:55 +0000
Received: from mout.gmx.net ([212.227.17.21])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy49E-00000004ixw-1WW6
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 06:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728370578; x=1728975378;
	i=markus.stockhausen@gmx.de;
	bh=BdnwrYMQ8q458IvbO/00srYuvUdkTsJq5XLIp4S+PzI=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=QvH+gI52YS3b51PSOOjubuYDRTqKbVWeWndVp8tIzFS29+aUzu3/QMBWOylt54pA
	 E/9Ebdo4cTYdnZoTM9RSotT5lbYoEH989jnXztc4KXiCz/V7Fz8ap2dqdEKHvsxZe
	 /0lYgMA9SIV80tst1eQbDv0JVEghYnsGcsSwLRpxvUM7VRQSFKZF5NJB8ZRaB722e
	 3Zp/66vjPvjs1tgZx/qwexVg97mG1VniFUzjFWWM11w1Ld3wefbbttGFOdl2HK2eg
	 PmJ+K1lIBN6G1d+0t6QjvqhkHk3vWSRdBY+DHnknqCkju5pdtfII3mzkPFPIqYKr4
	 nF+yHJy770IBHsV9Wg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M9Wuq-1t1LOQ068C-00283K; Tue, 08
 Oct 2024 08:56:18 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org> <000b01db1944$5bd444b0$137cce10$@gmx.de> <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org>
In-Reply-To: <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org>
Subject: AW: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 08:56:17 +0200
Message-ID: <000f01db194f$2d140880$873c1980$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w8Bo7K4gQFrn2WmszNTdnA=
X-Provags-ID: V03:K1:kx5QxXM+bnda0qZUBDVjwGEJCajFlRP/tha8QxLEIUkn87t7Yjl
 PWQ43ROQ3D/zPJIic2Y3rgb1fGq6Ht1ddO9rEVl80HrzneGUQGoYGFVCbsvJVkqq6InS5S8
 //F7TsmuihPVbBM1SOvvYG6oKhmvHhI+wHgyb7cQFFNl7f9skJ1VkTVU3e78xYwdt4UJOek
 yT48ZVxEwxBBfRwYG80pA==
UI-OutboundReport: notjunk:1;M01:P0:QB9Evo4yD6M=;nbyYBQOdvnArSwe/rJprbQqv3uf
 Hkw4XeBiBj3VcdehbUj0RaGA4Dz9NAESHoRFbtx+5VRbDmQ3QHNUPmilb9ILP3GJwdi7aEkFh
 6ZXMNAUbsCXyjR5KdYgGzAwXrhJoJEiPoyH0oKoe7MBH7VPNICqOLbFjZ/QPy0HRKndHrJ1D4
 T/QL4toWcb8hEHAPSD5XnKsa6XQePL8erSc7F+7f2nV27Puu9EipqihQ8121bo/YzkFYgtNIe
 IZf+CGQxn6Rp1d6pvhM9iM4ZGsTX5CkZa5IPsWNjhaGIzfbEhnSucDaovhyGO7JvoaMUDttSp
 XIQlWM+hjPEYg1LvC1LmwdUGzaWDf2ok2mfipRM7aP5671QfSaHnEulxUwPtyDA92PlX9KF6m
 x65rq/s1HRyxPN4g7Lk2PbiHTB25Qg66ebE8j4bm8LUppfQSa89mQegGP1eUGgqB7jkQDBT8B
 t0pCYQJDYQg1tnQmo8gjcSEXVhbdJdUOA1AeJFYs7rALXT/hTACsDsgBX9jbrGxFpFLPL9921
 8S4zdrziY8dM30GKJdn1vjMAgtsYmAcysvev3wCvwkqbUtGPYm4tIs4VjlrW6gj6V0Rsz1mIY
 G8gY+mAIj5AHs4cdH3AJWmE0JQQmdhXVPnIAc2jmK0e0zstX2ZDPcR7T/73stXicDS/xJj3qE
 /YVlUSFE9tV05ItP0KrCPeEqwfVqLx2izaSGQH+N1CduCHEm0/O36bpuMQ7po4q7EanADfF+z
 YvtZxwRHW5TjOvIHA0rxrVDxs1sfBWUUaAAm4Kit/IEzI9ZXYHT5RE5lHexu+nJmLG7JGVkzC
 snpcPaY9wakgpsRVkpK5myBw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_235644_727110_5C4560E2 
X-CRM114-Status: GOOD (  20.52  )
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IAo+IEdlc2VuZGV0OiBEaWVuc3RhZywgOC4gT2t0b2Jl
ciAyMDI0IDA4OjE3Cj4gQW46IG1hcmt1cy5zdG9ja2hhdXNlbkBnbXguZGU7IGxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnOyBjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno7IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnCj4gQmV0cmVmZjogUmU6IEFXOiBbUEFUQ0ggdjIgMS8z
XSBkdC1iaW5kaW5nczogcGh5OiBhZGQgcmVhbHRlayxvdHRvLXNlcmRlcyBQSFkgYmluZGluZwo+
Cj4gT24gMDgvMTAvMjAyNCAwNzozOCwgbWFya3VzLnN0b2NraGF1c2VuQGdteC5kZSB3cm90ZToK
PiA+PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gPj4gVm9uOiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gPj4gR2VzZW5kZXQ6IE1vbnRhZywgNy4g
T2t0b2JlciAyMDI0IDIxOjI2Cj4gPj4gQW46IE1hcmt1cyBTdG9ja2hhdXNlbiA8bWFya3VzLnN0
b2NraGF1c2VuQGdteC5kZT47IAo+ID4+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnOyBj
aHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno7IAo+ID4+IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnCj4gPj4gQmV0cmVmZjogUmU6IFtQQVRDSCB2MiAxLzNdIGR0LWJpbmRpbmdzOiBw
aHk6IGFkZCByZWFsdGVrLG90dG8tc2VyZGVzIAo+ID4+IFBIWSBiaW5kaW5nCj4gPj4KPiA+PiAu
Li4gYW5kIHN0aWxsIG5vdCB0ZXN0ZWQuIFNlbmRpbmcgdW50ZXN0ZWQgY29kZSBpcyB3YXN0ZSBv
ZiBvdXIgdGltZS4KPiA+IAo+ID4gSGkgS3J6eXN6dG9mLAo+ID4gCj4gPiBhcHByZWNpYXRlIHlv
dXIgZmVlZGJhY2sgYW5kIEkgZG8gbm90IHdhbnQgdG8gd2FzdGUgeW91ciB0aW1lLiBNeSAKPiA+
IGZpeGVzIHdoZXJlIGEgbWl4IG9mIHlvdXIgZmVlZGJhY2sgYW5kIHNvbWUgaGFsZi1iYWtlZCAi
bWFrZSAKPiA+IGR0X2JpbmRpbmdfY2hlY2siIGZlZWRiYWNrcyAoYmVjYXVzZSBwYWNrYWdlcyB3
aGVyZSBtaXNzaW5nKS4gTXkgZmF1bHQgYW5kIHNvcnJ5IGZvcnQgaGUgbm9pc2UuCj4gPiAKPiA+
IFRvIGdldCBuZXh0IHZlcnNpb24gaW4gYmV0dGVyIHNoYXBlIHR3byBxdWVzdGlvbnMgcmVnYXJk
aW5nIHlvdXIgZmVlZGJhY2s6Cj4gPiAKPiA+IDEuICJNZXNzZWQgd3JhcHBpbmciOiBBY2NvcmRp
bmcgdG8gY2hlY2twYXRjaCAxMDAgY2hhcnMvbGluZSBhcmUgYWNjZXB0ZWQuIAo+ID4gU28gSSBk
ZXNpZ25lZCB0aGUgY29tbWVudHMgaW4gdGhlIGRyaXZlci4gRG9lcyBkZXZpY2V0cmVlIGRpZmZl
ciBmcm9tIHRoYXQ/Cj4KPiBjaGVja3BhdGNoIGlzIG5vdCBhIGNvZGluZyBzdHlsZS4gSSBhc2tl
ZCB0byBmb2xsb3cgY29kaW5nIHN0eWxlLCBwbGVhc2UgcmVhZCBlbnRpcmUgZG9jdW1lbnQgaW4g
RG9jdW1lbnRhdGlvbi9wcm9jZXNzLgoKVW5kZXJzdG9vZC4KCj4gPiAKPiA+IDIgIkJpbmRpbmdz
IHZzIGRyaXZlcnMiLiBUaGUgaWRlYSBhYm91dCBjb250cm9sbGVkIHBvcnRzIGNhbWUgZnJvbSBv
dGhlciBiaW5kaW5ncy4KPgo+IEVudGlyZSBwcm9wZXJ0eSBkZXNjcmlwdGlvbiBzcGVha3MgYWJv
dXQgZHJpdmVyLCBub3QgYmluZGluZ3MuCj4KPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmUKPiA+IGUvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3N0LHN0aWg0
MDctaXIKPiA+IHEtc3lzY2ZnLnlhbWw/aD12Ni4xMi1yYzIKPgo+IHN0aWggaXMgcmF0aGVyIHBv
b3IgZXhhbXBsZSB0byB1c2UuIFRoZSBwcm9wZXJ0eSB3YXMgYWRkZWQgaW4gMjAxNSAoISkgd2l0
aG91dCByZXZpZXcgKCEhISkuCj4KPgo+ID4gRS5nLiBzdCxpbnZlcnQtZXh0LiBTb21ldGhpbmcg
bGlrZSB0aGlzIHdpbGwgYmUgbmVlZGVkIGluIHRoZSBmdXR1cmUgCj4gPiBiZWNhdXNlIHRoZSBT
ZXJEZXMgYWxsb3cgdG8gc3dhcCBwb2xhcml0eSB3aGljaCBtdXN0IGJlIGNoYW5nZWQgCj4gPiBk
ZXBlbmRpbmcgb24gdGhlIHN3aXRjaCBkZXNpZ24uIEhvdyB0byBkbyB0aGlzPwo+Cj4gSSBkbyBu
b3QgdW5kZXJzdGFuZCB0aGUgaGFyZHdhcmUgYXNwZWN0IGRpc2N1c3NlZCBpbiB0aGUgcHJvcGVy
dHkgZGVzY3JpcHRpb24uLi4gcHJvYmFibHkgYmVjYXVzZSB0aGVyZSBpcyBubyBoYXJkd2FyZSBk
ZXNjcmlwdGlvbiBhdCBhbGwsIGJ1dCBpbnN0ZWFkIHlvdSBzcGVhayBhYm91dCBkcml2ZXIuCj4K
PiBJIGRvIG5vdCB1bmRlcnN0YW5kIGhvdyBwb2xhcml0eSBoYXMgYW55dGhpbmcgdG8gZG8gd2l0
aCBVLUJvb3QgY29uZmlndXJpbmcgc2VyZGVzLgoKTWF5YmUgbXkgbGFjayBvZiBrbm93bGVkZ2Ug
aW4gcGxhdGZvcm0gZHJpdmVyIHByb2dyYW1taW5nIG9yIHRoZSBuYW1pbmcKY29udmVudGlvbnMg
bGVhZHMgdG8gY29uZnVzaW9uLiBJJ20gc2VhcmNoaW5nIGZvciBrbm9icyB0byBjb250cm9sIHRo
ZSBiZWhhdmlvdXIgCm9mIHRoZSBTZXJEZXMgZGVwZW5kaW5nIG9uIHRoZSBoYXJkd2FyZS4gVHdv
IGV4YW1wbGVzIGFyZSAobW9yZSBtYXkgY29tZSk6CgotICJpZ25vcmUgU2VyRGVzIFgiOiBiZWNh
dXNlIHRoZSBwcm92aWRlZCBwYXRjaCBzZXF1ZW5jZSBjb25mdXNlcyB0aGUgU2VyRGVzCmFuZCBv
dmVyd3JpdGVzIHJlZ2lzdGVycyB3aXRoIHdyb25nIHZhbHVlcyB0aGF0IHZlbmRvciBwYXRjaGVk
IFUtQm9vdCBoYXMgc2V0dXAKY29ycmVjdGx5IGJlZm9yZS4gCgotICJyZXZlcnNlIHBvbGFyaXR5
IG9mIFNlckRlcyBYIjogc2FtZSBnb2VzIGhlcmUuIFNvbWUgYm9hcmRzIG5lZWQgaW52ZXJ0ZWQK
c2lnbmFsbGluZyBvbiBzb21lIG9mIHRoZSBTZXJEZXMgdG8gd29yayBwcm9wZXJseS4gVGhpcyBt
dXN0IGJlIGNvbmZpZ3VyYWJsZQpzb21laG93LgoKTG9va2luZyBhdCBzb21lIG1vcmUgbW9kZXJu
IGltcGxlbWVudGF0aW9uL2RvY3VtZW50YXRpb24gSSBuZWVkIHNvZW10aGluZyAKbGlrZSBpbiBy
ZWFsdGVrLHVzYjJwaHkueWFtbCAtIGUuZy4gcmVhbHRlayxkcml2aW5nLWxldmVsLWNvbXBlbnNh
dGUuCgpTaG91bGQgSSBqdXN0IGxlYXZlICJkcml2ZXIiIG91dCBvZiB0aGUgZGVzY3JpcHRpb24/
CgpCZXN0IHJlZ2FyZHMuCgpNYXJrdXMKCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

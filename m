Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3732EC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3hMrPE82t4SQLUIvDFglY3omxmMlnV/tc/EHQv1/jk=; b=vLUHttUzJLhDw8
	L+ZPQ9VResKsik6T/f9JyVTDcWpabTeU3nLJaGn+NHoCnA4k+QNrn4ssDdVqEDQPaXyr2nNHKlT/u
	7DmN2lCnyvGURjq2cN5gkito2Pfmfmn+qihdjK0uV1v/aIZ09xlmli8kCOo3SJYpyb3lParIBL5Db
	K6mDO7C32q46Pwa+4/HAtUaQSrscvQqz+MxZ6vDVfFEDQv42rymak1Fww1QNqbRUqtnWel3XIVolV
	EiBBKl4+QhRM0krTliDsD1omi0Y6rYIpVSGsh2RHuKG6XrZ119gWUAXhP9u/LpUQvgqyxtTkWagCh
	ZVjIIBOGMgXGYnFpSkWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xwe-00000008ybO-3h6z;
	Mon, 31 Aug 2026 09:04:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xwd-00000008ybB-1DJg
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:04:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D9EB742E87;
	Mon, 31 Aug 2026 09:04:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F50B1F000E9;
	Mon, 31 Aug 2026 09:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788167086;
	bh=L0B9Ydyca33fzaC4BYotoHysBDOs35sZh0O/LAlxSk8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ocqzPnxtT+JcZOfireKyd6nupUJ4hDn+HUKWuQs6g/gc//2ro061YQuO+XACPqzmW
	 0kEciK3dRMb5y7dj0empXk/gfDx35HNXa01tHLqeWQBqc2VjAkQTW707/Aujz+XOAW
	 XR02PmbzxNNE0zSgCYypY7yU0TILHDLnwG94NbxHrNFFPg74AqZO/o3Qt6gppSmgCn
	 lEbkxhrKem5uDWcAYxuQ0QatB7UBh/fT/wDkPyPm96JX4GHjbKfaKFQUHvqlbwSZii
	 2wrTbeTN0QbNKI2f6+p4OAjO/jy7IEkWHidRTY8CfIyHH4XsgiCjM02+zarqTVlkbc
	 s7DWNNAAu5Vfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V2 3/3] arm64: dts: freescale: Add chargebyte Charge
 Control Y
To: "Stefan Wahren" <wahrenst@gmx.net>
Cc: "Vincent Mailhol" <mailhol@kernel.org>, "Marc Kleine-Budde" <mkl@pengutronix.de>, "Oleksij
 Rempel" <o.rempel@pengutronix.de>, conor+dt@kernel.org, olteanv@gmail.com, vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, Frank.Li@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, "Oliver
 Hartkopp" <socketcan@hartkopp.net>, linux-can@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20260831083539.8287-4-wahrenst@gmx.net>
References: <20260831083539.8287-1-wahrenst@gmx.net>
 <20260831083539.8287-4-wahrenst@gmx.net>
Date: Mon, 31 Aug 2026 09:04:44 +0000
Message-Id: <20260831090445.0F50B1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBHUElP
IGluaXRpYWxpemF0aW9uIC8gVW51c2VkIHBpbiBmb3IgWF9uUlNUX0xBTgotIFtNZWRpdW1dIE1p
c3NpbmcgUGluIE11eCBDb25maWd1cmF0aW9uIGZvciBVU0RIQzJfVlNFTEVDVCBpbiBkZWZhdWx0
IHN0YXRlCi0gW0xvd10gRFQgQmluZGluZyBWaW9sYXRpb246IFVuZG9jdW1lbnRlZCBjb21wYXRp
YmxlIHN0cmluZyAnbWljcm9jaGlwLG1jcDI1NDInCi0tCgpjb21taXQgYzU5NTAxOWI3ZGM0MTlj
YzI5OGExMTFjMmIyMTU5MDRhMTJmNjVlMQpBdXRob3I6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0
QGdteC5uZXQ+CmFybTY0OiBkdHM6IGZyZWVzY2FsZTogQWRkIGNoYXJnZWJ5dGUgQ2hhcmdlIENv
bnRyb2wgWQoKVGhpcyBjb21taXQgaW50cm9kdWNlcyBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciB0
aGUgY2hhcmdlYnl0ZSBDaGFyZ2UgQ29udHJvbCBZLAphbiBFbGVjdHJpY2FsIFZlaGljbGUgU3Vw
cGx5IEVxdWlwbWVudCBmb3IgTUNTIGNoYXJnaW5nIHN0YXRpb25zIGJhc2VkIG9uIHRoZQpwaHlD
T1JFLWkuTVggOTMgQVJNIFNvTS4gSXQgZGVmaW5lcyBuZWNlc3NhcnkgcGluIG11bHRpcGxleGlu
ZywgcGVyaXBoZXJhbHMKbGlrZSBDQU4gYW5kIEV0aGVybmV0LCBhbmQgZGV2aWNlLXNwZWNpZmlj
IGxheW91dHMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg5My1jaGFyZ2UtY29udHJvbC15LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDkzLWNoYXJnZS1jb250cm9sLXkuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAwLi4wNDA1MDk4Y2MwNWM0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDkzLWNoYXJnZS1jb250cm9sLXkuZHRzCgpb
IC4uLiBdCgo+ICsJLy8gSGVhcnRiZWF0IExFRCBvZiBwaHlDb3JlIGlzIG5vdCBwb3B1bGF0ZWQK
PiArCS9kZWxldGUtbm9kZS8gbGVkczsKPiArCj4gKwlmbGV4Y2FuMV90YzogY2FuLXBoeTAgewo+
ICsJCWNvbXBhdGlibGUgPSAibWljcm9jaGlwLG1jcDI1NDIiLCAidGksdGNhbjEwNDIiOwoKW1Nl
dmVyaXR5OiBMb3ddCklzIHRoZSAibWljcm9jaGlwLG1jcDI1NDIiIGNvbXBhdGlibGUgc3RyaW5n
IGRvY3VtZW50ZWQgaW4gYW55IGRldmljZXRyZWUKYmluZGluZyBzY2hlbWE/CgpVc2luZyBhbiB1
bmRvY3VtZW50ZWQgY29tcGF0aWJsZSBzdHJpbmcgaGVyZSBtaWdodCBjYXVzZSBgbWFrZSBkdGJz
X2NoZWNrYAp2YWxpZGF0aW9uIHRvb2xpbmcgdG8gZmFpbC4KCj4gKwkJI3BoeS1jZWxscyA9IDww
PjsKPiArCQltYXgtYml0cmF0ZSA9IDwxMDAwMDAwPjsKPiArCX07CgpbIC4uLiBdCgo+ICsJcGlu
Y3RybF9mbGV4Y2FuMTogZmxleGNhbjFncnAgewo+ICsJCWZzbCxwaW5zID0gPAo+ICsJCQlNWDkz
X1BBRF9QRE1fQklUX1NUUkVBTTBfX0NBTjFfUlgJMHgxMzllCj4gKwkJCU1YOTNfUEFEX1BETV9D
TEtfX0NBTjFfVFgJCTB4MTM4Mgo+ICsJCT47Cj4gKwl9Owo+ICsKPiArCXBpbmN0cmxfZ3BpbzE6
IGdwaW8xZ3JwIHsKPiArCQlmc2wscGlucyA9IDwKPiArCQkJTVg5M19QQURfSTJDMl9TREFfX0dQ
SU8xX0lPMDMJCTB4MzFlCgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGUgWF9uUlNUX0xBTiBy
ZXNldCBwaW4gKEdQSU8xX0lPMDMpIG5lZWQgYSBHUElPIGhvZyBvciBhIGRyaXZlcgpjb25zdW1l
ciAoZS5nLiwgdmlhIGEgcmVzZXQtZ3Bpb3MgcHJvcGVydHkpIGluIHRoZSBkZXZpY2UgdHJlZT8K
ClNpbmNlIHRoZSB1cHN0cmVhbSBsYW44NjV4IFNQSSBrZXJuZWwgZHJpdmVyIGRvZXMgbm90IHBh
cnNlIG9yIG1hbmFnZQpyZXNldC1ncGlvcywgbGVhdmluZyBpdHMgZnVuY3Rpb25hbCBzdGF0ZSB1
bm1hbmFnZWQgaGVyZSBtaWdodCByZXN1bHQgaW4gdGhlCmhhcmR3YXJlIHJlc2V0IHBpbiBmbG9h
dGluZyBvciBiZWluZyBsZWZ0IGluIGFuIGluZGV0ZXJtaW5hdGUgc3RhdGUuCgpDb3VsZCB0aGlz
IGNhdXNlIHRoZSBMQU44NjUxIEV0aGVybmV0IGludGVyZmFjZSB0byBmYWlsIHRvIGVtZXJnZSBm
cm9tIHJlc2V0CmFuZCBpbml0aWFsaXplIHByb3Blcmx5IG9uIGEgY29sZCBib290PwoKPiArCQkJ
TVg5M19QQURfUERNX0JJVF9TVFJFQU0xX19HUElPMV9JTzEwCTB4MzgyCj4gKwkJPjsKPiArCX07
Cj4gKwo+ICsJcGluY3RybF9ncGlvNDogZ3BpbzRncnAgewoKWyAuLi4gXQoKPiArCXBpbmN0cmxf
dXNkaGMyX2NkOiB1c2RoYzJjZGdycCB7Cj4gKwkJZnNsLHBpbnMgPSA8Cj4gKwkJCU1YOTNfUEFE
X1NEMl9DRF9CX19HUElPM19JTzAwCQkweDMxZQo+ICsJCT47Cj4gKwl9Owo+ICsKPiArCS8qIG5l
ZWQgdG8gY29uZmlnIHRoZSBTSU9OIGZvciBkYXRhIGFuZCBjbWQgcGFkLCByZWZlciB0byBFUlIw
NTIwMjEgKi8KPiArCXBpbmN0cmxfdXNkaGMyX2RlZmF1bHQ6IHVzZGhjMmdycCB7Cj4gKwkJZnNs
LHBpbnMgPSA8Cj4gKwkJCU1YOTNfUEFEX1NEMl9DTEtfX1VTREhDMl9DTEsJCTB4MTE5ZQo+ICsJ
CQlNWDkzX1BBRF9TRDJfQ01EX19VU0RIQzJfQ01ECQkweDQwMDAxMzllCj4gKwkJCU1YOTNfUEFE
X1NEMl9EQVRBMF9fVVNESEMyX0RBVEEwCTB4NDAwMDEzOGUKPiArCQkJTVg5M19QQURfU0QyX0RB
VEExX19VU0RIQzJfREFUQTEJMHg0MDAwMTM4ZQo+ICsJCQlNWDkzX1BBRF9TRDJfREFUQTJfX1VT
REhDMl9EQVRBMgkweDQwMDAxMzhlCj4gKwkJCU1YOTNfUEFEX1NEMl9EQVRBM19fVVNESEMyX0RB
VEEzCTB4NDAwMDEzOWUKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgTVg5M19QQURfU0QyX1ZT
RUxFQ1RfX1VTREhDMl9WU0VMRUNUIGJlIGluY2x1ZGVkIGluIHRoaXMgZGVmYXVsdApzdGF0ZSBn
cm91cD8KClRoZSBNTUMgY29yZSBpbml0aWFsbHkgYnJpbmdzIHVwIHRoZSBTRCBjYXJkIGluIHRo
ZSBkZWZhdWx0IDMuM1Ygc3RhdGUuIFdpdGhvdXQKdGhlIFVTREhDMl9WU0VMRUNUIHBhZCBjb25m
aWd1cmVkIGhlcmUsIHRoZSBjb250cm9sbGVyIG1pZ2h0IG5vdCBiZSBhYmxlIHRvCmFjdGl2ZWx5
IG1hbmFnZSB0aGUgSU8gdm9sdGFnZSBzZWxlY3Rpb24gaW4gaXRzIGRlZmF1bHQgc3RhdGUuCgpD
b3VsZCB0aGlzIGFic2VuY2UgbGVhZCB0byB1bnByZWRpY3RhYmxlIGV4dGVybmFsIHZvbHRhZ2Ug
cmVndWxhdG9yIGJlaGF2aW9yIG9yClNEIGNhcmQgaW5pdGlhbGl6YXRpb24gZmFpbHVyZXM/Cgo+
ICsJCT47Cj4gKwl9Owo+ICsKPiArCS8qIG5lZWQgdG8gY29uZmlnIHRoZSBTSU9OIGZvciBkYXRh
IGFuZCBjbWQgcGFkLCByZWZlciB0byBFUlIwNTIwMjEgKi8KPiArCXBpbmN0cmxfdXNkaGMyXzEw
MG1oejogdXNkaGMyLTEwMG1oemdycCB7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODMxMDgzNTM5LjgyODctMS13YWhyZW5zdEBn
bXgubmV0P3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==

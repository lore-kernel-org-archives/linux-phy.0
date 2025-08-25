Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F590CA0EFA
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBqJx95Rk2Mu+7QkTEgVIy+FTW3/5pnpflYy7HC+sFY=; b=hd6oE619I99EOv
	Poj2St0yTfQyGUo1JVrzWKvHqL2thquXTKVniVckV+imyXMOzRPn+DjN6ZRgFhBUYofKxheklX4Gu
	ODoBMlfXF7DkxejeFXlFVR3kqw8qX1KIUXRqYKIJy81Wh8/70EXO8ypgzZBVLSWneyh+vWUQaRbqe
	12on/BNG7CPRMol96Z229LPXDqEJhEOj4Won0iw5DNolhy0wXa8mvHis7CkPFqJVkNoQWQyxffcdC
	7029FXbQOcOy24ZG28PH+tz8XCFK+mo5613cz/j1V6jbZn/jOpK96d/N8WFcH+P9s/BoSypKoqRcU
	n5EMl583PpJjPy3ux+bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSk3-00000007LsH-0tYr;
	Mon, 25 Aug 2025 08:39:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSI3-00000007GJy-0VjA
	for linux-phy@lists.infradead.org;
	Mon, 25 Aug 2025 08:10:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A7595C5592;
	Mon, 25 Aug 2025 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2799C4CEED;
	Mon, 25 Aug 2025 08:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756109453;
	bh=BihhbLsDzRmPKeOAZEC9nAUboJNMLrQjryghluirl+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aumFNw3h3qQ2VRqJkfw+ukOzuQwleIS2F5k1Chf5Zh2JNibASN8Qskt5lTEE9/Kt5
	 WHwJ8+O5MM90oqEv07eGJZBRCSo/2JYWMv1ypCCeqtXlLiyPxliDodC7aR+ap5Meq/
	 6upBpYFhCL1DHVs7Dy6Ac+5o/JdBFpkMB1axm5JKsDX7SN1SNXw9sh6G1qD57AKKSA
	 3y23k8lfFIhea7x6qeOr1CX6LpdjrgK7TnbIPiz5tT/mJmVUDw5NKCza7voErIBmxM
	 FUSyWGiABGFHcdrMY6QtkRwWzAT8IgId/KGbQ/YVLj4jppFzCZJLw1Ss0y+Gje8mp8
	 nl7xjg0oFTkLA==
Date: Mon, 25 Aug 2025 13:40:37 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>, krzk+dt@kernel.org
Cc: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>, marcus@nazgul.ch, 
	kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	andersson@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
Message-ID: <cp33qzgnc5i6e3nratfk7p6rhblltmem6nokk3wls3dtpattvt@cb2rbhbbe4vx>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
 <bc001360-1cfe-4886-a023-367a8edc21c5@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc001360-1cfe-4886-a023-367a8edc21c5@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_011055_248667_1F81E884 
X-CRM114-Status: GOOD (  16.77  )
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

T24gVGh1LCBBdWcgMTQsIDIwMjUgYXQgMTI6NTA6MTdQTSBHTVQsIE5pdGluIFJhd2F0IHdyb3Rl
Ogo+IAo+IAo+IE9uIDgvMTQvMjAyNSA2OjI5IEFNLCBIYXJyaXNvbiBWYW5kZXJieWwgd3JvdGU6
Cj4gPiBEZXNjcmliZSBkZXZpY2UgdHJlZSBlbnRyeSBmb3IgeDFlODAxMDAgdWZzIGRldmljZQo+
ID4gU2lnbmVkLW9mZi1ieTogSGFycmlzb24gVmFuZGVyYnlsIDxoYXJyaXNvbi52YW5kZXJieWxA
Z21haWwuY29tPgo+ID4gLS0tCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU4MDEw
MC5kdHNpIHwgOTEgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAgMSBmaWxlIGNoYW5n
ZWQsIDkxIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS94MWU4MDEwMC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTgw
MTAwLmR0c2kKPiA+IGluZGV4IGE5YTdiYjY3NmM2Zi4uZWZmYTc3NmUzZGQwIDEwMDY0NAo+ID4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTgwMTAwLmR0c2kKPiA+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS94MWU4MDEwMC5kdHNpCj4gPiBAQCAtMjgxOSw2ICsyODE5
LDk3IEBAIHRzZW5zMzogdGhlcm1hbC1zZW5zb3JAYzI3NDAwMCB7Cj4gPiAgIAkJCSN0aGVybWFs
LXNlbnNvci1jZWxscyA9IDwxPjsKPiA+ICAgCQl9Owo+ID4gKwo+ID4gKwkJdWZzX21lbV9oYzog
dWZzQDFkODQwMDAgewo+ID4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSx4MWU4MDEwMC11ZnNoYyIs
Cj4gPiArCQkJInFjb20sdWZzaGMiLCAiamVkZWMsdWZzLTIuMCI7CgpUaGlzIGNvbnRyb2xsZXIg
aXMgVUZTIDMuMCBiYXNlZC4gQWxzbywgSkVERUMgaGFzIHR3byBzcGVjcyBmb3IgVUZTOgoKMS4g
VUZTSENJIChIb3N0IGNvbnRyb2xsZXJzIGZvdW5kIGluIFNvQ3MpCjIuIFVGUyAoVUZTIGRldmlj
ZXMpCgpBbmQgdGhpcyBjb21wYXRpYmxlICdqZWRlYyx1ZnMtMi4wJyBpcyBtb3N0bHkgZm9yIFVG
UyBkZXZpY2VzLCBub3QgSG9zdApjb250cm9sbGVycy4gU28gdXNpbmcgd2Ugc2hvdWxkIGJlIHVz
aW5nICdqZWRlYyx1ZnNoYy0zLjAnIGhlcmUgYW5kIGluIG90aGVyCmJpbmRpbmdzLgoKa3J6azog
SXMgaXQgT0sgdG8gY2hhbmdlIHRoZSBjb21wYXRpYmxlIGZvciBhbGwgYmluZGluZ3MgYW5kIGR0
cz8gQXRsZWFzdCBsaW51eAppcyBub3QgbWFraW5nIHVzZSBvZiB0aGlzIGNvbXBhdGlibGUsIGJ1
dCBJJ20gbm90IHN1cmUgYWJvdXQgb3RoZXIgRFQgdXNlcnMuCgo+ID4gKwkJCXJlZyA9IDwwIDB4
MDFkODQwMDAgMCAweDMwMDA+Owo+ID4gKwkJCQo+ID4gKwkJCQo+ID4gKwkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSAyNjUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiArCj4gPiArCQkJcGh5cyA9
IDwmdWZzX21lbV9waHk+Owo+ID4gKwkJCXBoeS1uYW1lcyA9ICJ1ZnNwaHkiOwo+ID4gKwo+ID4g
KwkJCWxhbmVzLXBlci1kaXJlY3Rpb24gPSA8Mj47Cj4gPiArCj4gPiArCQkJI3Jlc2V0LWNlbGxz
ID0gPDE+Owo+ID4gKwkJCXJlc2V0cyA9IDwmZ2NjIEdDQ19VRlNfUEhZX0JDUj47Cj4gPiArCj4g
PiArCQkJcmVzZXQtZ3Bpb3MgPSA8JnRsbW0gMjM4IEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArCQkJ
cmVzZXQtbmFtZXMgPSAicnN0IjsKPiA+ICsKPiA+ICsJCQlwb3dlci1kb21haW5zID0gPCZnY2Mg
R0NDX1VGU19QSFlfR0RTQz47Cj4gPiArCj4gPiArCQkJaW9tbXVzID0gPCZhcHBzX3NtbXUgMHgx
YTAgMHgwPjsKPiA+ICsKPiA+ICsJCQljbG9jay1uYW1lcyA9ICJjb3JlX2NsayIsCj4gPiArCQkJ
CSAgICAgICJidXNfYWdncl9jbGsiLAo+ID4gKwkJCQkgICAgICAiaWZhY2VfY2xrIiwKPiA+ICsJ
CQkJICAgICAgImNvcmVfY2xrX3VuaXBybyIsCj4gPiArCQkJCSAgICAgICJyZWZfY2xrIiwKPiA+
ICsJCQkJICAgICAgInR4X2xhbmUwX3N5bmNfY2xrIiwKPiA+ICsJCQkJICAgICAgInJ4X2xhbmUw
X3N5bmNfY2xrIiwKPiA+ICsJCQkJICAgICAgInJ4X2xhbmUxX3N5bmNfY2xrIjsKPiA+ICsKPiA+
ICsJCQljbG9ja3MgPSA8JmdjYyBHQ0NfVUZTX1BIWV9BWElfQ0xLPiwKPiA+ICsJCQkJIDwmZ2Nj
IEdDQ19BR0dSRV9VRlNfUEhZX0FYSV9DTEs+LAo+ID4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlf
QUhCX0NMSz4sCj4gPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9VTklQUk9fQ09SRV9DTEs+LAo+
ID4gKwkJCQkgPCZycG1oY2MgUlBNSF9DWE9fQ0xLPiwKPiA+ICsJCQkJIDwmZ2NjIEdDQ19VRlNf
UEhZX1RYX1NZTUJPTF8wX0NMSz4sCj4gPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9SWF9TWU1C
T0xfMF9DTEs+LAo+ID4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfUlhfU1lNQk9MXzFfQ0xLPjsK
PiA+ICsKPiA+ICsJCQlmcmVxLXRhYmxlLWh6ID0gPDEwMDAwMDAwMCA0MDMwMDAwMDA+LAo+ID4g
KwkJCQkJPDAgMD4sCj4gPiArCQkJCQk8MCAwPiwKPiA+ICsJCQkJCTwxMDAwMDAwMDAgNDAzMDAw
MDAwPiwKPiA+ICsJCQkJCTwxMDAwMDAwMDAgNDAzMDAwMDAwPiwKPiA+ICsJCQkJCTwwIDA+LAo+
ID4gKwkJCQkJPDAgMD4sCj4gPiArCQkJCQk8MCAwPjsKPiA+ICsKPiBQbGVhc2UgdXNlIE9QUCB0
YWJsZSBpbnN0ZWFkIG9mIGZyZXEtdGFibGUtaHouCj4gCj4gCj4gPiArCQkJaW50ZXJjb25uZWN0
cyA9IDwmYWdncmUxX25vYyBNQVNURVJfVUZTX01FTSBRQ09NX0lDQ19UQUdfQUxXQVlTCj4gPiAr
CQkJCQkgJm1jX3ZpcnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPiA+ICsJCQkJ
CTwmZ2VtX25vYyBNQVNURVJfQVBQU1NfUFJPQyBRQ09NX0lDQ19UQUdfQUxXQVlTCj4gPiArCQkJ
CQkgJmNvbmZpZ19ub2MgU0xBVkVfVUZTX01FTV9DRkcgUUNPTV9JQ0NfVEFHX0FMV0FZUz47Cj4g
Cj4gRm9yIENvbmZpZyBQYXRoLCB1c2UgUUNPTV9JQ0NfVEFHX0FDVElWRV9PTkxZLgo+IAo+IFlP
dSBjYW4gcmVmZXIgdG8gSUNDIGRpc2N1c3Npb24gbGluayBmb3IgU004NzUwIC0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtZGV2aWNldHJlZS8zNTRmODcxMC1hNWVjLTQ3YjUtYmNmYS1i
ZmY3NWFjM2NhNzFAb3NzLnF1YWxjb21tLmNvbS8KPiAKCk5pdGluLCBxdWVzdGlvbiBmb3IgeW91
OiBJcyB0aGlzIGNvbnRyb2xsZXIgY2FjaGUgY29oZXJlbnQgYXMgbGlrZSBpdHMgYW5jZXJzdG9y
CnNtODU1MD8KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=

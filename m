Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9804A1088E65
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 02:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UV+LmN/ECr+fW/9LCiHZDWvjeJtJmOdUa6ZhyBrNA1Q=; b=QCn/i1H7AbwpDj
	9KkZ8GKTwCfMg8Qj3x0z+6nKN2jmdA5PGs5yJ8AU39XIoYRfr3slAVoX2dEGnjwthnOIY3iEUtbWs
	JfDVfIGcD9S5xQExSnr93n5Ru0aZh1isVIZRiwZ2uMG947AznrN9u4JbEPKD4qXYRVT+Xlv4e0E+u
	lzLwh1HnRj8doNVuuyAsHN0e3EG3Kq4F6+c2Oj2zWeh/IDzYlZBoOsretxPD6qidB4GWZ+6YJdQJO
	sK6F150Nhrtr8mvlhp7tv6rjvuXvamwge4tq4r7JNf9X8FCSeFwtFxuLZqIHJgUwOY080iUFFgUIT
	U3kP5rXXqYf91b0ptvmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33Ll-00000009lwY-1UEm;
	Thu, 19 Mar 2026 02:43:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33Lj-00000009lw3-0sy2
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 02:43:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D166B40BE2;
	Thu, 19 Mar 2026 02:43:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19971C19421;
	Thu, 19 Mar 2026 02:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773888182;
	bh=npVrlqBDwGCD4Hc4bqr13i45zGItkx5/qDmz+8tCmY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OHqt63tAw5SoZO0sfsIbH5FqVtLK3UI8K3bMOJryV2ydkeDSJoYjikjnzf5a5npnG
	 +w2TWiyW2XyPcsEQdPDETE1rMeoo+yq2kYtMGEuyL8O3EXLAcEZ1YZkhxxYcZqWSy0
	 MaLUoY0DQgfK2AWZxJQhEs02uIA3N1NMZSbPcKUI+f7aNMewNRwjJ9oPaFTAwBt7vs
	 1wnYcbY3WpWznPfcIeGInAjHALymoiuenxO9gudNruddy/Yqw5vRVZbOB+JVvuh6us
	 xcOWtFpaAnzlYhP86yQWcsNvvGfFWYZceGO1E/ZGmL2PHH0ekjq55tUs0MwEsXL3ao
	 T5KzQncjx39JA==
Date: Wed, 18 Mar 2026 21:42:56 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
Message-ID: <abtgaXSv-zRysJqO@baldur>
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas>
 <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
 <abdviJbrluDn2Vrx@baldur>
 <kqpgjzcxnazjohiop27exget6qrv37wn3csmixt5nmc6d5dkbg@n7qjo6flaabn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <kqpgjzcxnazjohiop27exget6qrv37wn3csmixt5nmc6d5dkbg@n7qjo6flaabn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_194303_378770_C84523FC 
X-CRM114-Status: GOOD (  31.10  )
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

T24gTW9uLCBNYXIgMTYsIDIwMjYgYXQgMDg6NTA6MTJBTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFN1biwgTWFyIDE1LCAyMDI2IGF0IDA5OjUzOjMzUE0gLTA1MDAs
IEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPiA+IE9uIFNhdCwgTWFyIDE0LCAyMDI2IGF0IDA3OjUw
OjUwUE0gKzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gT24gRnJpLCBN
YXIgMTMsIDIwMjYgYXQgMTE6NDU6NDJBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+
ID4gPiBPbiBGcmksIE1hciAxMywgMjAyNiBhdCAwNTo0NjoxOFBNICswODAwLCBaaXl1ZSBaaGFu
ZyB3cm90ZToKPiA+ID4gPiA+IENvbW1pdCA5NjA2MDliMjJiZTUgKCJhcm02NDogZHRzOiBxY29t
OiBoYW1vYTogTW92ZSBQSFksIFBFUlNULCBhbmQgV2FrZQo+ID4gPiA+ID4gR1BJT3MgdG8gUENJ
ZSBwb3J0IG5vZGVzIGFuZCBhZGQgcG9ydCBOb2RlcyBmb3IgYWxsIFBDSWUgcG9ydHMiKSBkaWQg
bm90Cj4gPiA+ID4gPiBjb252ZXJ0IGFsbCBIYW1vYeKAkWJhc2VkIHBsYXRmb3JtcyB0byB0aGUg
bmV3IG1ldGhvZCBvZiBkZWZpbmluZyBQRVJTVCBhbmQKPiA+ID4gPiA+IFdha2UgR1BJT3MgaW4g
dGhlIFBDSWUgcm9vdCBwb3J0IG5vZGVzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBXaXRob3V0IHRo
ZSBjaGFuZ2UgUENJZSBwcm9iZSB3aWxsIGZhaWwuIFRoZSBwcm9iZSBmYWlsdXJlIGhhcHBlbnMg
YmVjYXVzZQo+ID4gPiA+ID4gdGhlIFBIWSBzdGF5cyBpbiB0aGUgY29udHJvbGxlciBub2RlIHdo
aWxlIHRoZSBQRVJTVC9XYWtlIEdQSU9zIHdlcmUgbW92ZWQKPiA+ID4gPiA+IHRvIHRoZSBwb3J0
IG5vZGVzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIGZpeGVzIHByb2JlIGZhaWx1cmVzIHNl
ZW4gb24gdGhlIGZvbGxvd2luZyBwbGF0Zm9ybXM6Cj4gPiA+ID4gPiAgLSB4MS1ocC1vbW5pYm9v
ay14MTQKPiA+ID4gPiA+ICAtIHgxLW1pY3Jvc29mdC1kZW5hbGkKPiA+ID4gPiA+ICAtIHgxZTgw
MTAwLWxlbm92by15b2dhLXNsaW03eAo+ID4gPiA+ID4gIC0geDFlODAxMDAtbWVkaW9uLXNwcmNo
cmdkLTE0LXMxCj4gPiA+ID4gPiAgLSB4MXA0MjEwMC1sZW5vdm8tdGhpbmtib29rLTE2Cj4gPiA+
ID4gPiAgLSB4MS1hc3VzLXplbmJvb2stYTE0Cj4gPiA+ID4gPiAgLSB4MS1jcmQKPiA+ID4gPiA+
ICAtIHgxLWRlbGwtdGhlbmEKPiA+ID4gPiA+IAo+ID4gPiA+ID4gRml4ZXM6IDk2MDYwOWIyMmJl
NSAoImFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlIEdQ
SU9zIHRvIFBDSWUgcG9ydCBub2RlcyBhbmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0llIHBv
cnRzIikKPiA+ID4gPiAKPiA+ID4gPiBBcmUgeW91IHNheWluZyB0aGF0IERUcyBpbiB0aGUgZmll
bGQgYnJva2UgYmVjYXVzZSBvZiBzb21lIGtlcm5lbAo+ID4gPiA+IGNoYW5nZT8gIFRoYXQncyBu
b3Qgc3VwcG9zZWQgdG8gaGFwcGVuLiAgRXZlbiB0aG91Z2ggUEhZLCBQRVJTVCwgYW5kCj4gPiA+
ID4gV2FrZSBHUElPcyBzaG91bGQgYmUgZGVzY3JpYmVkIGluIFJvb3QgUG9ydCBub2RlcyBpbnN0
ZWFkIG9mIHRoZSBSb290Cj4gPiA+ID4gQ29tcGxleCBub2RlIGluICpmdXR1cmUqIERUcywgdGhl
IGtlcm5lbCBpcyBzdGlsbCBzdXBwb3NlZCB0byBhY2NlcHQKPiA+ID4gPiB0aGUgb2xkIHN0eWxl
IHdpdGggdGhlbSBkZXNjcmliZWQgaW4gdGhlIFJvb3QgQ29tcGxleCBub2RlLgo+ID4gPiA+IAo+
ID4gPiAKPiA+ID4gVGhpcyBpcyBub3QgcmVsYXRlZCB0byB0aGUgZHJpdmVyIGNoYW5nZS4gVGhl
IGRyaXZlciBjb3JyZWN0bHkgcGFyc2VzIGFsbCBSb290Cj4gPiA+IFBvcnQgcHJvcGVydGllcyBl
aXRoZXIgaW4gdGhlIFJvb3QgQ29tcGxleCBub2RlIChvbGQgYmluZGluZykgb3IgUm9vdCBQb3J0
IG5vZGUKPiA+ID4gKG5ldyBiaW5kaW5nKS4gQnV0IGNvbW1pdCA5NjA2MDliMjJiZTUsIGxlZnQg
Y29udmVydGluZyBtZW50aW9uZWQgYm9hcmQgRFRTIHRvCj4gPiA+IHRoZSBuZXcgYmluZGluZywg
bGVhdmluZyB0aG9zZSBhZmZlY3RlZCBwbGF0Zm9ybXMgaW4gYSBoYWxmIGJha2VkIHN0YXRlIGku
ZS4sCj4gPiA+IHNvbWUgcHJvcGVydGllcyBpbiBSQyBub2RlIGFuZCBzb21lIGluIFJvb3QgUG9y
dCBub2RlLiBEcml2ZXIgY2Fubm90IHBhcnNlIHN1Y2gKPiA+ID4gY29tYmluYXRpb25zLCBzbyBp
dCBmYWlscyBjb3JyZWN0bHkgc28uCj4gPiA+IAo+ID4gCj4gPiBBcmUgeW91IHNheWluZyB0aGF0
IGFib3ZlIGxpc3RlZCBtYWNoaW5lcyBoYXMgYnJva2VuIFBDSWUgc3VwcG9ydCBpbgo+ID4gdjcu
MC1yYz8KPiA+IAo+IAo+IEkgaGF2ZW4ndCB2ZXJpZmllZCBpdCwgYnV0IEknbSBwcmV0dHkgc3Vy
ZSBQQ0llIGlzIGJyb2tlbiBvbiB0aGVzZSBwbGF0Zm9ybXMuCj4gCgpJbiBsaW5lIHdpdGggQmpv
cm4ncyByZXF1ZXN0LCB3ZSBzaG91bGRuJ3QgaGF2ZSB0byBndWVzcy4KCj4gPiBJdCBzZWVtcyB0
aGlzIGlzIGEgKHBhcnRpYWwpIHJldmVydCBvZiA5NjA2MDliMjJiZTUsIGlzIHRoaXMgYWN0dWFs
bHkKPiA+IGZpeGluZyB0aGF0IGNoYW5nZSwgb3IgaXMgaXQgb25seSBhcHBsaWNhYmxlIG9uY2Ug
c29tZSBvdGhlciBjaGFuZ2VzIGFyZQo+ID4gYXBwbGllZD8KPiA+IAo+IAo+IFRoaXMgY2hhbmdl
IGlzIGZpeGluZyB0aGUgaXNzdWUgaW4gdGhlIHJlc3BlY3RpdmUgYm9hcmQgRFRTIGFuZCBpcyBh
IHN0YW5kYWxvbmUKPiBmaXggb24gdG9wIG9mIHY3LjAtcmMxLgo+IAoKU28gOTYwNjA5YjIyYmU1
IHdhcyBicm9rZW4gd2hlbiBJIG1lcmdlZCBpdD8KClRoZSBjb21taXQgbWVzc2FnZSBzYXlzIHRo
YXQgdGhlIGNvbW1pdCB3YXMgaW5jb21wbGV0ZSwgaW4gdGhhdCBpdApkaWRuJ3QgZnVsbHkgY29u
dmVydCBmcm9tIHRoZSBvbGQgdG8gdGhlIG5ldyBzdHlsZSwgc28gaXQgc291bmRzIGxpa2UKdGhl
IG9mZmVuZGluZyBjb21taXQgd2FzIGluY29tcGxldGUgLSBidXQgSSBiZWxpZXZlIHRoZSBvZmZl
bmRpbmcgY29tbWl0CndhcyBhIHdvcmthcm91bmQgZm9yIHRoZSBuZXcgc29sdXRpb24gbm90IGJl
aW5nIGluIHBsYWNlIGFuZCB0aGlzIGNvbW1pdAptb3N0bHkgcmV2ZXJ0cyB0aGUgY2hhbmdlcyBp
biB0aGUgb2ZmZW5kaW5nIGNvbW1pdC4KCkluIG90aGVyIHdvcmRzLCBpdCdzIG5vdCBjbGVhciB0
byBtZSwgZnJvbSB0aGUgY29tbWl0IG1lc3NhZ2UsIHdoeSB0aGlzCmNoYW5nZSBpcyBhIC1yYyBm
aXguIFBlcmhhcHMgdGhlIGF1dGhvciBvZiB0aGUgb2ZmZW5kaW5nIGNvbW1pdCB0cmlja2VkCm1l
IHRvIG1lcmdlIHRoYXQgb25lLCBhbmQgdGhhdCdzIHdoYXQncyBiZWluZyBmaXhlZD8KCkFsc28s
IGlzIHRoZSBsYWNrIG9mIFRlc3RlZC1ieSB0ZWxsaW5nIHVzIHRoYXQgbm9ib2R5IGhhcyB0ZXN0
ZWQgYW55IG9mCnRoZSB2Ny4wLXJjIG9uIHRoZSA4IGxpc3RlZCBIYW1vYSBkZXZpY2VzPwoKCgpJ
ZiBpdCdzIGFjdHVhbGx5IG5lZWRlZCwgY2FuIHdlIHBsZWFzZSBoYXZlIHRoZSBjb21taXQgbWVz
c2FnZSBpbXByb3ZlZApzbyB0aGF0IHdlIGNhbiBtZXJnZSBpdCBpbnRvIC1yYz8KClJlZ2FyZHMs
CkJqb3JuCgo+ID4gV2hlcmUgc2hvdWxkIHRoaXMgYmUgbWVyZ2VkPwo+ID4gCj4gCj4gUWNvbSB0
cmVlIGZvciA3LjAtcmNYLgo+IAo+IC0gTWFuaQo+IAo+IC0tIAo+IOCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

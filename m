Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65976C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 11:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIQVoaIayZCvK7uPYLL+MZ1oh+YGGkK2FWnxNxoyVMA=; b=yWluFaMInlAT0z
	b/7Rynhf1PcXaorZSt8x0Hb1/qwI0S5OuXIBOS3xbsk8QlOk+jwyDDMwayMmSPfoCr49PDE9jmoLS
	Ixa1priyVwTOq55Ddccn/+fWL7MAnnhztV9u9oTNPZMuQN8cwOrVjv12e/tLHSFdYeXSQmWpzHNXK
	Gc6nMD+//KoY4tkl2NWv4NVmSRA9dYtFthCz0J2SRMmwwLr4XuLp4icrAYaijTl718gdc2M3M/aVo
	UYdwhEbVCba0QglR7uTUdLAti1r37GWFino3xULyXNb9vouf7zymIFSyWn63S38med1+G8x7Pr/FP
	uLCw5ZJzQkZGPH8O0l4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDkER-000DB5-0D;
	Thu, 14 Dec 2023 11:50:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDkEN-000DAX-0b
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 11:50:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C1E76CE2435;
	Thu, 14 Dec 2023 11:50:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18BF7C433C7;
	Thu, 14 Dec 2023 11:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702554615;
	bh=gBxMWK/BJQIfktDOXVActk5N+GeQbJZMHW0htfkV+oc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uVct52cUOIceKATlABivrxGspm4zxEeI7nJUoPLdOQZrR2QVcd0QbZRuQbc+4/NoO
	 mmlP9blb5sOixsg+eUYJQjaTb9kGqxE5/2q6nw4QaEyTcJvbXPsr1QdJNkMQXFldoW
	 o1hc+4HwmRMMMLCbE8vxfX3Mv2fD6FvdaP6nWmMp6p+n7I4UMcbv/TYOtW4xBrLS7N
	 B/7MCCGYwOQ6coCLo7L5ub/dgdSQIkSGBpuyPTpRnVBaTmrnFxXyo4G53qzLlpGr9i
	 YsQs90tkpRJbXQ3+15OR/d6CdZoeBmpKwrXxNd4f6p5qHTgz/UR9zsbF2Go9UHIIMc
	 PJ1YM/zUZBkDg==
Date: Thu, 14 Dec 2023 17:19:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Shazad Hussain <quic_shazhuss@quicinc.com>, quic_cang@quicinc.com
Subject: Re: [PATCH 00/16] Fix Qcom UFS PHY clocks
Message-ID: <20231214114959.GC48078@thinkpad>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <ZXrVxmxY6wZprbBa@hovoldconsulting.com>
 <20231214103907.GL2938@thinkpad>
 <ZXrgWK5wZz6dAkKP@hovoldconsulting.com>
 <20231214111409.GB48078@thinkpad>
 <ZXrnZeDYOsteY5zT@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXrnZeDYOsteY5zT@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_035019_699648_6A5B0738 
X-CRM114-Status: GOOD (  34.35  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMTI6MzA6NDVQTSArMDEwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFRodSwgRGVjIDE0LCAyMDIzIGF0IDA0OjQ0OjA5UE0gKzA1MzAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ICsgQ2FuCj4gPiAKPiA+IE9uIFRodSwgRGVjIDE0LCAy
MDIzIGF0IDEyOjAwOjQwUE0gKzAxMDAsIEpvaGFuIEhvdm9sZCB3cm90ZToKPiA+ID4gWyArQ0M6
IFNoYXphZCBdCj4gPiA+IAo+ID4gPiBPbiBUaHUsIERlYyAxNCwgMjAyMyBhdCAwNDowOTowN1BN
ICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4gT24gVGh1LCBEZWMg
MTQsIDIwMjMgYXQgMTE6MTU6MzRBTSArMDEwMCwgSm9oYW4gSG92b2xkIHdyb3RlOgo+ID4gPiA+
ID4gT24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMDI6NDA6NDVQTSArMDUzMCwgTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIHdyb3RlOgo+IAo+ID4gPiBVbmxlc3MgdGhlIFBIWSBjb25zdW1lcyBDWE8gZGly
ZWN0bHksIGl0IHNob3VsZCBub3QgYmUgaW5jbHVkZWQgaW4gdGhlCj4gPiA+IGJpbmRpbmcgYXMg
eW91IGFyZSBzdWdnZXN0aW5nIGhlcmUuCj4gPiAKPiA+IFBIWSBpcyBpbmRlZWQgZGlyZWN0bHkg
Y29uc3VtaW5nIENYTy4gVGhhdCdzIHdoeSBJIGluY2x1ZGVkIGl0IGluIHRoZSBiaW5kaW5nLgo+
IAo+IE9rLCBnb29kLiBJdCdzIGEgYml0IGZydXN0cmF0aW5nIHRoYXQgcGVvcGxlIGNhbiBldmVu
IHNlZW0gdG8gYWdyZWUgb24KPiBhbnN3ZXJzIHRvIGRpcmVjdCBxdWVzdGlvbnMgYWJvdXQgdGhh
dC4KPiAgCgpJIGNhbiB1bmRlcnN0YW5kIHRoYXQuCgo+ID4gPiBXZSBkaXNjdXNzZWQgdGhpcyBh
dCBzb21lIGxlbmd0aCBhdCB0aGUgdGltZSB3aXRoIEJqb3JuIGFuZCBTaGF6YWQgd2hvCj4gPiA+
IGhhZCBhY2Nlc3MgdG8gdGhlIGRvY3VtZW50YXRpb24gYW5kIHRoZSBjb25jbHVzaW9uIHdhcyB0
aGF0LCBhdCBsZWFzdCBvbgo+ID4gPiBzYzgyODB4cCwgdGhlIFBIWSBkb2VzIG5vdCB1c2UgQ1hP
IGRpcmVjdGx5IGFuZCBpbnN0ZWFkIGl0IHNob3VsZCBiZQo+ID4gPiBkZXNjcmliZWQgYXMgYSBw
YXJlbnQgdG8gdGhlIFVGUyByZWZjbG9ja3MgaW4gdGhlIGNsb2NrIGRyaXZlcjoKPiA+ID4gCj4g
PiA+IAlodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL1kyT0VqTkFQWGc1QmZPeEhAaG92b2xk
Y29uc3VsdGluZy5jb20vCj4gPiA+IAo+ID4gPiBUaGUgZG93bnN0cmVhbSBkZXZpY2V0cmVlcyBo
YXZlIGEgYmFkIGhhYml0IG9mIGluY2x1ZGluZyBwYXJlbnQgY2xvY2tzCj4gPiA+IGRpcmVjdGx5
IGluIHRoZSBjb25zdW1lciBub2RlIGluc3RlYWQgb2YgbW9kZWxsaW5nIHRoaXMgaW4gY2xvY2sg
ZHJpdmVyCj4gPiA+IGFsc28gZm9yIG90aGVyIHBlcmlwaGVyYWxzLgo+ID4gPiAgCj4gPiAKPiA+
IE5vLCBJIGNhbiBhc3N1cmUgdGhhdCB5b3UgZ290IHRoZSB3cm9uZyBpbmZvLiBVRlMgUEhZIGNv
bnN1bWVzIHRoZSBjbG9jawo+ID4gZGlyZWN0bHkgZnJvbSBSUE1oLiBJdCB0b29rIG1lIHNldmVy
YWwgZGF5cyB0byBkaWcgdGhyb3VnaCB0aGUgVUZTIGFuZCBQSFkgZG9jcwo+ID4gYW5kIHNwZWNp
YWwgdGhhbmtzIHRvIENhbiBHdW8gZnJvbSBVRlMgdGVhbSwgd2hvIHByb3ZpZGVkIG11Y2ggdmFs
dWFibGUKPiA+IGluZm9ybWF0aW9uIGFib3V0IHRoZXNlIGNsb2Nrcy4KPiAKPiBTb3VuZHMgbGlr
ZSB5b3UndmUgZG9uZSB5b3VyIHJlc2VhcmNoLgo+IAo+ID4gPiBXaGF0IGV4YWN0bHkgaXMgd3Jv
bmcgd2l0aCB0aG9zZSBjb21taXRzPyBXZSBrbm93IHRoYXQgdGhlIGNvbnRyb2xsZXIKPiA+ID4g
ZG9lcyBub3QgY29uc3VtZSBHQ0NfVUZTX1JFRl9DTEtSRUZfQ0xLIGRpcmVjdGx5LCBidXQgZGVz
Y3JpYmluZyB0aGF0IGFzCj4gPiA+IHN1Y2ggZm9yIG5vdyB3YXMgYSBkZWxpYmVyYXRlIGNob2lj
ZToKPiA+ID4gCj4gPiA+IAlHQ0NfVUZTX1JFRl9DTEtSRUZfQ0xLIGlzIHRoZSBjbG9jayB0byB0
aGUgZGV2aWNlcywgYnV0IGFzIHdlCj4gPiA+IAlkb24ndCByZXByZXNlbnQgdGhlIG1lbW9yeSBk
ZXZpY2UgZXhwbGljaXRseSBpdCBzZWVtcyBzdWl0YWJsZQo+ID4gPiAJdG8gdXNlIGFzICJyZWZf
Y2xrIiBpbiB0aGUgdWZzaGMgbm9kZXMgLSB3aGljaCB3b3VsZCB0aGVuIG1hdGNoCj4gPiA+IAl0
aGUgc3BlY2lhbCBoYW5kbGluZyBvZiB0aGUgImxpbmsgY2xvY2siIGluIHRoZSBVRlMgZHJpdmVy
Lgo+ID4gPiAgCj4gPiAKPiA+IE5vLCBHQ0NfVUZTX1JFRl9DTEtSRUZfQ0xLIGlzIF9ub3RfIHRo
ZSBjbG9jayB0byBVRlMgZGV2aWNlcy4gSSBoYXZlbid0IGZvdW5kCj4gPiBpbmZvcm1hdGlvbiBh
Ym91dCB0aGlzIHNwZWNpZmljIHJlZ2lzdGVyIGluIEdDQy4gSW5pdGlhbGx5IEkgdGhvdWdodCB0
aGlzIGlzIGZvcgo+ID4gZW5hYmxpbmcgUVJFRiBjbG9ja3MgZm9yIHRoZSBVRlMgTUVNIHBoeSwg
YnV0IEkgaGF2ZW4ndCBmb3VuZCB0aGUgYW5zd2VyIHlldC4KPiAKPiBKdXN0IHF1b3RpbmcgQmpv
cm4uCj4gCj4gPiBCdXQgYXMgSSBzYWlkIGVhcmxpZXIsIHJlZmVyZW5jZSBjbG9jayB0byBVRlMg
ZGV2aWNlcyBjb21lcyBkaXJlY3RseSBmcm9tIHRoZQo+ID4gY29udHJvbGxlciBhbmQgdGhlcmUg
aXMgYSBzcGVjZmljIHJlZ2lzdGVyIGZvciBjb250cm9sbGluZyB0aGF0LiBTdGFydGluZyBmcm9t
Cj4gPiBTTTg1NTAsIHJlZmVyZW5jZSBjbG9jayBjb21lcyBmcm9tIFJQTWguCj4gCj4gU3VyZSwg
YnV0IHRoYXQgd2FzIG9ubHkgcGFydCBvZiB3aGF0IHRob3NlIGNvbW1pdHMgZGlkIG9yIGNsYWlt
ZWQuIEJqb3JuCj4gYWxzbyBleHBsaWNpdGx5IHN0YXRlZCB0aGF0IHRob3NlIHJlZmNsb2NrcyB3
ZXJlIHNvdXJjZWQgZnJvbSBDWE8sIGV2ZW4KPiB0aG91Z2ggSSBub3cgc2VlIGEgY2xhaW0gZnJv
bSBTaGF6YWQgaW4gdGhhdCB0aHJlYWQgY2xhaW1pbmcgdGhlCj4gb3Bwb3NpdGU6Cj4gCj4gCWh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9ZMkltbmYxK3Y1ajVDSDlyQGhvdm9sZGNvbnN1bHRp
bmcuY29tLwoKVG8gY2xhcmlmeSBmdXJ0aGVyLCB3aGF0IFNoYXphZCBzYWlkIGFib3V0IEdDQ19V
RlNfUkVGX0NMS1JFRl9DTEsgaXMgY29ycmVjdC4KVGhpcyBjbG9jayBpcyBub3QgZGlyZWN0bHkg
c291cmNlZCBieSBDWE8sIHNvIGl0IHNob3VsZCBiZSB2b3RlZCBieSB0aGUKX1BIWV8gZHJpdmVy
IHNlcGFyYXRlbHkgYWxvbmcgd2l0aCBDWE8gKHdoaWNoIHN0aWxsIGZlZWRzIFBIWSkuIFRoYXQn
cyB3aGF0IEkKcmVwcmVzZW50ZWQgaW4gdGhlIGJpbmRpbmcuCgo+IAo+IFdpdGhvdXQgYWNjZXNz
IHRvIGRvY3MgSSBjYW4gb25seSBhc2sgcXVlc3Rpb25zIGFuZCB0cnkgdG8gZG8gdGVkaW91cwo+
IGluZmVyZW5jZXMgZnJvbSBpbmNvbXBsZXRlIG9wZW4gc291cmNlcyAoZS5nLiBkb3duc3RyZWFt
IGRldmljZXRyZWVzKS4KPiAKClRoYXQncyB0aGUgbGlmZSBmb3IgbW9zdCBvZiB1cyA6KSBFdmVu
IHdpdGggYWNjZXNzIHRvIGludGVybmFsIGRvY3MsIGl0IGlzCmRpZmZpY3VsdCB0byBmaW5kIHRo
ZSBpbmZvcm1hdGlvbiB3ZSBhcmUgbG9va2luZyBmb3IuIEJlY2F1c2UsIGEgdmVyeSBmZXcgcGVv
cGxlCmtub3cgd2hlcmUgdGhlIGluZm9ybWF0aW9uIGlzIGJ1cmllZC4KCi0gTWFuaQoKPiBKb2hh
bgoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=

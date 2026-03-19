Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59152103E185
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5j/apSgMtc0PpxpjPE5iGylZ9rvVE1lf/93YvMppYNs=; b=rmjAkUkrDesDKP
	TPOWOkiamhjSjYsCa/YLho5+2Pi+YMJxrQR7ljrSaAVPNxMAHl2YfQyp1t6MN9aJsgPYvl7qFpjcS
	nBVsFV9+W2zNrU5HH3LkitywfbKrR1+WQFQcp6F2D1+PSYIHfdgp6d0Bhffy0Rr8uTK12wnAgfH7P
	omLB7zoSG4lK7ngLgMcXA2qTkrHKImLaIaPPpTYZSPPR7nNJfMbYgvOxcHyiR8o7OmBlHp2MTJFfC
	ji2jBE391IsL0GeY29aRLx9hisoXrDDdsnzkTIBWs5KWOFm+c/HAGpwmVu61bSqJpk646pmB+ZtYQ
	ODJexgHoYlmHSFLftpoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w35wC-00000009wcV-3KSV;
	Thu, 19 Mar 2026 05:28:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w35wB-00000009wcL-0UgC
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 05:28:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 13D9B6011F;
	Thu, 19 Mar 2026 05:28:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9420C19425;
	Thu, 19 Mar 2026 05:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773898129;
	bh=/d3H9UINI1sBsj7nMaWrhvor6fo5T01VF8kw4+FAP9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LESB49MSO3MpUDi9I/FQK93Yf6VmX+GTybl/jjFJi8QapmPOP0lH/jEFlnQZ6fa5i
	 05GblLqg7RD/C/IzHr4OVOofI30XZyD9Z8a7DCddd7JoZgBZhJxOQ5z+jxul01XX+x
	 TZ47BcpPhY+dBoa0QJOAuJIY/n+DMenu+esmiZltzwgp/8PaYRxa7ISsVwOZmCVAGK
	 pX8hV9/ZaTbndFhUb4lr/GJrKm8eDDowpDp4I7HNpEVDfbVHEiLPyLa6yY7cpPzQ2h
	 uqO+eQw8igIE58qsMaUK/o1UzDfQPk1mZudonuUkY7qR7FpeWXUeHNNqj+8HYwc2nm
	 2fqDc/sAvLvDQ==
Date: Thu, 19 Mar 2026 10:58:36 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jingoohan1@gmail.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
Message-ID: <f5vqy4tfhfxeu4li33qffjzrlgqgbflidds35qdni3trdoues2@kvuzjxenrdff>
References: <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
 <20260317171319.GA90412@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260317171319.GA90412@bhelgaas>
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

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMTI6MTM6MTlQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBTYXQsIE1hciAxNCwgMjAyNiBhdCAwNzo1MDo1MFBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBGcmksIE1hciAxMywgMjAyNiBhdCAxMTo0NTo0
MkFNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiBPbiBGcmksIE1hciAxMywgMjAy
NiBhdCAwNTo0NjoxOFBNICswODAwLCBaaXl1ZSBaaGFuZyB3cm90ZToKPiA+ID4gPiBDb21taXQg
OTYwNjA5YjIyYmU1ICgiYXJtNjQ6IGR0czogcWNvbTogaGFtb2E6IE1vdmUgUEhZLCBQRVJTVCwg
YW5kIFdha2UKPiA+ID4gPiBHUElPcyB0byBQQ0llIHBvcnQgbm9kZXMgYW5kIGFkZCBwb3J0IE5v
ZGVzIGZvciBhbGwgUENJZSBwb3J0cyIpIGRpZCBub3QKPiA+ID4gPiBjb252ZXJ0IGFsbCBIYW1v
YeKAkWJhc2VkIHBsYXRmb3JtcyB0byB0aGUgbmV3IG1ldGhvZCBvZiBkZWZpbmluZyBQRVJTVCBh
bmQKPiA+ID4gPiBXYWtlIEdQSU9zIGluIHRoZSBQQ0llIHJvb3QgcG9ydCBub2Rlcy4KPiA+ID4g
PiAKPiA+ID4gPiBXaXRob3V0IHRoZSBjaGFuZ2UgUENJZSBwcm9iZSB3aWxsIGZhaWwuIFRoZSBw
cm9iZSBmYWlsdXJlIGhhcHBlbnMgYmVjYXVzZQo+ID4gPiA+IHRoZSBQSFkgc3RheXMgaW4gdGhl
IGNvbnRyb2xsZXIgbm9kZSB3aGlsZSB0aGUgUEVSU1QvV2FrZSBHUElPcyB3ZXJlIG1vdmVkCj4g
PiA+ID4gdG8gdGhlIHBvcnQgbm9kZXMuCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBmaXhlcyBwcm9i
ZSBmYWlsdXJlcyBzZWVuIG9uIHRoZSBmb2xsb3dpbmcgcGxhdGZvcm1zOgo+ID4gPiA+ICAtIHgx
LWhwLW9tbmlib29rLXgxNAo+ID4gPiA+ICAtIHgxLW1pY3Jvc29mdC1kZW5hbGkKPiA+ID4gPiAg
LSB4MWU4MDEwMC1sZW5vdm8teW9nYS1zbGltN3gKPiA+ID4gPiAgLSB4MWU4MDEwMC1tZWRpb24t
c3ByY2hyZ2QtMTQtczEKPiA+ID4gPiAgLSB4MXA0MjEwMC1sZW5vdm8tdGhpbmtib29rLTE2Cj4g
PiA+ID4gIC0geDEtYXN1cy16ZW5ib29rLWExNAo+ID4gPiA+ICAtIHgxLWNyZAo+ID4gPiA+ICAt
IHgxLWRlbGwtdGhlbmEKPiA+ID4gPiAKPiA+ID4gPiBGaXhlczogOTYwNjA5YjIyYmU1ICgiYXJt
NjQ6IGR0czogcWNvbTogaGFtb2E6IE1vdmUgUEhZLCBQRVJTVCwgYW5kIFdha2UgR1BJT3MgdG8g
UENJZSBwb3J0IG5vZGVzIGFuZCBhZGQgcG9ydCBOb2RlcyBmb3IgYWxsIFBDSWUgcG9ydHMiKQo+
ID4gPiAKPiA+ID4gQXJlIHlvdSBzYXlpbmcgdGhhdCBEVHMgaW4gdGhlIGZpZWxkIGJyb2tlIGJl
Y2F1c2Ugb2Ygc29tZSBrZXJuZWwKPiA+ID4gY2hhbmdlPyAgVGhhdCdzIG5vdCBzdXBwb3NlZCB0
byBoYXBwZW4uICBFdmVuIHRob3VnaCBQSFksIFBFUlNULCBhbmQKPiA+ID4gV2FrZSBHUElPcyBz
aG91bGQgYmUgZGVzY3JpYmVkIGluIFJvb3QgUG9ydCBub2RlcyBpbnN0ZWFkIG9mIHRoZSBSb290
Cj4gPiA+IENvbXBsZXggbm9kZSBpbiAqZnV0dXJlKiBEVHMsIHRoZSBrZXJuZWwgaXMgc3RpbGwg
c3VwcG9zZWQgdG8gYWNjZXB0Cj4gPiA+IHRoZSBvbGQgc3R5bGUgd2l0aCB0aGVtIGRlc2NyaWJl
ZCBpbiB0aGUgUm9vdCBDb21wbGV4IG5vZGUuCj4gPiAKPiA+IFRoaXMgaXMgbm90IHJlbGF0ZWQg
dG8gdGhlIGRyaXZlciBjaGFuZ2UuIFRoZSBkcml2ZXIgY29ycmVjdGx5Cj4gPiBwYXJzZXMgYWxs
IFJvb3QgUG9ydCBwcm9wZXJ0aWVzIGVpdGhlciBpbiB0aGUgUm9vdCBDb21wbGV4IG5vZGUgKG9s
ZAo+ID4gYmluZGluZykgb3IgUm9vdCBQb3J0IG5vZGUgKG5ldyBiaW5kaW5nKS4gQnV0IGNvbW1p
dCA5NjA2MDliMjJiZTUsCj4gPiBsZWZ0IGNvbnZlcnRpbmcgbWVudGlvbmVkIGJvYXJkIERUUyB0
byB0aGUgbmV3IGJpbmRpbmcsIGxlYXZpbmcKPiA+IHRob3NlIGFmZmVjdGVkIHBsYXRmb3JtcyBp
biBhIGhhbGYgYmFrZWQgc3RhdGUgaS5lLiwgc29tZSBwcm9wZXJ0aWVzCj4gPiBpbiBSQyBub2Rl
IGFuZCBzb21lIGluIFJvb3QgUG9ydCBub2RlLiBEcml2ZXIgY2Fubm90IHBhcnNlIHN1Y2gKPiA+
IGNvbWJpbmF0aW9ucywgc28gaXQgZmFpbHMgY29ycmVjdGx5IHNvLgo+IAo+IFRoZSBjb21taXQg
bG9nIG1lbnRpb25zIHByb2JlIGZhaWx1cmVzIG9uIHNvbWUgbWFjaGluZXMuICBJJ2QgbGlrZSBp
dAo+IHRvIGJlIG1vcmUgY2xlYXIgYWJvdXQgd2hvIGlzIGFmZmVjdGVkIGFuZCB3aGF0IHRoZXkg
bmVlZCB0byBkbyB0byBmaXgKPiB0aGVpciBtYWNoaW5lcy4KClRoZXJlIGlzIGFscmVhZHkgYSBs
aXN0IG9mIGFmZmVjdGVkIG1hY2hpbmVzIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2Uu
CgpBbmQgZm9yIGZpeCwgdGhleSBqdXN0IG5lZWQgdG8gYXBwbHkgdGhpcyBwYXRjaC4gT3Igb25j
ZSB0aGlzIHBhdGNoIGdldHMgbWVyZ2VkCmludG8gdjcuMC1yY1MsIHY3LjAgd2lsbCBoYXZlIG5v
IGlzc3VlLgoKPiAgSWYgaXQgb25seSBhZmZlY3RzIGRldmVsb3BlcnMgd2hvIGdlbmVyYXRlZCBE
VHMgYmFzZWQKPiBvbiA5NjA2MDliMjJiZTUgZm9yIGludGVybmFsIHRlc3RpbmcsIHdlIHNob3Vs
ZCBzYXkgdGhhdCBzbyBpdCdzIGNsZWFyCj4gdGhhdCBubyBlbmQgdXNlcnMgd2lsbCBzZWUgYW55
IHJlZ3Jlc3Npb25zIG9yIGJvb3QgZmFpbHVyZXMuCj4gCgpXaG9ldmVyIGhhdmUgaW5jbHVkZWQg
Y29tbWl0IDk2MDYwOWIyMmJlNSBpbiB0aGVpciBrZXJuZWwgYW5kIHVzaW5nIHRoZSBhYm92ZQpt
ZW50aW9uZWQgbWFjaGluZXMgd2lsbCBzZWUgdGhlIGZhaWx1cmUuIEJ1dCBsb29rcyBsaWtlIG5v
IG9uZSByZWFsbHkgdGVzdGVkCnY3LjAtcmNTIG9uIHRoZXNlIG1hY2hpbmVzIGFzIHdlIGhhdmVu
J3QgZ290dGVuIGFueSByZXBvcnRzIHNvIGZhci4KCj4gSXMgdGhlcmUgc29tZSB3YXkgdG8gdmVy
aWZ5IHRoYXQgYWZ0ZXIgdGhpcyBwYXRjaCwgbm9uZSBvZiB0aGUKPiBnZW5lcmF0ZWQgRFRCcyBh
cmUgaW4gdGhpcyBoYWxmLWJha2VkIHNpdHVhdGlvbj8gIFNvbWUga2luZCBvZgo+IGF1dG9tYXRl
ZCBEVEIgY2hlY2tlcj8KCkkgc2VudCBvdXQgYSBEVCBiaW5kaW5nIHNlcmllcyBbMV0gdGhhdCB3
YXMgc3VwcG9zZWQgdG8gY2F0Y2ggdGhlc2UgaXNzdWVzCmR1cmluZyBEVEIgdmFsaWRhdGlvbiBw
aGFzZSwgYnV0IHVuZm9ydHVuYXRlbHkgaXQgZ290IHN0dWNrIGluIHRoZSByZXZpZXcuIEknbGwK
dHJ5IHRvIHN0aXIgdGhpbmdzIHVwLgoKLSBNYW5pCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcGNpLzIwMjUxMTA2LXBjaS1iaW5kaW5nLXYyLTAtYmViZTkzNDVmYzRiQG9zcy5x
dWFsY29tbS5jb20KLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=

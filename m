Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDD910706DE
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 14:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhNC7h9t2M9tkRS7SQvyMXniCCCJaiOZJ3EGi4FTg9Y=; b=E8U5qYvaXTGFUI
	Tn4hB+oX2h2QbW7xW5WnAbRBXIHz26kMp82ljMx/HVQk6tr2d9QGvNdOAxL4dKkFB0ufHQsXw7ckE
	rXU+GXw2WyORrx0q7U4wCibaB9iBXX9GxlE8FkdT0NeQuuz7Gg4HGiEaK2M8pxVyGXU50OE9SjpN6
	OQyjHhGRyQeVOkhsY6ogcTuhu8NyueSJuYUbUvx+fwDOi7Ai6YR7OmTEoYMwDp5c/jjo7+vDZ3dLQ
	uNnzHC1l+efRU+FHsLHlEeqkVw1HfucP9IIxMokjyjTNbaC0Ler1cL3obFcoWPUjPz105gf4shENm
	n7lWk1ye5Kvw+QVwYyEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1Prd-00000001v2w-1ihU;
	Sat, 14 Mar 2026 14:21:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1Pra-00000001v2m-1BPs
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 14:21:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E295E60008;
	Sat, 14 Mar 2026 14:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2560C116C6;
	Sat, 14 Mar 2026 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773498068;
	bh=YdVf07ou5a2k64Dde6YPstlshLKg9I/2efrQvGdUQpU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g6sqYRo+OmrrdWF3NQFAgx4mE/BObaNhmv+978Slt6FXdRWuUfDqoGz0LqPxY4ygA
	 IYYFWzOcoZHqgdu6/+PBxzus+2qRBhdkYJ2v0LnzajnLHrmTwOPAEUysX2vGdJMOxo
	 u4sdVBnB5cIkeBQTjUW1m3aQMUyqVi0GHU3s1KnTrJ4ujUILAYZKOYSntrGCy8OWW0
	 bLqMaoWptbo+TESpD2gnkNjFCJMCwP+6pjrocwJtoeRmNe1Jz7/VaWk7K0EYqvY/Lf
	 e3m8fItzg1l4H/1m9s7iJy09kIZNyVFmfi3MEqBgmGLVSmGWXK5v+dkvbuYZluZOIS
	 hMhEOdCy4hnRA==
Date: Sat, 14 Mar 2026 19:50:50 +0530
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
Message-ID: <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260313164542.GA1405513@bhelgaas>
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

T24gRnJpLCBNYXIgMTMsIDIwMjYgYXQgMTE6NDU6NDJBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBGcmksIE1hciAxMywgMjAyNiBhdCAwNTo0NjoxOFBNICswODAwLCBaaXl1ZSBa
aGFuZyB3cm90ZToKPiA+IENvbW1pdCA5NjA2MDliMjJiZTUgKCJhcm02NDogZHRzOiBxY29tOiBo
YW1vYTogTW92ZSBQSFksIFBFUlNULCBhbmQgV2FrZQo+ID4gR1BJT3MgdG8gUENJZSBwb3J0IG5v
ZGVzIGFuZCBhZGQgcG9ydCBOb2RlcyBmb3IgYWxsIFBDSWUgcG9ydHMiKSBkaWQgbm90Cj4gPiBj
b252ZXJ0IGFsbCBIYW1vYeKAkWJhc2VkIHBsYXRmb3JtcyB0byB0aGUgbmV3IG1ldGhvZCBvZiBk
ZWZpbmluZyBQRVJTVCBhbmQKPiA+IFdha2UgR1BJT3MgaW4gdGhlIFBDSWUgcm9vdCBwb3J0IG5v
ZGVzLgo+ID4gCj4gPiBXaXRob3V0IHRoZSBjaGFuZ2UgUENJZSBwcm9iZSB3aWxsIGZhaWwuIFRo
ZSBwcm9iZSBmYWlsdXJlIGhhcHBlbnMgYmVjYXVzZQo+ID4gdGhlIFBIWSBzdGF5cyBpbiB0aGUg
Y29udHJvbGxlciBub2RlIHdoaWxlIHRoZSBQRVJTVC9XYWtlIEdQSU9zIHdlcmUgbW92ZWQKPiA+
IHRvIHRoZSBwb3J0IG5vZGVzLgo+ID4gCj4gPiBUaGlzIGZpeGVzIHByb2JlIGZhaWx1cmVzIHNl
ZW4gb24gdGhlIGZvbGxvd2luZyBwbGF0Zm9ybXM6Cj4gPiAgLSB4MS1ocC1vbW5pYm9vay14MTQK
PiA+ICAtIHgxLW1pY3Jvc29mdC1kZW5hbGkKPiA+ICAtIHgxZTgwMTAwLWxlbm92by15b2dhLXNs
aW03eAo+ID4gIC0geDFlODAxMDAtbWVkaW9uLXNwcmNocmdkLTE0LXMxCj4gPiAgLSB4MXA0MjEw
MC1sZW5vdm8tdGhpbmtib29rLTE2Cj4gPiAgLSB4MS1hc3VzLXplbmJvb2stYTE0Cj4gPiAgLSB4
MS1jcmQKPiA+ICAtIHgxLWRlbGwtdGhlbmEKPiA+IAo+ID4gRml4ZXM6IDk2MDYwOWIyMmJlNSAo
ImFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlIEdQSU9z
IHRvIFBDSWUgcG9ydCBub2RlcyBhbmQgYWRkIHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0llIHBvcnRz
IikKPiAKPiBBcmUgeW91IHNheWluZyB0aGF0IERUcyBpbiB0aGUgZmllbGQgYnJva2UgYmVjYXVz
ZSBvZiBzb21lIGtlcm5lbAo+IGNoYW5nZT8gIFRoYXQncyBub3Qgc3VwcG9zZWQgdG8gaGFwcGVu
LiAgRXZlbiB0aG91Z2ggUEhZLCBQRVJTVCwgYW5kCj4gV2FrZSBHUElPcyBzaG91bGQgYmUgZGVz
Y3JpYmVkIGluIFJvb3QgUG9ydCBub2RlcyBpbnN0ZWFkIG9mIHRoZSBSb290Cj4gQ29tcGxleCBu
b2RlIGluICpmdXR1cmUqIERUcywgdGhlIGtlcm5lbCBpcyBzdGlsbCBzdXBwb3NlZCB0byBhY2Nl
cHQKPiB0aGUgb2xkIHN0eWxlIHdpdGggdGhlbSBkZXNjcmliZWQgaW4gdGhlIFJvb3QgQ29tcGxl
eCBub2RlLgo+IAoKVGhpcyBpcyBub3QgcmVsYXRlZCB0byB0aGUgZHJpdmVyIGNoYW5nZS4gVGhl
IGRyaXZlciBjb3JyZWN0bHkgcGFyc2VzIGFsbCBSb290ClBvcnQgcHJvcGVydGllcyBlaXRoZXIg
aW4gdGhlIFJvb3QgQ29tcGxleCBub2RlIChvbGQgYmluZGluZykgb3IgUm9vdCBQb3J0IG5vZGUK
KG5ldyBiaW5kaW5nKS4gQnV0IGNvbW1pdCA5NjA2MDliMjJiZTUsIGxlZnQgY29udmVydGluZyBt
ZW50aW9uZWQgYm9hcmQgRFRTIHRvCnRoZSBuZXcgYmluZGluZywgbGVhdmluZyB0aG9zZSBhZmZl
Y3RlZCBwbGF0Zm9ybXMgaW4gYSBoYWxmIGJha2VkIHN0YXRlIGkuZS4sCnNvbWUgcHJvcGVydGll
cyBpbiBSQyBub2RlIGFuZCBzb21lIGluIFJvb3QgUG9ydCBub2RlLiBEcml2ZXIgY2Fubm90IHBh
cnNlIHN1Y2gKY29tYmluYXRpb25zLCBzbyBpdCBmYWlscyBjb3JyZWN0bHkgc28uCgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

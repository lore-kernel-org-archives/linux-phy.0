Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0804EC71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 17:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MGUOks8hPtGlzeGTaXYn5Gioh04cEUES4wCxAk3TQ8=; b=4hSfjdsePZywnZ
	jHlnN75B2Mqgyox1sSYeuXAGMaIDwg/IyUR8uOd5tsojiHn+KxM71qBuxM5jQYY5j47rrkQDaP67y
	aNoCyDiWNW2fRRRIzCRw0czLOLm//8ucA61rlzrmy7vESoMOWJAsVmyQc+iEE33sNbWooa2Lg5LEx
	16oODCj27xkOT5bLFSYyXC0gxIaH9iWi/LgDcf3vzrKF6EV68JhWYCBk70adq/y1IxNfD9COy5/Dx
	yXqHZjI6OjIl52QO6uVHeEgchN5/W7u7jhw2mhlH0m4pdiQ3A6PDheVWY1w6S+xZhNkD5sbNWnuCV
	2nsGBmySrGCvHRR1mTTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZrb-000000080Ks-4A4E;
	Tue, 17 Jun 2025 17:12:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZ65-00000007rq1-2y0Y
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 16:23:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DEAE1629C1;
	Tue, 17 Jun 2025 16:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3B54C4CEE3;
	Tue, 17 Jun 2025 16:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750177420;
	bh=V8t5bo5FF6oerOdwGkDXKtDkx0wzlN6pNvzLOhsekAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jfgI3HFf4DEK5tMMrbCmXDo5gMBLSPmrFShaTkHn2SAYErrKEoooB22PsftEu4Dn6
	 gd/vU85cZRp54Nkmkt8VCBy+Mobpj/xQ27uts5EZWwRstndjB5Mbpms0JmfsNhJVoN
	 U/YRwgamazLTUCw5K7qGQlE77O6v4EgbH+X1tYTXbMNySQPZC4rzZiaX9FPI97Kkc+
	 h0Bl2j/VYdgEtIZmIiWxxfPyAlaCwyZZF+QpOCIMQQ2koP3yAm5llS8cj9Bz3HKRbW
	 9m80iAeyOKXvCBxxi27V0NdXOKVLYqwEbvZB9/MZAu3tt4Y8TFqQKGhd5pT/AeKmSx
	 SclUXo7xd5Psg==
Date: Tue, 17 Jun 2025 21:53:28 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 0/4] pci: qcom: Add QCS615 PCIe support
Message-ID: <t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <d67ba247-6b2d-4f2e-9583-ddbe375bf08d@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d67ba247-6b2d-4f2e-9583-ddbe375bf08d@quicinc.com>
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

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgMDY6MzQ6MDNQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gCj4gT24gNS8yNy8yMDI1IDM6MjAgUE0sIFppeXVlIFpoYW5nIHdyb3RlOgo+ID4gVGhp
cyBzZXJpZXMgYWRkcyBkb2N1bWVudCwgcGh5LCBjb25maWdzIHN1cHBvcnQgZm9yIFBDSWUgaW4g
UUNTNjE1Lgo+ID4gCj4gPiBUaGlzIHNlcmllcyBkZXBlbmQgb24gdGhlIGR0LWJpbmRpbmdzIGNo
YW5nZQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTIxLXRvcGljLTgxNTBf
cGNpZV9kcm9wX2Nsb2Nrcy12MS0wLTNkNDJlODRmNjQ1M0Bvc3MucXVhbGNvbW0uY29tLwo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1IDxxdWljX2tyaWNo
YWlAcXVpY2luYy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1
emhhbkBxdWljaW5jLmNvbT4KPiA+IC0tLQo+ID4gSGF2ZSBmb2xsb3dpbmcgY2hhbmdlczoKPiA+
IAktIEFkZCBhIG5ldyBEb2N1bWVudCB0aGUgUUNTNjE1IFBDSWUgQ29udHJvbGxlcgo+ID4gCS0g
QWRkIGNvbmZpZ3VyYXRpb25zIGluIGRldmljZXRyZWUgZm9yIFBDSWUsIGluY2x1ZGluZyByZWdp
c3RlcnMsIGNsb2NrcywgaW50ZXJydXB0cyBhbmQgcGh5IHNldHRpbmcgc2VxdWVuY2UuCj4gPiAJ
LSBBZGQgY29uZmlndXJhdGlvbnMgaW4gZGV2aWNldHJlZSBmb3IgUENJZSwgcGxhdGZvcm0gcmVs
YXRlZCBncGlvcywgUE1JQyByZWd1bGF0b3JzLCBldGMuCj4gPiAKPiA+IENoYW5nZXMgaW4gdjU6
Cj4gPiAtIERyb3AgcWNzNjE1LXBjaWUueWFtbCBhbmQgdXNlIHNtODE1MCwgYXMgcWNzNjE1IGlz
IHRoZSBkb3duZ3JhZGVkCj4gPiAgICB2ZXJzaW9uIG9mIHNtODE1MCwgd2hpY2ggY2FuIHNoYXJl
IHRoZSBzYW1lIHlhbWwuCj4gPiAtIERyb3AgY29tcGF0aWJsZSBlbnJ0eSBpbiBkcml2ZXIgYW5k
IHVzZSBzbTgxNTAncyBlbnJ0eSAoS3J6eXN6dG9mKQo+ID4gLSBGaXggdGhlIERUIGZvcm1hdCBw
cm9ibGVtIChLb25yYWQpCj4gPiAtIExpbmsgdG8gdjQ6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI1MDUwNzAzMTU1OS40MDg1MTU5LTEtcXVpY196aXl1emhhbkBxdWljaW5jLmNvbS8K
PiA+IAo+ID4gQ2hhbmdlcyBpbiB2NDoKPiA+IC0gRml4ZWQgY29tcGlsZSBlcnJvciBmb3VuZCBi
eSBrZXJuZWwgdGVzdCByb2JvdChLcnp5c3p0b2YpCj4gPiAtIFVwZGF0ZSBEVCBmb3JtYXQgKEtv
bnJhZCAmIEtyenlzenRvZikKPiA+IC0gUmVtb3ZlIFFDUzg1NTAgY29tcGF0aWJsZSB1c2UgUUNT
NjE1IGNvbXBhdGlibGUgb25seSAoS29ucmFkKQo+ID4gLSBVcGRhdGUgcGh5IGR0IGJpbmRpbmdz
IHRvIGZpeCB0aGUgZHRiIGNoZWNrIGVycm9ycy4KPiA+IC0gTGluayB0byB2MzogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMzEwMDY1NjEzLjE1MTU5OC0xLXF1aWNfeml5dXpoYW5A
cXVpY2luYy5jb20vCj4gPiAKPiA+IENoYW5nZXMgaW4gdjM6Cj4gPiAtIFVwZGF0ZSBxY3M2MTUg
ZHQtYmluZGluZ3MgdG8gZml0IHRoZSBxY29tLXNvYy55YW1sIChLcnp5c3p0b2YgJiBEbWl0cnkp
Cj4gPiAtIFJlbW92ZWQgdGhlIGRyaXZlciBwYXRjaCBhbmQgdXNpbmcgZmFsbGJhY2sgbWV0aG9k
IChNYW5pKQo+ID4gLSBVcGRhdGUgRFQgZm9ybWF0LCBrZWVwIGl0IHNhbWUgd2l0aCB0aGUgeDFl
ODAxMDAwLmR0c2kgKEtvbnJhZCkKPiA+IC0gVXBkYXRlIERUIGNvbW1pdCBtZXNzYWdlIChCb2pv
cikKPiA+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMTIy
MDIzMzE0LjE2MTYzNTMtMS1xdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tLwo+ID4gCj4gPiBDaGFu
Z2VzIGluIHYyOgo+ID4gLSBVcGRhdGUgY29tbWl0IG1lc3NhZ2UgZm9yIHFjczYxNSBwaHkKPiA+
IC0gVXBkYXRlIHFjczYxNSBwaHksIHVzaW5nIGxvd2VyY2FzZSBoZXgKPiA+IC0gUmVtb3ZlZCBy
ZWR1bmRhbnQgZnVuY3Rpb24KPiA+IC0gc3BsaXQgdGhlIHNvYyBkdHNpIGFuZCB0aGUgcGxhdGZv
cm0gZHRzIGludG8gdHdvIGNoYW5nZXMKPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjQxMTE4MDgyNjE5LjE3NzIwMS0xLXF1aWNfeml5dXpoYW5AcXVpY2lu
Yy5jb20vCj4gPiAKPiA+IEtyaXNobmEgY2hhaXRhbnlhIGNodW5kcnUgKDIpOgo+ID4gICAgYXJt
NjQ6IGR0czogcWNvbTogcWNzNjE1OiBlbmFibGUgcGNpZQo+ID4gICAgYXJtNjQ6IGR0czogcWNv
bTogcWNzNjE1LXJpZGU6IEVuYWJsZSBQQ0llIGludGVyZmFjZQo+ID4gCj4gPiBaaXl1ZSBaaGFu
ZyAoMik6Cj4gPiAgICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC1wY2llLXBo
eTogVXBkYXRlIHBjaWUgcGh5IGJpbmRpbmdzCj4gPiAgICAgIGZvciBRQ1M2MTUKPiA+ICAgIGR0
LWJpbmRpbmdzOiBQQ0k6IHFjb20scGNpZS1zbTgxNTA6IGRvY3VtZW50IHFjczYxNQo+ID4gCgpB
cHBsaWVkIHRvIHBjaS9kdC1iaW5kaW5ncywgdGhhbmtzIQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A007CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWFf+VYqYwwGQsYKD11CtYb4IHLeUZv9jsEoIjTu5XI=; b=FxkCWnPhK1LFS2
	+dvjjjDyRGw27eDUHqNz4vFltd3Nik0ue5gUY2KcgOaVTO57yP9UiI/AqkCfpvtflUeT//f2buQt0
	TUpbTxYhh3t+axP0cdffvSTjQMhBuEO/8DTGtAJhEUnL5I6/cz/s+EZM9AJBjTH9fGx5jeJ+NnYxE
	ea7N8+ld+MxmXG3EGe81yi9KQf+efce+gqTonCg/hYbAgbTEs8X3BtfBep6KYCwdi9aNm1P4tTaNV
	LtF9Rg+4eXy33R9nJ/Eo4w0zu9XKCWQwxxCNoMcHs6HL4chy6CZt2dQJGw0bnjUvwvgcYIFfHxG33
	KErGuVufjU2xbhEM6QxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZcL-00000003Yev-1ESP;
	Fri, 22 Aug 2025 21:48:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPRQ-00000002Fsr-40ZR
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 10:56:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E80EC5C6DA4;
	Fri, 22 Aug 2025 10:56:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F6BBC4CEED;
	Fri, 22 Aug 2025 10:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755860174;
	bh=Y29p5D56IdCwPxS75fiLrqc2z3/aZOozQQw7iVirDKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KfNXgrRbTlpTGbncUjlp3oKLl7vbSs/EWWibyFfXjtl3UGv+tfjVM0i/VivP5Ecmk
	 XtxHyqCyy5oRv+OUz7rDUvasw8Y366O9NLfB7KJzRPZ8SAAu5Vq+ByoXqHeGklFgi/
	 TCSDhzvLl6NYU0JPscssiq/XIUo4ebFfP/58gOL9NXLj6GmCgzsitZU5JFgc3ILnE3
	 uW19gZGeb6q12rmhUGnLE8DJVrnHhxim5AAR88ypJlP62AF2zFyhR+CNUFvrAT4C/n
	 xI1Xk1ojoI9qO2pKrNXKrX8f+YIjiYxCBkzVLAXfFZndMeeBxaZvqiv4aH35KbJc+M
	 TMlTAzqBldumw==
Date: Fri, 22 Aug 2025 16:26:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, vkoul@kernel.org, 
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
Message-ID: <pp3hr3kssytyfuuesdfrzdo6hm6e3tjlahla53mlmydetsgxdy@wmxwkatf7lvr>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <xir3u3hlmcvfu6uasijz6g2oialoasmuu4bno6ctxpscqcebz6@6kw6xpm5bxbd>
 <761c97bb-ee90-4ace-acd3-08349831aade@oss.qualcomm.com>
 <2635ced4-b91f-4c79-ae2a-079f06bbb8a9@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2635ced4-b91f-4c79-ae2a-079f06bbb8a9@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_035617_074443_680EC49C 
X-CRM114-Status: GOOD (  24.92  )
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

T24gRnJpLCBBdWcgMjIsIDIwMjUgYXQgMDI6NTM6MzFQTSBHTVQsIE5pdGluIFJhd2F0IHdyb3Rl
Ogo+IAo+IAo+IE9uIDgvMjIvMjAyNSAyOjQ1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+
ID4gT24gMjIvMDgvMjAyNSAxMTo1MywgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4g
PiBPbiBXZWQsIEF1ZyAyMCwgMjAyNSBhdCAwMzo0OTozMUFNIEdNVCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEF1ZyAyMCwgMjAyNSBhdCAwMzo1ODoyNkFNICswNTMw
LCBOaXRpbiBSYXdhdCB3cm90ZToKPiA+ID4gPiA+IEFkZCByZWd1bGF0b3IgbG9hZCB2b3Rpbmcg
c3VwcG9ydCBmb3IgU004NjUwIGFuZCBTTTg3NTAgcGxhdGZvcm1zIGJ5Cj4gPiA+ID4gPiBpbnRy
b2R1Y2luZyBkZWRpY2F0ZWQgcmVndWxhdG9yIGJ1bGsgZGF0YSBhcnJheXMgd2l0aCB0aGVpciBs
b2FkCj4gPiA+ID4gPiB2YWx1ZXMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZSBsb2FkIHJlcXVp
cmVtZW50cyBhcmU6Cj4gPiA+ID4gPiAtIFNNODY1MDogdmRkYS1waHkgKDIwNW1BKSwgdmRkYS1w
bGwgKDE3LjVtQSkKPiA+ID4gPiA+IC0gU004NzUwOiB2ZGRhLXBoeSAoMjEzbUEpLCB2ZGRhLXBs
bCAoMTguM21BKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIGVuc3VyZXMgc3RhYmxlIG9wZXJh
dGlvbiBhbmQgcHJvcGVyIHBvd2VyIG1hbmFnZW1lbnQgZm9yIHRoZXNlCj4gPiA+ID4gPiBwbGF0
Zm9ybXMgd2hlcmUgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4gdGhlIFFNUCBVU0IgUEhZ
IGFuZAo+ID4gPiA+ID4gb3RoZXIgSVAgYmxvY2tzIGJ5IHNldHRpbmcgYXBwcm9wcmlhdGUgcmVn
dWxhdG9yIGxvYWQKPiA+ID4gPiA+IGN1cnJlbnRzIGR1cmluZyBQSFkKPiA+ID4gPiA+IG9wZXJh
dGlvbnMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IENvbmZpZ3VyYXRpb25zIHdpdGhvdXQgc3BlY2lm
aWMgbG9hZCByZXF1aXJlbWVudHMgd2lsbCBjb250aW51ZSB0byB3b3JrCj4gPiA+ID4gPiB1bmNo
YW5nZWQsIGFzIGluaXRfbG9hZF91QSByZW1haW5zIHplcm8taW5pdGlhbGl6ZWQgd2hlbiAuaW5p
dF9sb2FkX3VBCj4gPiA+ID4gPiBpcyBub3QgcHJvdmlkZWQuCj4gPiA+ID4gCj4gPiA+ID4gQ2Fu
IHdlIHBsZWFzZSBnZXQgY29uZmlndXJhdGlvbiBmb3IgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3Jt
cz8KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IE9ubHkgaWYgdGhlIHJlc3Qgb2YgdGhlIHBsYXRmb3Jt
cyByZXF1aXJlIHNldHRpbmcgdGhlIGxvYWQuLi4gSXQgaXMKPiA+ID4gbm90IHZlcnkKPiA+ID4g
Y2xlYXIgaWYgdGhlIG9sZGVyIHBsYXRmb3JtcyBzaGFyZSB0aGUgcmVndWxhdG9ycyB3aXRoIG90
aGVyIElQcyBvciBub3QuCj4gPiAKPiA+IFllcywgdGhleSBhcmUgdXN1YWxseSBzaGFyZWQuIFVT
Qi4gUENJZSBhbmQgRFNJIGZyZXF1ZW50bHkgc2l0IG9uIHRoZQo+ID4gc2FtZSB2b2x0YWdlIHJh
aWxzLgo+IAo+IFllcywgaXTigJlzIHR5cGljYWxseSBzaGFyZWQgYWNyb3NzIG11bHRpcGxlIGNs
aWVudHMuCj4gCj4gSG93ZXZlciwgYXMgSSBtZW50aW9uZWQgZWFybGllciwgaW4gdGhlIGN1cnJl
bnQgdXBzdHJlYW0gY29kZWJhc2UsIHRoZQo+ICJyZWd1bGF0b3ItYWxsb3ctc2V0LWxvYWQiIHBy
b3BlcnR5IGlzIGRlZmluZWQgb25seSBmb3IgU004NzUwIGFuZCBTTTg2NTAKPiB3aXRoaW4gdGhl
IFBNSUMgUEhZIGFuZCBQTEwgZGV2aWNlIHRyZWUgbm9kZXMuIFRoaXMgbWVhbnMgdGhhdCBldmVu
IGlmIHRoZQo+IFVGUyBQSFkgZHJpdmVyIGlzIHVwZGF0ZWQgdG8gdm90ZSBmb3IgdGhpcyBjb25m
aWd1cmF0aW9uIG9uIG90aGVyIHBsYXRmb3JtcywKPiBpdCB3aWxsIGhhdmUgbm8gZWZmZWN0LCBh
cyB0aGUgcHJvcGVydHkgaXMgbm90IHN1cHBvcnRlZCB0aGVyZS4KPiAKCldoaWNoIG1lYW5zOgoK
MS4gVGhvc2UgcGxhdGZvcm1zIGFyZSBzdGlsbCBwcm9uZSB0byB0aGlzIHN0YWJpbGl0eSBpc3N1
ZS4KMi4gT25seSBVRlMgaXMgc2V0dGluZyB0aGUgcmVndWxhdG9yIGNvbnN0cmFpbnQsIGJ1dCBu
b3Qgb3RoZXIgZHJpdmVycyBzaGFyaW5nCnRoZSBzYW1lIHJlZ3VsYXRvci4KCklNTywgYm90aCBj
YXNlcyBhcmUgYmFkLiBBdCBsZWF0LCB5b3UgY2FuIHVwZGF0ZSB0aGUgVUZTIGRyaXZlciB0byBz
ZXQgdGhlIGxvYWQKbm93IGFuZCBsYXRlciBvbiBhZGQgdGhlIERUUyBwcm9wZXJ0eSBhcyBhIGZv
bGxvdy11cCBzZXJpZXMgZm9yIHRob3NlIHBsYXRmb3Jtcy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1965FD42BBA
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 17:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOT3TkzZ6iCwi735/bjejJUsEejrMWHcu4cz8Xa7wW0=; b=tPU66KLc/hnSly
	XAFEuJlrhMHpog1+dTtzJ8ODEQRjprc0dOczwIzs+PIej9qG5eaJy1oZGkSkxt85DBTvNxCG3PTTM
	xKO9oA1H+CmMRSLEdCibM5bYY0Yn6XxEMvoRt7rZH4bVBRBvdwd1vln0fxXWDSWbVhu0tMvlLQ4ib
	hXqcWhhu21GlvIFCL3sG7NFpoIyDxw9Y8jGSdPDVcV5vCdjJQbhx6tB3vH25CRC5mB0AGPq7yYGRd
	BqI8v8B/UfQkPltMBtfDZL21DDJJ8vDpd6U1BX68ri+pftsXF58yW7LYBhIoMjfYvHaib3qU7MMc9
	0JOWUiry8RYtARNooCJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAv0v-00000004Qoh-0Sxa;
	Tue, 12 Nov 2024 17:49:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAuiA-00000004Mus-0ZxC
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 17:29:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 353B6A41E3A;
	Tue, 12 Nov 2024 17:27:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09109C4CECD;
	Tue, 12 Nov 2024 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731432593;
	bh=KtuHsvBkXKyb4/BS1eV+SQXhdNFVGLr8frMmDpXLEes=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eIwU9wI/63KEVgKlLB5MPJHrTlsfAgH2RsYY7yKRUbcanp83jQjDd0ro1ZLLICxyo
	 I2ZoEO6Lll2jXNrlfxCh5MpkCD+hc8uHdRULw5dvtAF2N73qY/Dq7jBFk0quc6ghh8
	 JovS+ZBSKjIyvJdM1e1rKhlv+gtw4kNZV3s7Cp7IrUvIr5+eOvXRltASoAWm5dnV8+
	 MMyxs9ZjjF2PputR56oBSXNxOAwRoBjB2yGtmQ5mbXLc4GMDRXwjeo9sOKzgq1Vw7n
	 z6d8EhY8rcpKGQ9g9iWEacB1krNiB3CI/Q7/bqgYHpHb9+GWR2YHr9KaLrCKr4e1n9
	 k9Va/SiGaZxyw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1tAui3-000000007ti-2RDk;
	Tue, 12 Nov 2024 18:29:48 +0100
Date: Tue, 12 Nov 2024 18:29:47 +0100
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <ZzOQi0PpRZYts-B0@hovoldconsulting.com>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-6-quic_qianyu@quicinc.com>
 <ZyjbrLEn8oSJjaZN@hovoldconsulting.com>
 <de5f40ab-90b7-4c75-b981-dd5824650660@quicinc.com>
 <c558f9eb-d190-4b77-b5a3-7af6b7de68d8@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c558f9eb-d190-4b77-b5a3-7af6b7de68d8@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_092954_267901_A7B11A8A 
X-CRM114-Status: GOOD (  14.14  )
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

T24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgMTE6NDQ6MTdBTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gT24gMTEvNS8yMDI0IDE6MjggUE0sIFFpYW5nIFl1IHdyb3RlOgo+ID4gT24gMTEvNC8yMDI0
IDEwOjM1IFBNLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gPj4gT24gVGh1LCBPY3QgMzEsIDIwMjQg
YXQgMDg6MDk6MDJQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6Cgo+ID4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByYW5nZXMgPSA8MHgwMTAwMDAwMCAweDAgMHgwMDAwMDAwMCAweDAgMHg3ODIw
MDAwMCAweDAgCj4gPj4+IDB4MTAwMDAwPiwKPiA+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDwweDAyMDAwMDAwIDB4MCAweDc4MzAwMDAwIDB4MCAweDc4MzAwMDAwIDB4MCAK
PiA+Pj4gMHgzZDAwMDAwPiwKCj4gPj4gQ2FuIHlvdSBkb3VibGUgY2hlY2sgdGhlIHNpemUgaGVy
ZSBzbyB0aGF0IGl0IGlzIGluZGVlZCBjb3JyZWN0IGFuZCBub3QKPiA+PiBqdXN0IGNvcGllZCBm
cm9tIHRoZSBvdGhlciBub2RlcyB3aGljaCBpbml0aWFsbHkgZ290IGl0IHdyb25nOgo+ID4+Cj4g
Pj4gwqDCoMKgwqBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjQwNzEwLXRvcGljLWJh
cm1hbi12MS0xLTVmNjNmY2E4ZDBmY0BsaW5hcm8ub3JnLwoKPiBCVFcsIHJlZ2lvbnMgb2YgUENJ
ZTZhLCBQQ0llNCwgUENJZTUgYXJlIDY0TUIsIDMyTUIsIDMyTUIsIHJlc3BlY3RpdmVseS4KPiBX
aHkgcmFuZ2Ugc2l6ZSBpcyBzZXQgdG8gMHgxZDAwMDAwIGZvciBQQ0llNmEsIGFueSBpc3N1ZSBp
cyByZXBvcnRlZCBvbiAKPiBQQ0llNmE/CgpUaGFua3MgZm9yIGNoZWNraW5nLiBJdCBzZWVtcyB0
aGUgcGF0Y2ggbGlua2VkIHRvIGFib3ZlIHdhcyBicm9rZW4gZm9yClBDSWU2YSB0aGVuLgoKV2Ug
ZGlkIHNlZSBQQ0llNSBwcm9iZSBicmVha2luZyBkdWUgdG8gdGhlIG92ZXJsYXAgd2l0aCBQQ0ll
NCBidXQgdGhlCnBhdGNoIHByZWRhdGVzIFBDSWU1IHN1cHBvcnQgYmVpbmcgcG9zdGVkIGFuZCBt
ZXJnZWQgc28gaXQgd2FzIHByb2JhYmx5Cmp1c3QgYmFzZWQgb24gaW5zcGVjdGlvbi4KCkNvdWxk
IHlvdSBzZW5kIGEgZml4IGZvciBQQ0llNmE/CgpKb2hhbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C20CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5D6gvDadV3iYdMd1gNvKaQ6AV8vA/3QNTyhL/vsUKg=; b=w1iQicxtCjUqfF
	hCkSh5AjSujn5pTxEmb63XWzTC1t6o/azPp7FmukhKvhQPHhkqC3YhugmHqKUOZg3k3MwSqNeHkxj
	GSxfsaVCOyWjEW0t4fgVxYiJ6G+V5J9WTWYRs4lS0l1Fxzazf0YT2Q58fjVClxdGzgfzfJemCuPlM
	qyqJn9ASpkeZR/FCNuMDRb9TH2QeG2WhG9gMQqwjj7PuaSBNjKcGmK+fJyz3qMtoyyfocSd+acQv5
	5Dmzj4+HQ6RtirMIWbIYyB3rRjGwuYiUxZ/M43DUm+9J1nDWsEVdDU8HEWwV7IIiwxwGyfmq9U0vb
	91omyPgKIhqFvrDXxWgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGHyQ-0000000Ao0m-0Br2;
	Mon, 12 Oct 2026 15:29:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGHyO-0000000AnzX-32oo
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:29:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D5839602D1;
	Mon, 12 Oct 2026 15:29:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DC781F0089C;
	Mon, 12 Oct 2026 15:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791818995;
	bh=QGxvx/QLjnMgsM111662/b6rObFKZJ15uWxYClEgMlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A0HbSVmsS8vh1ArDa0XSbplLZ3Ud2mOasHZSp4FvYB8guvesdMTxXJ3G+VTQ4CRmn
	 csQDD2a+LcLiYC8xLdYgiQKQIiDVEJIAnlTF3ZoVlhzEJ0ygoTXW0y0GEwF3+QUYF5
	 +LodW0DR834sLv56x6LHoyGvkONDrbHLHvAkI/NEexGVjdELaE12xsYqixROTwPswV
	 bDHUAXZKMzQeQsjjsvBmifcLGZ7y2CyX4qoPd2dTp57IrtPAimPNaYOypf70xdPr2i
	 /bgGSMrKn46Nmt5y6t+Xaq94HHDqHez82u94z/5o1jDhubMI0K+CgBX3aNIjUMo4oa
	 gckCrWkKwLxPQ==
Date: Mon, 12 Oct 2026 20:59:46 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] PCI: qcom-ep: Move PHY init and drive PHY reset to
 align with HPG
Message-ID: <asz8xQuxSiIgFCm1@debian>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-2-0b2195836f30@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-2-0b2195836f30@oss.qualcomm.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMTE6MDQ6MjJQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gSFBHIHJlcXVpcmVzIHRoZSBHRFNDIHRvIGJlIHBvd2VyZWQgdXAgYW5kIGFsbCBQSFkvY29u
dHJvbGxlciBjbG9ja3MKPiBlbmFibGVkIGJlZm9yZSB0aGUgY29udHJvbGxlcidzIGNvcmUgcmVz
ZXQgYW5kIHRoZSBQSFkncyByZXNldCBhcmUgdG9nZ2xlZAo+IHRvZ2V0aGVyIGFzIG9uZSBhdG9t
aWMgZ3JvdXAsIHdpdGggUEFSRl9ERVZJQ0VfVFlQRSBzZXQgcmlnaHQgYWZ0ZXIgdGhhdAo+IHJl
c2V0IGdyb3VwLCBzYW1lIGFzIHRoZSBSQy1tb2RlIGNoYW5nZS4KPiAKPiBNb3ZlIHBoeV9pbml0
KCkgYWhlYWQgb2YgdGhlIGNvbnRyb2xsZXIncyBvd24gY2xvY2sgZW5hYmxlLCBhbmQgZm9sZAo+
IHBoeV9yZXNldCgpIGludG8gdGhlIGNvcmUgcmVzZXQgYXNzZXJ0L2RlYXNzZXJ0LiBwaHlfcG93
ZXJfb24oKSBrZWVwcwo+IHJ1bm5pbmcgYWZ0ZXJ3YXJkcy4gQWxzbyBtb3ZlIHRoZSBQQVJGX0RF
VklDRV9UWVBFIHdyaXRlIG91dCBvZgo+IHFjb21fcGNpZV9wZXJzdF9kZWFzc2VydCgpIHRvIHJp
Z2h0IGFmdGVyIHRoZSByZXNldCBncm91cCwgaW4KPiBxY29tX3BjaWVfZW5hYmxlX3Jlc291cmNl
cygpLgo+IAoKU2FzaGlrbyBwb2ludGVkIG91dCB0aGF0IFBBUkZfREVWSUNFX1RZUEUgY2hhbmdl
IGlzIG5vdCBwcmVzZW50IGluIHRoaXMgcGF0Y2guCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

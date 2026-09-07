Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F7C4C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1Vefuqw8UF9JOwOVvDG0YjjqQGKQU7Rs8NVc/lP1sY=; b=pCb9CWMBKInA3F
	wCXHLSYtOUwHtmgh9rOFUqeJ0mYjENznYdZK8K8vccHujjJVXo9X0MUtC6ouNhr1B5F9i1akl5QEX
	uUfskkdwWIacjyi09WtgpUmh/oY+X6a/XTIyE90XHEz1/+GeEF7PeJhSDzLx43ap74X0gIwQiqGhk
	+YcCWK4nXoPl7jEibFgHjQV35r9HbRXzWn/XzST1ifYQZEEGhYxWgpzFM+jmlpTDzv6wQlch4dr0C
	tM0hWjngRq5r5CRqP/P88psSfU5pHpOjbE5DX62sYY8y1VTuPL1x9cYDHAkndRu/J34r8OPrlyu6b
	FILfN/PkyJgVaZkQse0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XKL-00000006cOA-36k0;
	Mon, 07 Sep 2026 11:15:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XKL-00000006cO0-0hsP
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:15:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B5FF74077F;
	Mon,  7 Sep 2026 11:15:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4F031F00A3A;
	Mon,  7 Sep 2026 11:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788779752;
	bh=jRla1z+WYCdfeApqJTPNn3t2SfBB6tcNgfV7C84Hzhw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YmJ4K1aiRhIV31XeZXsOupoj7L8JIdHZSSTxTtffcaF5sF1yZRycMMxYBZ9DC8sNR
	 psO00+u1vn4gQvPP4H9ZV508o9wHTtaohmSQhsIErD3Xu6AX05CibGCAWzyVSRHAAj
	 e+rVnIUXk3wRwScSqCNLEQhDWFbYG8BGC5zCVyoz+XXOoEAk7vlJfcUDq6//6HI0BT
	 PQl7hBRQJ1lKjg6olL7WFxCUsINmQh3yIn6+e16rfzevAmdS3tIePMjdroQlpqu3p1
	 VtrqNDFq89hOQC03BiTXiM2LF+jbQ/ieomamL2zcXEj9S44FMdyzOFhZITjE6bJWzw
	 xo0u3Z5aB3fRw==
Date: Mon, 7 Sep 2026 13:15:42 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 04/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Refactor init regs table definitions
Message-ID: <6ewdlgcazt3ucqlxgqwwtcp2gvhcreoh5tk3vs5pbulrv5t2ih@uccgtpzvizyy>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-4-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-4-39be0955a6aa@outlook.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMDQ6Mzc6MjFQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBSZWZhY3RvciB0aGUgSVBRNTAxOC9JUFE1MzMyIFVO
SVBIWSBQQ0llIGluaXQgZGF0YSBieSBpbnRyb2R1Y2luZyBhCj4gaGVscGVyIG1hY3JvIGZvciBy
ZWdpc3Rlci92YWx1ZSBlbnRyaWVzIGFuZCBjb252ZXJ0aW5nIG9wZW4tY29kZWQgc3RydWN0Cj4g
aW5pdGlhbGl6ZXJzIHRvIHRoZSBjb21wYWN0IGZvcm0uCj4gCj4gQWxzbyByZW1vdmUgYW4gdW51
c2VkIGluY2x1ZGUsIGRyb3AgdW51c2VkIG1hY3JvIHJlZ2lzdGVyIGRlZmluaXRpb25zLAo+IGFu
ZCByZW5hbWUgdGhlIElQUTUzMzItc3BlY2lmaWMgUEhZIENGRyByZWdpc3RlciBtYWNyb3MgdG8g
bWFrZSB0aGVpcgo+IGNvbWJvIFBDSWUvVVNCMyBzY29wZSBleHBsaWNpdC4KPiAKClRoZXNlIHNo
b3VsZCBiZSBwYXJ0IG9mIGEgc2VwYXJhdGUgY2hhbmdlLiBBIHBhdGNoIHNob3VsZCBvbmx5IGRv
IG9uZSB0aGluZywgbm90Cm11bHRpcGxlLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

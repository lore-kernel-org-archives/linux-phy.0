Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15DDCCA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CTMo9PdmXeyM6r1h48nx0dmePEtASi9nXX+F9XNKOE=; b=t1s3Yw5ZzOCdGV
	f1m4XeCA7P7MsZR4sdwr7bpw93srG5XTtN6ri7j5M1SCR1CYN4HDfW9wEazxuInP5rGGLJTFcLnk7
	kp7p96u62Yls/dpM/y3yNdQQKA+m9GuUbHlKDsZQlBSxY9+BD84TnoVYenZAg5UVbMylO83r6or/c
	RS/vBtA53f1q9sHH1HpMA/8FsuDOOIjgDrurdl7F2SoaN+vm/V0wmLcHknKgYublz1n5YREJDNhxa
	7HsD1NFgd/dxgW9jybGIZG2PqNyB7Fgi+MZ0UTPOKyY1+ohZhsKqdCzMhhVdr0SLu0GGRcph5xt/m
	IhouGuYt7RXZVkQtYlrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFKP-0000000AU63-3Ilc;
	Mon, 12 Oct 2026 12:40:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFKO-0000000AU5e-0S0C
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:40:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7420F60229;
	Mon, 12 Oct 2026 12:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF8E1F0089C;
	Mon, 12 Oct 2026 12:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791808827;
	bh=P/TSl1L8Ht05edTVfaYU2gcLLw2yVPD8qW5aGHbpt+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SjbjvcRKipBBWw0CRdCQ7BpsJ/7ONN/xm8d2bSyKhb8TSPtqOzwgQoUBa6SyyWT47
	 XQKRVA4hL/W5ntVqFnbBjNNR1NMg+MVkfwEG/JH/5hSaFU3wfnxQmjddwc1AL+XklQ
	 LtiELTLMsU34PVLtI1CLpaWaU6I93Yi8fMKLapgbYuu8WHQWoefjidoORiIz/8GuaC
	 8m6l9ONcoLg3oomFfUbpFIhVvd3yLtbo5yVwzHHcg1y4VTXBgureCRiqd9a0X8c30g
	 2dxbHKpBDHutVPOy6QQyKLdCy3MCbl5orALkobTK0CVxFVJcD6KupKJieV10VtpSt/
	 5hvuKBME6nOMA==
Date: Mon, 12 Oct 2026 18:10:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Varadarajan Narayanan <quic_varada@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Stanislaw Pal <kuncy7@gmail.com>
Subject: Re: [PATCH v4 05/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Refactor init regs table definitions
Message-ID: <aszVD7ngiPeb9FtA@debian>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <20260908-ipq5018-usb3-v4-5-b789702f0695@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-ipq5018-usb3-v4-5-b789702f0695@outlook.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDE6NDA6NThQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBSZWZhY3RvciB0aGUgSVBRNTAxOC9JUFE1MzMyIFVO
SVBIWSBQQ0llIGluaXQgZGF0YSBieSBpbnRyb2R1Y2luZyBhCj4gaGVscGVyIG1hY3JvIGZvciBy
ZWdpc3Rlci92YWx1ZSBlbnRyaWVzIGFuZCBjb252ZXJ0aW5nIG9wZW4tY29kZWQgc3RydWN0Cj4g
aW5pdGlhbGl6ZXJzIHRvIHRoZSBjb21wYWN0IGZvcm0uCj4gCj4gTm8gZnVuY3Rpb25hbCBjaGFu
Z2UgaW50ZW5kZWQuCj4gCj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJj
aW9Ab3NzLnF1YWxjb21tLmNvbT4KPiBUZXN0ZWQtYnk6IFN0YW5pc2xhdyBQYWwgPGt1bmN5N0Bn
bWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1vdXNz
YWxlbUBvdXRsb29rLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

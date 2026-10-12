Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C26CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YX7RkqU4Arzzy8KAcJUuCzuP7+7ogWAs2Pvf6jpm014=; b=f04KAxxCyyTALn
	iwzJ3fNG9vDZi+/fzPvj4q2vzRfyrYqq3bFNfyT3powpyxIOORwXvV90RKRb4pfBwpG/Ej9nPTBMH
	8t6AWshSbUqfZK7WEtiY1U1v2VQdNNVoroomTK4H8elzg0l5ElHQukoEOsAfEeVxdyupEMWAMKnXs
	ABGy6YeN4WG6H8qAsAPu1lh+L4ULm4Eb0mJGozB0tv6Fr2Llc6CiUr+lpw1PMzOdBe5WA0v8b1EEh
	QKF/j3ty86aiQyzyS1G3Of9GHCxUjzXJty2mzVkySWCQ193QxfbMoKTS7Oa+D8vuzvmdKx34Le00D
	Y59sPOGE82loOunnsxBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFJa-0000000ATxr-1tOv;
	Mon, 12 Oct 2026 12:39:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFJY-0000000ATxk-32HM
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:39:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B8B5408BE;
	Mon, 12 Oct 2026 12:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA4561F0089C;
	Mon, 12 Oct 2026 12:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791808776;
	bh=+8h/AHoWPWviayb7H/NMPPtHlPsxAB3U8GOZbBbXXNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WPP1U/mTmN8UKwn+38RDxf8JCQ16nATIqjda6mnBzRzxCmJ6lo9yqUsDjBhDKdjV2
	 mYWsLGVIpI/Sa9txNN7ayoE/34sAMq3hoXUDxmS5wIrjoT747+pArAHD4Y8A8Xac7A
	 6RF/PMshdFjMXX0dKvp6lx3rq4mvVy3wPalm1d7so1gySqHcUeh74eqBt/AbNrt2Lo
	 Ru/KjWjYJ2OuHpgRiqRxy9lhQvpfeQY+EQfhksvCLrTxV5rbZ33oXjsf6OtZIh5o0I
	 /mDuFQoj50KUhzCpUYbQ4jWJbYpNc0iDH67ZWgVoljArOSYCA+5AfatJg5zsgCGZGl
	 /eFW+xz///Suw==
Date: Mon, 12 Oct 2026 18:09:24 +0530
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
	Stanislaw Pal <kuncy7@gmail.com>
Subject: Re: [PATCH v4 04/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Drop
 unused phy_to_dw_phy macro
Message-ID: <aszU9ejoC2Wf_9ET@debian>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <20260908-ipq5018-usb3-v4-4-b789702f0695@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-ipq5018-usb3-v4-4-b789702f0695@outlook.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDE6NDA6NTdQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBSZW1vdmUgdGhlIHVudXNlZCBwaHlfdG9fZHdfcGh5
KCkgaGVscGVyIG1hY3JvIHdoaWNoIGlzIG5vdCByZWZlcmVuY2VkCj4gYW55d2hlcmUgaW4gdGhl
IGRyaXZlci4KPiAKPiBUZXN0ZWQtYnk6IFN0YW5pc2xhdyBQYWwgPGt1bmN5N0BnbWFpbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1vdXNzYWxlbUBvdXRs
b29rLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

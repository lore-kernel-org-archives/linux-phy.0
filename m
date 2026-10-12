Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C8ECA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2pgQriEsnFbsjt6wIBEHesiNPmniiS+4H6J7FQ/Ob4=; b=YuPGuy4geX1q+8
	Nk9JOx1/56KrldN/pqmw24Mlv+0Fu7ht1dkCLTcOvPxLftshMQUSiFS6RiFogtox4nL6zWBzwnDhq
	XtpntcHScdwpTG9BzGY/OPzo4pnat8VHznXrp7Jd2OomnjcSUxAk66cnX3TMsizuQLpe3r5J6sy6a
	72wQ0/uO9Nkbyr2e7lt9gF5sYLA3mc9f/Hk3y2IoGkNdB4VfWSHlMRpays158QD2CWBjxNDzPNNCT
	rE1rXq5WkapVsMQ8BA5Ql/nE6gM1b9SVh3C4Dq5aqQwNiXIyd/nlnpK0JbgJQJ7vfIRmcW57LFFjU
	wk/3T/G9mA3UM2HlS8aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFLf-0000000AUNX-07YV;
	Mon, 12 Oct 2026 12:41:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFLd-0000000AUMr-37tE
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:41:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2F45160AB0;
	Mon, 12 Oct 2026 12:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2CBE1F0089B;
	Mon, 12 Oct 2026 12:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791808904;
	bh=nGDcRZy0rJgKXjAumMH7a8HmA75kBF1KHXLjncOR+yQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Md3nnFvuwEUdEnPU0Iv7ebdOhmUZQ2a0aK+tJ0GuFHJzqDSvnNB0a+ps22iYAHB5+
	 mGauxKcugLax7Kq3PI5lx+hcZ6Hgs0c/VkWEoFw/7vPBRRGR6NVJLE4rjA3Pi2F3Nw
	 fHmAEWYi1tUk1B1KRhsn+SvkFmo643MkoopsuNSNe6jXlYmx9YdjZz3BiE3MBkhaQw
	 RWN36cM6xLXkjMLtBpwtu81u7FaXBZtPq8R1qxnU2Gi2S4ybqW14mqTp++hebZYmM/
	 UylYK5kVXGTyxxjSkjMX/S4UOjGn9cH1y+eZoI+vEsSmm8UKrGCyE0+dvx4iIIlNgo
	 9WXAdZ82Kq0QQ==
Date: Mon, 12 Oct 2026 18:11:33 +0530
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
Subject: Re: [PATCH v4 07/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Assert reset on clock enable failure
Message-ID: <aszVcN6LYhjMPUwq@debian>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <20260908-ipq5018-usb3-v4-7-b789702f0695@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-ipq5018-usb3-v4-7-b789702f0695@outlook.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDE6NDE6MDBQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBXaGVuIHRoZSBQSFkgZmFpbHMgdGhlIGVuYWJsZSBj
bG9ja3MsIGl0IGxlYXZlcyB0aGUgUEhZIG91dCBvZiByZXNldC4KPiBGaXggdGhpcyBieSBhc3Nl
cnRpbmcgdGhlIHJlc2V0IGJlZm9yZSByZXR1cm5pbmcgdGhlIGVycm9yLgo+IAo+IFRlc3RlZC1i
eTogU3RhbmlzbGF3IFBhbCA8a3VuY3k3QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBHZW9y
Z2UgTW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgoKUmV2aWV3ZWQtYnk6
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29t
bS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK

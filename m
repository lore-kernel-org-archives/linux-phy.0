Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534D2C79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 15:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryGJkxpcpr8abTzuZmuH441DyDvrZuPIWihA7v7mgVE=; b=ehpFAZESkirLyw
	nleVRuaX0wwkX+BxQN5hQTLc/pyOc19/ELXc9BM2w1HIwLAdrVIuEgszazL1yCtaklhRMTrkPnANA
	bsgj7z+3kXm68liFxoglGMZumg5npHgxJ4vJDOkAkPZFhbA7qXvNlQwhaqZq019HG5R3xyng60BHS
	tMsVffthlt9TbT6a8PoParm1PhuhZzWGR5mTDAk+g13znSRBrRTEQ9XBMEMUTy8a6bHkSgafHvESu
	VsMN4m0uzo6m/PLBp87GRvsOWkxmTOF09JnuuuvSFGPlUzoM/oUL2nnwoM7sX9ZF9nIh1Q0bCqtbq
	kIt+K+vN/MV3msySfyZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h6w-0000000EsQz-42AX;
	Thu, 10 Sep 2026 15:54:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h6v-0000000EsQr-1M2P
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 15:54:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C0D93601F1;
	Thu, 10 Sep 2026 15:54:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 053EB1F000FF;
	Thu, 10 Sep 2026 15:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789055688;
	bh=8Ir4e4Bkn9QSvVke1gYnJgn7j7+VZiljQgG+/MkuFlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=j6QOWOJl058EJayNWTugQ409V7kiLnUtRK8qWpS79NarH4tBpNxrnMx0nC/OQYzw2
	 rCUt33ymW67yR5sgcpQY1QPcC6PInmKYZwO/P/cSokTNkx6rIWvalEltpbA45LuRFu
	 DC/2oxiqnnXy0/TFLDHWA6MUUA8GJpYKumjaMDZvNSGLRSCB7Sp2T0RYusCg6vDzpr
	 dCTRK1IplImdXmIgBJLYYaJQzM37ntlfamk6i6zeedH/ldvFaJDpYjoe5T+XfuGLXc
	 1YHc6mPajYx/Gn4VV1+og8vbc1ejigfPi/9ya+RRlwbXbIuYZO15+aRuqcTZ1MfIgv
	 XLbO3qLl8XIyA==
Date: Thu, 10 Sep 2026 17:54:39 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Message-ID: <rrhij7mn6fx7y4m7g73q2dtwkmsvsx4cektplhkcq6zwhvw2zc@bb7d7dqnavfo>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <20260905-eusb2-interrupt-v7-v7-2-820cf5377a70@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-2-820cf5377a70@oss.qualcomm.com>
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

T24gU2F0LCBTZXAgMDUsIDIwMjYgYXQgMDg6NTk6MDZQTSArMDUzMCwgS3Jpc2huYSBLdXJhcGF0
aSB3cm90ZToKPiBJbiBjYXNlcyBsaWtlIFVTQiBIaWdoLXNwZWVkIHBoeXMgd2hpY2ggY2FuIGJl
IGVpdGhlciBVU0IyIG9yIEVVU0IyLCBpdCBpcwo+IHJlcXVpcmVkIHRvIGtub3cgdGhlIHR5cGUg
b2YgcGh5IChyYXRoZXIgdGhhbiB0aGUgb3BlcmF0aW5nIG1vZGUpIGJlY2F1c2UKPiBEUCBhbmQg
RE0gaW50ZXJydXB0IGxpbmVzIG5lZWQgdG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRseSBmb3Ig
ZWFjaCBvZgo+IHRoZW0uCj4gCj4gQWRkIHN1cHBvcnQgdG8gY2FjaGUgdGhlIFBIWV9UWVBFIGFu
ZCBhZGQgdGhlIGZvbGxvd2luZyBoZWxwZXJzOgo+IAo+IC0gcGh5X3NldF90eXBlKCkgZm9yIHRo
ZSBwaHkgZHJpdmVycyAobGlrZSBtMzFfZXVzYjIgb3Igc25wcy1ldXNiMikgdG8KPiBkZWNsYXJl
IHdoYXQgdHlwZSBvZiBQSFkgdGhleSBhcmUgKGluIHRoaXMgY2FzZSBQSFlfVFlQRV9FVVNCMiku
Cj4gCj4gLSBwaHlfZ2V0X3R5cGUoKSBmb3IgdGhlIGNvbnN1bWVycyAobGlrZSBVU0IgY29udHJv
bGxlcnMpIHRvIHF1ZXJ5IHRoZQo+IHR5cGUgb2YgcGh5IGNvbm5lY3RlZCB0byB0aGVtLgo+IAo+
IFJldmlld2VkLWJ5OiBUaGluaCBOZ3V5ZW4gPFRoaW5oLk5ndXllbkBzeW5vcHN5cy5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogS3Jpc2huYSBLdXJhcGF0aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVh
bGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5h
bi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

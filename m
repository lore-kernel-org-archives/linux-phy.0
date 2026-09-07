Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32BD7C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Z8bC3ogtZyXQk+PqssAWNvu8bk4gy7ktPSBzyauKrs=; b=EwKUpDol88HeYZ
	3Zkb8qYSnpsWuWGEJeB1geuxpWYq2uVk3J+qyZqNALW3uhabdFW8TcldUjnUnKWl83s89LVkikhMu
	6QeBJa9Tk/0Q6q4P7NyL9wQmOoi9qgi/tV5EZnRKE2NmxAVczTJX3sMB4ZxgYdg1UAtexx6iKxzO/
	JDKCVZIlzjSP6Rk8x4l+PH1f8NhXAuxhrEQYBvaTjcS9wIOKjIkKqOHHdpneG4WsMiaaUp3gAVnDc
	e82bcdRiaoaSaNqwMs4as/7/0ae4QiRLHt0gWuO5NMtz/oztDtbzZnSnrCT945L9sjWLwH2fv3wpG
	SBmEokpASNbBXHczW0rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YMR-00000006mnl-3m6K;
	Mon, 07 Sep 2026 12:22:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YMP-00000006mnJ-2hg4
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:22:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C8DF8601F9;
	Mon,  7 Sep 2026 12:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6A621F00A3A;
	Mon,  7 Sep 2026 12:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788783724;
	bh=Z5dMsJgOkpAowt+uKcJuy46JvhgdZiO/LaIkQAC/NDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a6AvZgN3ZlIdJ+lAGWpZ241rFPEhbbMAseDVBKov1HaC9IJUo8xpJtOwtwBpPYUB5
	 BWnORYSW+go5KZGDzwDlfnt80FQo2dGOcUjkbpnlMgFB7Fk5y4KCDDBCDGLdY0Avfv
	 z1w3dB80h6lNYelEEqQ7jVw0iWusZfn9leLFBEGjkvGQofWtJu+qx4Edv8MxWZu1B8
	 0S0ygfedvP7zX6h7EqOuCU0lgKLMTWI0l4xfHjfYHJmN3m78iKWOKPhuw/Ja96Vuka
	 ABmVflTy6nuxBgyMMoQQy5qdVhkYMUII1LrmEsn7Isz+r9j715rR/R/DBb2+d5w9Sr
	 639H3L7g3lTaQ==
Date: Mon, 7 Sep 2026 14:21:54 +0200
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
Subject: Re: [PATCH v3 06/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Improve error handling in power_on
Message-ID: <wb2tff2ljszeqld5yvxmurggp5fdh7vdmvij4vi5f7a7qld4jy@chyv3hpxj5h2>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-6-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-6-39be0955a6aa@outlook.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMDQ6Mzc6MjNQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKClN1YmplY3Qgc2hvdWxkIGNsZWFybHkgbWVudGlvbiB0
aGF0IHRoaXMgcGF0Y2ggaXMgYWRkaW5nIHRoZSBtaXNzaW5nIFBIWSBhc3NlcnQKaW4gZXJyIHBh
dGhzLgoKPiBXaGVuIHRoZSBQSFkgZmFpbHMgdGhlIGVuYWJsZSBjbG9ja3MsIGl0IGxlYXZlcyB0
aGUgUEhZIG91dCBvZiByZXNldC4KCnMvdGhlL3RvCgo+IEZpeCB0aGlzIGJ5IGFzc2VydGluZyB0
aGUgcmVzZXQgYmVmb3JlIHJldHVybmluZyB0aGUgZXJyb3IuCj4gCj4gSW4gYWRkaXRpb24sIGxh
bmd1YWdlIGNvcnJlY3QgdGhlIGVycm9yIG1lc3NhZ2VzLgo+IAoKQWdhaW4sIGRvbid0IHNuZWFr
IGNoYW5nZXMgaW4uCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK

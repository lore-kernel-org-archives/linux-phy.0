Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC7AC5DF82
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 07:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XehJjNaTi4gwIXiJ4kvZt0rwe7cgDz0956LDcFaDTu0=; b=m0k1R0xuy6wWSS
	NlYt/xxgxGDPwE++n1GfqCfZ0rs8THWeA8Co5g7LwCufiNRwMk8A/J+FjlOxrSmuEbDQN69l/yKlp
	mnthnW1FjNSON93sJ1+0HuC9vJSb9xYb5JeRBFou6V3kn9CWNiUj39nrfK/Q6e3ziCJSwY/AgtYm1
	Gka86urrCiLAQTSerwA7p7Fb3foPmIfOgbkf7CQ4awO2p4mzD2/C374fICiTH5nAXO0/OIJs8l1QO
	CrYbloRrPacbhNFeYMwxJwszZJo5JEM+j8J3wB9PCgjxO0gwkNKjMQuabYJc1Byji8LOe2lKHW8US
	umh8ulJUnfSjct+Chrjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwx9k-0000000B3QF-2ptH;
	Thu, 20 Aug 2026 07:25:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwx9i-0000000B3Pt-2uFe
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 07:25:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2537543235;
	Thu, 20 Aug 2026 07:25:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E750A1F00A3A;
	Thu, 20 Aug 2026 07:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787210742;
	bh=0RrODx3V1Px/U/AojeH5jmVTwASzYYtIbWBrlSirhEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A8g8lb6NMK3qMUbPsHmj3OZgI+IecMWiyT7M+csIZQ50OySFgpqMSptFxiC3hhSxc
	 p5e1zKBhe3arBFSnS6gm1Qa7uPkGALrG6QKlpRptu5t4/ixp+3Ld29ou+UOirvferl
	 jFzsQRIIZ09OUBcpKkS/XinDPnINzc+iFt72OlkBH2VTgNYihHLZiOFii6yHek9hhj
	 5eWWf6dD1F2jkMV5uj66QH8b2hhxdaCPfNu6kV3IkmPXK2s9lv5MhiFMQ9tdx2kppl
	 msFOh3/ASo48YOIHd/UCewTKQtqstshEIJ/0xNHKXrnGa/TVVmtXwN+8yEVZmdR2c/
	 K9QNC2Fib7M1A==
Date: Thu, 20 Aug 2026 09:25:32 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Abel Vesa <abelvesa@kernel.org>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/4] phy: qcom: qmp-pcie: Add qref and refgen
 regulator vote for QCS8300 and SA8775p PHY
Message-ID: <oxnts55ylqdejsawsz42m4fc5ajh3jaypu3hkpdld5jmdyjjoa@iigp3bxas2qd>
References: <20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com>
 <20260810112735.1326807-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810112735.1326807-3-ziyue.zhang@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDc6Mjc6MzNQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIGEgbmV3IHNhODc3NXBfcW1wX3BoeV92cmVnX2wgdGhhdCBpbmNsdWRlcyB2ZGRh
LXBoeSwgdmRkYS1wbGwsCj4gdmRkYS1xcmVmLCB2ZGRhLXJlZmdlbiBhbmQgcmVmZ2VuIHN1cHBs
aWVzLCBhbmQgdXNlIGl0IGZvciBRQ1M4MzAwCj4gYW5kIFNBODc3NXAgUENJZSBQSFkgY29uZmln
dXJhdGlvbnMuIFRoaXMgYXZvaWRzIG1vZGlmeWluZwo+IHNtODU1MF9xbXBfcGh5X3ZyZWdfbCBh
bmQgYnJlYWtpbmcgU004NTUwIGFuZCBTTTg2NTAuCj4gCgpDYW4geW91IGFkZCBhIHNtYWxsIG5v
dGUgb24gd2h5IHlvdSBhcmUgbm93IHZvdGluZyBmb3IgdGhlc2Ugc3VwcGxpZXMsIHdoYXQKaXNz
dWUgeW91IGVuY291bnRlcmVkPyBJbiBhIG51dHNoZWxsLCB5b3UgbmVlZCB0byBleHBsYWluIHdo
eSB0aGlzIGNoYW5nZSBpcwpzdWJtaXR0ZWQgbm93LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

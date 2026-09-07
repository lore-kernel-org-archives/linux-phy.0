Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E64C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 07:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gkh2f1NAG5Te1GfP1hkDzUP8IlN8PrdJP7JRIGcs7UY=; b=CgZm/QErZgfGDA
	sbXU9qBOZdFOoxc97ew6w0QeZD42Djz5A2aF6i9z0jaUImjBuawKi/c6qxKF67SxxJ/QP4NOYjAIF
	sshLouaT4IHMBXMs1LfSbo0R9hWpbkDRZL/PjNwTODMH1cuhtk40FSj6Hayn9xGavu4SGAdinn8/S
	Vdk5PkVF7Pm5Twg5G/7DeL0JMVGc1Dme0cXEDfAcqUGrYJA0rKugCF23Y0+t4hOulFDX3C/aZ/Zyu
	apDIh9HRUQDiIqUgCcaJQ+07rS7D2me9ag6GhIyuiReLzcPO+C8b/WkEHVBPIa4T2+1POO8ZQtBYx
	siXlRC9sWul1Ecbwm0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3TeG-000000068v0-0sPO;
	Mon, 07 Sep 2026 07:20:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3TeE-000000068uV-3oIQ
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 07:20:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C82DD60052;
	Mon,  7 Sep 2026 07:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9F911F00A3A;
	Mon,  7 Sep 2026 07:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788765609;
	bh=2m8k66Ew9TmOdYozj6yzIlmVibF4BgzdeRDi9qxMbdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OKQKKtyFrbmpfgXdlv8kp30qChC8QhlyOecvHUMZ6VWWgVnWUUBRCCO5t0KSMaP8w
	 9Fwe6Hgaj1Vlk0r9gHjfmYCkj5e6vpZl/nv9siJiTrLsJEk21Pg8XR6hocB5kutKAK
	 oPd3xhVU0R+bnNXXD8Wr8dZWTrCoTNFTeIIYQVpxdaYw6g6Ly+COkmZG7FAJMjCCiL
	 uhkFFrXgCS+NLXf+KU3PaiI42BHNzFFwfxYowyuHqJG4z1SAT+eAnq1adJDvZq3TIh
	 t7g8VXuDwmpevvRJKSD/Gw+QhnQvTh6qscSJxWsgLrJlS6QGL8bmDn27lu4sbV+mYY
	 FUP/ZQbhh9Hzg==
Date: Mon, 7 Sep 2026 09:19:59 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
	trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/2] phy: qcom: Introduce USB support for Maili
Message-ID: <t2jxx7kzf2batknroubeo2pqepdtgpfs5meho6dfsrddjuehn3@6pw3l2jt6d3u>
References: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTcsIDIwMjYgYXQgMTE6MTY6MDRQTSAtMDcwMCwgSmluZ3lpIFdhbmcgd3Jv
dGU6Cj4gQWRkIFVTQiBQSFkgc3VwcG9ydCBmb3IgdGhlIE1haWxpIFNvQy4gSXQgZG9jdW1lbnRz
IHRoZSBRTVAgVVNCMy1EUCBjb21ibwo+IFBIWSBhbmQgTTMxIGVVU0IyIFBIWSBiaW5kaW5ncyBh
bmQgdXNlcyBIYXdpIGFuZCBTTTg3NTAgYXMgcmVzcGVjdGl2ZQo+IGZhbGxiYWNrcy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBKaW5neWkgV2FuZyA8amluZ3lpLndhbmdAb3NzLnF1YWxjb21tLmNvbT4K
CkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBv
c3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

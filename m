Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D56BCC624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 14:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gkh2f1NAG5Te1GfP1hkDzUP8IlN8PrdJP7JRIGcs7UY=; b=hj0OW9oLpbfGEq
	mp0a045zz8B5IVGZz+3D0mZu1P/XtLUn3SKs0abr6YrzatSymmsxVy7CIoeizAa3/SQiThCSDfy3g
	Dc+b4pHtFZTIs9vXGdES+W3NHmrfel+RHq7b0EZfQwGEvWRm3bJ3BTa4JJfmC22+Dq+mj2WZ/ihRz
	KbSNlYpweghfICz0I4diE+Gat+vIHv7POlZqIsuchL8f0yXWDSbWy0s886qlT3G3GCsiWaMMKFAzL
	7Spl7KayBRs+xms4IvwbSsrBMLqiGQk+PPd450TxVXP2418LpFbXc2xt0/L7P6gXfC3ZpTrD+dfzQ
	VS6jzptYTp+t6GoCODjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12YS-00000009aEI-2FHx;
	Mon, 31 Aug 2026 14:00:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12YS-00000009aDv-0FWu
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 14:00:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 60C506013A;
	Mon, 31 Aug 2026 14:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BA1C1F00A3D;
	Mon, 31 Aug 2026 13:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184806;
	bh=2m8k66Ew9TmOdYozj6yzIlmVibF4BgzdeRDi9qxMbdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ccsTr9XCXkD2qXeOopeFH0mFSzUiXEI0ynyFYWDQUQcvHlaEZwOXJ80LmzZ91cllI
	 AtAyHdxZfn2wCyvo5BzKCCa89hs3cyPfQNLC49hX1ELUT+V0lerPIuOh0xqEcs8O6n
	 dNA+OB2XdOUxPzpi0B3JNWUtAvvL8YQ3dQpgMKFn3gvT5mOcSmDfKUwussq+pFk51Q
	 S2LG+LunMrHeD/C3x/Dy4NIFcgiRb92vfanPl5IKhfnjbxna5w5d0/xEsRJMuz/YIO
	 aFXkFFsLNuy3nwqmotec1Yu4t320QxjS+UMK6EXrj5sp1PJi6IBnP1526JYsvC59ZC
	 I6yf/3uzTOWqQ==
Date: Mon, 31 Aug 2026 15:59:50 +0200
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
Message-ID: <uqb2eabsls4x5ofaw4k7bmwb6ijuyn44yfgopal5d4ottijw6s@ftutwlx2apa4>
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

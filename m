Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96DA2C9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86gXagUdMEz+0lduuWP4Eahiv2GbcT+jmlLvE8NosIA=; b=k3It+lctR3gb3d
	fVR2trbnP0MzHR3xOhwf7CrcUV8tQtw0xIGKGqOk4SMGr/u4wy3glDCE3t0zjDCUQNsH0BpKaRax6
	L9xtxWmW9OUBDPaxs6x1Fv+qJNLPksh6ozfHHyJo6bzvP6rW93tX53qHbRHloxjaYEty6uyMCwzHC
	oYAb7bglFajU9zRJc8/hRd/TG50Hf468ltmznF3j/Zr1+FEmf5uadt+LxOsEs844xiHXP5EtiX6b4
	g27CbyIR+Wyx2FTucaSuoDEpSrHCMFyTXdSK3fU1qMuhw4Rzht9LiBDRlY1NtfSLCKMDTZjFdmlyJ
	7+hCuFfcnh/sjLhooDyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rxw-00000009GVZ-1BuP;
	Wed, 23 Sep 2026 18:45:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rxu-00000009GVF-1kvX
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:45:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C98ED60235;
	Wed, 23 Sep 2026 18:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32131F000FF;
	Wed, 23 Sep 2026 18:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790189109;
	bh=69tRG4YoSxnx9N15HM6AoLF7SBuNfpJOuBExHSEESeo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CuYHBOyOMPeeVSwbCXOaP/3Jzwbsl1YDvjenYlmqnMMoeiBZWjBlSj+rDZEQnj5WB
	 JkyIJZhpJtsh0alaM0P8+ZbJA5RjopKXzVFL7xUr7eLwQQR/WUh/6v7eA226puJW2S
	 Fzbu4CvAMcFwxcigCy4wc6/5cWvqY/8mRI5s5mKIxxqE2TTPaq48hkQACG40o0+MnT
	 QRHKKl7a6KH5pRSJw7JnwFT8/8cj6CIMX8qXr3bWkp/cb+RhhBv2af72Fn5XlSZLw8
	 mxznU2++002tLlkr2Z9ZftKZUM/mmYkqO2ZVr611d8eaNRMwe6Ocn+m88DYAINkWLT
	 8FcKodXeBvcJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 11/12] reset: zte: Add a zx297520v3 reset driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, lee@kernel.org, vkoul@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260923-zx29clk-v12-11-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-11-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:45:08 +0000
Message-Id: <20260923184508.E32131F000FF@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBUaGlzIGRyaXZlcyB0aGUgTUZEIGNoaWxkIGRldmljZXMgY3JlYXRlZCBieSB0aGUgenRlLXp4
Mjk3NTIwdjMtY3JtCj4gZHJpdmVyLgo+IAo+IFJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxw
LnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIg
PHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBh
dGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyMy16eDI5Y2xr
LXYxMi0wLTljMjQzNzk2YjZkMkBnbWFpbC5jb20/cGFydD0xMQoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

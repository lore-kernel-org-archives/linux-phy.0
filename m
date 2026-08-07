Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57A56C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 10:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+FxgNaJPGWUyuEw3onFYvZIPV/ucvpRdxTACg56jsY=; b=XjgJrjIQqH3JuM
	8DFfl+m0BDvn8YIKWbiL1UMXJSIxOHrC9Kyz08fgRneOfn7/IIfTWlnQKxZ+2Ykgu85ItEBukoyOm
	Gni0sNT4LLqpuT1Jd8hyuv58B/VtYy1f3crFjpIrSl0nz+9vwOpzAWeKsNel4fUGIQXkI9jB3nBDN
	44jx0RCPhNjyBwKRApzH+m/j1VhrxL37CAn1OkMcbPVyDf57Co0bbxz3IrAx5PcWU6ySqjwrkRd+Z
	uZI8S8whoQAaDD6hkMzevASSLN6lOAQmYSUuWPfRILxSk6wXeFoNbNh+r7zbnynfAwFrkkPJ74pw5
	qCSyy3xc/WLt7mDF8UqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHeC-00000007eZT-0DP3;
	Fri, 07 Aug 2026 10:17:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHeA-00000007eYT-0XOR;
	Fri, 07 Aug 2026 10:17:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5384260A86;
	Fri,  7 Aug 2026 10:17:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F3851F00A3A;
	Fri,  7 Aug 2026 10:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786097869;
	bh=pztF5ZmE57ytikk6f3PQbP5jBmY/LIYwAmQLXlLbfIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LSB/0X+9XEap2xAfvK4LNYyoEdhiXgPP9zSo9nREqqKzTmHXVX+ZeKhJa0vwnUSB5
	 i11+t2xKrW6i1Fwrl9Gakc4ZcjXtTDn3z8L+qMttvF2zKMpOcJGmDdDjkkr1SKvTuu
	 w/IXBDEuDxONJBMCcgU4kPV69sHLFcdVFwJnxlLTdeEJIiRFmUdfl7dXf+ac8Y7f4N
	 JalGQM2Zr13VhrPy5RXKBfC1btgUdTSK0ck3r1EAbq+52R5ECu0sHlDaGEqii/lp8n
	 R3SuYydG702WEsyHFco/uhIvPBCOtF8F4vumvy8yp9jrSHmLXoWcMAfni7jWsGqM8u
	 JEBc0+WaPprQA==
Date: Fri, 7 Aug 2026 12:17:40 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Document MT8196 MediaTek
 PCI-Express Gen4 S-PHY
Message-ID: <4copgyszdf2tjc7mes3lzw3tnvtn4nn3ossdjbgckaucnfrn52@di74kohvokfz>
References: <20260720152654.92216-1-angelogioacchino.delregno@collabora.com>
 <20260720152654.92216-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260720152654.92216-2-angelogioacchino.delregno@collabora.com>
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

T24gTW9uLCBKdWwgMjAsIDIwMjYgYXQgMDU6MjY6NTNQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gVGhpcyBhZGRzIGJpbmRpbmdzIGZvciB0aGUgUENJLUV4cHJl
c3MgR2VuNCBTLVBIWSBmb3VuZCBpbiBuZXdlcgo+IE1lZGlhVGVrIFNvQ3MsIHN1Y2ggYXMgTVQ4
MTk2IGFuZCBpdHMgdmFyaWFudHMuCj4gCj4gSW4gdGhlIGN1cnJlbnQgInJldmlzaW9uIDMiLCBk
ZXBlbmRpbmcgb24gdGhlIHNwZWNpZmljIHBvcnQsIHRoaXMKPiBTLVBIWSBzdXBwb3J0cyB1cCB0
byB0d28gbGFuZXMgb2YgUENJLUV4cHJlc3MgR2VuIDQgYW5kIGJvdGggRVAKPiBhbmQgUkMgbW9k
ZXMuCj4gSXQgaXMgbm90IGNsZWFyIHdoZXRoZXIgcmV2aXNpb25zL3ZlcnNpb25zIGVhcmxpZXIg
dGhhbiAzIGhhdmUKPiBldmVyIGJlZW4gc2hpcHBlZCBpbiBhbnkgb3RoZXIgTWVkaWFUZWsgU29D
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9n
aW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFu
aQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=

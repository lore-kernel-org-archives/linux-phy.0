Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F413BC56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 15:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwi+OubRs4Vf9GkupoyajzX2aRv8mYScRNfRH2xqZq0=; b=BCQkEzYbqNnl8o
	kffFY1kGIv7qao5aIaZAZW8fAAT1cjWyxTph4+BtOzD1N5ajJIfxLab8nGAwfS1VW0TvOrsHXbuAY
	bWXLSNdl7YRrW1X0BAvuvViyiqXTowm2rPRrso0E/yBjdLgXa1lpWhAye3G6qTmLltVQRuZVsTsZj
	TBfTnUiNzE6RmRT1KUYV1s7YPDKZPwRCMG1ix/vruzwK08/Xl4+9BApMLkLtm1BIsvJxoGlqbUlEi
	Q8phNGs+Xe/epqnCoCcNr5KlscPxwKEnK7BgY28rimevriXui2OnCTaZ0OO4gL/ulmJdV+Ca9B6yc
	EEyjgm0tHoszKKW7++xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzxY-000000064f4-2aT6;
	Thu, 06 Aug 2026 15:24:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzxX-000000064ea-1VCH
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 15:24:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8990B60AB0;
	Thu,  6 Aug 2026 15:24:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D01711F000E9;
	Thu,  6 Aug 2026 15:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786029878;
	bh=mwBaib4Ja+fy5g3JLpJpGIIwyEIHsADOo9jN4IP79Cs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=axlDqt7xbXMiKoQR4LJJ/bVN5dGhhHu3gK98tzuSill3sKQZC9aK1SnzpWF3jrQzy
	 zVO7Q8rsg+t2EB9pU7gUk8Kp3D+5XSiP/Au4PUe5+c/w+fYfVJvHQ8by2rS1K3hlW5
	 YrrsNNcALQLuCu/Dc0DwCEuP8af/ebydrYppvt4xsZ+vtxlv96mpC7slMfu30KeBxN
	 kiCf50/YO36f/D/SEibJM/p06/QiDFcZF7Hr+Z35YLRF/sJh3QooXGHO6tFulYrarR
	 mklUmQfpm2EZBoAzQWOk0NF3fEZslvbWaOk7fu+TfklO0kU6FWcxyYzbfz6VUxxFHD
	 bROSq9+McghAg==
Date: Thu, 6 Aug 2026 17:24:18 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi
 compatible
Message-ID: <xd7gii4lmzv5xm2xylt53lnp7l5clerjxrei5cdu24mbdktzaf@do5ozmvodv3w>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
 <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
 <anReh4gzTjkD4u7c@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <anReh4gzTjkD4u7c@vaman>
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

T24gVGh1LCBBdWcgMDYsIDIwMjYgYXQgMDM6NDQ6MzFQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBPbiAwMy0wOC0yNiwgMTQ6NDQsIE11a2VzaCBPamhhIHdyb3RlOgo+ID4gRnJvbTogUm9u
YWsgUmFoZWphIDxyb25hay5yYWhlamFAb3NzLnF1YWxjb21tLmNvbT4KPiA+IAo+ID4gRG9jdW1l
bnQgdGhlIFN5bm9wc3lzIERXQzMgVVNCIGNvbnRyb2xsZXIgZm91bmQgb24gdGhlIEhhd2kgcGxh
dGZvcm0uCj4gCj4gVGhpcyBvbmUgZmFpbHMgb24gcGh5L25leHQgOi0oCj4gCgpUaGlzIG9uZSBp
cyBzdXBwb3NlZCB0byBnbyB0aHJvdWdoIFVTQiB0cmVlLiBUb28gYmFkIHRoYXQgY292ZXIgbGV0
dGVyIGRpZG4ndAp0YWxrIGFib3V0IGl0LCBidXQgaXQgc2hvdWxkJ3ZlIGJlZW4gc2VudCBzZXBh
cmF0ZWx5IGluIHRoZSBmaXJzdCBwbGFjZS4uLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

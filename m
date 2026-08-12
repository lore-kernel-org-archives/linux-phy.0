Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCDFDC5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 13:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQoG42Goyxce6oxhxJxfTpsPJrNfjobM8xX2cAs6IPg=; b=W2HdEEsn8L3OKQ
	PEjck9e0JZGsAHRLQylTqnxnQ2hieiQF0tf3LZuwqFy7SLOBf8m8Tthn0yaXo5aP7OAXkyz6jLnaC
	HSoJsVyUvt0Wm938lYVr2/AFI/vT+KsramZpEAgpIFqfHp9LkCPaEFFf2Y7z4uaUYTrKOIJz4XP+M
	+j/3dViaAzPu1j9JuimAB8XmFsqBmE6VJ+FrdpLqj5Sz+ngbiTbkj13jfXE5U+JVP3xX33s0gl5Uu
	yrChegQ0ta1fbEgFA0qph5GMY1aYxmNyHnmObNXLJwHWyqwmeS4ayAdcyqEF9VJTMUMsto0/OJ9h8
	ZVFXwsR8ggVOMiymjUoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9Nn-0000000GKXV-1iym;
	Wed, 12 Aug 2026 13:52:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9Nj-0000000GKXL-2yqq
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 13:52:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 52EA641671;
	Wed, 12 Aug 2026 13:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2953E1F00A3A;
	Wed, 12 Aug 2026 13:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786542755;
	bh=E8L/wWgaYRaSHpsYJAGyZ1ZsE/P9xyI+QYDoYBgYLM4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FuGOa3vaq6Q2P5UKROIgRWYLDHkh4GPoeHEOZ2v6wUbtjmUKfnr/cuVTkUhBJ8p6t
	 37wMqjnYhGcc3xfZqrhDIJV/EojRUX8CC6/9IX/BgrCp3ac77r1Y7xt4G1/GJmDKJn
	 AH55IHnpLxRxnPXZbtFMqyGyAdb8qxs4lyJIlBPpBlsFAzozdl5E99UskWq4lN5BHB
	 5S54HHLh0jISg0I7+FtWB6NHyR8vVvSUCBi74H4G7BMv40Mvd+XktTYkCuEW25M200
	 BtYokSNgM4VZnh02HET/xL8YHKGVgshpy+UaCq9TErGjslqoesJtBxwDbJjL850EW+
	 AF6FKbiYwof/g==
Date: Wed, 12 Aug 2026 15:52:26 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v9 3/5] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
Message-ID: <7hrs2a53xpjw24nyawklqr2p3p5yaxm7rsnpu7buvf46hhc4fs@cdi25r3hsrsh>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
 <20260513-fd-hdmi-phy-v9-3-ca98c72f1f9f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513-fd-hdmi-phy-v9-3-ca98c72f1f9f@oss.qualcomm.com>
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

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMDk6MTQ6MDZQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBGcm9tOiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFy
by5vcmc+Cj4gCj4gVGhlICJ1bmkiIFBMTCBpcyBzaGFyZWQgYmV0d2VlbiBzZXZlcmFsIFBIWVM6
IEFQUTgwNjQncyBTQVRBLAo+IE1TTTg5NzQvQVBRODA4NCBIRE1JLCBNU004OTE2IERTSSwgTVNN
ODk3NC9BUFE4MDg0IERTSS4gRXh0cmFjdCB0aGUKPiBjb21tb24gcmVnaXN0ZXIgbmFtZXMgdG8g
YSBzZXBhcmF0ZSBoZWFkZXIgd2l0aCB0aGUgaG9wZSBvZiBsYXRlciBoYXZpbmcKPiB0aGUgY29t
bW9uIGNvZGUgdG8gaGFuZGxlIFBMTCBpbiB0aG9zZSBQSFlzLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiBSZXZpZXdl
ZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0u
Y29tPgoKQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

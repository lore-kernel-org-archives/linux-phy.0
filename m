Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 422C6C98332
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMGaZZ42Ej+f9anL2197vB/ZMUxte2KSgKldVDn9f4Q=; b=tZXtKal0XEnZzL
	g30ZBStmcRzck4axyDtv8cVplupN/t4RFA9NjDXX/3K5P97Prf1WsnN58j50MBTOr3E78hcFkDxMI
	VAKqaz/qPr5lPosb/PpR9EiT72r3aV6wjqvhr6rH+SQskA7j1WwANgad+6bhFo5KkUCtj7eGS+AxA
	vgqQGy2JRV7yMg3RbxT58TD0pEgeZfVQYD4nIZd3YYMvzAZkdJ0FOzNypuqGZxLs/j++yjtapbNf9
	o0Iyxc+MFIwpko1093vPgDQu/q0WOk+tAE6TdkjjcCf4811+dDA8viaOkA/L25OZD6VM1TyuBX0NF
	RVKXGWDsnSnZuTyaa9/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATgr-0000000FXea-3e9R;
	Sat, 26 Sep 2026 14:47:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATgq-0000000FXeQ-3F2f
	for linux-phy@lists.infradead.org;
	Sat, 26 Sep 2026 14:47:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2849D602D3;
	Sat, 26 Sep 2026 14:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86E7C1F000FF;
	Sat, 26 Sep 2026 14:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790434067;
	bh=YlivOBdPljKSWxtj70JMDp/3hwUgvEIJgivJLHAjQZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XWfrJrjuLQI3IPqEWMR+N6/6eFxlzs+LCCJVTOs3GhKN4zA/LJlkqkmsi4+BkT2YC
	 Llq7XMsepZ02+FOyWeAKoHvXJ7NGPZ3b2J1iHGG4W+ZFvtFnclh4VYAbzbP5vvH125
	 ula6zpGB74d0NHfdcRr85gLdIQevicggqvHyE2pR5GdFzgyaxrH7RP/Vjg4p0LKzet
	 UnMiFfrITgh4PZzppReuok/+VL2URbQY8ZYcW0DJzh86iijQXVTMf8PBtuhCxXk7Gy
	 Gi6D6Vmi4r+UMT+X6sIpckYXldueylbfMqzmVfMXQhtsvo5t2KrGf8MFej4tumaEF8
	 Dc0fAY+ieHBVg==
Date: Sat, 26 Sep 2026 16:47:35 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Christian Marangi <ansuelsmth@gmail.com>, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, 
	neil.armstrong@linaro.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 3/3] phy: airoha: Add support for Airoha AN7581 USB
 PHY
Message-ID: <owibbez4nfq5gh4b2ensbhy7d5trmcwupe4rqox5ig3wy33ngp@6z4gbmqry2cy>
References: <20260724184523.193661-1-ansuelsmth@gmail.com>
 <20260724184523.193661-4-ansuelsmth@gmail.com>
 <20260724190135.B22051F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260724190135.B22051F000E9@smtp.kernel.org>
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

T24gRnJpLCBKdWwgMjQsIDIwMjYgYXQgMDc6MDE6MzVQTSArMDAwMCwgc2FzaGlrby1ib3RAa2Vy
bmVsLm9yZyB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCA0IHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtI
aWdoXSBNaXNzaW5nIFBIWSBJbml0aWFsaXphdGlvbiBmb3IgU2VyRGVzIFBIWSAoQVBJIFZpb2xh
dGlvbikKPiAtIFtIaWdoXSBJbmNvcnJlY3QgUmVnaXN0ZXIgVXBkYXRlIHVzaW5nIHJlZ21hcF9z
ZXRfYml0cyB3aXRoIGEgbXVsdGktYml0IG1hc2sKPiAtIFtNZWRpdW1dIFNlbWFudGljIE1pc21h
dGNoOiBIYXJkY29kaW5nIFNlckRlcyBQSFkgdG8gREVWSUNFIG1vZGUgaWdub3JlcyBIT1NUIGNv
bnRyb2xsZXIgY2FwYWJpbGl0eQo+IC0gW0xvd10gTWlzc2luZyBIZWFkZXIgRmlsZXMgZm9yIENv
cmUgS2VybmVsIEFQSXMKClBsZWFzZSByZXNwb25kIHRvIHRoZXNlIGlzc3Vlcy4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

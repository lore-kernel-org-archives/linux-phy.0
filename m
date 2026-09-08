Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 417A7C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 08:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pT2mLhBVZg/4zQv3/C5HC2c4LiypYuGGKJspA41h9Yw=; b=hFvVP96y6HSmYb
	dsCF9zqRQQFeKJB6gVQOhDGT4kHwg7TxvgUrLP+roKCLfdaxHXl/26srhtxTjXcNmTiMdAjU+8rM5
	LtMGH9WPVP9izD2t4R1Pj4VFCIXJ9Cz23GqhM+6VsyMl2t8uU0P8lUmDlnIYSLfrLYfr48gVm228+
	dRjEkJKYx+WGshiSZtrpFaxrnsfgHNafF8/4qKXlhMNAKsjWarAGwUBI8OHdPRGbDN+wIYBToS32u
	4cr/afmOYbFFS8dVxWKmxJsfQTOCjjt4KDPFQlI+03PdqMcIuOafO0wQao+nEP6mHd1NPy4AnqPco
	BLQNZuOE86A90umuOXBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qpI-00000008LJ2-2pOd;
	Tue, 08 Sep 2026 08:05:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qpG-00000008LIc-3j8u;
	Tue, 08 Sep 2026 08:05:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 283F543A59;
	Tue,  8 Sep 2026 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6DAF1F00ADE;
	Tue,  8 Sep 2026 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788854706;
	bh=bJh2MhdLa63Ttm1UiskqgHeI5PnKcOO9wH8EfHh8qRY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T79nZLeE+MVQkkVQxP9ZC5GbaJPNSYzCCObJMkr86s5FAmSJwWsKWyDgBG6bJrtZr
	 KhLZNUrzDCtihT/T+SqIKKECtWJk13iY3sbu6Ddt1Pyhk0fxAj/X3/kXzP3H1YJWpV
	 0WXUR7qDhNbVuHk4z2/OJRIDoBpOPz1EYEkp+UjkmeH9yfyIb/VGrrNFmEgwutuddQ
	 EJHJoX4OC4IXHW+WsvVv/OaC/dOoDUObw/pGQihOCxKzrDrVZ3eurYe8pmfeq2GkHA
	 yhZZHNrYchon4fIfcG6sfHEIh6/QTeahbY7/DRMNWAaYy0BAsntnT/nK4sa2aiW7GZ
	 3UNgj54YJNDsQ==
Date: Tue, 8 Sep 2026 10:04:58 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-phy@lists.infradead.org, Sven Peter <sven@kernel.org>, 
	Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, "open list:ARM/APPLE MACHINE SUPPORT" <asahi@lists.linux.dev>, 
	"moderated list:ARM/APPLE MACHINE SUPPORT" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: apple: atc: remove stale kernel-doc for removed
 struct members
Message-ID: <veg6ies4ob234g3gerxzvnlfxwcjlle7sarkbzp5ptycfljixe@2kgokqw53ncw>
References: <20260608053525.12354-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608053525.12354-1-rosenp@gmail.com>
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

T24gU3VuLCBKdW4gMDcsIDIwMjYgYXQgMTA6MzU6MjVQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3Jv
dGU6Cj4gVGhlIEBzdyBhbmQgQG11eCBtZW1iZXJzIHdlcmUgcmVtb3ZlZCBmcm9tIHN0cnVjdCBh
cHBsZV9hdGNwaHkgYnV0IHRoZWlyIGtlcm5lbC1kb2MgZW50cmllcyByZW1haW5lZCwgY2F1c2lu
ZyBrZXJuZWwtZG9jIHdhcm5pbmdzLgo+IAoKVGhlc2UgbWVtYmVycyB3ZXJlIG5ldmVyIHByZXNl
bnQuIFNvICdyZW1vdmVkJyBpcyBtaXNsZWFkaW5nLgoKPiBBc3Npc3RlZC1ieTogb3BlbmNvZGU6
YmlnLXBpY2tsZQo+IFNpZ25lZC1vZmYtYnk6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29t
PgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

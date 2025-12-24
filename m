Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 530C3E7491C
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 07:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rD9v6vtFdMPPc3Aa3tW4+YyIDyTlMPEXx3N/lo/cWs=; b=CN4T9H4ZegqBIz
	2wTOe209vQHPVFyl6SlsMpXDwmSk4cnArL+ayHxHiUZousgNmpdkY4FTrb+MvmVPdhwWx8JWC783v
	huar11DupOM90iU0aE8IivFZ81VFyHXXSfS+VGrWD4/XvNomCrTNC0eDfRs9Mj5IhF2zZ9oGGNx5k
	XWorxsbxQsGbmw3JqRd2W1CNcskZou+feYMmY2uHB1c2He47I/xsT267VlvlX0DJvC2N1GIDylXW5
	mLpfYm4SkYWj6UnDPqpPLw7waq82nKKMeIjXOSERWS0uO1hvlkI3sc6VNnQMyIHmEc5F4sKY4w3V/
	TSiEHD4xDFvduUGv33NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJMQ-0000000GXyT-0Ni6;
	Wed, 24 Dec 2025 07:32:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJMP-0000000GXyH-1bHi
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 07:32:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E15C060123;
	Wed, 24 Dec 2025 07:32:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01910C4CEFB;
	Wed, 24 Dec 2025 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561558;
	bh=1U9c3moXP2dPUwYGsCY/RrhE8RLjaqkkRdOTw+azNek=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=M13JZqVB5nGtTPVb9qryeY+/HTGE3O29FVcUL9ia2kH0WA7YII9FGJoiHAioXCCEE
	 8T2JXzUO9PqWZCoqwIZCK1Az/T0T2uJIJUEzUBaThcHbxlAqg55J9KXbA1c7U4hXcM
	 WbY5+e2UItQ//iRBAL5KisXUfrWGsNR+aiblmy+Czsz9bXZt0erkRiKT9vqwgb4GGo
	 1exoGkGxp2XjSvIGFlWsOJ1FZOWP0nJNdlOTgkxdfqYz/ReTOOfl7PWMyuXqnkJWaP
	 6c3k2CqPpYPAYtZM7V45+0flbY5wiuACMyk+iBqm6ByxipP62cLqFaKe+67arZboV4
	 MjN4lCdGuR1Fg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
References: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
Subject: Re: [PATCH v2 0/2] dt-bindings: phy: add power-domains to samsung
 UFS and USB phys
Message-Id: <176656155361.817806.4683882680311594709.b4-ty@kernel.org>
Date: Wed, 24 Dec 2025 13:02:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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

Ck9uIFdlZCwgMjQgRGVjIDIwMjUgMDY6Mjg6MTYgKzAwMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IFRoZSBzYW1zdW5nIFVGUyBhbmQgVVNCIHBoeXMgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBk
b21haW4sIHNvIHdlIG5lZWQKPiB0byBhbGxvdyB0aGUgcmVsZXZhbnQgcHJvcGVydHkgJ3Bvd2Vy
LWRvbWFpbnMnLgo+IAo+IFRoaXMgdjIgaXMgZXNzZW50aWFsbHkganVzdCBhIHJlc2VuZCBhcyB0
aGUgcGF0Y2hlcyBzdGlsbCBoYXZlbid0IGJlZW4KPiBxdWV1ZWQuCj4gCj4gTm90ZSB0aGF0IGlu
IHYxIHRoZSBwYXRjaGVzIHdlcmUgc2VudCBpbmRpdmlkdWFsbHksIHdoaWxlIGhlcmUgSSd2ZQo+
IGZvbGRlZCB0aGVtIGludG8gb25lIHNlcmllcyBhcyB0aGV5IGdvIHZpYSB0aGUgc2FtZSB0cmVl
IGFueXdheS4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMl0gZHQtYmluZGluZ3M6
IHBoeTogc2Ftc3VuZyx1ZnMtcGh5OiBhZGQgcG93ZXItZG9tYWlucwogICAgICBjb21taXQ6IDE0
ZmQzODFiNjMyODgxYThlMzMxMDg2MTRlNzFlYzI1MzA0ODYyOWIKWzIvMl0gZHQtYmluZGluZ3M6
IHBoeTogc2Ftc3VuZyx1c2IzLWRyZC1waHk6IGFkZCBwb3dlci1kb21haW5zCiAgICAgIGNvbW1p
dDogNjUyYTVhOWMzZjUzMzNmZTlmMGM0M2JmZDU2MjQ5NDQ2NGJiYzc0ZQoKQmVzdCByZWdhcmRz
LAotLSAKflZpbm9kCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=

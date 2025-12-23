Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF1A0E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuKFoqsM0KVXylyWu20Db+ez9MACfov6zXoU7q8Q98c=; b=2pc2v30ZYqr7u/
	i/CWF+AMPeZBeanx9ppviKG43PEBbYWh+s9swvVYVp8JI0M4GuFqEkxeAxN3V6xadxlstb4lrmqNV
	wM3AlU1/rIKw8ThkuUf2lWbxazQHSrgOaPnX/QOrQNqJ9lAIq9MAJFSDSgBC70JzAPXAlQAw30ICv
	t9F2jr0rUrcXpz+5lwEOkXaoWFsebNyv+iZY0QIq5uGjQkfwLVMO9gilmnf13PsVzW0g47XGfp8Qy
	FU7FHvLOSUuOXRdxW1wXfedRgzMBMR46H3t5kBpxN1iHLfST/SgLv+zVrNkIHieO85uEaON8cJVAp
	YbfcMKlejsUJ0sgV9OKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Qw-0000000Fqpx-2vIS;
	Tue, 23 Dec 2025 17:44:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Qu-0000000FqpE-0e50
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:44:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C375644387;
	Tue, 23 Dec 2025 17:44:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD6C6C116B1;
	Tue, 23 Dec 2025 17:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511867;
	bh=P32gz1U3xDoCzfl2+VR66RJPFywlOedw+TA59vavrqM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XvspivJsIRocXPqGb1tBZQufWCeg6pDpMF8CV8Upoh0wFHwreL0GYwKxtIlAFtmbc
	 H68tM3n/PhozmfzM9EVbc0fAvtoxhb1+lngM7cxARGvGLsjaZf6mEUAfByr5/KN/ZK
	 awW3U3HrKocXqszeJbLyzExTQSZLDLz2pTvBzgQpYriAo5vfUFTA/rVvHi7HLY4ciX
	 vA+JM158xeAsFc1f9olYKEnxkKrNrj5NQFv3oq/Z3rHoQ72JRRCgB8Y8NqxWfgUNBN
	 P+KRByHoKFSah+mWKaXQtdUud/q2YTEgZWj3DnsXKe6enwpvZTExHZAPYK+Cp4qq9K
	 8Z91sEgR+BoGw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251222161846.152952-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251222161846.152952-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add
 RZ/V2H(P) and RZ/V2N support
Message-Id: <176651186340.759340.4570439696222386912.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094428_226190_47402742 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Mon, 22 Dec 2025 16:18:46 +0000, Prabhakar wrote:
> Add compatibles for the USB3.0 PHY used in the RZ/V2H(P) and RZ/V2N SoCs.
> These SoCs integrate the same USB3 PHY IP block as the RZ/G3E, so the
> RZ/G3E compatible is used as a fallback for both.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add RZ/V2H(P) and RZ/V2N support
      commit: 8a203b0571d0a28e227dff7ab81e64cd7aa18e17

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47095606A32E
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 00:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Yk6ZNhwz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7M1/EMNpfwTCqZcTSLWTPZBP35S07UCeEgJaLkJ8o34=; b=Yk6ZNhwzfvTR2SzA+sFK87V87r
	g70Zvj5RwxE25eGDi8LTu1TSasa8KKOVU5iUhQKE7dsfq9ewhO6L5wQD9zHuDzMaSllJVHF3sXuTx
	KK4UObfuHIh3NJFuKhqbc5fEfdO+xeGt9PyO3yd7mstm8r5OcwEUysG3gvCd+r0ssqQbl7/SqfSMH
	4s5gTVHTwQAL0rsSeROlLvQT0VDBPIBSRQqpwXW8sVCRaoaCxOOmGhboUmf+qImCZ/mfhcD0u5k2/
	8kEmWeKbGW6csweqgXsp6fkWt39vr+EWoyK/jUiyQtai0Y8KjYp4i1RK0ZYP1aTrRIdRGVtZ4zUNs
	P4KUjRIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOlW7-00000007NC5-3UX2;
	Thu, 05 Nov 2026 00:39:47 +0000
Received: from mail-pl1-f169.google.com ([209.85.214.169])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOlW5-00000007NBj-2PVZ
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 00:39:46 +0000
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2ed11653a91so4853485ad.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 16:39:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793839185; x=1794443985;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=GxOPm+285zQy6VsOAo+zo6AXQiUSUYodxFXi8M2wfms=;
        b=2d1kW5TyVHJmfw38aTRzWHeU6UEym8Xcxbfh0AAcSK+nN1vtABgc1JcBsah+mulntW
         D2lguPAKaloIpAxZMux64ieJPooXQ7DOSmv4E6CYgaLA+HVRD036Snt3y4v8YiVXwzI6
         vwVpLkTsiUcOxxxNPwaXLGV6KooTCw9D6D2wGlkWKodNx6nwieqZ3mA9wR4vfR1pTkIv
         2MMyunyQ3vjpLasNVdN5dzB0SPtnkX2AyWVr3xSXzY49o8nmiUI81OYrd1mbesQrf+bC
         Lw9LBf4fx/ZpJQrC4TtNPblkqRS+Qqn7I4C1mb74NV0qAoRh2nFqgM/l8k9zVh1jZ1ss
         48ww==
X-Forwarded-Encrypted: i=1; AKwUvByn7ftXSb/xb4+Y18ggsuYuhziKNd2gFPdXftLNq/un7kM47hK5GaTjesIt3EMXTfnqV983ksPR1K0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/CGcTJWleYRb5ZX5baTSaWm7slTDUC85OI5LYAmxOy+Wt9rqX+
	wgghq3+SsOeu/VtUqBxRYJpVE33maMvKzx54TYhDgwaESWPLZEqdwGp5hPYPQ33X
X-Gm-Gg: AYBFou1hjYCfnk9U4WcjomHagBSGQK7i9xpyqQMQ9WGiZH4YB5Jj18yNjeps7Yo0AEU
	2uPVUamBmvHFD5MY6AwaLRYzYIqhXB5LR67j14+U21R2Sz2mSorIR+JTBIGaOcjq+yXFNe4b8IK
	vAJJGp9EM7XSEAXQWQGx/8+S2ImW/98ZLwQpenEiy8sOBtdGS8wgolAzFg1j9SA+5N9bbuObcdp
	mcJq9CLjx3ViNqG/CsbmwpqfeGCxdi0/4763hNryxCp4iDDBXHe9gJE2RW06r+4IEIJTuP8V87F
	tcWkVveJFah97EtCW5a88oMy3oGcpNX4YJPMIOIlVuxB168erEh6xI9vOzRBh4qdXWFnINE5RQb
	ENA0pxGj2KBOzbLu22GEZ2X+SoNyKsu5qjVDHhd/kQgxz9qRF2ly6rfaOex3sTWFOYZ6DfUPznH
	RjIhuJD98DayUO9fm2is2rOl6fGHhP9+3QGCR2CsGMqrfdjjgEHu7Cbt50J+gO/LZMHywXkUq1L
	2PMXBzNCnYcpJfTieEy8n2bTDck0tGQ9t+5YuTEK15lvE4bhin3UA+19Zn7qLZApEjkrymKUg3h
	onnSIFkx5VSeCLR73NxNQrchYeb4dhXmWCQVRNCdTbAZDavnnfQOtVuQ3NmaW26f8/K03PCow5l
	MF5fmnBhGeqE5YBaTB9n+a0awyLSRJiXYxqBlq2LRT8g=
X-Received: by 2002:a17:90b:2f87:b0:3a8:9b79:e6ea with SMTP id 98e67ed59e1d1-3ae897f6d60mr15062341a91.59.1793839184630;
        Wed, 04 Nov 2026 16:39:44 -0800 (PST)
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com. [74.125.82.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b313c143sm1020184a91.2.2026.11.04.16.39.44
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2026 16:39:44 -0800 (PST)
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-36661f953e4so1820543eec.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 16:39:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AKwUvByE77nZegULncW/J3R17fEFN+drXDkbZs/i8R/FhAqPPTRvFufp9MMAMOYSOUPTQM3C8K2RHov3Rtg=@lists.infradead.org
X-Received: by 2002:a05:7300:7f95:b0:35d:eafd:5737 with SMTP id
 5a478bee46e88-36a423bec77mr38131346eec.22.1793839183442; Wed, 04 Nov 2026
 16:39:43 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
 <20261104-sf19a2890-usb-phy-v1-1-db0cad937614@telaak.dev> <20261104-unscented-armory-4dc756ab95cb@spud>
In-Reply-To: <20261104-unscented-armory-4dc756ab95cb@spud>
From: Joseph Telaak <joseph@telaak.dev>
Date: Wed, 4 Nov 2026 19:39:32 -0500
X-Gmail-Original-Message-ID: <CAPY4CJ5g+e4iu8p5s+Vf7XmEjB9cYX9xYyzHd0Fz8GEbmFm4hw@mail.gmail.com>
X-Gm-Features: AclHuK9Sx3shGebCfLzax5r8eL6ok4wMG4whrKpB9TRpvY4T3TEbHPr-vy2WL-g
Message-ID: <CAPY4CJ5g+e4iu8p5s+Vf7XmEjB9cYX9xYyzHd0Fz8GEbmFm4hw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Siflower SF19A2890 USB 2.0 PHY
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_163945_633353_3B6F6A08 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.4 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> > +        reg = <0x19e0c040 0x60>;
>
> That's a weird offset and size.
> What lies in the regions around this device?

It sits in the 1 KiB from 0x19e0c000 up to the next block at
0x19e0c400. At 0x0, 0x4 and 0xc are the reset, clock gate and bus output
enable registers of the USB clock and reset manager, which the clk
series describes as siflower,sf19a2890-usb-crm; 0x8 holds a value I
have no documentation for. The OpenWrt port gives the PHY 0x40-0x9f,
and its driver only uses 0x44, the PHY's sleep control. Read from
U-Boot, registers between 0x40 and 0x8f hold non-zero values I have no
documentation for either, and the rest reads as 0. The GMAC's
configuration registers sit the same way, at 0x40 past its clock and
reset manager at 0x19e04400.

If you'd prefer one node for the whole region, providing the clocks,
resets and the PHY, I'll restructure it that way for v2.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

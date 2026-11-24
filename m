Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0004606A334
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 07:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kQKV2Fwe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MhhASjcc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wEXIdaSgORyUSmtFHkK9iJLjAxjV8qv89azTsq1NUzw=; b=kQKV2Fwe79ui6mSfmqY6DZr9d+
	NRZX6wwP6j4urMjmaujQf4dpEJi7ByTvBnByD9nfHFuw36YLl3jktCRsEBIJZob1h0dJvB8rs0jfJ
	Op9bHJEdn8BgrI2cgjiiy0vOKM2ZOZA9dtVwV6t1aG4w4IovVFaJhgwDpo7TdHoyuHCaDWaSzUt3k
	LIjf/h6UuKG9gOAoKE1tewNWvnXnb1moRMibWFNY5AI/LeWH2owrc/2jFk8wXFH2wIWeXKXly2oc0
	BewhUJSnaDdJzsSihlS66dCHSdWQhZfdA5DAA1DN1PYMZoct8bssO3hOgsGZnv/h0MYeOAvoh55ed
	O9knhRSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkWA-00000005hQB-1mpH;
	Tue, 24 Nov 2026 07:00:42 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkW2-00000005hMV-3d3G
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 07:00:38 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3adfed9a887so37392301fa.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 23:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795503630; x=1796108430; darn=lists.infradead.org;
        h=content-type:mime-version:content-transfer-encoding:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bUUKY0RsjD+IVYyi5SJxAofkyIWwSJR0q+NQRX7ZwwU=;
        b=MhhASjccb1QzEUQllU6AZMkr+pEc9/ZEKmEsTmY1dQnVQcudEBz1kpFY7nCjZhWwXa
         8V5K4QHLOflZzFlgsiWIICzEpd8jvL29EfQtCqhGqrAlJYvRawvaGVCOAm7NRSiRF7dB
         5v2v5s8jqicfCoVwFir4efVluCYz4h3cykA7ibhHgbX8bFgH9OUNC7jDd7UWj2ZKJzMk
         UyDVqft4A+GV+98ZPNzlxskNhBKCEkkPwBnLnNcHEjlofnaj2nDFWzSRQzGov1o+sUdq
         6rw1Fe/BYeJyjS4bcMFwPL+AxTJ9iLXQHHme0lZpbLdeSlAuj0RSPR8uMPvwaCzTHj1s
         Lkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795503630; x=1796108430;
        h=content-type:mime-version:content-transfer-encoding:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bUUKY0RsjD+IVYyi5SJxAofkyIWwSJR0q+NQRX7ZwwU=;
        b=WwIJVuRNVk44NPrlJL/0AgE5qmDJaFxyX0lu7UmMYfnn7pDWA1l3odR1L2G4ZoQ4Dm
         XI9dpMzMyB1/8+xGrljebh9tlkksrXMDcsuJNCribZlKI+7GrcTRkjHuN9I2yjFbcFE9
         N78jEs6Qid/os54GTzW7rRf7B0y23AJu7epzggoiIAdGWshl31h8JCWnDTxgg6ySGddO
         Gtg4SlN1F4fLmtnF2quyPU+IZnO1p6eP+pCqUNURHFJtIMa/gUgKb7nW0w8P6SVC14sB
         bcoWgBVpYxCA0sUhihrUIYgi0dFy8z/CDwnlmX3gjxgQx/4XADZV/Qgh16VAQb43QET5
         nvxw==
X-Forwarded-Encrypted: i=1; AL+hErG6Kj2KdoZvSHmfxGj2rEKYsuOgTRyR1DbtEDvn/1oVCVPoUXJk/TXTDB+1pMvq/J11RYbWha3ET7g=@lists.infradead.org
X-Gm-Message-State: APuU4Z+/f5J+OMRPhHdQGQjdBarv7Ca31TgKeEB/l19aHUtMBn81265X
	L1ETgmTb1Is5yTj3YtBoElDjQ514NW6f8joORdDJPXAsbKfIVQSvcmog
X-Gm-Gg: AZFdTZcKMiIEl1u1PqSO1rG8V4HwHMZbkeNjAmCxZjPAOjKMzlU3uphIbiDgd73YccL
	4dVr0nYVSoqD8E77BjU+gw9/+bkWP1gm/uxP6eSnAy0EPoTW4NtUYdmswsUV3yFDA1t0D1ddzj3
	i65i6zD+G3Rb8rsgctXfovNWwDc1m2GEDMjdz5ohEhKT86Xo0m0lbCMYhkXcY+K+j+qxeuSBQUZ
	vHacXGI3JcgmYfcGMo3ZyUVHOyGufjiUw4Bnd8B6yygEV/CcIjeYwR4QK3404ufR8R5Vr6oJZB3
	j/bv2K2c2HBk1vzcvmOSTDXrM4s2BPrqiWSXQS0PTWt0e2rK8hAplu/ApCPdG8EG2vKP520sW4A
	XJ6HOO7rzmaDTxKVroE0mK73KQzVUL9zkJtQwhcb+Fjg/j4ivWEJ8JEVjJgT8Ts9qk/uewD3FY+
	YOCNQjqygoslUDoja4gWqlQ524AoGlen7RfKJf/KmgHvCpnU7NtafzryHAxaIr10e6ccM7w4l2m
	u1JCaPWNP2409jrBWN9gFmS6nDuKGUbqFjgB7JeOuwThMfHjW+hByPCJr8Tu85hI7lV8w+w5nlZ
	VJHAFSZSszWRcKHiiNjpbiGNaA5xXBcntJ5Hjsiprfy9KLQ3DNIlVJQ=
X-Received: by 2002:a05:6512:12c4:b0:5c1:563f:ff23 with SMTP id 2adb3069b0e04-5c1bc84ebc3mr3803268e87.61.1795503630067;
        Mon, 23 Nov 2026 23:00:30 -0800 (PST)
Received: from [127.0.1.1] (ip-024-180.users.dtel.ru. [91.210.24.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bd05e235sm3481118e87.64.2026.11.23.23.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 23:00:28 -0800 (PST)
From: Fil Dunsky <filipp.dunsky@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/8] dt-bindings: clock: Describe CS7542 PCIe gates and resets
In-Reply-To: <831a6498-9c1a-4829-b47d-52035fe15444@kernel.org>
References: <20261123-b4-cs7542-pcie-v1-0-4cde5201d404@gmail.com>
 <20261123-b4-cs7542-pcie-v1-2-4cde5201d404@gmail.com>
 <831a6498-9c1a-4829-b47d-52035fe15444@kernel.org>
Date: Tue, 24 Nov 2026 09:58:48 +0300
Message-ID: <179550352887.5.18085137758862458863@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_230037_059721_86AE804E 
X-CRM114-Status: UNSURE (   4.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="fixed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

Agreed. I have folded these controls into the parent global syscon in the
separately posted shared-global follow-up:

https://lore.kernel.org/all/20261124-b4-cs7542-global-controls-v1-0-12548785df2c@gmail.com/

The parent node now provides both clocks and resets directly. The prepared
PCIe revision removes this resource-less child binding/provider and uses
the parent. I will let the ongoing reviews settle before reposting the
PCIe series.

Thanks,
Fil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

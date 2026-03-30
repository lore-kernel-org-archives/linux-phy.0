Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4EAE1061B08
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 21:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJtM8WswcYfOHDyfP+yALtqhynkT63P/BSiq8QfuRj0=; b=A4/GBT9AbyXcXn
	AovveiUp/cMe2uLDDA73YDfx5XZh+wivGGAibuiAPBVQJXvj2zHQGV8NgRDCJVahOlbKNyzk+JY6S
	MjwY2PBeuCWzS7oKYR/FkFTMtOgyh+2DuwTnsljS1mZs/BlF4uA1ZE5uJcvCe8isRyrkMQGlv+cwe
	D19v6jft6EtLfS0s/Kt5uPsEQatazT4J1O0GB2WyClDf1h+ExFjHg+9jopAy4wUBWNE2IdjBxZBSp
	H1DXLMYK821mi5Tcnr9W7IW1CXIx1gzPk3f2Heg65+GY1p8alO3j/SJ6nD3E3c8eNC8yLB0hTZm90
	+VW62tplA9hwrFZ2wgyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7K18-0000000BuKF-16Yw;
	Mon, 30 Mar 2026 21:19:26 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7K16-0000000BuJq-0jE7
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 21:19:25 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4836fc075d2so7356945e9.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 14:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774905562; x=1775510362; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9jvnpLIOE5HFulMUUMbL5hgO4aXaFuGYK+UuancwyCo=;
        b=BgsfZ5HuQtMNMVXcp0fnt4vUy8P/d2pdx90LJOh4DsbEfwCb5Lsahlf27+Iu08NwNY
         IgyPtkl24+YNn8bh6/C60Fjsk//PRslaNAT9uKyT7oXOjVv9FkexQZWRBAyKP5nxxxZF
         xCGNbHlOHfyRK4bw3M7bbniUVaXcj/ktprchNQUmUURjxANvBwYTRoCDJL1Q6//uIPfM
         eMN3aP8jYFMfqXpbKvODGqZW+xm5eGmmwIdID+o5H5PgNahE6Dru+YJ9gzpJ4uxJNK4g
         yogVvK85Wj/m1Jt9QDmn5rkoLt+wBXErjRuJTAvLkn/TD93h67pb6Ewh97spzA6c3V0o
         kadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774905562; x=1775510362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9jvnpLIOE5HFulMUUMbL5hgO4aXaFuGYK+UuancwyCo=;
        b=ipexaG7tGdSEF3ek1hiPDNzdmPayGnuqfMf9iyG8zufLpmPKDI/Y/urYoo9vDyQpPJ
         jdxeuyBCPOohbNyt/i/Q+0I5zTNY00hQ8Q3woXdDiuAQM/ylexopLeV/n10hSRo+Rfk4
         iyh755hyZ0pQmBLADFc2qoHMwHyDcEVnxO9PnYwHJt78ruGv5msgV1li8w5lco5wDshQ
         oLqZO34I3e8VmUwiCv22iYLDPwxMReo4qvoBRNTyAaFeTzPlvy4I7wWaj8F27FA96oIS
         ehWjNa4bSYX5rYa7KJVS1XjxXkz53h0rv/Lfvj8zqTBYC+vGJITpPKv624OsrO7fuRZa
         WBbw==
X-Forwarded-Encrypted: i=1; AJvYcCW/GqI1bq8O/oAW4/qe78CtLleoZUMCh9Wv4h2/boPMYDpUKsyQ0RGCoPNjWqwMTevaVA3wEmKBDcg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8Ea6jt4cc2cYEgmuR0jdiFDp93ZezI27Ko6VS8aDonw9d77o0
	h8yPDLvAWwCjobIYqPXIkS2xYbicW0Cnvr0mTOFN26Nab+GR4BuOjQeL
X-Gm-Gg: ATEYQzw+ONpi6iMbKbFQncnU7+yLaNa/Aq4er1FOh9QL3pTUq31amooYLa5vvRPDZFl
	H5sUbv7aRGma1JWHlnMfVeUMfN3UC5MKJ6ApnARkN4PQbNUBR4724psdi8hZmJKaFzKrlW8+fr7
	ADzdpaXz1wRCwPt4gerB7OjQ0YGHgs1xhP88ZVcRwG9nO2W/M/hwYNWTvStCO8sBUYBoprdt7AS
	Eu55fukIJ5nJyjxqeULwA8lyh5hwFCpfW/syvsCiOY4rECjznYuAxycyrYn/vdx+DX3DVld/tBe
	hRGM7RLY+OV37psKZ7ByeAk9dNAkSpzGeSwGQEpAGyMJyvz9SyYeFTtosUoE0X6p69hmgc43NVs
	zoqwQHgGFRgsQSSYE3oyo5fWa2w+FFCv0exhzV01Utoc63Gz+snzyCUJnmyAIJwD4VisVDgHHco
	eq/mNR0Ihnbp87usw=
X-Received: by 2002:a05:6000:2903:b0:43c:fdfe:bdda with SMTP id ffacd0b85a97d-43cfdfebea4mr5006211f8f.6.1774905561753;
        Mon, 30 Mar 2026 14:19:21 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf2471ee2sm20904824f8f.29.2026.03.30.14.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 14:19:20 -0700 (PDT)
Date: Tue, 31 Mar 2026 00:19:18 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 2/6] phy: realtek: usb2: introduce read and write
 functions to driver data
Message-ID: <20260330211918.y7su36j47e3uelcv@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-3-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260327160638.15134-3-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_141924_216882_F0ADFF7E 
X-CRM114-Status: GOOD (  11.27  )
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

On Fri, Mar 27, 2026 at 09:06:34PM +0500, Rustam Adilov wrote:
> +static inline u32 phy_read(void __iomem *reg)
> +{
> +	return readl(reg);
> +}
> +
> +static inline u32 phy_read_le(void __iomem *reg)
> +{
> +	return le32_to_cpu(readl(reg));
> +}
> +
> +static inline void phy_write(u32 val, void __iomem *reg)
> +{
> +	writel(val, reg);
> +}
> +
> +static inline void phy_write_le(u32 val, void __iomem *reg)
> +{
> +	writel(cpu_to_le32(val), reg);
> +}

Please don't name driver-level functions phy_read() and phy_write().
That will collide with networking API functions of the same name and
will make grep-based code searching more difficult.

Also, have you looked at regmap? It has native support for endianness;
it supports regmap_field_read()/regmap_field_write() for abstracting
registers which may be found at different places for different HW;
it offers regmap_read_poll_timeout() so you don't have to pass the
function pointer to utmi_wait_register(). It seems the result would be a
bit more elegant.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

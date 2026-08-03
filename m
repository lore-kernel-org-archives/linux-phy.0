Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A315AC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 16:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8Qo+l1jikw94CBj5+sMUcEUfhvzuCMuN+uHOHogKuY=; b=JWRKDjxi/p2FZo
	VOPGDkjryhFU9jgDaD4HAGueupRa+kB7ffaIcxnh1UlEf6jdOSabbJH56RRWMbKhfmny0w0QfvZHW
	Ovv/ltfShTYWEIB3V4qz+R7+0X/wb1dfruQ949NSSTLlz3IoYgpDeC3TY5v3RU9eI0w3DkFWT3C+2
	eVzrc0RuB9yJ6cOASYuyp2F/8nIGYORPbelIm1/Os+Ay8CPufNL5eKKrPTyzw+lY2U21PL34Fl66A
	yWXLqKsCSayRa7UQYgYj5JJnrppuccmhcAZdVboGkYrXcdrh/eGxCcdfuXJBKSmWfsqMYDmutd4u0
	5Xvn+bj0jl63TkmAxodQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvD3-0000000014I-0s6z;
	Mon, 03 Aug 2026 16:08:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvD0-0000000013R-1puy
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 16:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785773289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yzNObcpGyl7mZyEhQjY56czCyqHDIauV1aLv/H0dJ3g=;
	b=E1gaXDP3bMN3F+HnUOG7LA+MmNVeIhbxjbbgaYXAjerSoBoTVMvyYVzM36tVQNp2QFxyyr
	7W8rThwE6uP7mRb5rM0Qpva7cUFF7P/f0iVEwan0lVcD31j2BcP05ENvVtMeq0FhQ+H2Uk
	+JQ/p61LMtdVEi2ytnG2fjKTYpzby3A=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-40XFHNnPONa-c1DysdfScQ-1; Mon, 03 Aug 2026 12:08:07 -0400
X-MC-Unique: 40XFHNnPONa-c1DysdfScQ-1
X-Mimecast-MFC-AGG-ID: 40XFHNnPONa-c1DysdfScQ_1785773287
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-81e71268bf6so5693197b3.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:08:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785773287; x=1786378087;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=yzNObcpGyl7mZyEhQjY56czCyqHDIauV1aLv/H0dJ3g=;
        b=LEnOLtbQ8Y42lc3LV4cZV16ouikKk1culSfsgauqgqUpLpOnj/ytIG7RVbChs1CBkz
         Taa1U9GmdCnzy8Y25QP/bG8OwZ1bosCRcXlwnF7vQPxRZ6N9AsyWU80cPD4R9fNbyjZC
         bmbDl9J6urwvMPekFKX4nlUZEzhVhjekYaPifpzfFS82uxCjJl0eDGUTqIRzvzCl4nct
         I4S6/ZcwhfuIV8UKCARs3JOXnC3Ulyex9Us+1+viwnIdV9qELctKObVKB+IynEaTBcqN
         nsgfswsWuTSywz5Fk8b0mrpCF+8UKLAVy4uYbd282E1mwu54DUPoA2jc678Bf7uUVw0A
         sa6Q==
X-Forwarded-Encrypted: i=1; AHgh+RrQ/YlqfOgqxYD4fqnaIYnCfTx9O+pBOlP2JXw8kEPBdsQz21YYpjNQGwCxZfDna6TXfZ9od7aQaXE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD37K1zX+pYQ1fJvR/7oY6H6Sqq+7bsAUpxKlCdPgRI1CvTMHQ
	WxTG+Wv3593czBJH4d2i4b8DayYCyxfIbXMOWtMLjtV5e7ElS88VFMv5vaqYum8F1sJX3hCwYzE
	yOTzG98CrvgjblzB/OqvUTNht4/CPM+NVFq35r59BBwGOdiOGey+Iq3Fn/M+VdL/GyyM=
X-Gm-Gg: AR+sD100PCH9UtoyVJGCcKRteHYs1ZYu5Eui2OflvvAzJYzpvJvK38EKYQZ4Nt727fY
	jd15L0dpDx4a4C2mAJjljV9vugwHWNFYnuqvphuO4mvZ5XXAMVd4WriGwLtWhaYhqe0VntR/W1+
	pUMHOK7uWNeYSqwqkcEnS6+Ihb+2CsxCEoY3xo1HCdIoHsl1LWgCmmKCq+MvUgOwQPyGBSLLjMg
	PryK7/mLBeMkNgD3Yxss+2uzBOCf5crAF1gbN3PKtf/XSgg1fhEG3QigwrvqHABKDj+3P2FlqrL
	LrsjQmWaZdz9Pr1H1cN36mqjqObKdJ2ya2C4Y+VyoVC8GCNwO4/7qj9ZKFUfRAkFkcaBJD3o5cg
	SfofmxvFyO+q5zluiNHtSNqn+u5k12Jk94fg=
X-Received: by 2002:a05:690c:670f:b0:81e:6bd6:39a5 with SMTP id 00721157ae682-81fd49c95f9mr134145387b3.1.1785773286905;
        Mon, 03 Aug 2026 09:08:06 -0700 (PDT)
X-Received: by 2002:a05:690c:670f:b0:81e:6bd6:39a5 with SMTP id 00721157ae682-81fd49c95f9mr134144907b3.1.1785773286508;
        Mon, 03 Aug 2026 09:08:06 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81fcd123dacsm57310617b3.39.2026.08.03.09.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 09:08:05 -0700 (PDT)
Date: Mon, 3 Aug 2026 12:08:03 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 06/12] clk: zte: Add regmap-based clocks
Message-ID: <anC844zWjrph3KlX@redhat.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-6-d05530d85d28@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260802-zx29clk-v9-6-d05530d85d28@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gOIulkBp7AQ5IOwyw-_UE-EO95wHPj9_Lv7J2kUxy_4_1785773287
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_090810_570705_43AF7973 
X-CRM114-Status: GOOD (  14.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sun, Aug 02, 2026 at 11:33:38PM +0300, Stefan D=F6singer wrote:
> This is based on meson/clk-regmap.c, although slightly simplified. I
> have kept the copyright lines at the top of the file to indicate its
> origin.
> =

> I see that numerous clock drivers have their own incarnation of regmap-
> based mux/div/gate clocks. If there is any version of it that is likely
> to be elevated to shared code like clk-gate.c I'll copy that and try to
> use it as unmodified as possible.

This second paragraph doesn't have to go in the commit log and can go
below the ---. Otherwise looks fine.

> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

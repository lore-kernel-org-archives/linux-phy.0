Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD5C9CD6E7D
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 15:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckWciwOuQvv+XpI8lBoL9cRTuebBFItAKUVtXDRRB20=; b=hQOAxaP3ae1sox
	a3fc3IbSnlGEMyr66PrE1TEfChIR7YmQGzTDZ1tf17NI2rpdS5koZ1b7ryn4BQ58rcnoAOIIlsPKs
	LElUeDEu80rCG+3MPw5E+n8q/IEOz255fnb3EvYj+H5AIGZlhNVzlYNLNONCrQQyRgjlpThaQUfvP
	5lqZM+QjuA4FHh3kVbpPl4A1ffgLdpBhTSg30CUG2aiTL+x2IG+l9X2JJzwec+WlNO53z2DcsqvWt
	pAlu+MWCQQJrhIJ8+aY+WuFWPty300gch0YC1+WrmxsftVqXulRihQelbAXxBDe8P2G0GyEF4v/Vc
	NOi8V1QnMpm1cQG1Rb7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJYse-0000000Aeqw-1dlZ;
	Thu, 13 Nov 2025 15:05:00 +0000
Received: from mail-ua1-f49.google.com ([209.85.222.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJYsb-0000000AeqW-2xKq
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 15:04:59 +0000
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93526e2842dso255940241.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 07:04:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763046296; x=1763651096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ubK9EQtGlqEmscuI2UlEc444kIJ9wNNtF0OWUtH/PI=;
        b=Qh5ADpgidMCJX/WK6/YVbZg6jSp/sWky+bwBBgQCemsqWT2ttF8kBQ5Yp1nVr7UJ3+
         CQ2gJD9qNXfbtFtahjnzV+ZkUhj1Srw4Y9qYJWZ/9Z1ur8sq4xCfQ17WBfOJMCnFUdp6
         Lgaf6n4ilnumYOchI5RBUbgTotAc4VD8q0e+s/W23ABSBJeKeZ7hJZ2t7a/o6/cnEhYt
         ECPRxmlzGoybguLJhcN59boFeXwb+OkVai+qDeV9hjKdYCqxi1xGuvCgM1Gwr0wIILpT
         KBXJkj+z2ND/LcjP6CyZvULB0SlZ6G8VQJo4LWam3bol5XSemA7V1Oh/KrsdIc8Tf85C
         kV3A==
X-Forwarded-Encrypted: i=1; AJvYcCVs5tpwLw60EgjlvNh54fIc7YNO69+9Q/m2wfP2GsJpUbiB/YDoRL+0ou4w5iyzv9zfVNWXNu5XmfA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX7kEABZQyaLcKEQa/+Wob6Z6lO5nQ/FGSoYY6EYfDXTJBUGN8
	wy/TR4rP+VeN410ZUREGcW8NQQlwkPA2E5zigNzoaSOw0tcERFKPwrJcMTmGJMkOZLQ=
X-Gm-Gg: ASbGncvocKlwjLjsj5DT6TYch1eLreQoZFugP2HoZWhYxqLyDrtw4NdISo6B/kbBTU+
	dUhjKsnsAst22KCTnyrrRQfVHe/rr/wRKEVZ3dOjRBzCjwIypPNLa3CInivQq9d05ZU4YSp0H8V
	luDw/R66cBVYtQ66dyv2/Bc+PCJivdl/pW5a4xRjaD89LqViocLjropiYY8n+c8qRMRRWzISM4d
	zU0DukHv3ya7VzugJgOvJY7Z4Vdl4SroB4QdXFqGna5hSNr+Uw3HL4fAyFnd4SwqdM5mPdakI45
	i0CmcB8zNSOYcc35bw/56cpNSExp+LRUGO3URhHI9UicMYwFa/MaWgt3aYGG5xZbjWPc8AL0QjX
	tOxpgby2Emx58on9hXmx+WsdCl3nNiBOqDOiQf/cL6PwDFoMuxjGLRQHNjTx7ty/EkXemoWPbJ4
	msHxna5APGtqSXEn3hLrFO2TZ4sDz45xvgA2KhvQ==
X-Google-Smtp-Source: AGHT+IEyJxiQKE4RYEucljF8lT717t4DGge+CHxdhNw76WntnhUN7wbLAFBao7gkw0XrHVDDQ+jDOA==
X-Received: by 2002:a05:6122:4d84:b0:55b:113f:7e08 with SMTP id 71dfb90a1353d-55b113f81cemr698514e0c.2.1763046295649;
        Thu, 13 Nov 2025 07:04:55 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f32efe1sm749531e0c.2.2025.11.13.07.04.54
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 07:04:55 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5d61f261ebfso319280137.2
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 07:04:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVHCgMtpSTytDgjlSHP2yaY7OEake16JBPMNi5xXrLeJxj9Y9wYc9QyAx0KZVGvdPBzz8uCr5Vdazg=@lists.infradead.org
X-Received: by 2002:a05:6102:a4b:b0:5db:f573:a2c with SMTP id
 ada2fe7eead31-5de07d2f924mr2287392137.13.1763046294441; Thu, 13 Nov 2025
 07:04:54 -0800 (PST)
MIME-Version: 1.0
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com> <20251023135810.1688415-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 16:04:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUqoi-1GgyC3ZpmOupNtFxaUwRx8C4Q3iO9nx_hMwxX5A@mail.gmail.com>
X-Gm-Features: AWmQ_bntxYDPmpH9FJ7BCBwIP1rRXvUl6W1zgLobUSlsMYdvdi_L11aPQlSxmS8
Message-ID: <CAMuHMdUqoi-1GgyC3ZpmOupNtFxaUwRx8C4Q3iO9nx_hMwxX5A@mail.gmail.com>
Subject: Re: [PATCH v8 6/7] arm64: dts: renesas: r9a08g045: Add USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_070457_747605_D33FE6D6 
X-CRM114-Status: GOOD (  15.74  )
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

On Thu, 23 Oct 2025 at 17:21, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
> host and device support.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

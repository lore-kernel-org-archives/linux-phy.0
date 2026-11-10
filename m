Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19403606A321
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 01:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tWtAP7z5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=IpNJj357
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h5hxk3Dlu5d2OExo1qdJw7VVgDJSM7ntVVRMd6NxVfo=; b=tWtAP7z5lwCJZLrjhMXO7qZW1s
	5zlvT3DJo6mBK3cLpYUR993m5INyWh7/1i2nVqRZnuuZmHsO9GnNJ7UQCgEQ+ihdgPf6QZm2eHC6/
	K0IPKjYud+HHlRT+ohKR7o/g/OTvFR1nciHp+lfr9mG3IuM9P5SY0zYTCj6hboj5l93mIMD/TQl2h
	IqU7A2HJQ4OU7ixztWWo9ijQZKIieSRsgdmqcW+H/+ppvEyiJM2Jse/f2F5QlC2DxaWuepJ+zv2dV
	uaHge6s2glW8N38srbIya2emPJRdiVnms76QZwCt1Uht3y1Wb7zd2+Uw+YvAHHpFTrAPLRLGa5Vfs
	x2QLFCWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQahD-000000025QB-1K6T;
	Tue, 10 Nov 2026 01:30:47 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQah5-000000025OG-0cAB
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 01:30:46 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-c4cac7a7d3cso213416666b.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 17:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1794274235; x=1794879035; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6cr9ziobUF9AnItm9jr9xGM9l0DDOZ1SgmvFxuND5DU=;
        b=IpNJj357n6YbIqeRxF8M2l9WmlTOwRl4kvjpkTX3MeGlVVZZOWBMEy4vnWlMIH8RB5
         9JBonqzbhviBmVRQqc1YnR5kLEzI5uv5GNFfVcXggtRbk6Ryiyk2fMxSWKh2++sfQ4w7
         GiUg/AVdg+W5VlBbfxm3nXAdGGZCh6imzy6Rc/1zGzGp06pxwF7H9FNh8sAZLVMXy9ws
         rkMKDH4D41/abfnkN31ojiLQ/7iw9VTLKJOe24nP6NIAD704d/qhtOWg6xp0kSmhB1/i
         C3/NDDmL4k0plSCv3+hp5n27jfgZPg6xvPfXxU9SVOwL7H6yweK7DmKTD5BGcaHx/1Lr
         Dx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794274235; x=1794879035;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6cr9ziobUF9AnItm9jr9xGM9l0DDOZ1SgmvFxuND5DU=;
        b=P67IGoD2t/48lnigV1ja/pT2azgrJBC6voVbMJHYaTtK1t1yvtZpXD+L0LoizZZEVR
         BsSvM7WLFXRkIikEQVcq/T1iVSyrFxkN/jET4H+QSx5oJWsoGA0ZaEKlOuPXHf4u0kTt
         nuKg6HRbLG5wh98aIzygM+dztzEFt30Tle4SfOW01TnRxrIzeqnl0mIcLyNeFMjVSKEN
         1PahkGV6ERtMG/c8h/DP63DtoNBXRx7YGRFzFxEfqGC2AhtdCWtdV/Gd/761Lz1XoTsA
         gHo3r50/Ho6I4edgLjI6Q00Ziz83ytnXRMf3WoxFN/www7oLAy/Lom4gZHa5oXB0OPeR
         G9Bw==
X-Forwarded-Encrypted: i=1; AL+hErFkkl8ro7V2grLwA34OD8DsSNIgbCm9FtIHB9zyvlDgjHF+u1JKDF7NwkWzbmYdTQQ6Yu29HswyuG8=@lists.infradead.org
X-Gm-Message-State: APuU4Z+YJkhTh2FhE5jrXA99GNgBbeWsll5MXysDhcwbAfSp+3a1WGnx
	xYChwowENtL6m6S9QgMf5yJsUlWAU8mfp1t4UQBIspgrC/T7fdsa1doIURaQp/pN0g==
X-Gm-Gg: AYBFou33wcBh+PMRshLq/SdhBmQvzAhTU349XZ7tuVYFPnGKvDBdXsYGJgO5h21X5V3
	ZHXsQadPkWQV1XE9xvoE6XIZLEnM29BZ9o4qHcFq/iZYko8Phh800jl4y8l/iKIXAjb0rpHM0Cy
	F2QMyuIQ666avPgYe60OGdGKn+7ieXg6C69RXmztKSXfpher+FWTDzyHTQ1E07gTfzWdzf2HBUt
	RPUAeCdq/68OrkTpd+GDCN3bw7YDq/yrmNnqEmqtZUWB7HtV+9/skPa9viTE4cogVxD1LGhoNIE
	hkVzxlf0M4L7vSxanOvo+9fpv0Mu2JwoHmiCFAxsDItYph5z8SqoMb6VgT7JdjO2FoJDOWxSBRc
	kluGhH2MPrM4LRBuBgJGnLP0keblNdglMox35TAPZtDGdkwSfHWszDGLNHt9BKSVxEK0npvTlcE
	pJHFIJnkCqKQCEH9otnzOG6LqrGYDHmErMFmZkGke2PHOpkSc/7Jl6kaWYhc+bbCqxGKhIlMN9j
	cmFikXtoYOQPmF4UEipgBymEUKBmSRGiRhCuV86tu/D7oxS8FhkfwCpVwuFf3OulOxLekRdaN0g
	Sqbt2Bkjr3quC2B6ieciBCt77ydbRCXiYHq81BPIjyslurWPQWbevOp39i4Fz1iL1MMvXsKHa1y
	Y307lQmk+RRPEBMq6F3HEiFpsbeMT1WZPW68j8oY2M/8tKFUrKWRv6JobUlQckL7oMpUNgw==
X-Received: by 2002:a17:906:c108:b0:c40:d920:747c with SMTP id a640c23a62f3a-c5048f4046fmr83137966b.7.1794274235103;
        Mon, 09 Nov 2026 17:30:35 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:65ed:a8e1:a329:4b? (2a02-a466-4d7a-0-65ed-a8e1-a329-4b.fixed6.kpn.net. [2a02:a466:4d7a:0:65ed:a8e1:a329:4b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c504a5701a1sm41990066b.21.2026.11.09.17.30.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 17:30:34 -0800 (PST)
Message-ID: <f225b5f6-13eb-40d0-a9ca-7efab0e6876c@pardini.net>
Date: Tue, 10 Nov 2026 02:30:33 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: fix RK3588 SATA pipe_con1
 register offset
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Andrew Powers-Holmes <aholmes@omnom.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>
References: <20261109-rk3588-combphy-sata2-6g-v1-1-e9135c91de6a@pardini.net>
 <avJULe_00cHwMh4X@venus>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <avJULe_00cHwMh4X@venus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_173039_207965_09A6E9D5 
X-CRM114-Status: GOOD (  10.28  )
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Sebastian,

On 10/11/2026 00:29, Sebastian Reichel wrote:
> The patch is 1:1 from Yifeng Zhao with a better commit message.
> You should keep him as the patch author with his Signed-off-by
> followed by your Signed-off-by. Feel free to also add my R-b tag.

Thanks a lot for the review and for the directions. I've prepared v2
along those lines: Yifeng Zhao as the author with his Signed-off-by,
the BSP sentence (and Link:) dropped, the pcie3x2 link reset grant note 
moved into the commit message, the notes below the fold trimmed, and 
your R-b added.

I'll wait a bit before sending v2, in case anyone else wants to chime
in; Sashiko seems happy about v1.

T-b's from folks with a &sata2 board (Firefly ITX-3588J / Firefly 
ROC-RK3588-RT, from a quick search) would be nice too; the board I found 
it on (Mixtile Blade3) is not yet sent upstream (I'm still fighting its 
2x FUSB302 and PD powering troubles there).

Thanks again,
Ricardo


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2507ACA5FDD
	for <linux-phy@archiver.kernel.org>; Fri,  2 Oct 2026 15:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4kjv3tx4P5EeC4cW0x6uzIkBe0FPVrGBFQ3wKSy3FE=; b=ieWAj8w/qQlRhp
	cAFjAzte3bJIlr+MB63abNKclottQApOBP4HP9g8dDgQchVaxHiL+tL6If+TI6KcigYdXpV3vTs8o
	g8MHJxJlmSyqdjWxL7cwYVz8mdVSpwLuJ7DskYdTxcoYciNMeMJut9XGEsw0ZGWw3dsedTjzHQlBw
	bRZl7RjA9nSBY+ubo/ST+QTPgHHKkqC0duUfqtXDxoQ+ihw5DbVADuA7j8305yRR7UUU5feJCf0Ww
	Otod4MvLsb2kVoynaHLsjrHYAVPBrHCas+Cg+MseZaqbOTi23b7Y6Zx8SDraCVjzPHgxEWkWbMt4D
	niYmYYwfBqpvNcHuszaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCeva-0000000BsGJ-36ns;
	Fri, 02 Oct 2026 15:12:02 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCevX-0000000BsFF-2oOP
	for linux-phy@lists.infradead.org;
	Fri, 02 Oct 2026 15:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790953918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LWmLd+rLGF8wp2MGoAWUFRqguzK3p2qoTL1+rkmSfkI=;
	b=VIj4M1lGrl4ak7hE9jiGTMhpPJ4vVUHRdhpZmjXhdiTFOlA8h5lnB+R3KR5oAwB4xX9WmD
	mxha+TYV40mHn2e+qqtSv6HToRZkLlIisSiwM8itJ8C3it+ZQjYu6THWcbsz05Bsmla+AQ
	41POWjiBgqZqXNhx4FDa5blWM2HDGM8=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-613-YC_-o93gMfGzqSYPpDfK1w-1; Fri, 02 Oct 2026 11:11:56 -0400
X-MC-Unique: YC_-o93gMfGzqSYPpDfK1w-1
X-Mimecast-MFC-AGG-ID: YC_-o93gMfGzqSYPpDfK1w_1790953916
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93bfb2da664so2040621185a.1
        for <linux-phy@lists.infradead.org>; Fri, 02 Oct 2026 08:11:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790953916; x=1791558716;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LWmLd+rLGF8wp2MGoAWUFRqguzK3p2qoTL1+rkmSfkI=;
        b=pMkw0vEyq4PyEugnqjCy4TAhOUzUaA9WiaCMn/1W8AJV2yAOVaa5oe7MPTxwphbQ9Z
         RU4skD9flhin9jehtGM4anrnqNtnTklyX3NidenHNk0+a6F5raMNolmUoGn55ctvtEjU
         sR3vMf+YktS+pZhWOGuSA9NDaGdo3sAal0FLQ4zeMsqD/IOfVQhIWjQf3mAhTRMv79BI
         Hu/jGd42sE+cBX3Unc/AnNbAW2mHAsHoPNUi/MyQ5hsYm13hozOYAvAOHor85PWxXhyv
         iMMM8znREK3u/AW1vTG1a+hKB7h9PuPqL0ThNyBLnBYvvnp8jQo9HSwosTcpZMAjCsmz
         2TdQ==
X-Forwarded-Encrypted: i=1; AKwUvBwbRfa+8duQ5OBXX3VuVd7xVkqdbvTYSSHImtNvdwT2V9NwVg3gwgQghrbjfGyY7982lINg8ncFbeQ=@lists.infradead.org
X-Gm-Message-State: AFuF++m1alitbQ3Y6mGr0lUU4fqbrd7FmcVCIelX2ErMO5/aH5Iuq+Fi
	oV4wy7+E55MtkH/D1PYcuQ3RVGxPG+XHG4252to80BMIlv7us5dvhcIwI3Mo0IUMqjEpZ63bIuz
	2AT+P++WTcZ9iRL0QOa5VdUqljFOBCdTfD3Vbwk9L3VcwQKT7HsGWSLBpGWWQdUIztZs=
X-Gm-Gg: AYBFou15VXSFm006JAPtSFgP51djZ63Ffi421tVdhUNIZD+brhO1nFhpWCgR6uL7gqe
	Ez5qhpLf2l8oRVFHio7HAJ9S7pEkR/MOtORze90dE4U+Qoc4DfcWDPmigehcxLWSuJuW/xKLR2N
	No7qf/geOxKQd6VRlIPH4AVPZiqCLnFFAuFbyjS9rFZ9yuGKWwli35YY1PoxJTcNhLx47LdspJf
	BzsC06XjRQqPt/L7Eaoj/wYxbQwEo3TAbQM4hXIy7eqBi6zT64DNeTJGj7BNxOcn5C6XB7T5mcS
	AjDVPzagqdfq5HEy+wvS9EguBj9RyKv0/y7JujsGX5T73tneFkKdrkoM0aPT9EZunViaWEKgsSs
	nfxcqd/j2Q0cJ0KWTIouNFzeiw2vJc15ctbg=
X-Received: by 2002:a05:620a:26a6:b0:93c:5efa:39ae with SMTP id af79cd13be357-93ce7c1228emr548898285a.12.1790953915761;
        Fri, 02 Oct 2026 08:11:55 -0700 (PDT)
X-Received: by 2002:a05:620a:26a6:b0:93c:5efa:39ae with SMTP id af79cd13be357-93ce7c1228emr548889585a.12.1790953914967;
        Fri, 02 Oct 2026 08:11:54 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-93cca1a433dsm240505285a.13.2026.10.02.08.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 08:11:53 -0700 (PDT)
Date: Fri, 2 Oct 2026 11:11:51 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, Brian Masney <bmasney+clk@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, mturquette@baylibre.com
Subject: Re: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver (v2)
Message-ID: <ar_Jt4eIPy1-uq1-@redhat.com>
References: <hUBEMGo3TGyVsIj5LaphmQ@gmail.com>
MIME-Version: 1.0
In-Reply-To: <hUBEMGo3TGyVsIj5LaphmQ@gmail.com>
User-Agent: Mutt/2.4.2 (2026-08-30)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jZuDEYFTml1dAcavZW3z-TK8T6fjoRziunSbzgJGolk_1790953916
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_081200_262549_D2DF3866 
X-CRM114-Status: GOOD (  18.29  )
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

Hi Stefan,

On Thu, Oct 01, 2026 at 08:39:27PM +0300, Stefan D=F6singer wrote:
> Hi,
> =

> This pull request contains the device tree bindings and clock driver for
> ZTE zx297520v3 boards. It contains the next step in adding support for
> zx297520v3 boards: Documenting clock and reset manager hardware and
> adding drivers for its PLLs and clock tree. This is v2 of the pull
> request, based on v7.3-rc1 rather than clk-next.
> =

> The patches have been reviewed and carry appropriate R-B tags by
> Krzysztof Kozlowski (bindings) and Brian Masney (clk driver).
> =

> The PR does not contain the MFD, reset and device tree patches. They
> will be submitted to the MFD, reset and soc trees respectively. The
> clock driver compiles without them, but won't be instantiated without
> the MFD parent.
> =

> The following changes since commit cee9395acd8043be0644b25c34bfa86623f2b9=
35:
> =

>   Linux 7.3-rc1 (2026-08-30 13:34:40 -0700)
> =

> are available in the Git repository at:
> =

>   https://gitlab.com/stefandoesinger/zx297520-kernel.git tags/v2-zx29-clk=
-for-7.4
> =

> for you to fetch changes up to 75e4151c9e157d84c8c6c365893ecf33d221bca5:
> =

>   clk: zte: Introduce a driver for zx297520v3 LSP clocks (2026-10-01 20:2=
0:43 +0300)
> =

> ----------------------------------------------------------------
> clk: zte: Add clock drivers for zx297520v3 SoC
> =

> This tag contains the device tree bindings and clock driver for ZTE
> zx297520v3 boards. It contains the next step in adding support for
> zx297520v3 boards: Documenting clock and reset manager hardware and
> adding drivers for its PLLs and clock tree.
> =

> The PR does not contain the MFD, reset and device tree patches. They
> will be submitted to the MFD, reset and soc trees respectively. The
> clock driver compiles without them, but won't be instantiated without
> the MFD parent.
> =

> ----------------------------------------------------------------
> Stefan D=F6singer (9):
>       dt-bindings: clk: zte: Add zx297520v3 top clock and reset controller
>       dt-bindings: clk: zte: Add zx297520v3 matrix clock and reset contro=
ller
>       dt-bindings: clk: zte: Add zx297520v3 LSP clock and reset controller
>       clk: zte: Add Clock registration infrastructure
>       clk: zte: Add regmap-based clocks
>       clk: zte: Add zx PLL support infrastructure
>       clk: zte: Introduce a driver for zx297520v3 top clocks
>       clk: zte: Introduce a driver for zx297520v3 matrix clocks
>       clk: zte: Introduce a driver for zx297520v3 LSP clocks

The commits in the pull have the changelog in the commit message. For
example:

https://gitlab.com/stefandoesinger/zx297520-kernel/-/commit/75e4151c9e157d8=
4c8c6c365893ecf33d221bca5

I went to the last series and cherry picked the relevant commits.

Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

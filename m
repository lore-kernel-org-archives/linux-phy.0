Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA4AC5B567
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 18:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ms0DAh2MLMBhvq8MNWmQucf8d4cDfrtbTctg0s8GdhY=; b=IfHvH/GVBmxZNIkGt3QLj9n0t+
	konCrWoxK7CDom5S46pb50N5xcjtL0OUJCrVFxHoU/5pnIFPFuD9pGrR914aNhcMnMiiRmK+COJDe
	LgEZOQnrdOr6EbpgeasZwTgByFW9AV5ZIuYZbiRkA4cjq3x/RPW0rb3Un9+HNsW1sETXstJs/KXxs
	PB95vaKolJxjNthx76w+ctbrLI2TWGCQjzlDvDLa9mhp7nzaITjHNheErfl23P2Zojthwe/kfP+Ay
	dazJRVfmVhOfYMGREDYnUweCFDrmRjGWQm+oszfHVDqj6wwpMnnw8kHRu7zvceIDvQzZvXVM9DftP
	R5BDSokg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtV4D-0000000Cfen-475a;
	Mon, 10 Aug 2026 18:49:45 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtV4B-0000000CfeB-2AQV
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 18:49:44 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47ddf7b09e5so2293048f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786387781; x=1786992581; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dcLbXw1HtxaVkLOq1A7ImeYJkGmUUOjnz1hGZ+5xdjY=;
        b=M7zJmuqfrOdnHSCZO/THxsBiNTlcAvXLVMaVOPYHG6vn4yQu8K0QBIaEb9lD3qRaDj
         4VrTm2PD3AoCm5l6Y7Ul2M9+jVZmra49lpFs5TPbSSWcdEGWF3ZNKvER73lduHlWygyS
         Z52oZlTo9A+Y/g1YDhfH/U4R6Gi5xMW9TurSMk/MgKogGgz2y0QCX4UyynZIOfgTqyvQ
         cl0iLslTvcW+UppZ7PEdV86SLnU5c/YkaTPaWhOSEbsEeqqCbkn1Vpn11r9KRPSvbALo
         UHDzHkINbkBMl7mrKpSXiFZpuLWTm6hD/QIrEueGv6mh94d11autWG/c08PS5q+bVFtc
         0QQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786387781; x=1786992581;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=dcLbXw1HtxaVkLOq1A7ImeYJkGmUUOjnz1hGZ+5xdjY=;
        b=h07Ta2ZxMO/wX4IJ3Sa4V0827F9V9FyCsvQnrDtFECy45xLA1vQC7WdbyFW71z1gQz
         l9vvFTy51YxH0qoQkT6zJAovs1e3/Yky9kgnDQpBG7ng8NZLpQscB/TtW5rwoCZ6h9a6
         JBMS5wXkhp21Q0hiGWLbrxERGjxRH5QH3R21e86n0x2MCjQPZje3xo9aH7iUPzkONSvt
         AqUvY1cYjYPLx8tKrfO7WfmJRNJ314TTLPpQ//MnS75dasfK4blPgC1PgLSmql3/oo5P
         5cbfnVgEc+ZDfB6b2g4QNLTwveSWz+9jEeSnAAlNbFuX73v9lRdbyOlMa1eoXAZSP7mB
         E/ww==
X-Forwarded-Encrypted: i=1; AHgh+RoOhxHlNTx+S4ww2vaW1btdA/EvWFM1baEokxxt7H3BdtWByFQRSSFf/08zmoSLX9USzj8Nic9N2PU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvHadR0jzGgdN1LG354oPEh6kNf6JDIDR5caVS7IzpsuJL8Q5m
	9L8xO3P8jbor0Un9fdgPm4G0cdyD0tT9pULD3DiUfHutV1v4K0/uVvDBlPlecQ5G5J5hKA==
X-Gm-Gg: AR+sD12K5QMz21ZcAfjtF22/oA/AIDeOtXiajBErXWbDJhg5MqZZ4/rfxbmhjLu9hfr
	Q62xAojG5iT0rftsHqL5nCzTtdItrQWdLUUL4PrWAmiaXDl9+kpjZEMRvp6sY5LID5fyOEW1c/L
	7HKk86fL4dZEHiiwmbe2Tezuyn5WBIzMOs2K+sdb9VOM5Oc0htea0bEpFeWYexJtkLpXPm8YqR+
	CjrjFbvP6QfiYyuUDxwlgN+7BYRoKWA0A8Na5sadwAjSlJIEraUnuYNVVsqL2/Zvl0EP5QpDG00
	HgpPArL+cpF7mzuoh+hg+DY+mTWrZ9aF0dE1iEfbJE8Mcp3DdyEecyJMeQbV48F8BgkFRuFEZKY
	8lJlmRYHl8HF9A3+T+B3IwiH7vv9U6zSOhp7eIP4NJ7P/xsFXbVhxqFVdIZ0LJrVod/hKduxhgy
	YKrN7rMxBXkCgUzBb63y1586q2cU+eyk0wr+qyFLszM2Wjb/CoRi2K824/JThEegVHqWydyC/y
X-Received: by 2002:adf:f4c9:0:b0:47f:f3f9:ae37 with SMTP id ffacd0b85a97d-47ffd21da75mr38161242f8f.7.1786387781329;
        Mon, 10 Aug 2026 11:49:41 -0700 (PDT)
Received: from strix.localnet ([197.250.226.68])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48002206effsm33568215f8f.32.2026.08.10.11.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 11:49:40 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev, Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, lee@kernel.org,
 neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com,
 conor+dt@kernel.org, mfd@lists.linux.dev
Subject: Re: [PATCH v10 01/12] dt-bindings: clk: zte: Add zx297520v3 top clock and
 reset controller
Date: Mon, 10 Aug 2026 21:49:27 +0300
Message-ID: <gypuIvsORyye1Tbviu_vVQ@gmail.com>
In-Reply-To: <20260810153805.GA1793660-robh@kernel.org>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810071224.5AA301F00A3A@smtp.kernel.org>
 <20260810153805.GA1793660-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_114943_759348_02B78FE6 
X-CRM114-Status: GOOD (  12.83  )
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
Content-Type: multipart/mixed; boundary="===============5669230395915273293=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============5669230395915273293==
Content-Type: multipart/signed; boundary="nextPartnjexxywtRIihZLyUay2Kiw";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartnjexxywtRIihZLyUay2Kiw
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev, Rob Herring <robh@kernel.org>
Date: Mon, 10 Aug 2026 21:49:27 +0300
Message-ID: <gypuIvsORyye1Tbviu_vVQ@gmail.com>
In-Reply-To: <20260810153805.GA1793660-robh@kernel.org>
MIME-Version: 1.0

Am Montag, 10. August 2026, 18:38:05 Ostafrikanische Zeit schrieb Rob Herring:
> On Mon, Aug 10, 2026 at 07:12:23AM +0000, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 2 potential
> > issue(s) to consider: - [Medium] Missing `resets` property definition in
> > the YAML schema. - [Medium] Missing `simple-mfd` in compatible string
> > list for syscon with children.
> Neither of these look valid to me.

Yeah, I removed the resets property in response to Krzysztof's feedback [0]. 
And the syscon-reboot is registered by the MFD driver, which in turn goes back 
to Conor's suggestion at [1].

Should I reply to the list when I think Sashiko produced a false warning? In a 
way it feels like fighting windmills, as it will likely bring up the same 
warning for further patch revisions.

It does find a lot of real problems though and as a newbie contributor I feel 
like it is a valuable tool.

Cheers,
Stefan

0: https://lore.kernel.org/linux-arm-kernel/20260717-uncovered-feathered-groundhog-eab16e@quoll/
1: https://lore.kernel.org/linux-arm-kernel/20260617-deed-snap-4649ffae0e27@spud/

--nextPartnjexxywtRIihZLyUay2Kiw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmp6HTcbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoi6FgQAKm9IYOLqegfSaVNChHC
dp6j7VY8B5nPtUGsRfYZo5T7Vf3pKufABFbR1iabCxwC2IB3jXx1qz+24mCXVDHo
XuRq29BeEeDNBoHh7GNUkTagt+HRHV79yD4tiBNvfH6Mly2NHUeIOOoZ8ZRi8TmH
I25u5EuZmqCO10wGs7DDbq5ak8DeNsQvk+MQFLxzi7DOdW6UzDv5enNFEoSPj5JW
tMuj2EoKw+LIT12rkhXAPpUroKtHknKtl+SKolXU1ZjNOgxMdIgRKd5EsTMCWqWe
Xyi47x2kKDp0a/wSX2kBMUOQZn645dEQPKyAiB7uwEBQIA8PQoxuB2+wBZqXpQ1z
PE4JW1aAPI5uo+ru6LAMss467ZiK4eejRNWoLsnyVaaO49VwtCjdQftqPI2xC/Dv
+4aDMhJWJ6+VXFLC9HMC4lz5hggYHrsLfeMARDvyt8YSRrW6+Joh6bjGx5vxt011
h/FLE4TsK++xPYar9OjtpXLNN2HPi2EBibVVWP4pXWCcm0mIuKXa3jNANUObUBAe
0z54JE4GKVlIvZTRsqUUlzk/pnQLE1KwLZ5oX4O79537YTkQzjBNmGRZh0NM1SmP
quoWwa8alZw0Eb9GRPZOFstwiFhvB9mzis3/j6KSeHekWUIyhHfrKhl9wFbezAA4
wZpFmf+iiVSkrDq/xp/ft93Y
=7cJL
-----END PGP SIGNATURE-----

--nextPartnjexxywtRIihZLyUay2Kiw--





--===============5669230395915273293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5669230395915273293==--





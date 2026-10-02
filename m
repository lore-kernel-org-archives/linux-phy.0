Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E1A9CA5FD4
	for <linux-phy@archiver.kernel.org>; Fri,  2 Oct 2026 18:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lY/XPxrmpaWc8Gj1wvj8YPQVI4C248yMNGLPQe8L1FE=; b=xj+olXtDTRC19Aq3L8znJdA05y
	1+cp6h+Y8XjIM2GjF7ASymXGFJSctLHFS8djR5cZdu/Zd3/5SDJlx99AtdGlnLj8d1AyE664uppHC
	eCRdWIJRVINEFhzqWjojkl7+TI8ds8YjkN0nWXuAeKShHFkm+oJuWRkeCluwe4BD5YDWVEQyQXNq9
	gfC7fp4nPO4PVvegyhRvHr6yvNkzAn9nbZZ2OY36J987djiY4iMZD6Nho2ipKpwAjg8h/wMk+Vbpq
	iWOu1Cxk5z42raWvZA+2+R/jePLywRm7i5yPMK3YEttsnhVi91HFi0ipTj042siXLljv+0FyAXUx4
	Yug7PhYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xChsl-0000000CGJu-3A9k;
	Fri, 02 Oct 2026 18:21:19 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xChsf-0000000CGJ4-48B1
	for linux-phy@lists.infradead.org;
	Fri, 02 Oct 2026 18:21:18 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a006d3fe83so833105e9.0
        for <linux-phy@lists.infradead.org>; Fri, 02 Oct 2026 11:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790965271; x=1791570071; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ujd5qi4nwlP9wXVvUg5o3lKTuuQK4FVXJHYGoARDBmU=;
        b=FjZetEb1zBIg7W+UBxZICLRMOJY1a4yrq5VokAYNRKNjA/qpVDCgJuITNAy/EbT9T0
         VVbEXuUaYfZaMfyWzsc9L6owfsJEGaOTkHkgZiUe8T0giiHRkP8Pkbs6FsJItInA9XF7
         yLwtKx5LRLTDRv4SXcCrTPn2SBJK1yEA+QBDzjb/TO4EP6L+NOJ32Jp/CbyXSBExkLkr
         TYvqxhrygK5GwcVxmtr5L8NSKzNnBTeyLWZZiTdX+tn61ftr0aDAM93yrwWV6pgHrWh+
         Dpq586lD2iBWnEVlDEzODXOI9IE/2SwivARYTwy4sNW7EXV0GBZLnDlF5vX+CELHBNSf
         uzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790965271; x=1791570071;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ujd5qi4nwlP9wXVvUg5o3lKTuuQK4FVXJHYGoARDBmU=;
        b=E6cJQy6cW3H+/JT2TSXO0Hq/npPq24K6kcV9qwLeqaSVfyuaKgrZ1TiKVKtJt036nX
         wzjmGbaj86h5JdYd8bbqsq3xY7uiK1xt4pLbS7TL41fg4+TcaqI8khow6FfMU+AAZ5vN
         PyW3p+1BMGh2t2En1zaQplXEC1rjz/vdZ7XtsG2RzlaJcYZUz9f7i+TpmdRKMj1vzsnI
         CBO0o+V6BpaaMsT2x6nHyS0R5eHj3PBIdeCY6ByCrAiSJ62xZ5EwPhLGyFvBKYek/edi
         K9z8cYXZ9kjyECMRhTWUuryvecYJWK/XA76Yo/5d2wJtaz13femDjwVfiaJF5l0xbkoh
         eTHw==
X-Forwarded-Encrypted: i=1; AKwUvByQHVmY+ILQTYpN1qTITzHC9KR9H148gUVH0/CyJMZBBwSQyaNCfBqDlc3HMD2XkjYhz9RFpjp89fU=@lists.infradead.org
X-Gm-Message-State: AFuF++nwxm+rLO0nZzfNxkiFCwA6gxh2ffPEAtLSybz9HH9NZ+QFom0J
	oZ909JGstXfXy7fjlgof+Hjjtrk2O2KBZ9o1+lj54U12/2e2JgViEkoK
X-Gm-Gg: AYBFou18YEmbWo3P6SbVczRoF6Eh2c37KPmrVSz8v5tPO3jYl03qhGCWHWhknJsye+z
	QvEjYdNvW6A8Z/blIm/NMghZKdX8puB49czYvWlqPex3HXD4ph82LoVxKRFLKOMR8L0cz0VmPIp
	kY3QZUx8aJ+TeJz3Uqt6EG4Ga1JeDt8st2hHrUzLJK2OP6T1cSXv8evt3eqhgcvhUiYR5aof13I
	bpD0xqThDHJhsTfhFEwNkqMx2ZdkrZQTf8osE1uJlX2hF3yyFnmZYTx+2K63jhJwSs4TEBdPD/V
	BtingxIASk2EBXLijmMLXVnn3zqJpRwP339NpBeQZlauOW4WoeaGYxeJMk27FWuAGkP4lN69tNH
	MEYpUMBLizhLhTl6Uzj2/+tzkvOAMtwimNKEzGnHDQVEZ4fPQ39i5874BxsLPx95zEclicvjGkX
	u/3K701zvvK6bsa3dYPP6/QMWUhxrcq9NsVDHmOYqrGsp6qpbDnAZN5v16on9WXxIbx2J/AyVQZ
	+EWnDc6HdM=
X-Received: by 2002:a05:600c:4ca6:b0:49c:ff66:7d88 with SMTP id 5b1f17b1804b1-4a01eb24989mr74619405e9.7.1790965271047;
        Fri, 02 Oct 2026 11:21:11 -0700 (PDT)
Received: from strix.localnet ([197.250.100.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48b38104602sm7546193f8f.26.2026.10.02.11.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 11:21:10 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, Brian Masney <bmasney+clk@redhat.com>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Manivannan Sadhasivam <mani@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 mturquette@baylibre.com
Subject: Re: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver (v2)
Date: Fri, 02 Oct 2026 21:20:59 +0300
Message-ID: <ZjjQUfHaR8iccs1M_cLsRA@gmail.com>
In-Reply-To: <ar_Jt4eIPy1-uq1-@redhat.com>
References: <hUBEMGo3TGyVsIj5LaphmQ@gmail.com> <ar_Jt4eIPy1-uq1-@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_112114_643102_5B54F720 
X-CRM114-Status: GOOD (  10.07  )
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
Content-Type: multipart/mixed; boundary="===============7160086976805420181=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============7160086976805420181==
Content-Type: multipart/signed; boundary="nextPartH9UaHpHZRbKrBREmICrngA";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartH9UaHpHZRbKrBREmICrngA
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Brian Masney <bmasney@redhat.com>
Subject: Re: [GIT PULL] clk: zte: zx297520v3 clock bindings and driver (v2)
Date: Fri, 02 Oct 2026 21:20:59 +0300
Message-ID: <ZjjQUfHaR8iccs1M_cLsRA@gmail.com>
In-Reply-To: <ar_Jt4eIPy1-uq1-@redhat.com>
References: <hUBEMGo3TGyVsIj5LaphmQ@gmail.com> <ar_Jt4eIPy1-uq1-@redhat.com>
MIME-Version: 1.0

Hi Brian,

Am Freitag, 2. Oktober 2026, 18:11:51 Ostafrikanische Zeit schrieb Brian 
Masney:

> The commits in the pull have the changelog in the commit message. For
> example:
> 
> https://gitlab.com/stefandoesinger/zx297520-kernel/-/commit/75e4151c9e157d84
> c8c6c365893ecf33d221bca5

Doh, right, a merge doesn't strip them like a git-am does. I'll keep that in 
mind for the next pull request.

> I went to the last series and cherry picked the relevant commits.

Thanks, that works for me. And yes, they were identical.

Cheers,
Stefan

--nextPartH9UaHpHZRbKrBREmICrngA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmq/9gsbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoiISQQAJDoXziAeaDE07B/kRlD
TMRWOtATrwrG5lKmW7BtzBnVA5nz2up4jWpVJvyqkT07v38KHnFde0WG8OQDH1sV
/SilvR3Qd/kMoUUB9Ah1H70ka9PvTfewBn3GpOn7jOo4QPOaGgM1NI5QUuha8jpU
fzEtqAk97Doyl2ZEoGMkiMKygEnUu6IC/wUFjSf6n+apZbf+M3YA0zhvpVXRqsat
B2i+mBafNrqQNQBKzui5FZovbxChN86hnb23j8shDGTV3QGusiNB7F60Pz7rRXcY
1K7MMEjVdJj3pMyLgsmyOubtl3pFP3Gii1EioKU2FKSRTE311xXXBX2GHOEj4zUn
ja5Xb4TVYIJoolB7kEpU0B/k6KllVo5QS+3LAeV8oPZoVzzND9qZoANuS5vv+4Y9
FJ7OGYUDAN+fCxPma50hscRsAyxAmvMjjykL3pZu8aL7jhKjpzZKsBs/KBxZOCqg
lNjrVcwhq9NGMyxnxPXCsiNEbcrhZo9IjVwADpTpLmdUczHYNhp7wLkyg94HFbaY
3ertTJlEYbbYADBf9UnwvY0TBdH2H9kX/kBfu9Ko6CRngMt8jBSL0XIwMf3XHKiO
znmTjBITCE5XsqHPu0XIXey3hHQGIyC33egqIdv7yXjTZy70XHEp95xiLbE3dJ4H
4W2k/yhZQCNjiKxeiIWywcJH
=0hJV
-----END PGP SIGNATURE-----

--nextPartH9UaHpHZRbKrBREmICrngA--





--===============7160086976805420181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7160086976805420181==--





Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7092CA5FFC
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 15:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPBeFr0o3XtFJXnkz9V593SCPkkvJws2JjjkKBvoiFY=; b=AsdAiwo3eKkB/L
	F58u/61MlOn1PAgRjrBsiTXZ1Fv8GzfXY/JPSeBTfu7Req24dKLLR9eQ9j6jwviUYYl0V53h4s9Xg
	F+IT1p87ESFM0xSdkkhL8dbG4XS1F/Ik7v3Sj18C3cnJKWeQbNulD6D7PrD3J0I8E3flMQz7QMP+5
	z7kVQXf4cPJubpyfLZsSoPviVTD8ITFyBKygvKviuB99fRtCLfvsPlkPLfUd8M/OG8JCR4CM143J0
	UjGyLQESO535QZXrRhpeITllUtrQ8Q5mLQ488YGEBRkIRCBFBL9XYaxNOW4XupZjaa+GYCFp612Wt
	BaotQxXDPxFtLauvVjXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDkfq-0000000GlLR-1bFE;
	Mon, 05 Oct 2026 15:32:18 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDkfn-0000000GlK7-43IC
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 15:32:17 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-917a2800e83so25428896d6.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 08:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791214335; cv=none;
        d=google.com; s=arc-20260327;
        b=qV2dew88E3VXh6osdYX9Dp2CIX889xDXamCA50sCW3XLGqBAHlzOZ+rONfEDzi2bym
         EzLPYf6Vjb3Yp8pEtqHKqRT50jdLFKyqkrOpHI9YCRnNVhGioinmSbuGY0ymp9RKtrG/
         1h0NC4JGxOUvehZVRMXz3PGfOhz829Nl9LKi+IaRTGxxNvcRdBZkT6idKXXTygnxxbli
         QOcr90CcB31sHpB0TDuGGQ+a6pChwZE0ASQ/uWJowMGzr1wxsLXUioqBPBEEnN1ATfYn
         ZFCAvq45J9etV5vT0oEDcKKgp7VKE0YfwBSUZDp7lsV1rXMToKhUvfdjc/KeZef/DZ2X
         v3fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DHbE/ZQrnN4lIbhz9d2lRY1XaGiqJgT56yvkXrJ87/I=;
        fh=4as2E0YLTkW+KrsOQxwkjRHsmM3g/hXC4Y3esKFlmS8=;
        b=Ix6a+Y5DXjV8dMRqfWApKjcYAN930mYQYStxP4eUVooNwlxxD9YnI1gkiyrKcvA+WU
         mJquXy9uP436ZHU95pBDkjn3kbWuHPRgJUpHFEm3uHQJQx1jFKov3WfhH5dJ/gE8GCh0
         7/8man3VxECYXRWTUHs7FkbbhzKl7dxnEipEzFYZGoHBWC+KYIqoo1nZhMSC6D6jmFpo
         ywNQzTdFYtw8EZ0iLRNFh8Z6NapnR1nDdfkTLnWUXfLTCQHvqwb9NkLX0HvfkrAgaP5c
         3ly8wkovzGhSU26DjM+Ya6M2aQq7NMahSxo1gSjmsAJdVOu9l5QGtS6RwsDmkh+Jz5++
         4eqA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791214335; x=1791819135; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DHbE/ZQrnN4lIbhz9d2lRY1XaGiqJgT56yvkXrJ87/I=;
        b=ewktG0izUUkKqGfBmeqVNE3QirViIS3PkFLNCA2pVuZawu1f87/8ghSiQz3bTfHu96
         pRbl87NONM9ROaJlpGSuNk2yoOp/BCXkfv9qpcpX4K173cDufcqX60l241cRk9dlzbGb
         OS5YtipwIPGtW/0LP5fF4TFuRz2AQ4TzDx3zn/Zl5iHqpaEPisD9ci6DkRrL6dg1b9Vg
         HbMrNfZf/d6Pi+82bLts70zsEeINMp8YkolljrHMluPoQVlM9F/0Z0+qhOFkvE2Ysvtg
         9y+HCxdUjqf4f+ebI/Xf8g/sp854MPaq+okbDp72Z/UnYg38NdyU3EYNd6vJ05Fv5PBx
         WfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791214335; x=1791819135;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=DHbE/ZQrnN4lIbhz9d2lRY1XaGiqJgT56yvkXrJ87/I=;
        b=ICrgR3zvdEWvSwbuKAz6Lej6EgPOBWxqv9/XyxqvHoqLJq8wmgDkTlws3qOPE0Eo7I
         s550qzqC/ze3cFSiId62eOGEMBuRv61NG9Mo4sN2nu4tFiRfXeo0fHPb7E75jxFZPikW
         qEcHYZiHEvHL+x8G0q3G2B7Cz2OclGleTBZE3WRsWTtcJk1W08u7YBf/Mpaz+AtH/9t5
         izCjAYHkw9gUxO/Yj5vwYHv7zmIVX9Z1I3uFQpLX1JkSWNJzaLbUQ/CaEGvukffmYI6D
         9GXN2V/4i1jy7+UNnFZRiQAyYNq4wGvqpFbK9NbgUYPf+C21jXdl+sgjQ6bMykKH/DkU
         b2jw==
X-Forwarded-Encrypted: i=1; AKwUvBwUv1Kk3HQ6j+fA1cNcpktHSO4eI+TlwJd7LlNe450bmaYFA6xBxFJm1LBmhFEaylfnAhUo9QDesJE=@lists.infradead.org
X-Gm-Message-State: AFuF++kmHh7Yr0eMuy5kIf52PJ5scOmDOiUBCWscdW98CYfJOBN2GHKn
	3XHuocoTBbjOHRMM1QzbJWUPKbj0O2aCfTywSZ4dKVTFy79kl3d3luxAhlJd50bKPCRHE+7hznw
	YDeqWqROcQMueCNfRV0OQYtFFTDvHixU=
X-Gm-Gg: AYBFou2rwmlJdomsKOR8RjEqhq13M3VQacUv17/0nru+80TbPK9zOFdWKUyzperU1Jq
	Do/ux1HwRdFPtph3JfAyhhjbDmRd+X5EYuw6L42pmhAjZSMPaoatT8eFWh1oY96ttdq6O5NfU0q
	9N1fpi7wuF+9M2M3OWydXSwIx6TCKmL9MlB+384XLr7NkrE8xaflKFs+3qwYHaVLsXa3moo418S
	qbWiefTT8++zFjQuy5gXfmivTdBfNXhmxr/1b1nwioaDvwf6v+AyPzIaV3PaxHmchGgDqFqjHqC
	thoqz3eBPVHRCuixiguAFV3cQ4yF/rQnUwkSjVEvvos0Tus5pQ18MIM=
X-Received: by 2002:a05:6214:4906:b0:915:e9af:3145 with SMTP id
 6a1803df08f44-9195d07bd1amr138006566d6.12.1791214333390; Mon, 05 Oct 2026
 08:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <20261005105535.2472-1-ansuelsmth@gmail.com> <asPCFDMXyntAV6lx@parshuram>
In-Reply-To: <asPCFDMXyntAV6lx@parshuram>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Mon, 5 Oct 2026 17:31:59 +0200
X-Gm-Features: AclHuK9sfRTTob9cejo5rJV-vGSG3XFEFgdIAL7ikLesT7uwwOKne_JE24bBBNs
Message-ID: <CA+_ehUx_B2K3WgLYkt2fz5jzDRB24LQRB3uX_VScZ2QSxCojPg@mail.gmail.com>
Subject: Re: [PATCH v13 0/3] airoha: an7581: USB support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_083216_004820_F5D0487D 
X-CRM114-Status: GOOD (  23.60  )
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

Il giorno lun 5 ott 2026 alle ore 17:28 Vinod Koul <vkoul@kernel.org>
ha scritto:
>
> On 05-10-26, 12:55, Christian Marangi wrote:
> > This is a major rework of the old v2 series.
> >
> > The SoC always support USB 2.0 but for USB 3.0 it needs additional
> > configuration for the Serdes port. Such port can be either configured
> > for USB usage or for PCIe lines or HSGMII and these are configured
> > in the SCU space.
> >
> > The previous implementation of a dedicated SSR driver was too
> > complex and fragile for the simple task of configuring a register
> > hence it was dropped and the handling is entirely in the PHY driver.
> >
> > Everything was reducted to the dt-bindings to describe the Serdes line.
> >
> > Also the property for the PHY are renamed to a more suitable name and
> > everything is now mandatory to simplify the implementation.
> > (the PHY are always present and active on the SoC)
> >
> > Also other unrelated patch are dropped from this series.
> >
> > Changes v13:
> > - Rebase on top of phy next
>
> Pls fix the chechpatch issues. There is new blank line at EOF, SPDX
> format mismatches and many more. Make sure you pass --strict flag to it
>

My checkpatch doesn't report the blank line. Am I missing something?
For SPDX, is it ok to change it? The commit just move file. I would
like to fix that in a separate commit after. (I can include in this
series if you
want)

The other warning are about Kconfig description where I can
artificially make the help text longer (no idea if it's OK...)

And the line too long for the define but making the line shorter
would result in a disaster for the register.

Up to you what I should fix but I guess the real important one
is the blank line but my checkpatch script is not detecting that...

Can you help?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

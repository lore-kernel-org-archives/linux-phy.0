Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5558C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 10:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaNyZKQSlGpBmOAtc193hXpBfjNQ+QVJVgEYM397awE=; b=y2CkNYqUvdOyos
	vYZW2//tnXv411r9PAddq6mP8+dQ/QWbon2koB39qfR//sNnGmwMiXSqFX71opa+kFVaMV/To1tOo
	jAQo+4xWGMg86AgupL9fNxagYcfkQgSFGukDWw09qfEnb/xe/j0gi+IwLFASUm29c3IywQyH8TQfh
	cwoGtzu1W+AQXeoYSSSLjdXsemhCHnZdOjiEoZnjL3orqiU3qbDpp0h7t0RB1JGk9EvaFSrc5zhv6
	byUpMRHFobbTv5VnpV0POpRxRz3RX9U16P01mI8uBzqCBjOoFkF72GcOvhELIVL3ys9T/UdCjmL8V
	Gh/7314fEG2L4LgjVv6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzwNp-00000007qMw-1hQO;
	Thu, 25 Apr 2024 10:31:17 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzwNl-00000007qLn-27wv
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 10:31:15 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5aa1b7a37b5so450074eaf.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 03:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714041072; x=1714645872; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xN9PtKBvyMktmSfmEeNUmxWtUYxk59jPOkkFgsg7R2o=;
        b=XfOm0p7SXF+83kxor4M5q2d+z3O3BFyr1JmvXCbr27rbJ5wNSsq7PeihvNSQWIZa/X
         HL8VPaFueC7idZ5bAIV21tkS1s3FnGu0Pi8Rv48KarAGHrHr7YJpZzEScSblXfBoLdZr
         sEN30Ex5l02LHUerJDX9CPyf/VOI2n8NPDQv6ZEZl+ME/gRAd9P9FtBn150glvVZFD6A
         V3gtwJ1NPtrPfjKKGzaYIaOmmdFnoBj7kFhRtngS5z/yBuLt0BFZmg8kqY/SNdsyoS8K
         3yDcuqkK22ScAJJls0S5nTBAf6ybYRqCPpCkMmV1HtAfuivuUBg+OgS0Yes4o+Hiypgq
         IUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714041072; x=1714645872;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xN9PtKBvyMktmSfmEeNUmxWtUYxk59jPOkkFgsg7R2o=;
        b=qBrDm/PAZdEWsDhcn06j2XHjURKWt2EWg+bsTvCcC51WAbEgBtR6Yc5TJZ6gpdD4zI
         1h/85BEIhEDN0q+l/w7eNlFYn+tsxRGACY054jkMnOyx2CNHYIhKhHXovvXNhM8XHWfp
         qzgSJ7nSOXJaNZm7EIVJaELqwdVuPEsd8676sw3vmbDDddlNiujJEKDUrXTk65XRJd3o
         TK21BUiQy45HXBAsr1PWBE60S4fBC0EwFQrZvPCTiOZSIBxvUx7xKOc2er5HhU4KPBn1
         HgskOc9CTmn4ABrr2itpoWioy2fopnDNpx9fCNE6MOf5kuvw99mwSJVjvG9iIkncxMTj
         6PmA==
X-Forwarded-Encrypted: i=1; AJvYcCU39jXL3Xn7zrjtY98q6Etv49fIPbGqo/F/rJ5ZPS8LIy7dOpNwZRomGLOvZFEswqojbLmw3QKeUGvKJKBNRih2AACw6DLtp4yA95OCOw==
X-Gm-Message-State: AOJu0Ywvac37S6sd82+9mtMOAXxgjm3aZl4NB6OL14dwwYZimET11vk3
	Yg9SSjuY3ouqPTuXiqIRjj0s7IszRRIzH69IubOL6IyFHeDj53hBNttmuitkbmmebgY3zoOJWCt
	LBjSDSlA8444yaVcwkasX66TFqfd1jlc0U+k7rIMMGUryNE/4GGo=
X-Google-Smtp-Source: AGHT+IGO/471Mzvi/y2z1aDjn5L+UJBxWcuj8IJK6cDIoDb05k6uE4IKvnf9QACW7GCx8TFESueCWiwBoN73OQOn6LA=
X-Received: by 2002:a4a:ab82:0:b0:5ac:bdbf:8a31 with SMTP id
 m2-20020a4aab82000000b005acbdbf8a31mr5448764oon.8.1714041071820; Thu, 25 Apr
 2024 03:31:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240423205006.1785138-1-peter.griffin@linaro.org> <1c6f5984-7f9f-47e3-98c3-3c3671512675@kernel.org>
In-Reply-To: <1c6f5984-7f9f-47e3-98c3-3c3671512675@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 11:31:00 +0100
Message-ID: <CADrjBPq_0nUYRABKpskRF_dhHu+4K=duPVZX==0pr+cjSL_caQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] HSI2, UFS & UFS phy support for Tensor GS101
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com, 
	ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_033113_595440_2F945BA9 
X-CRM114-Status: GOOD (  18.90  )
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

Hi Krzysztof,

On Thu, 25 Apr 2024 at 08:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 23/04/2024 22:49, Peter Griffin wrote:
> > Hi James, Martin, Alim, Bart, Krzysztof, Vinod, all
> >
> > Firstly, many thanks to everyone who reviewed and tested v1.
> >
> > This series adds support for the High Speed Interface (HSI) 2 clock
> > management unit, UFS controller and UFS phy calibration/tuning for GS101
> > found in Pixel 6.
> >
> > With this series applied, UFS is now functional on gs101. The SKhynix
> > HN8T05BZGKX015 can be enumerated, partitions mounted etc. This allows us to
> > move away from the initramfs rootfs we have been using for development so far.
> >
> > Merge Strategy
> > 1) UFS driver/bindings via UFS/SCSI tree (James / Martin / Alim)
> > 2) GS101 DTS/DTSI should go via Krzysztofs Exynos SoC tree
> > 3) Clock driver/bindings via Clock tree (Krzysztof / Stephen)
> > 4) PHY driver/bindings via PHY tree (Vinod)
> >
> > The v2 series has been rebased on next-20240422, as such all the phy parts
> > which were already queued by Vinod have been dropped. Two new phy patches
> > are added to address review feedback received after the patches were queued.
> >
> > The series is broadly split into the following parts:
> > 1) dt-bindings documentation updates
> > 2) gs101/oriole dts & dtsi updates
> > 3) Prepatory patches for ufs-exynos driver
> > 4) GS101 ufs-exynos support
> > 5) gs101 phy fixes
> >
>
> I asked to split, otherwise please explain why PHY and UFS depends on
> DTS and clk.

Seems I misunderstood your feedback. I thought you just want me to
make clear who was merging what from the series via which tree. But
you want separate series?

1) ufs host dt bindings & driver
2) minor phy fixes series (most patches got applied already for phy)

What do you want for cmu_hsi2 clocks and dts/dtsi? The device tree
depends on the clock bindings to compile

Thanks,

Peter.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

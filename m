Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EE43C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 10:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTN9eReN+iVu+yA2GdVOPX0Cb+8EoGaJr4THDGSS+8E=; b=THG8vfGkiTj7ZA
	eoKrfQmRwIbVZHJFjpy+oR0waB9uuJuoCHCTJz4g9Y2FSoURwc9skggXczuo8y0S83jroaHhhFcTQ
	T39JUd1t6qdLIBeFqITjKG6rskZ9iZeolbqiIXrcWUFNxAUCiWw/ZbPSds84mcLaTYHCNOEBK1Wnl
	tZGWAgV5+flQdM5kf5QPk3e6Ipv0oY7psxs38Jz9m3iovAL/S4oMbri8A5qbWB61FDwziAcmwzoS9
	pOg+pbHn2UXYXKYWCJ/GaMIhmeJzZx93jSAJ9m0qjn86mVskERq2fJIJWOX23cMjiZ5MKSEe78/BU
	qquPVCBRkrjfeDwbk7HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg3T-0000000Bmg5-3zw0;
	Tue, 16 Apr 2024 10:28:47 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg3P-0000000Bmdj-2T3B
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 10:28:46 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5a9ec68784cso2537355eaf.2
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 03:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713263321; x=1713868121; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gXScnn7hEl87X0LHuVINW9LoVC2gyqeNWlwiwXYKs4A=;
        b=M9pCp4OlGVH8Npgtu3mCDG1Gn2P5kKIbcAORxPVmi1RDof2s5TCuLxZtp2CO0TXhNK
         DiKklUjuLInZsrnPXC9T7D+SjAiaW8riiWgg1s34UWVkHElBN9PSSDS751rvdBkvfCL9
         apPpRxCB2Rwldx2pIaFuss7ObBoRyY0P9MLATbhTkBipmn+bsC6nmNHyhmW/WZzUSS38
         e4z4P1qRVIVgpK9Fata7gBG5oaDNojlOun2Alpulibxn8C7H24xkU5K0NMKjFHYEtMTA
         RbPY8G4bdx0nM2PxlkP8891NIufIQ1XQc55POnJ0PVzeNkJgmZz4s4QjwNQZWlozKA8i
         slrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713263321; x=1713868121;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXScnn7hEl87X0LHuVINW9LoVC2gyqeNWlwiwXYKs4A=;
        b=Iy1pC2QBSyUut6mV3sZX0q4mfVQ8rxhKVFsjh4WLjery9GEguJdDcAvhSBlnVlDaiD
         9XCF7iuC0HZ/gFWG0L1SyzzfL9On0HPUn8+q9UndX3TZsD2vXMsYPGWHRIOJluwsJK7k
         C6TpAjICDSLYtyDfaTzLBwjNSlgz1tc7B1upyaIODQ8skSVsx/pW5u0txlSMLF/VGHCF
         QVPcfQG31n6wGbPf5NR/btm9cecgQqe5FhQ2KELp2AlBrbR9X1hFUlGflnnQr6MCINxJ
         WEw1qJ9OA8XWCDZgeWXcLbl7oVpJuKW+MrLazGqo+AwcTBhLe9cf6S0cRP12tDtKZT4S
         g6Gg==
X-Forwarded-Encrypted: i=1; AJvYcCV/2RdhNvffKdsCvxVyfs+giMffxs/NdwZ6UsFCeErHXRob5R6Z/L0G43DppbX0CvIM3ozzmWm+xLmz8vG2ILEcto0gt05Fit1RnGYTag==
X-Gm-Message-State: AOJu0Yy6aj2eEjQ8Q4Ii3cS9gKKXSyLLsnYfT/2NaRqLuMlUPzqVH7+0
	nvfGqQ5cxYPcUhAuWX/N98gVcp8Ij+rYvR0wnInXYVo09Rpmd+3NxIpLqEGypet9+YHxk2ZXA6Y
	vIRpEqY4PFurKze30NWZ/NyZEl3RF6yn6dOO52g==
X-Google-Smtp-Source: AGHT+IE+KH4+3J+4bWImbLmf/i6TMO+pjq+Zhj12DdRm1Ocu0R700WdkfWb+yJ4DCJJOFwu9s9QfuRU794n8yE834po=
X-Received: by 2002:a05:6820:1e16:b0:5aa:676e:9ad9 with SMTP id
 dh22-20020a0568201e1600b005aa676e9ad9mr12599912oob.2.1713263321084; Tue, 16
 Apr 2024 03:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org> <948a70ed-e3de-41d6-ada8-b547aa004ef0@kernel.org>
In-Reply-To: <948a70ed-e3de-41d6-ada8-b547aa004ef0@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 11:28:30 +0100
Message-ID: <CADrjBPoo4uwiv1x1mNdtNUiaYkbksTre19AYT-ZtzjXaV63CyQ@mail.gmail.com>
Subject: Re: [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor GS101
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_032843_651870_E595EE54 
X-CRM114-Status: GOOD (  16.73  )
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

On Fri, 5 Apr 2024 at 08:45, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 04/04/2024 14:25, Peter Griffin wrote:
> > Hi folks,
> >
> > This series adds support for the High Speed Interface (HSI) 2 clock
> > management unit, UFS controller and UFS phy calibration/tuning for GS101.
> >
> > With this series applied, UFS is now functional! The SKhynix HN8T05BZGKX015
> > can be enumerated, partitions mounted etc. This then allows us to move away
> > from the initramfs rootfs we have been using for development so far.
> >
> > The intention is this series will be merged via Krzysztofs Samsung Exynos
> > tree(s). This series is rebased on next-20240404.
> >
> > The series is broadly split into the following parts:
> > 1) dt-bindings documentation updates
> > 2) gs101 device tree updates
> > 3) Prepatory patches for samsung-ufs driver
> > 4) GS101 ufs-phy support
> > 5) Prepatory patches for ufs-exynos driver
> > 6) GS101 ufs-exynos support
>
> UFS phy and host should go through their trees. What is the
> reason/need/requirement to put it into this patchset and merge via
> Samsung SoC tree?

Good point, there is no requirement for it to all go via Samsung SoC
tree I will remove that from the cover letter in future versions.
I see Vinod has already queued the phy parts of the series which is great :-)

regards,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

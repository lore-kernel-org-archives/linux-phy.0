Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE79AD1118C
	for <linux-phy@archiver.kernel.org>; Sun,  3 Nov 2024 21:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqsukGl2D5Tn5BYefvvch5jpjueHJ0FCiXaSsYeyPe4=; b=NAXrEDpcegqhDh
	AX4Y9x9mWvjLAx4qTX7nRB7XA1sKYDQJs8BXXMo5p5oJ1h9v5a9TwT4ujLQCWIWEHO2y7SgUB6NPs
	IOcwgJC2hPG+mOVc7j0+ngB31JUS4p9rRuYzguSu4G4z5gVf7gUM8Ycy+Yr/TL2zqMbWb547jlNJo
	D+6SfrFZplAcODjlQ/hZEHdZf6+zaqOXfcsUlo4jzvMgu7pbWgAU4lRpPQ/qOloatZyNPipVq2Tw9
	0j/0JzId50erPvYyY7k4W0yVQFxYu1u8tTwUVw8Ldn2UvPdmOJ1n0frZj4KEnGyunGtw1/veKGqjq
	y8LJRhHzhzKhKRYMj2bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7hlh-0000000C2SL-0Ela;
	Sun, 03 Nov 2024 21:04:17 +0000
Received: from mail-pl1-f181.google.com ([209.85.214.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7hld-0000000C2Rs-2Ymi
	for linux-phy@lists.infradead.org;
	Sun, 03 Nov 2024 21:04:15 +0000
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20caccadbeeso37242625ad.2
        for <linux-phy@lists.infradead.org>; Sun, 03 Nov 2024 13:04:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730667852; x=1731272652;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iyk/tHp3wM7ZJ+kBBA3UsNzDpyC6CZHEFHkxEbaxlrA=;
        b=cZeO+w+BayyGhuKbt4XfqhgPSTvK+HeDZp1haNztX595TY46C6vhYbcNOhfsF4xjkn
         foFu4oQYzdWAJixZ2Ey9sCeiSg+8B1wW6lxFZHw94TH+5SV0uUCJB3ziPadwUUxn4nBc
         lrWEJcHrfqSHxYHWuKdr/q4YKpX2iO0E/nLV9aS+vcF30m4D9QnH6Vk6/sPOJKUY6AyW
         np/2tTtAq1JbUCftmjEo1fAzG/00RivlXgGjGgX20ontw0WJWNL3CPgU4mgF7BqzCNnl
         6Wquyo5W74pehMBC4v5WPT9PHwt1V9b1tD8W8WGd4LPUVvC9O5MJAEebwoOkLsokRfdG
         OSeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvR9yPx7ak1wWtzqSUlKv2MOxewPMEl+BudNfMeWpO59vgg9RdtZa7KnEPIOVvLHXO+D0+otaAAl4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHlgVt35b+nD88QMkOXLCTURLambbzgYtXdwhvVM6gvF53ycTK
	I6KOeyU62GwOZXBrpv9e5oscrl3Zs8ZxyGPgyiwk/UHzJJxkMab7
X-Google-Smtp-Source: AGHT+IEuBWJcoxFyodqaLltsAgGc1DHq3aBd4Exho6fhd7kC5UnQpnx06MfS33ABD5bBS6JPZdF+Yw==
X-Received: by 2002:a17:902:e850:b0:20b:6d8c:463 with SMTP id d9443c01a7336-21103b34f6dmr193025595ad.35.1730667852188;
        Sun, 03 Nov 2024 13:04:12 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211057a2ec3sm49960975ad.140.2024.11.03.13.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 13:04:11 -0800 (PST)
Date: Mon, 4 Nov 2024 06:04:09 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v8 0/5] Add support for PCIe3 on x1e80100
Message-ID: <20241103210409.GK237624@rocinante>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241101030902.579789-1-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_130413_668738_808E8456 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
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

> This series add support for PCIe3 on x1e80100.
> 
> PCIe3 needs additional set of clocks, regulators and new set of PCIe QMP
> PHY configuration compare other PCIe instances on x1e80100. Hence add
> required resource configuration and usage for PCIe3.

Applied to controller/qcom, thank you!

[01/04] dt-bindings: PCI: qcom: Move OPP table to qcom,pcie-common.yaml
        https://git.kernel.org/pci/pci/c/39a06b55df6c

[02/04] dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global' interrupt
        https://git.kernel.org/pci/pci/c/66dc205962c5

[03/04] PCI: qcom: Remove BDF2SID mapping config for SC8280X family SoC
        https://git.kernel.org/pci/pci/c/66cc06169fcf

[04/04] PCI: qcom: Disable ASPM L0s for X1E80100
        https://git.kernel.org/pci/pci/c/fc69fb202beb

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE617C43219
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 14:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTxACHHztRB9JCifuVGYG1BV1I8gf15+beadKGJGcPk=; b=rmGuqoTu5eYc/O
	q8WTbscg/2QdYvBMmOJBOq184JWwU9+ZatJ7uXFftkGBDGZYJRn3PLqJmdN2MduR6KAT/cQIOJxF5
	hvBUTQlrbfTbmOdy3Zo8yfanufFt5lliIQLbaZOW7GQ5ZKJhToJiDnQWU9/xyFhCqHEyLyuARuHW3
	+2s/Es9wdvlHax+LrE6R4SzFhHv/McrCI68fKorspXpeMuxi7Pl4Tk5QX7sk5tWoc0COVMtNpgRLj
	0/6lEuTmDd7W3DX2It/o63EIMX3Z8VoF6EEG7iuyAiM3fDv3qAAGrYokngxJUPvk4sBxYvJSKsrCc
	4tfAqmh+AvVhSqYk2PYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXGr-007fGQ-5c; Fri, 11 Feb 2022 14:51:37 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXGo-007fFY-Ii
 for linux-phy@lists.infradead.org; Fri, 11 Feb 2022 14:51:35 +0000
Received: by mail-oi1-f182.google.com with SMTP id r27so9786953oiw.4
 for <linux-phy@lists.infradead.org>; Fri, 11 Feb 2022 06:51:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+5HYimg0tnFafFhrdKH24tvbdQcqH1zrjEeXF+N6Kzw=;
 b=lYmwFTjvBXp/32qG7A89NNwnmybDrmysxkgBWL4gT7Zy2GJHYC8A+CCmm7aW0FW3S9
 18251wQeWchaTQOFGGa2av42aMjvKIh+F0nhPIuapQ580jagJgNkBNXHSMQ624EK5Eko
 jHWssMjhUHoVwP0ITGGM/nrDAQW7Hx7c7Ky5d+t4Fr+9d905xCK4LHQJPKMz2F781v3y
 WYWDSMPYqa9XQ3zPzmEwH5TwwCpzo4r6wL13yf+BD9z26wl0iEs4D6q85W1zoVzF67uq
 uOA69Y5TtRDgEBiJQfyMu3/49ZxJW1HHiFJuHm0EUHbDglwbpQsPt0NlhfEfAVyF48VB
 JMTA==
X-Gm-Message-State: AOAM530+hVNjYf8DCcKxRGqnM4qDX+DWHZnbkpwp4Ucqe3/R3AjWinY5
 w+SCvp8pZ/nZghoLhBdPQQ==
X-Google-Smtp-Source: ABdhPJxSkCKYKDlnidQlV/ZXv5y6FgA77jqYTWxtKOLiC1oSke9iBJJE5U2Avuu5UkGuGCAM2B9IdQ==
X-Received: by 2002:a05:6808:15aa:: with SMTP id
 t42mr303368oiw.227.1644591093217; 
 Fri, 11 Feb 2022 06:51:33 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 r41sm9261548oap.2.2022.02.11.06.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 06:51:32 -0800 (PST)
Received: (nullmailer pid 347029 invoked by uid 1000);
 Fri, 11 Feb 2022 14:51:29 -0000
Date: Fri, 11 Feb 2022 08:51:29 -0600
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: sagar.tv@gmail.com, kw@linux.com, krzysztof.kozlowski@canonical.com,
 kthota@nvidia.com, p.zabel@pengutronix.de, mmaddireddy@nvidia.com,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org,
 jonathanh@nvidia.com, robh+dt@kernel.org, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, thierry.reding@gmail.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-pci@vger.kernel.org,
 linux-tegra@vger.kernel.org, mperttunen@nvidia.com
Subject: Re: [PATCH V1 01/10] dt-bindings: Add Tegra234 PCIe clocks and resets
Message-ID: <YgZ38TRtmTkQBzqL@robh.at.kernel.org>
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-2-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-2-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_065134_654258_9C97AE13 
X-CRM114-Status: UNSURE (   9.22  )
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

On Sat, 05 Feb 2022 21:51:35 +0530, Vidya Sagar wrote:
> Add the clocks and resets used by the PCIe hardware found on
> Tegra234 SoCs.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  include/dt-bindings/clock/tegra234-clock.h | 25 +++++++++++++++++++-
>  include/dt-bindings/reset/tegra234-reset.h | 27 +++++++++++++++++++++-
>  2 files changed, 50 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4E0C47E48
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 23:37:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D00D613CC
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 23:37:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D00D613CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLFmXVsNjNO6IMDJj1n1BRMvyhgHKG8yDGL8/qOGrqo=; b=CSSIwritw3ggoB
	OljDvq6hqjAYZK6dK+6aRS5OYQWnW2q+X1bbhsG+cUVhED28RtuXNAAcAWga1mT0ZMUmeIDQ+t6PF
	F15rbeEga3JvUCDCeNgJBjsLX2zKVxCUtubL0LfKXblk66HYa/c1k/15a+Gu2D/nmSSRqaSTNR8UD
	dgjUPFfR/qPDQWQJgu6WnAChgF1zko8uLhffobEpbSIRjNj0iaE3zu01nuc7ZcqZWKLBuHVC56yeN
	q+BQ291JABuECEMMvl2ySCDHOlR9Lh7qgc077jk8hFYZkC2wQ+R3bWPeuwS9O20h+eoTizgpzKsJh
	lmekWbL+FhoPYEeXh/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3oRs-00GM4F-OR; Wed, 14 Jul 2021 23:37:52 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3lwR-00FCoq-Vc
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 20:57:17 +0000
Received: by mail-io1-f41.google.com with SMTP id h6so3825545iok.6
 for <linux-phy@lists.infradead.org>; Wed, 14 Jul 2021 13:57:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9LS8fKQuOgmkNfETWUyNRS6P6FD5jXpwPj5qUOt7Pyw=;
 b=I4h890gTFdOeuekoEh4QzgIYzqp00i3FX/fB+f5GNqHM0EQ9vTzn6EWVVHOc0EEC6d
 IY3zHI8+WkEYNgWoNl0QFylIwzA7cX7h3IX1lxmM9LKulmb43C0lbh4boO5nR1Y3JhJw
 8UXYdTZnLYL9b8NW9gH5CHXN06UoBxHbBl9xKljyip1fP0gDbx22IvzpvqOD+dkSAOL0
 4ClExeEbn5eu9W79hP/GoQhJkxPNVnR0FIha4HBhGYb2xveNhNJrlTyj1impZvsl/2RZ
 MSANbrm4+aEfaCl0SR83S/wsecJjN9xdpTHd9Yfof4+yWP87vf0AeinRZ0mhIDA4pAKr
 f1+A==
X-Gm-Message-State: AOAM530jceWrboxLNP5JGMIP5BEI+9qqcdp1eSCSz6X4wncoFX1MP8N+
 q4Qc3zYy0lcuAvd7haDlzw==
X-Google-Smtp-Source: ABdhPJyxGysiXjud+pQe2JRzci8UiWpphXPQ4Qzkq404XV4K3iV7FbqhnKSJ4KLrpCUnDWTkzdAzqA==
X-Received: by 2002:a02:628b:: with SMTP id d133mr159620jac.27.1626296233896; 
 Wed, 14 Jul 2021 13:57:13 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id g22sm1776087ion.10.2021.07.14.13.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 13:57:13 -0700 (PDT)
Received: (nullmailer pid 3509125 invoked by uid 1000);
 Wed, 14 Jul 2021 20:57:10 -0000
Date: Wed, 14 Jul 2021 14:57:10 -0600
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add sc8180x PCIe
 compatible
Message-ID: <20210714205710.GA3509073@robh.at.kernel.org>
References: <20210629004509.1788286-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210629004509.1788286-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_135716_082036_C0756C29 
X-CRM114-Status: UNSURE (   8.50  )
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

On Mon, 28 Jun 2021 17:45:08 -0700, Bjorn Andersson wrote:
> Add a compatible for the sc8180x PCIe PHY.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

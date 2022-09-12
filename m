Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8C7FC6FA83
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 19:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgm7AJnNfK909/dWXWgxGppqpwbM6rlh25hAsiFM04c=; b=ashlr9w124aGHY
	d7UJbusuVDArAc8a2Fl8/FZ9DqEQno/+YyI6Zi//PbK2Nujn0BdkOhs7yPnKWlkNgZaG2TuYTZZ4z
	qIx+AVCpH80hzGmnGp/LSWKEiv1ot2rLnjO+Sgf9mRwSmY97/9/wxOkBp+xQO5U2ZjVOQ4g4KuAOG
	4oGaL7DG0V6nSxVS79Kd0PaLfqgo23/aQA8OTm7cYYmAZiKylsVVV/mlOF6hpBsJGO2QCltkNbF6Q
	+z1OykGrNuHHVZ9NAeEbwuU1tnoABZvLNpodQS/favWmaqIHqPgnQg95OowPsErVfg4fdDB9zfJhq
	nYSNrPjhlD/DpZBwDdjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpRe-00DBeP-KP; Mon, 12 Sep 2022 19:50:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpRb-00DBYy-MO; Mon, 12 Sep 2022 19:50:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=WOtGK76hRewU1QooFGTAv4sMui+JsERKP+VFBuwDcNE=; b=dUkVsx9KSI5XeiKfiH2D0FUbr2
	1N/jdua5t8eSSlS8O8HBcvuEL9s7W+2SKuog9dFBLw/0aOqvzwjzG4F9Tz+mse16f6Ux7kGhtet8p
	dfe09HCc+1meiKziUnrq+dwMZeExae8isnLt/NhPfUwWmFmb1svNNmPwmuvTOy6lIIvsLiAAC46LW
	sjbCQoMXMbJue8VdD0WGMQv0u6k3B4POr2RppEjLoevjT7Lwo5suW7cW6z4Lt7wuXEnPS9SjITvwG
	uN1IPAKhnYaCAKbXk7Zu2ZTY5tj5xocx2QOHrHmudMumsAIqKPdVl03xNmN5objGPTSExZjfeeE/e
	P+IEnoFw==;
Received: from mail-oa1-f52.google.com ([209.85.160.52])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpRW-00Bse5-3e; Mon, 12 Sep 2022 19:50:09 +0000
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-127ba06d03fso26280333fac.3;
        Mon, 12 Sep 2022 12:50:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=WOtGK76hRewU1QooFGTAv4sMui+JsERKP+VFBuwDcNE=;
        b=LSEShir0QA60lSv0m157Zza8bM/5nQX2fumaEpMxBeC/ZysibetcC9l8Iaf9YWivvH
         kFtjazbiCBbfH6G7mPxNxfkMySOxYy08Y2reBr39FMSx/f/FeeeZdepkrdw+OD6WuxEL
         eTUHm9kFhlyhM+7ZapdzBCQ8Rjf0rJmLH2khWvAB832cRkTsNKBhWVXxnorqq4drcnW5
         MwipqtLsGocbDmtWdUD10zr7hMHI5hSjP3LoKfVUXHJCKvYE0/zXokziNNUkpsZGphMq
         2EepL9/vKCx/CahhXfyFjKTMG+LdJ6zK9kEs90zpbSf9kmT3rTn789rmHu5da0pVuL8D
         mLMA==
X-Gm-Message-State: ACgBeo3CmNjxHcS8bXQHBqPW2N6Q9fKNtoY60kKcSdBCIhQ0aviU/Z3L
	CWd/OxuMwAnPK8rMs5tH2g==
X-Google-Smtp-Source: AA6agR7Iy/SIPE6vlqf90Htx5gWZAzMAyaiURTrk8MO8EPAXdDWJI+/GfdC3pq3qc2RMgABz6ZQj3g==
X-Received: by 2002:a05:6870:7089:b0:11e:a4e8:e669 with SMTP id v9-20020a056870708900b0011ea4e8e669mr5164oae.156.1663012198534;
        Mon, 12 Sep 2022 12:49:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j16-20020a056870169000b0011e73536301sm6002348oae.52.2022.09.12.12.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 12:49:58 -0700 (PDT)
Received: (nullmailer pid 1723465 invoked by uid 1000);
	Mon, 12 Sep 2022 19:49:56 -0000
Date: Mon, 12 Sep 2022 14:49:56 -0500
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Madalin Bucur <madalin.bucur@nxp.com>, Camelia Alexandra Groza <camelia.groza@nxp.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: Add 2500BASE-X and 10GBASE-R
Message-ID: <20220912194956.GA1718874-robh@kernel.org>
References: <20220902213721.946138-1-sean.anderson@seco.com>
 <20220902213721.946138-2-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902213721.946138-2-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_205006_296428_36D1B62E 
X-CRM114-Status: GOOD (  12.94  )
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

On Fri, Sep 02, 2022 at 05:37:14PM -0400, Sean Anderson wrote:
> This adds some modes necessary for Lynx 10G support. 2500BASE-X, also
> known as 2.5G SGMII, is 1000BASE-X/SGMII overclocked to 3.125 GHz, with
> autonegotiation disabled. 10GBASE-R, also known as XFI, is the protocol
> spoken between the PMA and PMD ethernet layers for 10GBASE-T and
> 10GBASE-S/L/E. It is typically used to communicate directly with SFP+
> modules, or with 10GBASE-T phys.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> (no changes since v4)
> 
> Changes in v4:
> - New
> 
>  include/dt-bindings/phy/phy.h | 2 ++
>  1 file changed, 2 insertions(+)

A corresponding update to the schema for phy-type[1] will be needed. A 
GH PR or patch to devicetree-spec@vger.kernel.org is fine.

Acked-by: Rob Herring <robh@kernel.org>

Rob

[1] https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/phy/phy-provider.yaml#L19

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

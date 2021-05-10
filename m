Return-Path: <SRS0=0Txu=KF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23FBBC433ED
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 16:03:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBED16121E
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 16:03:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DBED16121E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=++qNltti8UMhn6Wt3jCdextHuLhfrlG7fNl5P9P3p7g=; b=Esx4ISajHpcVFWoXZY0x3oM5E
	nkGAIfD6UGXi+F3SEcjrH1vUkINM6CK1ARX6X5U9CAuxfmfIIphpnrEJwvkISs66dt/7MtsUwvOJZ
	l+dDjeLxhx7paFJjrGEsNqiE5JXGSwBhMiXGcakvXOMHivvjHP3ZbtPGqZaeWHb+eMfSkkHyHm5HN
	in7xq76mB/SikH0fM/cwGuYBSV/yWnqUsj2XU9Zv3FU78JNs7IFe9IBQee8PKuRHlpHC8MvlGEftJ
	ieU9t/vLI9wGgZSKU/zd8ewQk/kZ0WFrutQW1IZ+LA586iO62gnkREopn2aduTK8MOA/nD5+V59p1
	SUzjAT7qw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg8NY-00Esve-Re; Mon, 10 May 2021 16:03:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8Lz-00EsPF-RM
 for linux-phy@desiato.infradead.org; Mon, 10 May 2021 16:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CL3EK1BbXw3K+UiGWC4PvFk6RuXbgUMu/FDCEBhRsXc=; b=m2bqZAWbM4kFO/0H+4aOLbHJLk
 KpIHi9ZQdWKIVyexDDYdfUwt7v0p4DK/LJbh7UhHfQo3TfKqwN0aj4yEQIT4D3hp0n1GWBO+3LZyy
 GPGSzEK54jUrbMN2JW9HoBXXvv6kaAh1ulH1rsoHhp/dJaJjnu3zcSdbi9UVmiARQ2NxiQPCH7jd2
 h+vbVPyNMHn16iorV/E0xjNQ2hj3X/9fFESwlHvdBaShMmvI1MbOoR/aByr8AnwmV6TQbAAaA6I2b
 X1TW+og1cG7cNZwBsyMwbExcKNkJ0RqgmW0TDJKm8adDFGxzKiHZWEfbnP3VEBQ/SJxdTJWNQxio7
 id8wdHUw==;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8Lx-008tjz-9f
 for linux-phy@lists.infradead.org; Mon, 10 May 2021 16:01:54 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 t4-20020a05683014c4b02902ed26dd7a60so4721107otq.7
 for <linux-phy@lists.infradead.org>; Mon, 10 May 2021 09:01:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CL3EK1BbXw3K+UiGWC4PvFk6RuXbgUMu/FDCEBhRsXc=;
 b=htt1t1sUhqCyt41n5nfBFr8nwztV1fIenTSJb4aVdejnq88AaU+DTDakS64ynigZSf
 vSZpeyu/Pq75Sr2YS280Vyb0GMw1w3oZniQYGyUciWMx4taLeO5mhnHAm96qPcPF45t4
 DCWkjLY2bj4GyDgvzaBk/qtbrzmzvcF2ET5NL0I0mGPEQYS43xQs4ENui4KYKafboFH0
 9iZ3E91zzWpvgqUV87QEX340Ipd7W+093CZx2VvWaeeBQ0FTDhzGsdrpno4aWM6FJFs9
 6mKnxzQWZRwBBpuijgijIVS9DLEc/frjFXc4HOuGevJ64bITeEjpukPx5fGAMr0CERCZ
 gI2w==
X-Gm-Message-State: AOAM530ttBHl1KQkmLhPwVGiRA0syr1VZq+vzoqdzntju0MRCcbOf/HP
 1pa1K+gwrOVzdrnP00et3Q==
X-Google-Smtp-Source: ABdhPJwzu2GWumJg2qIXQSmyaxw+mou6CJa+ByX8g2CKbnhufna4u6fSpqm2l9DESdyyxTb7QO/5MA==
X-Received: by 2002:a9d:6645:: with SMTP id q5mr17169694otm.80.1620662512536; 
 Mon, 10 May 2021 09:01:52 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u201sm2693880oia.10.2021.05.10.09.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 May 2021 09:01:51 -0700 (PDT)
Received: (nullmailer pid 202602 invoked by uid 1000);
 Mon, 10 May 2021 16:01:50 -0000
Date: Mon, 10 May 2021 11:01:50 -0500
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: ilya.lipnitskiy@gmail.com, neil@brown.name, gregkh@linuxfoundation.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org, robh+dt@kernel.org,
 kishon@ti.com, devicetree@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH RESEND v2 2/6] dt-bindings: phy: mediatek, mt7621-pci-phy:
 add clock entries
Message-ID: <20210510160150.GA202555@robh.at.kernel.org>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <20210508070930.5290-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508070930.5290-3-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_090153_356388_811CB2C9 
X-CRM114-Status: GOOD (  11.16  )
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

On Sat, 08 May 2021 09:09:26 +0200, Sergio Paracuellos wrote:
> MT7621 SoC clock driver has already mainlined in
> 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> Hence update schema with the add of the entries related to
> clock. Since until now things were not properly being done
> we mark also 'clock' as required in the binding since this
> will be now the only way to properly retrieve frequency to be
> able to make a correct configuration of the PCIe phy registers.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml     | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

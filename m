Return-Path: <SRS0=CgOe=OY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 058EFC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:43:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6D90613C8
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:43:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C6D90613C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83rEc9qOT6BXJbI+7XgNfZDGi1oNAmvWDd3tMb9ARiA=; b=No6Xgr2RAZBl4d
	uIwZTYOZNskMbYOffkZmd3IST+m8vaRSVQ1LD3U/W6Pp2M1SXDme9GXITgF07YVokKwDTVcABa9gY
	s9wrQ+slEC1MUqL7kQ+AEb1fzaIt4waP6PV29dh29HzMuDNtRaeidCuJur9nOm3dxhnsbSHRYH5YG
	LXrows8S4lortLDBB3hhE96VO1hYkcaDumTInSX+M3XqFpGP/we0TZOx46Rl4jayi/9TAcZ41jS6Q
	du8UcWMu81CIO86FDHrDpV8PeMIRMy6AqzukwAhffNMX7UCXsRMh5ibcbAB3XF59mlpBn2tkfm0L6
	yPIVsd3PoIikk2W0Uk/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXSvk-007kHc-Bp; Mon, 04 Oct 2021 18:43:16 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXSvh-007kGU-TZ
 for linux-phy@lists.infradead.org; Mon, 04 Oct 2021 18:43:15 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 a17-20020a4a6851000000b002b59bfbf669so5674495oof.9
 for <linux-phy@lists.infradead.org>; Mon, 04 Oct 2021 11:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F0wSL+i1Am4WOOv5bsuo1wbEnLjPgSwhJ/skurOdhOQ=;
 b=00230ieAWB5F9dYfhsPk/6bCfv6PW0jD6ZlhDuvdYZgjWea/4d9CkTV/g8p5/WOdpG
 TwIdPAemqMsMU5x8od+9/j7VHWpfBTPjB1/hO+XcXK1SsK+pZQM1IdP2kGP+PM3ZLU/2
 B1Lyrvv4gaHhTGdw4e2fw7eNiI1gmlbWMMYhroN2QNaNhYqMLvxkV08NIx0IliNTu3in
 bGt443mzNXASDJZ28bcUCWJAL1P0vSeWq23FsG/7lLcGIPl1gQRC9JOOmdw2LSs4uox2
 b69cxHXprqzmLeygWYqmuLBThJ8ejbP078annoz3L46Afaemkfzw3SjHen9yFl/fi1UV
 s0xA==
X-Gm-Message-State: AOAM531QoQN2OVM2yFOLRbqXp6kvEVIhs5jCeC7BmoWqmvVOuH5ASRbN
 vC7ZiydIh6D9d/QrWLsv2A==
X-Google-Smtp-Source: ABdhPJxYX9baerLy4+YMrPbdb0uJ1lqI3hJaaC0hE8rDcEjVRmjPkHqt4iv4O0A5oS1raThW2ox4zQ==
X-Received: by 2002:a05:6820:3c9:: with SMTP id
 s9mr10196913ooj.81.1633372993057; 
 Mon, 04 Oct 2021 11:43:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id w7sm2813692oic.12.2021.10.04.11.43.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 11:43:12 -0700 (PDT)
Received: (nullmailer pid 1635638 invoked by uid 1000);
 Mon, 04 Oct 2021 18:43:11 -0000
Date: Mon, 4 Oct 2021 13:43:11 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074
 PCIe PHY require no supply
Message-ID: <YVtLP7fGsClZQwRC@robh.at.kernel.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-3-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929034253.24570-3-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_114313_976504_1A11EA2F 
X-CRM114-Status: GOOD (  10.64  )
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

On Wed, 29 Sep 2021 11:42:45 +0800, Shawn Guo wrote:
> The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> bindings to reflect it.
> 
> While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
> And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> bindings.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 52 ++++++++++---------
>  1 file changed, 28 insertions(+), 24 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

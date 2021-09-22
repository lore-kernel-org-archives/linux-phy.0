Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C9A7C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 20:53:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1175C6112F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 20:53:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1175C6112F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EclCIa/RtgcGSue2NgpA/blj1cMsYN1G3lR8GmZc50=; b=stJHSeIONX8Kxj
	R5wy4sShUOgZ72+sur40OBb5Z2gyACs1ihCJXK11kMgzRM3rrygkhnjpkkjoKdDLovDIBD5L3C0sq
	GGbZrvKhj8oKyDlbG5CG1+E9j7YARoQQW5F0OQ5LYSdbDIuiw21LqU/DQAQilA/I1mkw8tdlIMoJx
	VigE5+PexJ5jAWKZquS/h0pBnfBtY9kRUWVIiG/0LZlr5RWaCvL3gl3Yy5OOVIlztQFEujQeNc0IC
	uGGL7SJhnWGbKmDGn2jILEYzWEyvQvJG3GgoUWHl9FTh1QVUaWDYXhKUue1/HjWNS0OqMzSpfgUi0
	RGNMu35hDb1j0t6cT4KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT9FV-009dEF-Ie; Wed, 22 Sep 2021 20:53:49 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT9FS-009dDF-Qd
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 20:53:48 +0000
Received: by mail-oi1-f173.google.com with SMTP id x124so6425869oix.9
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 13:53:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7UQgPbHiiI5fROteq8Hvll/XjdnlIJK9D0aOFIIzhqQ=;
 b=mU02D6rmpDCsMvAfIj1v6+g91WXQBAqu4s14HfU8J+fzCXtxwWMb0liAXKlUeKDSr5
 D//JhXyHm6gtCD3tNobP6KrJXBF9eE1/0T3RJ8ppU7IeQasQlNtsGM52xsX3VZaGisPp
 rhTou/aijU1GXCb3ZFIxzX5Wac1muIAB05aUS8RgEacsMUife2nOIVdsWbQYUfiTT15M
 PLNOlVddrSSXzH/vBzEo55pGSmZkwwek/z+h4Qplvse4Ldklfe2N4szlynkPI0Rsz/VI
 lQN1gdjW6Q3y9le3t19fGwH+oNDdELw0NoZtYK5knTy/1QZrPg+qU2p8col+QDyUWBiR
 iyLw==
X-Gm-Message-State: AOAM530TfAQIzaW29a+8UFI4+KYH3iqFLGVs9fZoSGXp6pxtG8AwdrnZ
 Sn8XBxPhJUU5jWNkyo2tQw==
X-Google-Smtp-Source: ABdhPJwS6+PnDPVLGjmSDm2lajZEue3vo99r/gZh6GWIc5NC9a7fkexwjqMNrK2Fvx+5LHXUA+TFPw==
X-Received: by 2002:a05:6808:aaa:: with SMTP id
 r10mr6338506oij.75.1632344026237; 
 Wed, 22 Sep 2021 13:53:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id y83sm780487oia.47.2021.09.22.13.53.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 13:53:45 -0700 (PDT)
Received: (nullmailer pid 1275452 invoked by uid 1000);
 Wed, 22 Sep 2021 20:53:44 -0000
Date: Wed, 22 Sep 2021 15:53:44 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Loic Poulain <loic.poulain@linaro.org>, linux-arm-msm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Manu Gautam <mgautam@codeaurora.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qusb2: Add compatible for
 QCM2290
Message-ID: <YUuX2KBf7+6YFcVA@robh.at.kernel.org>
References: <20210919031110.25064-1-shawn.guo@linaro.org>
 <20210919031110.25064-2-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210919031110.25064-2-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_135346_908602_5EB941B7 
X-CRM114-Status: UNSURE (   8.57  )
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

On Sun, 19 Sep 2021 11:11:09 +0800, Shawn Guo wrote:
> Add compatible for QUSB2 PHY on QCM2290 platform.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

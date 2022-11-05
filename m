Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C191FC43217
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 13:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9TcknsKOgUocLNxrrQzeCmdge6hkS/j6V5r/WrEU54=; b=ziwq4/81FUseW4
	PRHngvfAeufxh3KXMomAA7NyILdFWsSK36LMk+hoZnyPDFe2x6oSu2maEJJcVOVlvIBAQbq9yLSTr
	+rzSghvPBxHe4wF4Wk4DsaUnq4+Lm6N30RKT9vk+5Ep08k1pVapIN3P6Xse0CeVacLFOJT1iCyBn2
	W1rdD1sKWm6HYd2bC/Is0R6kHvONk912SjupiG73fuyvoz2n74Yx87nnU9ahsNxAMvMnXiCril2If
	yMU3g5gWbPGsUD4gjNy0Z6ssxWeM+iRFVc9yOqzI7iuR0pxXjFwjVmuL83zbV0aKA1xXxyxvMQy7z
	RKWWakDk3p+0gt+GmTPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orJ5A-006a9Z-2T; Sat, 05 Nov 2022 13:19:32 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orJ56-006a8q-Cj
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 13:19:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 116F5B815C6;
	Sat,  5 Nov 2022 13:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA7D8C433D6;
	Sat,  5 Nov 2022 13:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667654365;
	bh=n978bdZclo1OUqgWipKVcYfrpp2oIPsYbXjMUSCLzwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=krMh5ThZKLX5Tes9Y3K/uXBT2Ll9Gw2n9lCBLhGo5GK28z+kbMBpMwH37LFRYJXWL
	 Fa3mpSbdi1LlKhbtkMXwhE8YqVSi0yeGkRUzTnoZU+M8KGJHDFE+np/9sjYfbtkyLf
	 p3D0rr0Pm7hG+h+afcUcmw8RuzYVIgyULiGM2KL4JXQm+vJn65nPBUR7NR8mib2sRL
	 iG/TCm+K8l7vUhCmvbhuB+t/XGSVIxtoXJ8JFqyP69evAH6cWccPRfjMrDUjK7F7Wo
	 RZzvnKHGQWzHLrizdSdO4UzfYlyVYb6vHPOYFmPXQoEjg3sovEdLyd37u+DaxNbNIE
	 qsoipVHk3/Seg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1orJ4j-0007Bh-Us; Sat, 05 Nov 2022 14:19:06 +0100
Date: Sat, 5 Nov 2022 14:19:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 10/16] dt-bindings: phy: qcom,qmp-pcie: rename current
 bindings
Message-ID: <Y2ZiySD7vaJAbUO1@hovoldconsulting.com>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-11-johan+linaro@kernel.org>
 <33b13789-33d6-a22f-82c9-4c5691d0737d@linaro.org>
 <Y1zot8aJ1WXnbrwF@hovoldconsulting.com>
 <Y2ZShqNfwB65lX+0@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y2ZShqNfwB65lX+0@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_061928_596948_AA8C38D3 
X-CRM114-Status: GOOD (  13.67  )
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

On Sat, Nov 05, 2022 at 05:39:42PM +0530, Vinod Koul wrote:
> On 29-10-22, 10:47, Johan Hovold wrote:
> > On Fri, Oct 28, 2022 at 05:57:01PM -0400, Krzysztof Kozlowski wrote:

> > > Also missing cc devicetree list.
> > 
> > Yes, I know, but as I mentioned in my reply to Rob on the QMP USB
> > series, I do not intend to repost this series unless someone insists as
> > there were no binding-related changes in v4 (or v3).
> 
> It is always better to repost and get that out :-)

Yeah, it's just that I was expecting this series to merged the same day,
and I didn't want to spam the list in vain.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

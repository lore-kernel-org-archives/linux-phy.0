Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F1FC43217
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 15:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPjeKPZ0eAUp9DW4D4JYUw1Vu000ZzgOUWewB60w8D0=; b=JkZLVNZv9oBhO2
	U9Nq37ykbGCNVMfA8SvI/dRW7YD4uE72MLEaAMTJizWH3OHwcvvdM+if3zVj29af2H4oc8trElXO0
	Tyxng697MbaPbHDIL0nuWDd78QBArLTyssrxvcg+WbOCDzJYVzf6en7CEinYJb0Rc26/HZMNTFaCN
	61PR0eoXYBZGs0fiScBM6w2NWagTz1CDzOs3p1YQaMxZ2TgWX7nSoqD6ZhaBGSXiusnZgVZQithvV
	3Xvls6MO2/YytbGACQQvivL9bTXlyt08RO7X+VsCctA62GN98VCFrRNA8h6CUu1JZX/LXRM8mO+61
	eWgnI23CdDipoFd5KyVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyEE8-009iz2-Ji; Thu, 24 Nov 2022 15:33:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyEE6-009ixI-2Z
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 15:33:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CEE36B82848;
	Thu, 24 Nov 2022 15:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC7AC433D6;
	Thu, 24 Nov 2022 15:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669303998;
	bh=Ir4muPjBKsPcyktJyw/fUL6Kv3BECljIo7S6hUAHENk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M9lQnAte63QviEpIGUt8Q7smUNS5lfe3WHwPlg1V8bDYXgMGcpkX0dQN6oO26ve0V
	 rM/0u6oDkhwzf7u1mJcjgXbgZCtlvkxBdRHnzMxdlaA0vTCiyDjd3BSXOdaqSdMW2g
	 OMcxqV4whlN/HG4x+Ve8KG9SluJr9GzjsEWwz96SP7hsTnPJYaya92Tc1bb0CXwfaY
	 NL0ZGZd4+Fl1xpFkRqvTNylTdl17+zi7qCjkBcyM1xewuipMDslaFiNeatoLpQQwUU
	 JjlRWYobqNAmk9Auc98xmhN1CWFurD4fnYgqx8qmpYTt1maOjYqb3jR+n49nPyjWfI
	 S8RcftBzeN1AQ==
Date: Thu, 24 Nov 2022 21:03:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/6] phy: qcom-qmp-combo: preparatory fixes (set 1/3)
Message-ID: <Y3+Oupd55ZEEX+jx@matsya>
References: <20221114081346.5116-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114081346.5116-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_073322_294410_931025E3 
X-CRM114-Status: GOOD (  15.09  )
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

On 14-11-22, 09:13, Johan Hovold wrote:
> Here's a set of fixes for bugs founds while fixing the devicetree
> binding and adding (proper) support for SC8280XP to the combo driver.
> 
> The full series is over forty patches and I'll be posting these in three
> parts of which this is the first. In an effort to get all of these into
> 6.2, I'll also be submitting all three series before waiting for the
> previous ones to be applied.
> 
> The first fix below could possibly be considered 6.1-rc material, but I
> believe it's be fine to take all of these for 6.2.
> 
> Note that the next part of the series will do away with some of problems
> with this driver that led to the issues being fixed here (e.g. the split
> driver data and configuration).

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

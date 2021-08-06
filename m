Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5641C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:05:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F217611CB
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:05:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8F217611CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gm+XmIC4VPQGvYMSsi79LUTMnGYFiQwC8NIVm4Y3Eg=; b=T/MsJfTzUZ6m0j
	Ddkkp76Zb6LqjNyM9JGZyCYb1aTT3WC9JKeETNHbSZmWYJFRplP+lf69BdA8mlg5KS0EpZ1eLNnKt
	6TyWHCnHH7gINbbFDIOIR883UbTv2zd1N7JZhP+31WRR7ktBt/MEF+YbQWxPjcKFEjMcwmiZohU97
	CsUnT+6iVujYMIT+OhtwjAteHOvhtX0u8GOx15oxNpknuuvS9S3BQuLGDsKKS+aA4YPYw+01ZD74n
	vFOlyslqNRWdYRNRhWbkK75bFRyfeyyxPwEUl19w1PEzzhzTUGAiyxLofPe4faCRTR/Xrkc+83C4W
	oVbDWYR8XT8dB7goaS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzXT-00CXgz-VH; Fri, 06 Aug 2021 13:05:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzXG-00CXdK-GQ; Fri, 06 Aug 2021 13:05:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F33C6108D;
 Fri,  6 Aug 2021 13:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628255114;
 bh=Zd789UenWRtQvSgkx9CiMDX4rF3YK1hK1iZn2TMubQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RJsX2ly9M9pX0z33O7ytp8UTrW934KjJRYQcPakhtTL6rO0axQ7ABhZtPK7aCCo/0
 qBH68ztc5cU5NMOql46nV1ivqi3ZldVlI4NFNdAOeE8mYzeYIXR7HM2XY2KFKsKcot
 pIvC/6rx3mqp6TpGQX2DGWjKB/Ul8iMHYhFnQ8/93aJVF+WDVn9DJG+tqQdVoFzgfs
 paiBZVHrfe8P6H+4gYj0B8gCrPAHTwk4NUCbXgF7xdEkcG0K7cqMfItLR6vFbIzkJG
 SKuNYgOmdGQ3P3eQSx5+2wUazX9j+fJT8VPb+RH3RDi3UsHDu8qJPRct3JnAr1HXlS
 IXJjLpBC+0siQ==
Date: Fri, 6 Aug 2021 18:35:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Jack Pham <jackp@codeaurora.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,qmp: Add IPQ6018 USB3 PHY
Message-ID: <YQ0zhaTVI8KVNpVR@matsya>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_060514_604372_4272CE7A 
X-CRM114-Status: UNSURE (   4.01  )
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

On 04-08-21, 17:05, Baruch Siach wrote:
> Add compatible string for USB3 PHY in Qualcomm IPQ6018 SoC.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

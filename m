Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC9FCDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ey7fKr8leJBaoZ05wRF6BMQGyKGr8baryhgypSQwLdU=; b=sxGHH+UVNpHpFs
	3BOeQQtH4cRV/WmWNcUJVShbxC5qFdqFZfTJtK3Z+FYN5TsgQH5gwrN5ueF//llXtPmSFa56Iry+F
	ZCJ5/yWflXsfFdc3bRj6bpJPK0w8julJfvWvFFa+d5syNbKrJ3yhUkfnxGYIn6FH32ZLuTX+76uBG
	rOGIMc+dfEDQve59tJLrhCj20FWoZJJoDLTXhdQgV+1NUZmqmvJbW06ixjXsgP4k8t1kTejmXMNqA
	6++SlF5WNq4ppmVY7X4x2TNWBDou2nNLshbSWvJP3XL/Ljc7w7tEXRDXQNXoOCMMmJsejgekolPDv
	91N72a3kDg6LajmnFQSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFQ0-0034gG-1t;
	Fri, 13 Oct 2023 10:29:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFPx-0034cG-02
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:29:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 13DABB82A63;
	Fri, 13 Oct 2023 10:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 898CFC433C8;
	Fri, 13 Oct 2023 10:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697192954;
	bh=l95bX3pPU6Xb+bm+bl/UEw5wr1v071c9H3zW03wigRo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FbfU+w4WX0LSon1FyqCsQdLsG9mPqqB0Y7BbYtYtxBYkYV+pxTFzDnaxfI9NgbnCI
	 TLgv/pxRfVARWazaE9w8aPoIyqo1CVe7YRKvHZ/Sw5dJQ9ULx5zU1vDCSnrZW3U4Fy
	 0v5U0UZ5fTTISqRNlgU9NbnOEcu0Y3/XmGxE3TauD8vHDMCby1oBcC6eE33/9nriom
	 AOmijPEf+TfmvVh9P2EExazdsv/ppKAvl1KRjLBiG8rknnRxkRcHeEhO48GwUIxkmH
	 sQBnysLx0r4Y5DpKjKHVv1LQFlCZTefYZDn23qUZxS9IDxGrN85HLepzgvNtzb9FHp
	 y4wOOWgkgmbXg==
Date: Fri, 13 Oct 2023 15:59:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	gregkh@linuxfoundation.org, abel.vesa@linaro.org,
	quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v4 0/5] Add USB Support on Qualcomm's SDX75 Platform
Message-ID: <ZSkb9ajLZGpD46Ik@matsya>
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_032917_219531_53363761 
X-CRM114-Status: GOOD (  11.31  )
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

On 22-09-23, 10:42, Rohit Agarwal wrote:
> Hi,
> 
> Changes in v4:
>  - Replaced the v5 offsets with v6 offsets as per Dmitry's suggestion in patch 5/5.
> 
> Changes in v3:
>  - Removed the unnecessary change introduced in v2 of patch 2/5
>  - Added Fixes tag in patch 3/5
>  - Rebased patch 5/5 on Dmitry's cleanup patches.
>    https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
>    https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
> 
> Changes in v2:
>  - Dropped the new dt schema introduced in v1 for sdx75 usb3 phy
>    and reusing the bindings.
>  - Rephrased the commit message of patch 3/5
>  - Removed stray lines from the patch 5/5
> 
> This series adds support of USB3 PHY support for Qualcomm's SDX75 Platform.

The phy patches fail to apply, can you please rebase the three patches
and resend

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9C5D374A4
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHEayIBSnJmR2foHYcCdLxG2EQD53r1kukvWvYTfHps=; b=AtAnj3wL2nCZgZ
	pdr875vdoRHxlze71M1EzRFlRylqvI7gigd3EKj+sg8eJG4Gq1oSxH3kZYW9IE17DWJAGnM23lwtT
	h4W7+KIQP7xBQ/S3rU3AAi4ZwDj4VIXkSsvGgaeTr1wUaF+imvJNZTvCBSzjfNmXqAClyWJ3svqF+
	lYzwCOkSfR+b5LgWE/+h7rvP0AYhvCuSX6Qk3egN+XK4A+crAM8UZIFcyH6Uegji3KfG20z0k225f
	+WLBJ/+GRPb8p3uOB/YuPRQadq6S3eD3IceFdrrlGf28ssFGPfHHCUxyVeyHY8J3VUVIqlVIZfF9K
	VyKemzGh5q0g7uweS1yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SD4-0000000FF96-3Clx;
	Thu, 17 Oct 2024 15:14:42 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SD1-0000000FF8h-0kSP
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:14:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A6955A44106;
	Thu, 17 Oct 2024 15:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4C16C4CEC3;
	Thu, 17 Oct 2024 15:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729178077;
	bh=1Ow0Gc+hbjCFowFa4QmWB/bd1kazxemeLbLXTZSMd3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bLwWsQO3I2rtIaZ7+bn98AcU6qA8MULzmeoa42NxVmZN1egxtOD/2LcKU2zolIowR
	 Yja93I3TjsGkx55KOzODmrtraO8Yry8Ws2tjbJsRPMBjKuG2WTIyJJA7Svc8t/YdN5
	 0V1cKuNiC9Z8ZdG4MWRs9/2C/tl3e61PoZxGoo/1jXKXEeQp2z1dB977xMRoMfth+z
	 hT5vKvokc5Q6bcwW67st9JNAbaGGYhcmtDGP1YD/pymqXXyMbp8tqP1cbA5Z5uMjzv
	 OEs81QqMhqbKFKZIHZc1gggW91R0ee+EwF6nmfNxRPq+V2B3WPnHNMQ7JYJ6a+0AmD
	 Kc2KK3zugj7oA==
Date: Thu, 17 Oct 2024 20:44:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, quic_tengfan@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Xin Liu <quic_liuxin@quicinc.com>
Subject: Re: [PATCH v3] dt-bindings: phy: Add QMP UFS PHY compatible for
 QCS8300
Message-ID: <ZxEp2Aca037br2yt@vaman>
References: <20240925-qcs8300_ufs_phy_binding-v3-1-c1eb5c393b09@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240925-qcs8300_ufs_phy_binding-v3-1-c1eb5c393b09@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_081439_329613_F0B8C8C9 
X-CRM114-Status: UNSURE (   7.24  )
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

On 25-09-24, 15:34, Jingyi Wang wrote:
> From: Xin Liu <quic_liuxin@quicinc.com>
> 
> Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
> on the SA8775P.

This does not apply on phy/next, can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3CEDFA3726
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jan 2026 11:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B//gnKNcb+dZd15hD+swKMlNTENJZRDYZvmBgKRSMqw=; b=nV2yOQGDxNwHl2
	/26p4yyfRcwmskQBUZUH8Vm6kNGhJ3AI8G7uYM3VXaN5u0bjflJECWTCK5USDBCb25wFB6Djotv0c
	UPmg21VATuw7NJTiT/5wTsX2TS1tF6LGtQOHEUktUyettcJ2AYzBl2+3cTkB+g0AB8fMHsOfqep8D
	0f/Q6QfulGExUx23+d1qrC1bgL4cM4U75YJIZ+hluCnXzS0Ai/2GwxRP1VV6/lk3zpmLCD3G7XiQk
	zfQUT5LhqR9xhESwHlgQcyFdSFnf2DO0pzifqr03BqQvXudVqDLZdRwmSS/BfUw+rc4flVHbSLJf1
	tXvTjSIFy0HImNcUQsPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdIi-000000088C7-31kV;
	Fri, 02 Jan 2026 11:26:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdIh-000000088Bz-1tY5
	for linux-phy@lists.infradead.org;
	Fri, 02 Jan 2026 11:26:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 97F9760017;
	Fri,  2 Jan 2026 11:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9EE1C116B1;
	Fri,  2 Jan 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767353194;
	bh=CSBspIjn8I+xud4qQsoEe2yu9mZ/NuQy++qx5UJVMFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JecgUqvF0455QsPgXg1sYhnRTw6IlfmpnMhgp62MODggrEOnidNA0CHhLC3TvpM4I
	 4aP5xbM+FCNsdHfCkMSA3MR9m+N9sLS+af9j3RvO3C5FL0Pr3kSiMyEVLP1Op4F9yK
	 pI++ElQJwZmXShtxZ+aML1vpUkyMe5pi1NneqiC3WTHluodNe8MM+rvlYeInFbyiGH
	 PogwMU5YaPdYXHzOmKWqfzq/3vNnBs4QH4iCUnbKrTbjYmmI9f/M2gYUbi7oSQEEkt
	 Mvp3hZEoGpx96gFi0dGvwKdDM30YZhyQEtomJzYfBMWIpK0H0NrYMfm7gjl8Rl8hD6
	 liPCCTTcBvIfg==
Date: Fri, 2 Jan 2026 12:26:31 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC
 compatible for x1e80100
Message-ID: <20260102-logical-frigatebird-of-elegance-8abd82@quoll>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
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

On Wed, Dec 31, 2025 at 03:49:49PM +0530, Pradeep P V K wrote:
> Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
> SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
> with SM8550 UFSHC, enabling reuse of existing support.
> 

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10B48C61DA4
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 13:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOEYa/HqDgu1w08zzaPBtGPVzjGyGfHFQY6UXfqhfnU=; b=g/CRnbY3DToGuH
	cQv6oI+TQCFKr3ppKcoBn54WX1/aIfYCAtVoW3fZa5enfOraEw54PiEfUwngu1bUNFpg7vThs8h2A
	owlDtqj9M41jWBaJrWCZZWp/1dY6HhDGp3zm1dqm7YRrO5uJPhzFpkDtAHmPOy9aScxi54mPWcll8
	IvJDTBJnB4fKzRMap/XkZA5Od6K5OX17IqJZCh+ff2l/WcL3s2jEaVAM9GzVM/E60Y2BfD8E7Jpg3
	Pxappry3D78B8meVjEWcvw9VmKIWfAWiXLtrB++3aGsuoYMQhft3GtPQ4Bt9mIn/l4uJY9xBLvX+m
	7CDycvxY7QzH37LlYaSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSe4U-00AIur-Gh; Thu, 16 Feb 2023 13:13:10 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSe4R-00AIuJ-8l
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 13:13:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 44B54B827AB;
	Thu, 16 Feb 2023 13:13:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AEEAC433EF;
	Thu, 16 Feb 2023 13:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676553184;
	bh=IOmJezREOeIOTxobjrrowR5ko3HRHewbRirrfaN+c0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GtMjP3nzGeEkXR8vdN9Ryc1dOHmTk9xZT9tdZwSWbg8nPNvcB83DO2XW0jztLzxse
	 QaQz01SbuPmksBBoQKd/S859qYHHPybZV6iFiWNfQaKSwlBnYxK5ImGZ5aORaWnMl5
	 +2MHJzZkcCBixD5HQdvmRWSnyz7GaLosdzoTfGBIyr4GZwAOpVMVuYoq6Or+5wesTO
	 QNwYlXPZEX4kT5w3un3J4frxqN6iHZwgZvm4G2CPT399f0ZGwqcNnNGO7vZHGpg42O
	 38e2KyPz+AXyR9semnDxMJvXq0zrSKNFgiwwoEPfuv8ge8paWxg7/oLZHkaH5E+Zi3
	 vMJWV+V4ODkLw==
Date: Thu, 16 Feb 2023 18:42:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/7] sm8550: Add support for eUSB2 repeater
Message-ID: <Y+4r2UyBRj4uZ4pH@matsya>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_051307_499008_8B029499 
X-CRM114-Status: GOOD (  10.69  )
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

On 08-02-23, 21:01, Abel Vesa wrote:
> This patchset adds support for the eUSB2 repeater found in pmic PM8550B,
> used along with SM8550. Since there is no dedicated generic framework
> for eUSB2 repeaters, the most appropriate subsystem to model it is the
> generic phy. This patchset also adds support for such repeater to the
> eUSB2 PHY found in SM8550. Basically, the eUSB2 PHY will have its own
> "phy" which is actually a repeater.

Applied phy patches, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

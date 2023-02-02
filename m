Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB63EC05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/0fGZSfgW0GA+I6BJbH+uckpkO3IcM5ndc1PbK5Aig=; b=dzo19gIl9fFR7J
	FiPMsEhNx4oJ+CUwn4MlHmFfglpc1/YbJygeZKUPXS8B5P4nVDDT3T1n/8XYBQa0BEGo7goIMg8zt
	vW/qgCL5jiHpkGPDbg9WHF6QdqiDAr06Hxf26f8LXY8Jp3xQWPQbQa2I95XUvisRqcNxiLIAP+vm/
	VIhbpa9PZA7lOvOrvhEl2DYqRQCMfiwBCg9UZFcT6VwuA8a+PHd9dJJAhEY9kI6FT5Mzo7+MZafga
	Xvgt7aCkEH4uMv2ph0T04eQAPKgFKkfi6tWELIjNgj7a9qCP57e9FKlYnYlGLoNCKiPEuCMtf/Fsr
	1HmyFYyi1plbUa+8o0hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZFf-00FwGS-Dc; Thu, 02 Feb 2023 13:03:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZFc-00FwEV-Lw
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:03:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 83905B82629;
	Thu,  2 Feb 2023 13:03:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BDCCC433EF;
	Thu,  2 Feb 2023 13:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675343015;
	bh=7nZ7vEEU2cxHmgw1TBI/DSL6WgN09SclwXUQVkPAxgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nvB/5NpzbUUoLHtHm/UWgpeUECI8ScoRC6lISPFfwj3n0GlUUZZeBNE9zpx7J7faU
	 kGPDt0+B2bGD7IPZjwGdZGzCCzOx8zpjXQTBLCpptA/AK1SYdCi29OQNKTiBn/uWGi
	 5GVgln+H6ZtqwJ/0nN4A1A4m2s3NscKpdFdBgspK3EaEcnJnPzfdKYu40q5yLGvM0H
	 g6TGiRUl8Go4eL1UD1U5lNythuSfXV0FsdxmOrpYf5i5I4soFuiP5K2gT0xsIGIusj
	 MXC+QuV8gCX0eTdRckMMMq9F3cmn9bOSzQ6GEs1iYn5apeLYS3KGTWhr3fuETyb79V
	 QnGbvUbKG0qGw==
Date: Thu, 2 Feb 2023 18:33:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v5 0/6] phy: qualcomm: Add UFS support for SM8550
Message-ID: <Y9u0oo597Y1YaSxo@matsya>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_050340_898753_15481893 
X-CRM114-Status: UNSURE (   7.84  )
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

On 18-01-23, 00:41, Abel Vesa wrote:
> The v4 of this patchset is:
> https://lore.kernel.org/all/20230117142015.509675-1-abel.vesa@linaro.org/

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

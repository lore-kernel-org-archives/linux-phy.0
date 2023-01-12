Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411ABC54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee+obSPYC60IDuZjH9x0MsZenqqNJiB+uzt1fzn34B8=; b=cSboKCorS1tOkS
	h0A1Z7L4yh+ouN0gDv68ZX5TAdRUaDubKbJx/ogRNJFe9RHNWd/fs1HoK1pdi5BCprMQjKFOGS+pu
	DgAAk1otgbg9Nbm55mlp4Vjm/mcSynElR2nyLi+Rz0ykMkFM4Z3rlqudn5kb5FbpghYFPyNukqvL6
	xzmsaLHqKBXiYgtCy0Dgd45JFC+H0SjNUSri8fYm1DslK50Uaz9UGXd2JHx84Rs3qhCmTfP4mV+Yv
	G9xGEm0/Wrfr6xBpxeO2joMIWtGSA8ANOMrh/xemO++/6oOW3g+vwYWJ8NDB0+opwGf/YQknS5cH6
	mqTvUOyC9YTzGVyUNyMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1N0-00G2DK-Kt; Thu, 12 Jan 2023 17:28:06 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1My-00G2Cl-1n
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:28:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BACF3B81ED7;
	Thu, 12 Jan 2023 17:28:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4AACC433EF;
	Thu, 12 Jan 2023 17:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673544481;
	bh=wFw13Nu3ncr/oEbKb/ffo480FdbGpZHX50m/K4RKsJ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=otwY419mR0l7/xe7g8iyDAjV/R9ilQUPc/X2xlbE+X9bFvOR90xTdup+DBJXKDNUd
	 I9gH4MqF7VdzcHLhaFwa5jBUZp9tE4EdyXgMZ5zpatnevh2kTrifK1EJgdze3suCNC
	 MA5tspzwWjx+wQ7thH0xho8y7mwGUHyrFdj+/cPg1YhxU+j16MrC9n9b0IbK97mQYi
	 7Dym9tTFXk4jZlqpjqMWfmvxgD4x86St7rFP/jdjt64qLSUm2IOCfQbtcPYUNmYaVx
	 Wr0qFeOyg5HRyqNCofeEGGfIaZgIQWae7wZfUpsa7YFeJEvOgAGCP655AgDDt6l4Vm
	 QILylIPLnNwJA==
Date: Thu, 12 Jan 2023 22:57:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-phy@lists.infradead.org,
	waynec@nvidia.com
Subject: Re: [PATCH V6 4/6] phy: tegra: xusb: Disable trk clk when not in use
Message-ID: <Y8BDHVIeKJjVcLng@matsya>
References: <20230111110450.24617-1-jonathanh@nvidia.com>
 <20230111110450.24617-5-jonathanh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111110450.24617-5-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_092804_271762_1F4B0C45 
X-CRM114-Status: GOOD (  10.22  )
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

On 11-01-23, 11:04, Jon Hunter wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Pad tracking is a one-time calibration for Tegra186 and Tegra194.
> Clk should be disabled after calibration.
> 
> Disable clk after calibration.
> While at it add 100us delay for HW recording the calibration value.

I have applied these two, somehow replied to an older thread..

Sorry for the noise

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

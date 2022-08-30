Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0B4ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Odh6YgD0nCUvzhsHE2rYJGAYFEVG7v3ZmjaYXzDcHcI=; b=q/N8GceMT61ucq
	yDS04FADtJQMwIqj45MDxY7cs/dUjUoRectp8lkNoJDFb6n/6tzd3umy5hpCFiZAUgwPqGnbosbCk
	Ykxc7n52RxghwyjkuZ57vpUwMyVRC+jBlbzWo8xKHYA3m6mclSbB+tG8WQBHzo57Z0RaCwD3qYyDs
	5KfqyHuO3x/pJGlXa4ZQ1GWbg7EjadoSZ/mH3dbNXWtY7MFgTWv7x52UDrgNUtkwUmsL+bi4IdYi0
	igwsZOMqL8KxIIc0vqQmmrAHlm4WW7RBfUpMZIBCvKLhxCtCTzgd5svFLxvts1ee0h8QESflPDIp0
	Z7QE1p76OkDHv+OFotJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvLG-00EfYd-4T; Tue, 30 Aug 2022 07:07:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvL2-00EfPI-4M; Tue, 30 Aug 2022 07:07:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 757E9B815D2;
	Tue, 30 Aug 2022 07:07:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7672EC433C1;
	Tue, 30 Aug 2022 07:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661843222;
	bh=FMfNnM+I09AoWhN6ovBiEHCCKZyla04MjnYb5+HBX/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lYYXLxk559HkJfjNSMlOUQiSfxmgGkTvUoP5TmcQofe4V8571S7IOiT3f1TjQqmVC
	 Ku6V/1aJq5Hc5UCnmkQD37kIleKUeuZVmTXaSJ+CpT2Ri/M0wF1arbetLW//AJL+ZI
	 pFOtnDyS+pmha2UuFVX7wxLKtGZTGAKvrE7UB1GeDwO6/GA90m1TBYdZWL6S/kWoea
	 DUXujmq8LXDmAhBjOvP3HQxYaF9o33MXsZ7Fbu9KItTzPmO3ATd69PiZkwnIxNO3r8
	 RfyPzFfNgvGHBWVmJijLNoKyd5ygV+WwE/vH3xwWducmXNQsex03NR0OA/+4Vlx/7H
	 vVG9imQyidGnQ==
Date: Tue, 30 Aug 2022 12:36:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Ray Jui <ray.jui@broadcom.com>,
	Scott Branden <scott.branden@broadcom.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Add missing
 (unevaluated|additional)Properties on child nodes
Message-ID: <Yw23EkV/P3fuNI4C@matsya>
References: <20220823145649.3118479-14-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220823145649.3118479-14-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_000708_472736_9426F23A 
X-CRM114-Status: UNSURE (   7.22  )
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

On 23-08-22, 09:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5A9C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7APRt1v/oiq3Exs2xOpsDzNNRKEUIc6TW1imMnxyfaU=; b=mESgvlF0gPuqBT
	Zhl/DEzRvqjgsCIXSKiefNyTz0Rb3LP7oeYuE9v54XBXuadQs7DTVGwlXl5/EEh3lXc7fTblOI/hc
	r+XP3IKVHZOuPMvcGyxxYAo3Lj0As3n6e6eMJ7iMG1r+11JfLSOFDqTF4xV5sJIT0jwSbQu2e2y6T
	3GxSWfHUpRBAC6q6qs7rDWSQtXa4IEzyVtN0of6NDcynbP6MjMoHdOvTtlRfU3fxIFF612DoGXAzp
	UFZTc1OzjrXUmsSzqbXFeWKv0ARdB6763CuJajpkEnfqs/xcsMiCmZcn7bF7SjRZpDnhedT9mqYQX
	2B5Qe8yHlyKRUAHm445g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fgI-00H8M1-V6; Tue, 05 Jul 2022 10:21:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fgG-00H8LK-6y
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:21:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C0FAFB81749;
	Tue,  5 Jul 2022 10:21:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 725AFC341C7;
	Tue,  5 Jul 2022 10:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657016477;
	bh=My2bfryJFl4wIdTf2/BEKso8md3hI2FZf7UQSG30KSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nXXXIQXFkrsj7/rIYJXiRO8dTXW+bjCoET2ZFYi9Tt3G8FksGIfwFhxeTgBszBGK+
	 Lb8PoXpMRIOO1P5Ck/a4AUU3MzRuOkjoIUDmY0BTWVMVTPdW1vsfoQyPE0pbW2P4aE
	 1rUAbPFfK+CD5o4iwiBIfwJRqpsF45tqHK/LCCVT1/sW7z6JX6NU2VnRd+tmfeAulT
	 0J88flnbnEzUnDezLlRy7sBBBYlZNNDSbTKgTpnffH+gJWapS7cWIVSdTPWpnPwqij
	 7/EFg7R9vMLw73bGZ7fCYx17NjT8hYoeST5gRoXO+EejHp5kWOc/yEroqjczDe/8tP
	 zC8a7lGRWpN8Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8fgD-00055i-Pj; Tue, 05 Jul 2022 12:21:17 +0200
Date: Tue, 5 Jul 2022 12:21:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: clean up
 constraints
Message-ID: <YsQQnT5ixHtSo+vk@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-8-johan+linaro@kernel.org>
 <4b1a9ded-24b1-faf1-e105-f18afef57682@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b1a9ded-24b1-faf1-e105-f18afef57682@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032120_432311_C7CFC5E0 
X-CRM114-Status: GOOD (  11.30  )
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

On Tue, Jul 05, 2022 at 12:09:19PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 11:42, Johan Hovold wrote:
> > Drop the compatible conditional and tighten the property constraints.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Squash it with previous patch. Does not make sense to add new file and a
> patch later change it.

I beg to differ, for the reasons I just spelled out in my previous
reply.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

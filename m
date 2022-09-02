Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B22ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDJ738pule2T0O+DKcOIdmhdJ4GwZJC55y5FTZcnaEc=; b=XgEdR6f8p0NGjn
	kSSIqgrCRy3OTqbhgsIipW5H+K+pxoBifr4low7NBTRRjUepsCN5xWNjcQ/KWJUxdcJptnt8Ar6BK
	+fCX8cwutobWeg7OXBZE0Uq0XXZmeydKt70BaNdnpW11jON2wDsJpt/olm6QXnVidRG7a9hdOL3kS
	aB8txUov70s5RAFK4sfrBdn2NBbIiUoeW34ac34OHrcCHZc8A0zbmbQHyCu4YTp3pd5Aogkk59Qk0
	lMa71V6T0YJ9iILdtvNvHvhsT8guBv8Em7MF9Xx6hQAVJs1jhV3MIYiIUt3nMAnsVA9hSeo8kL6lL
	n+YDbbhbjuVCMbQOqUuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAQt-0085Nw-52; Fri, 02 Sep 2022 17:26:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAQr-0085Lu-Au
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 17:26:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F1226B82C77;
	Fri,  2 Sep 2022 17:26:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20B8AC433D6;
	Fri,  2 Sep 2022 17:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662139574;
	bh=Se+I02gEhyXCqeTHHuUDXwx8mkIp6MEIWCCZx8JwIR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ii05UBBr4n1t7/4wvbt0XlM54gruE9+FA008cbxOHxCdiqZh4pDz89OpV6FDNozeq
	 t/+CNXMgzQIvKrOMk3deXU41T3V5OI9QAxCviRpeFooUiSdSEwNP1yo1FpqidZWAjE
	 3mTQ7OHyvQ6nUz5PFmbubjj6BSyR20YgpOEUKdZ1o0NNVtBgUs0TSSQyuzXB9tZpNB
	 xJysIY/f2EQAX1JScQim6Pat9/4xRnjB1YISdT+impy7zpJFPBQj7RPw3d/BvQX5DZ
	 mAFa+W7bij18qSiJHpv/urUbeolkx2JAp2+yrgJeFCJiKcHOg7Fuy93rfTui6Api23
	 qSRGNnt02+iIQ==
Date: Fri, 2 Sep 2022 22:56:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: hisilicon,hi3670-usb3: simplify
 example
Message-ID: <YxI8svqIvOu837g3@matsya>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
 <20220817142246.828762-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817142246.828762-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_102617_534794_12DFBC9E 
X-CRM114-Status: UNSURE (   7.82  )
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

On 17-08-22, 17:22, Krzysztof Kozlowski wrote:
> syscon and simple-mfd cannot be used without device specific compatible,
> so simplify the example to fix this.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

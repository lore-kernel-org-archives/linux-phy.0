Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4734EC77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 10:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2q8iPiAP82dd4t+nGza7BQexNUnH76zI2HTacAVu6I=; b=hw1JUZYzA9Zzrc
	cmg6MFDAs0XPZgZhNPVcFTay5GD2OIPXksrRW3XrUN/pftq4cB6O19rdxFlZtMBdrXAJD742zhIBH
	gCgxj85tNaPoxbhuFdQraOm14szzZFWnLDFyJNZpol5K2TPAd5z46kToUpG+wZ+b3qcA4MEDnV0+5
	ffk7feMOurrtSrjek77IfZ7Xso31FKOS2BOZRe6H5ajehGw/zfA9QrnbSMY7IkDn/kDqIFkNBHAf6
	zw57x2BypHRS9/mBo9YxYCTb9OiUsSB6epImBn8F3ed2lSQl0ncTMX+Lql0LFjhnj7wvw8SqKaTa8
	sCkcxqeR16LPL46DUUFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvy1J-000D1J-2y;
	Mon, 08 May 2023 10:23:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvy1H-000CzI-0c
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 10:23:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 853FE62581;
	Mon,  8 May 2023 10:23:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F5E7C433D2;
	Mon,  8 May 2023 10:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683541382;
	bh=c/YHsoXXuZrBTOn2FSuZcrPJg8AnO65IRgva4Rff1io=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O1I/n/yTGDg15cLb0MWGhSrnGEBH89PYENy8c6akSL2uCHwCkNTzmcJdh108j/AZb
	 HWDjoPj87flsD6BEEntDeVzbFtsdKxrBwHpqp5PW9ELH4jn71wi9LK37T/ZgbJNeWT
	 5y+9fL/t+LivW/L65vr0yI7DlzRlJ8udRIaa265hBkDtJRzqWDsbQ9soplen+hxj7Z
	 yW5d/ekRfP5eqoOMST8RG9hVuvWZ4FezCLZZ2gFJMKhlC684Ahx4r257CbJh+w31AS
	 3oUqBe08cAaWqoowSF+MKB9C25Jvgt1Nnikps+HQxhfCOpnor5MEejv7pHgGJPlBaU
	 TvZdkegCdeodw==
Date: Mon, 8 May 2023 15:52:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: phy: qmp-ufs: tweak clock and
 clock-names for sa8775p
Message-ID: <ZFjNgoWFciBdd9U5@matsya>
References: <20230419120914.173715-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230419120914.173715-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_032303_274932_76AAA649 
X-CRM114-Status: UNSURE (   7.87  )
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

On 19-04-23, 14:09, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> maxItems is already globally set to 3. To make the binding easier to read
> and remove redundancy, set minItems to 3 for sa8775p as this platform
> requires exactly three clocks.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

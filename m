Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C77C1C77B6F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzGjzsSx0YHlaiVl2rnS9A8zwcxx0wuxg0Gz5pPKjdc=; b=LhKVJEjEyWo7cY
	AJFdxOdes2en75xE7oWmwodJGMTa3KozePdw0+3OJMx9bicSCshM1RXQ+BCQgqGm6NNNAxZ03c2uZ
	vlWrbIfI6JrHDJJpEFzLHcSCbHOI8JSZvADi1Qw2Nu3wSo83nyn8pcHumJlaZIQ177UBWyEKDOI63
	sj6wgnPCwm1opq57abV8+DsHhYaCADc1QQdMGD77hrbMZ3XMAsCFaGNXDXFC+cNNxcui4MKvmgUD8
	UcTjsCS2vteClDc7iTLtzk1OoKtujY2Jc96PEA/Dd3S7DTKFQubTvcpUzM4nU6fqqHdvzS7AGFtUv
	mHrdnLNWme8QQgO1XL2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmd6l-003m3g-1X;
	Wed, 12 Apr 2023 16:14:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmd6j-003m2t-24
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:14:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 18D23636CC;
	Wed, 12 Apr 2023 16:14:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0AF3C433D2;
	Wed, 12 Apr 2023 16:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681316044;
	bh=jlMPZtR7QkByIWr6DdPTXBY3MC8bYnsCBxrHJELeWXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eOTZRz92E0GfcXaHD3fHLybBscQUuNucU5MrgW7x5MwwiSRe04SvrfWyrwEkF+mWO
	 LQgZko8I4Nam8rPp2G3XJa7Eqj2dvB6bqk3/lqc0SBas3jUnXOsx8eIuDdJTPcM5E1
	 0mXdrBS58zjzcwE9omnODDK6boakHy79TI0VHV3FStTUWF2jjR0K5At7y3Vz0x+p/5
	 uMLZKQ3VEmRMzq28eo9/tahLII6hVleVdnOAHeIoaUZd2o9mzByXbFnKei8qLq5ys/
	 1MQsAOQGz2uXCmOvYOOosQc4+pgaS7b8/mExX/RPiYdwPitHnaGDw125xE5ZAVkp7v
	 E/3isjh6xi6YA==
Date: Wed, 12 Apr 2023 21:44:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY
 for sa8775p
Message-ID: <ZDbYyL5S82xx2EiH@matsya>
References: <20230411130446.401440-1-brgl@bgdev.pl>
 <20230411130446.401440-3-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230411130446.401440-3-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_091405_713560_3A2CCB48 
X-CRM114-Status: UNSURE (   8.37  )
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

On 11-04-23, 15:04, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add a new compatible for the QMP UFS PHY found on sa8775p platforms and
> update the clocks property to accommodate three clocks.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

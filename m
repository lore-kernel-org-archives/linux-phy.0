Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 755CEC636CD
	for <linux-phy@archiver.kernel.org>; Fri, 10 Feb 2023 16:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ce28RujkeX+0fKwmJBPrwN4Nlr8gw5tu5Iabt0jklRc=; b=aipgEeO0GsAqRY
	xCqHdP8Pm3JKBkSP4SAouwz2A5FxFercbjTpg0FFbjsSH+RjPPE1tbOEL0ziLbyJE07JZCny0HSiy
	KWdN0OyBcJNtm7JO3+IZpXSMnN1D1Ri7Mkg/hFjzybw3kBpcuCCROvvwb9NgOSKo6XR3AFCA+U91z
	Pg1YOgabuBaSiEQflQcTDjP6HtIzXWifIVrnnwiUjkbJlUclHbR7lTocjoJy7bfNWBZZoDenJEI0a
	QJgJ07yGz51qIGtdXnT007EjjzIWY0GTmg+/wDzg44iJy9/DLObTUQ2phzC0Awpf8HbCBCayBlULK
	MVkdBIu6RschEu35aESQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWhk-006brs-SR; Fri, 10 Feb 2023 16:56:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWgG-006b4k-0N
	for linux-phy@lists.infradead.org; Fri, 10 Feb 2023 16:55:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 56C5E61E59;
	Fri, 10 Feb 2023 16:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53495C433A4;
	Fri, 10 Feb 2023 16:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676048123;
	bh=HX82XpHSvbyc94VvPhaVw4a9J1mYgtjVAL5Q4yKGinw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EhkVPPtKsr7agUSyd/GyH/Tsj3yy9634Ay+1faVJgy0cDiD3zdrhcfaiwhpyi74q7
	 AnT2jcsyhnEHZLy3FkQt1IBO2icc2bg4XiEH5HbItg4JLmGEjHzj7IQQsEZOCk/rTk
	 98h78ddszhlDxzJpcMuZ9rBns+N8vbL/1dSKsna0jiNgecymQ9vgV43/nLHT/sZFTv
	 o7vGHegpuJMhJlXN7nN+bgGPVXvxDHNsgP+vRiRvi45v+Cu1zanJHVxGp24MBU6wGB
	 KbntjVv9Jks529aY0Rrr57I35BWqjuzxQDLE1B0BO9mtnEGTOFlEJgXrv1K0enR00a
	 bV+FyDyfx7KrQ==
Date: Fri, 10 Feb 2023 22:25:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: qcom: qmp-combo: add SM8350 & SM8450 support
 for combo USB3/DP PHY
Message-ID: <Y+Z29g3owbIoZOEf@matsya>
References: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085524_122026_8CC7AB37 
X-CRM114-Status: UNSURE (   7.20  )
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

On 06-02-23, 10:58, Neil Armstrong wrote:
> Document compatibles and add missing tables to support the USB3/DP PHY
> on the SM8350/SM8450 SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

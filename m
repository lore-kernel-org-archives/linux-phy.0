Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411DAEB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 12:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0jCjYYrj2Xgh6eN2HHOd6DS9txrFB5HjqSmCvxiu1M=; b=cXKJ4xPif0VzUv
	BusKLKMUb+tbiLkdXLn3Sq2+iWOstMyCe+BTxAHuHIJSEFXtlFYwLpFICWJWl2YQV6h6VxSaj4TVB
	WtFq8A0M+c/ez+URMldLvNLciKP7yebxe70vlQSMHyLXQ09qqO7JW21ce+35pFWIuA45dKWmOySEx
	p+++d63fYv/R9vicBfWfHvbrUOPGsyDb4utujstfTcIlIinJOh1/kIu8y515khIBAlUdHhRtUI28p
	HRCeiapl24AacKu5BgbrPhDsFakuEJyFRQsVsIcYLeORh8D0nz3SY7sdfj9cJfAxPVUPCqoXtsp0b
	dc0EQsDu+zk8njraO8Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwk9-00EVRD-2c;
	Wed, 21 Jun 2023 12:15:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwk7-00EVQ8-1d
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 12:15:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 17BAD61549;
	Wed, 21 Jun 2023 12:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B528AC433C9;
	Wed, 21 Jun 2023 12:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687349722;
	bh=EG5iUSsfn8L9pIBnxfzaaIw74ssf8U24lAZVXDLQ1f8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sGbz0dzhwtKzjxDxcMTkB2BXGIeQ6H75D/OcGk3xUHPx1s6+/l2phthvC0I2IxC1R
	 4gdyKHSA0fUBk4hTsr1+P8aQyFx2D/M2yHs2ZW63sMBN9iDvbZbLjqGdGXr6BBLVbV
	 Z4vngki/CMLXxdXtgq919R9KSI2jXxS/F/58OBWtHb16RoUDS2sb8xYgJFQsZIjqnk
	 5QaekNmYFaapRjXIFRbGBDfz+aNJaXKsUztisxqX3KYL/n7cZLrIqusuuqOWNQazCl
	 ZSwvoBCS/+GtqspMu/iGbpEqn+I+1wajTd1zuGkpv+ur78Md/JhCXpxr4ByaJPvOZb
	 biy87sjX8Zk6Q==
Date: Wed, 21 Jun 2023 17:45:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [RESEND PATCH v2 0/3] phy: add the SerDes/SGMII driver for
 Qualcomm SoCs
Message-ID: <ZJLp1uPklyG+EWbK@matsya>
References: <20230619091336.194914-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230619091336.194914-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_051523_581202_E1D16C45 
X-CRM114-Status: UNSURE (   8.12  )
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

On 19-06-23, 11:13, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add a new PHY driver and its DT bindings (reviewed by DT maintainers).
> 
> This is a sub-series of [1] with only the patches targetting the PHY subsystem
> as they can go in independently.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

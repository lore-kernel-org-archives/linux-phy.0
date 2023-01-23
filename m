Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E5A4C05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 09:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzL/fpo378eHmZ6nSbw917h/t6z6hBXh0TrdwwmhJ8g=; b=pL2t/6fbXC8y35
	jr8aL7f9SgE/ZfkT9fEbNQ4b42o1+9DbwEPuJyLb+/DRaaGBpaFC9ZvvSr6Cq262FidtvLJfP3/rz
	ddqKde38sn9IqmYtUMVd2QiZdARWvZ/WWsdrch7fcRp3bTaWGs7AylYqpYrOyCDe1sXwe4C8hRSsi
	Av/j+OoXi01M7DYxOZh9bHuNS+CUr6Fkd8cTvSBPv96AWv8jKbENnM8IdRxLYIW1bYzvzR6iQ68M+
	f1030r219zSuXzV8xK1K14PWnQuCOrBcPTdMnV096N0hsXAv4AEwSqknT34R+T5hdqflMT9QQ34OY
	UP1itqvSZUm1u59+MXLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtS9-00GaD7-GQ; Mon, 23 Jan 2023 09:49:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtS6-00GaBE-20
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 09:49:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id E601FCE1089;
	Mon, 23 Jan 2023 09:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D9B7C433EF;
	Mon, 23 Jan 2023 09:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674467352;
	bh=Wppp6t1Ew72CCxHbUTMXjfWwq1RzWKtBIGTCgXrV6+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s8TGGfZY+muNsno5nkyAUL96stSqfnbAFFMWnCuYtR3s7rZPUWMBqarhjDIq4SZTp
	 Brk6a7xJMl4X5DZv/Mx6cY2w16P38+rEvZhTgNtnDdIdIFRG2vyalPltvbSELGW/RC
	 jXriJgnClu9JPiHLZAXsU102QZncLMZrhBumgFGw/41BIWlgk3dnyv1irEQQ57l2UP
	 1F9f4uyVoz22wbPiISV744mOL7mEOOQhXj5gcTIVuDO5gFGCAK8x3VGg5yUAmoxAp6
	 3sBtWwsjMnthm7wItlldlNa1dGz/EhExwE+AmnwCURPinjnLRu1Cbrc2Fwucvtd/y1
	 8BVmit0xKpscA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJtRt-0000K7-Ac; Mon, 23 Jan 2023 10:49:09 +0100
Date: Mon, 23 Jan 2023 10:49:09 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 6/6] phy: qcom-qmp-ufs: Add SM8550 support
Message-ID: <Y85YFfvMg1f/e6EC@hovoldconsulting.com>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
 <20230117142015.509675-7-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117142015.509675-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_014922_321352_7AC73799 
X-CRM114-Status: UNSURE (   9.36  )
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

On Tue, Jan 17, 2023 at 04:20:15PM +0200, Abel Vesa wrote:
> Add SM8550 specific register layout and table configs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609F6C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pkjn7lD8r+3o34OMQePR8zKvBWD5ZtwP54CwtjnprUw=; b=xwuHaFCjd6IbIu
	kSpKH+r+60E5c0c6bLtOcQeNjAAKOudU4Ru7A+YZBwxaNprCKpOKjFZofOOdkhkfAc1Cx5DEUWbNG
	wBOJeDcRsHR5nuCBFXnTtPN6EosaBuBaUmc4QoxoAmQ91hsbRz6d3/GXsJQLCB5hrg4CTkwVmdRml
	WH5UjgEWnZBkeaKf4aojvIy7XhtA2aqfsiB7YV1Y+3rPa15wiMMri9WaYoaL2DeQw4ER+jR73cE3P
	AP1GyEL232qj9vV3QCk9hqY+cmbJpPWcwdisliZBN47gQK16lRgT/oj7Cf8i/kCvjjj0C7oxZ0b6s
	WKKjZTLxM0iqlsfzB/FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1fz-003jtI-PF; Thu, 10 Nov 2022 07:08:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1fw-003jsc-Rk
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:08:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3CDD561D91;
	Thu, 10 Nov 2022 07:08:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18549C433D6;
	Thu, 10 Nov 2022 07:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668064115;
	bh=bC3mntiO+4TdnNlSsGW2KWLyVk6VhIwgdCAIZqUmDhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fkeaIVavbPyf8nxRsqLXbkYtyY1sHTYZUw2uUmEl+c4xiyNGhmoZsfjeqOQmsj0Gk
	 gKT8DrXBwsxLOkyD76kp8s3Av8WO7yfvoF/9RFMids8FrYUKtcb3jUt9PaK7mvMYl7
	 uL9r8M8ewXk00smk1QobnnHUoHEs3IUKLRBIixhugdnzasL1qktbslb1wUfCDzrhju
	 +8RFeUogxbLRL8VyzGGwhHo/fmUtiotKATFKFgcNS0T/t8wfbr25hWYPkxg6jHhDov
	 XGtEUVymgpuweMyfSy7wZZ8Mp+0ScjhvOpMslAxy/JUkmcJgBkBeglwumFHDQNmcAu
	 5y+U3VmoHWACQ==
Date: Thu, 10 Nov 2022 12:38:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq6018: improve pcie phy pcs reg
 table
Message-ID: <Y2yjb5nLgYUhey/P@matsya>
References: <20221103212125.17156-1-ansuelsmth@gmail.com>
 <20221103212125.17156-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221103212125.17156-2-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_230836_952155_1869784E 
X-CRM114-Status: GOOD (  10.07  )
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

On 03-11-22, 22:21, Christian Marangi wrote:
> This is not a fix on its own but more a cleanup. Phy qmp pcie driver
> currently have a workaround to handle pcs_misc not declared and add
> 0x400 offset to the pcs reg if pcs_misc is not declared.
> 
> Correctly declare pcs_misc reg and reduce PCS size to the common value
> of 0x1f0 as done for every other qmp based pcie phy device.

Reviewed-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

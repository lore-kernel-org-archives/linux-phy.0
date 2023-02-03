Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08268C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 09:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rM46bwSmIXq27EWoBEqnNYIr7NiCm9qrmQqx82GKsXI=; b=3LkObUtI3iY8YY
	1uuEJ1hAnwU/ejqx28wnasklQCHls8XCtl4Ip4nJYj39UP/+vRDp3WeWUgwOQvUlTc0xlKhi2rmq9
	xOHXNCY1QFrEfU2mVI+zpweIgVNkRMvNlxOKpm+cUx6oUPYK3fthLUvslaooijhb3cJ/zmgMlecTI
	2OtpJ4Y+WAItX7Bogu0DmwwWtwQhrX2b2dYFuRa2ZuNdeTSiBiGS1Qv/ljLVPRnF89IFJaWC64MqM
	DgJSPKJntfsy/+1mrRjczR8yKr98fFWiFvZy6qJq5yy+XCXDgFZKitH1Q0QpIOPV9pGPAdm0JWEif
	KKwZUF+oHH2N4p3RYH9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsTM-001CtO-F0; Fri, 03 Feb 2023 09:35:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsTJ-001Csx-BC
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 09:35:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DD08C61E50;
	Fri,  3 Feb 2023 09:35:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13BFBC433EF;
	Fri,  3 Feb 2023 09:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675416904;
	bh=A9V3jnSb1h8r31+VYbaEZFyq/pUtyYwWwH9oHwje4yg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kr/QgpqUwCfYYixm4Zr+JAyJ9gSKeoHbYB/Y0CUgFrS29SBbS35E+ovAaES6FdOV0
	 PVPsQp6vWA/ChcfmmgIhZ2RM9+KKWyI0XYBnSB++cUzHtIAt9z+CXs8BQBzgvJSZUb
	 iqL3ThYMMJ13bQL8CizxAuFb/VPb+vkVHu7imXRl9P+QnCItT8/yQUOEXSyMRC5jSS
	 O7/D0FLVrGdGVAsKMMfuElZ7zM90O3sV6oO0AFTN5uLtt7DUkyjWsJK3wT+QMSOIu8
	 Nx3s4ioTFh+XaJ8JREJgzOyXYRBw+Q3JaaJXAKE3f04sRYi3kQCZA49XaEUoRdbLm3
	 C5SP8Eto327gg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNsTi-0000l5-IT; Fri, 03 Feb 2023 10:35:30 +0100
Date: Fri, 3 Feb 2023 10:35:30 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Message-ID: <Y9zVYj5O1joAsS1e@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-10-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081807.2248625-10-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_013505_444729_4C01067B 
X-CRM114-Status: UNSURE (   8.68  )
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

On Fri, Feb 03, 2023 at 10:18:04AM +0200, Abel Vesa wrote:
> Add the SM8550 platform to the binding.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

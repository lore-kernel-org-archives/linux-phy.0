Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D50FCA0FE4
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 12:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULAU1SlcE7yxdvzGGk2bDOfQv+51qhR4YOepg0YRM04=; b=vL3rZ04geV9QZf
	iF08oa8CPFlkIbZkb3RG/DRUmCcvaiIGQkDN2VeEfVT/5LrHY7TxtldPkopIx6F0/LCS+ACae7bl3
	qQ03/gPCtykzVh3HS0LcAev/wVw36rBnLi/W6qzqDUYOMqpCOvUWFHcCPFaiAkafq1+1oLHZh/Hpz
	SpZtHbOeaX/oIcVbs491WuPuEYgIvwbAM12vbJiGlpJ2NxjVr0KTV0dyOERotYNwNDuroCOrompAC
	Fu9iya5Jfn1SvB94di/iduOa4TJyLWtLoKXUTDVuBuZKNzumgcCAfcbpcUA4x73C1vCtzXZsCE7dL
	y8N3yRfTIoLGKwD23qBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk0RK-00000006AQh-1Gs4;
	Fri, 30 Aug 2024 12:09:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk0RH-00000006APf-24K2
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 12:09:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E6E87AE3F1F;
	Fri, 30 Aug 2024 12:09:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27319C4CEC2;
	Fri, 30 Aug 2024 12:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725019752;
	bh=+PdqaIAnbvFWzUlrXS5dGz+94tQph/rZhL6Pzhzm0RM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ts4mj0PWgjvWJ/9Hvw6e2c8sBU3UXW4VOt1XBc3uiwzIHodYOSPFnXiXmn6oQ1aXn
	 hNIpT7dx1M0e+NcN5fStkUQIccy6aZERUXEiA4hVf0eoD3epSzGBiC7R4IJLSaHi8S
	 c1VpE7Hu9OZWLZ1T/O4bgx6l4pnxyWxu10ohFpd1hcbxOGkjLpES/Foo+Y5hs++i1/
	 3eDhCkMA52nD5ghHSz4IRP8LsHnvTRPtF+P5TkJVrlOF+HHGafZI3veIRAC9nsncid
	 BGYDdQlw+ohuFc6+fqJctBVx1Zh6rRl0CtO4QtKWev0AeKem/9mCK8kfBWWAEKxxKH
	 k9KqumZy+tG9Q==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sk0RR-000000006vI-47q4;
	Fri, 30 Aug 2024 14:09:26 +0200
Date: Fri, 30 Aug 2024 14:09:25 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <ZtG2dUVkdwBpBbix@hovoldconsulting.com>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
 <20240823-x1e80100-phy-add-gen4x4-v3-1-b7765631ca01@linaro.org>
 <gvx3sdsdxigel3iwu7vgvvgxohvnaqq6suogsqojeumobhwhdk@5qct23m5ncda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gvx3sdsdxigel3iwu7vgvvgxohvnaqq6suogsqojeumobhwhdk@5qct23m5ncda>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_050915_691192_6553C5D0 
X-CRM114-Status: GOOD (  13.54  )
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

On Fri, Aug 30, 2024 at 01:42:10PM +0300, Dmitry Baryshkov wrote:
> On Fri, Aug 23, 2024 at 10:04:15AM GMT, Abel Vesa wrote:
> > The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
> > 2-lane mode. Document the 4-lane mode as a separate compatible.
> 
> As the patches were merged, it's too late for this series, but as a
> note: we should think of a way to describe the PHY configuration without
> changing the compatibility strings. The hardware stays the same, it's
> just the number of lanes being wired that changes.

No, this is not about configuration and we need two separate compatibles
as the two PHY instances are distinct and only one of them can be used
in 4-lane mode.

The mistake was to ever describe pcie6a as 2-lane in the x1e80100 dtsi
(and possibly also in the ambiguous commit message above). Whether
pcie6a is used in 4-lane or 2-lane mode is determined by a TCSR
register.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

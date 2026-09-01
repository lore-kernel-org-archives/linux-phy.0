Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D80AC61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 10:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HofJFRv5tL0vEF/7Goqb4Pi2cTSv3Hj+isvtIdI82lI=; b=dAw/ckf0N4ECCn
	p8x6dD4ri7zsoSk7AkHdltbuqTUpjIhGOwckf3lyYE01IKa7WmJ2YWUO6A7/ynftiYAI7emQDiyBe
	/AN9hnWCtJajyGtgPhRwBCODru+RBYVkNHnKNimPUjemxahvzOvctWQ87luGiKDX6GhDVNr9FWESx
	M2iAlfnSSMosQcSUPA2rFdeWdcCADQtHAclJRvSa5f+sj9Jyx6MiGdmusj4lvf1+zxjyFoRMTpA4c
	QixrtWCk+N1fjegMeQbDzZVrLvyJVUW9b2u8gpRGwLE6k7px60l34FaID9WQPoJdoJ7TC+IWU+Dpl
	foRwl4bjxTyHnWWudrhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LO3-0000000BVEe-0sQf;
	Tue, 01 Sep 2026 10:06:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LO1-0000000BVEJ-46f9
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 10:06:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B732C40109;
	Tue,  1 Sep 2026 10:06:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 926F01F000E9;
	Tue,  1 Sep 2026 10:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788257197;
	bh=N6vsrlm2hMd38203aM1W4fiuSrY4VcnvkKHxIfAHuGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iegxtGDkMCtYK+3NeX3SQQ8VBgA+JKB6ME8iqXiHmwoXULu+5vMFYUxzR8J+uFUsL
	 CNVJisI/VvwBuIHu3w4qPHfHy6fwWoywU4UNM5ngqHZu1/DGjM8+6Hetiwb1+vpAB+
	 e3ZfrVcJo06bBwIUx+9o7Dd4B3FvgPJELQqTTF9uqKfMlJtnKOqYYfiA42G2Wzz7mE
	 06mnl90V2inBYORlS/etIKXfQGX35qCsAr726exxEQDFL1WYdSmnJsdPJ524EJrNsW
	 VxAWo/KZPzwpRgLRRl5NyuEjymwTT4ScjmNm4nF4sZzn1fz+4ta/PjABXiptx3zDKs
	 OWv/kxo0SJ/4g==
Date: Tue, 1 Sep 2026 12:06:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: mathias.nyman@intel.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com, 
	linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V2 1/8] dt-bindings: phy: tegra-xusb: Add support for
 Tegra264
Message-ID: <20260901-heavy-sweet-pillbug-366318@quoll>
References: <20260831185835.3732707-1-waynec@nvidia.com>
 <20260831185835.3732707-2-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831185835.3732707-2-waynec@nvidia.com>
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

On Tue, Sep 01, 2026 at 02:58:28AM +0800, Wayne Chang wrote:
> Add the compatible string for the Tegra264 XUSB PHY.

Same questions as v1. You will get exactly the same one at v3 if it is
not unaswered here.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

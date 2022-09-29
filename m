Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F677C07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 06:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNuCeZOn2dw1dwI7GlpGDl2jLT06e/UosGhvC9KT6AQ=; b=p0+l0gJDNSUwuU
	EIl0kT6RR0fuVUUF8Powh2lW2Y1Vfdoj+Z2qpsJxbWKwpilCVWtTb9V3OnV7rgbcu6pmaGuAbP4j9
	2HOJv3FJ4Lb9vpLmMldBUbZZqVY6vV048086t1bTPQqSX1f/8EDM8XOazl59q8Z5ULHUIjpEoqb5E
	SIEn/IFndWbmCBBXriyiVHNNQ2iJ/RbSeGY3kTc03/ag9K+dktXB1u39AB0BOMbOvTBaE5+agXpCt
	Hh4kZSdc2jHOJ1mwagg9pwaNbgbpLwS6qNg40wURHLe2+IaRgjipqp7PUvFxONfwKMKq+mmiC1bMH
	AoBBtfQH7YKXiLyAjy8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odnQW-001TdV-HE; Thu, 29 Sep 2022 06:53:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odnQT-001Tck-VK
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 06:53:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A86CC62039;
	Thu, 29 Sep 2022 06:53:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 120D8C433D7;
	Thu, 29 Sep 2022 06:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664434420;
	bh=LFweTsO4MnTTYYrLm4uANYodqTvLuM/O38rajPJjUpQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d/jcWnHlQGeqx5DFF4DF/OjeOleao/Vk935sILJGHluqLfPzeo4l3jeTBxAulB4FE
	 9e8M9k/uJ8QD2dZ85kfG0g9RgE/4cv2AycD1OlaOJRobQ1c//7zJFzmbGTxpRpML1H
	 dBN2tLdinznd2cg5J6okc7aDlT7QXTnP/kJ3BhOUL7XXoSaM3zbxVDM7ZBmoEq+53X
	 2+dAYFVVA/B3il8VrZs54V+acYS1noEI7d2kFvjbvWLuw4Ufg98zmJAGNYL8KXjBqB
	 CXKFJGh7ITHCZi9MSO7PG3AVBxsc8uGY0EqC/fqrRkipAl/eGJLfDS+WWRTxxe0UpV
	 L0kXxwWip2wSQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odnQY-0006Nf-6k; Thu, 29 Sep 2022 08:53:46 +0200
Date: Thu, 29 Sep 2022 08:53:46 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/13] phy: qcom-qmp-pcie: unify ipq registers
Message-ID: <YzVA+rJY8I1xMwhN@hovoldconsulting.com>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-5-johan+linaro@kernel.org>
 <CD3050AE-693F-4AD7-9F1E-016E2AB1DF99@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CD3050AE-693F-4AD7-9F1E-016E2AB1DF99@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_235342_085602_95D8FDDF 
X-CRM114-Status: GOOD (  10.08  )
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

On Wed, Sep 28, 2022 at 08:34:37PM +0300, Dmitry Baryshkov wrote:
> 
> 
> On 28 September 2022 18:28:13 GMT+03:00, Johan Hovold <johan+linaro@kernel.org> wrote:
> >The IPQ register array is identical to sm8250_pcie_regs_layout so drop
> >the former.
> 
> I'd not do such merge. They belong to different generations. I'd
> suggest changing these arrays to use symbolic names defined in
> corresponding qmp headers.

That could be done too, but this is not how these drivers are
implemented currently. Whenever the resource lists match, they end up
being reused. These values need not even change between revisions.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

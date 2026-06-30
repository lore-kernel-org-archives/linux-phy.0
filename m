Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E435C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 20:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7CCkOdM3KHYMHskdiOz7m4Mfcv56uEGHl8/ue3NEe1s=; b=R1J5ep9DEDHlpHnv+WhE3Qs3J5
	PjG2Mf6HnEj6zc1AeeqFs8T5QTE+PIHf/0EyPPxFY4JdKHKWwj/x86prZixhUq87UjZUQHTjlH3pj
	lLZT39MRvPjAjTrvr/LCGarqy5qABpt7ZmFKjCx5HR6fSxaRFYYD/bYP9UgfauHDg6C/tvkKZmUXC
	3DC9Cx6lmwWc6rf74HuKtjoVbktuerixBewgzMhPl8Zh5I8W9LicQMHr8+kx4zH6HDUMezF9Spmcw
	E9XDlE4lqQ4zBWdDaDx4qCRLcLJOs4z9RM55CNu/P+Qee1qALacoPLvFav8ZToV/7jOMLlskHuphZ
	9OrQwHgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wefB5-00000000BX1-01sq;
	Tue, 30 Jun 2026 20:35:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wefB3-00000000BWf-2Uoi
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 20:35:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2568D40363;
	Tue, 30 Jun 2026 20:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D787A1F00A3D;
	Tue, 30 Jun 2026 20:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782851729;
	bh=qftNGGZWrMmchAzPZPKZHnzgN1AhLH5xq12HS7B9G54=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=WbXC1NWDr4Z7ylt3zPbN/9n446x/FYV3nkwEeboT1OX7YrbuwKasMTmEIrO3SsKm5
	 nkj+ylNvCq5QA3JQ49A2kY367+4uH25COxp3yVZzNZUYXMp1gpR3Q5TaJutYUKDbQd
	 wqIgbY9GpM8OZbB1u4z+Y48o8RA1P169YmYRCWDP/Czb+WlgXw86stOnMU6gsOZaZU
	 2m16QZGT4mPKK+vHebttdbn+rBTmYt0w5UkGpp+ebduw+aXwzC7Jd4lYXemLeRiVut
	 JiHO44kcjdO5Z3/icdJn26/nP2i8kUzc82BHOCxD1/Sbz5/0mq0cCFLjM7BCIZKrsx
	 cWxxLAx9YfRAQ==
Date: Tue, 30 Jun 2026 15:35:28 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-arm-msm@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 Bjorn Helgaas <bhelgaas@google.com>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
Message-Id: <178285172702.288391.13610342196466613275.robh@kernel.org>
Subject: Re: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
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


On Wed, 01 Jul 2026 00:32:45 +0530, Sushrut Shree Trivedi wrote:
> Add devicetree bindings for TC9563 GPIO's which are
> used to control endpoint power and reset.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/pci/toshiba,tc9563.yaml    | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml:32:9: [warning] wrong indentation: expected 4 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

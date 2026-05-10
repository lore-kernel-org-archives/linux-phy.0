Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91239CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CVRnbxF8ssPNOCoBgJhBLyzLY+uuukOjs+jsB/lGxA=; b=e/pjR4caztOrIg
	WLG9tZ4rnp3yg0w0/KIGWznAlt4Zl+H9lqAig6AuxNVObzf7AQwZTXfQhra+HN9DLZQiMNm/+HyVM
	EBXjAw2iwZXbTFTSCUZPwqKHn8xgayI+I1h8hmXzq5oUjqC5ECVU8BmPjhvvJt5PbP+xbfioe1E1y
	DAFxqjfP4Er+gUSKrLdg7W2INa2UqsSpPkqNNpSSWR4padX6g3Qj1MS/6TADyz9o6EMgbk/1ORDML
	mnI/ujkil2wo7uBavhhj4hlfpiAZGmhoNWpxizVO3B3fE5CLz2n+qOf8txVbb/Yct7SN8lTxAbNe1
	nv+utvyPdSWpoSLw9lSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jq-0000000AiMF-1267;
	Sun, 10 May 2026 12:31:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jp-0000000AiLp-2OIz
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:31:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0C9C96001A;
	Sun, 10 May 2026 12:31:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39A50C2BCC9;
	Sun, 10 May 2026 12:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416296;
	bh=85ViDbyhtlLOHmHGANQF012puC/WIzPubMcUz9Q38lI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=rskRqXykLAOUOLUky/WlD42tRwjncgM1hKZ3d+g9O02qJsXePD6A6P9jPyWyog6nX
	 M4aDToaA/hEzLDXjkINomAN9hGdm9vW5x1g5WOI0g4dZgdSVqmosIWP24jdwAOaUPd
	 Zg/xrC7m6VSO9V6S2vztfzrAif+3JcSVucXoFvxppiOlczoNzjTPUg5zrArDNqmIgm
	 PMVX9f4LL4mJccXPOTKJgRsCkB9LiSTUe6cG1UnmwO3pPcPsdTZ+qsI47yYBYWEGCC
	 YHyQ+SZ2VY+uECQn5A6l2cW/mVCbz3BIcuPEMBrscv/MefT7NHFZYZtEuE38NvEGt8
	 mkF7y3itZ5lhg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260504-eliza-bindings-phy-eusb2-v2-1-fa3a1fd65ab1@oss.qualcomm.com>
References: <20260504-eliza-bindings-phy-eusb2-v2-1-fa3a1fd65ab1@oss.qualcomm.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,snps-eusb2: Document the
 Eliza Synopsys eUSB2 PHY
Message-Id: <177841629280.434434.9813590038989489430.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:32 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 04 May 2026 19:06:46 +0300, Abel Vesa wrote:
> The Synopsys eUSB2 PHY found on the Eliza SoC is fully compatible with the
> one found the SM8550.
> 
> So document it by adding the compatible to the list that has the SM8550
> one as fallback.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,snps-eusb2: Document the Eliza Synopsys eUSB2 PHY
      commit: 78a6a90a5c4ac29d06fc8119885b80f919950d00

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

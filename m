Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9149CC6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pClfjwRdCVWVWPapykdTpY6z7PklpASaKgQtLVOsz6M=; b=2bZ7OfpwYpUkaL
	Co12JFOYEgcSTgwNq08lV6Lqba34t/0rQbt27GkkZGx2YHVTVwKr323QvUoVGll8wjfhZSXdINr5N
	10oCDQSoNAhpOf04fOfO+kGC4ONTTybNrAD1QJG0yBiid1WrYPisd5NYT7s2Zm/7UqFiqRFheCvJ9
	C5irF7YuAVIF6cYBJ4ESkGKqjmkqcMajWnQuw9SibrkF5a+dfWthb49GqnP+DaIcgrZ3t8WL7QBH5
	Kkp3afiHE33R37X8I+0H+QYZOVvCSVnM+Sp/bNMxfPce63SOvb8JwwePUioEsD5zwR2ROlvIWhHZU
	fM4+d+4Mqbu0keckSj1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7PE-00C5N7-Bz; Tue, 13 Sep 2022 15:00:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY70m-00BhXM-HS
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 14:35:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 12EAD614AA;
	Tue, 13 Sep 2022 14:35:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB0E4C433C1;
	Tue, 13 Sep 2022 14:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663079739;
	bh=gHtSpBRJsCnESx+CayMi4+wi3MLvP1nBbt0jgudGcb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KT7JJaXONwENE/J0cMDX8w8EzH5DVOKvDagK9zNtJy7siD6i42v0Utw/L9SaMiO+B
	 qyRcrmL4U+5O//MWQ3mqRYGDEht5qCz/jrDrn0NvYrx66WMiSgOmTvFu9SnSBWjb3u
	 7N9KQ/K8NjktevfXodVY9aTsf43LwiGnuHNGVxjtlxIS3yxgT8jJ1HaMpC1o9UY4lK
	 Wzn3aTo5zesxswtXiZpndF59fjAfmiDPS22q1p63LLgJQAnZyJCB4x39QPbcucTN2O
	 o8QzMgBgaS1e7OA8Lx3V6dIrBTjOqhcHdT1tWiEyOWaQHWqMFD4YLm1C9ejojTEia5
	 TYI0l9Uu5qjww==
Date: Tue, 13 Sep 2022 20:05:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] dt-bindings: phy: qcom,qmp: add missing
 power-domains properties
Message-ID: <YyCVN2W/98FKi5ew@matsya>
References: <20220902080705.12050-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902080705.12050-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_073540_647860_415AF7C3 
X-CRM114-Status: UNSURE (   7.61  )
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

On 02-09-22, 10:07, Johan Hovold wrote:
> The new SC8280XP USB PHYs require a power domain to be specified so
> amend the bindings.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

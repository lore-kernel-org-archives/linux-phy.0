Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F1CC3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrVkoBhek0EkcAaciabQNpVuU38reIvem/02/UfIoZ8=; b=eZXnJr3HQuc9cd
	SWWkQdNZ9pNTdRBbZwUNxPHFJzKgyrr+Agw0EUl29Tl5Ua/fdJ4ReNSK11bn7qGPx+VCylDCA0XUR
	uhrFaX9X6qBvn6Xi89XKMhUTPsT3h2KnAkCpgQ/mS7Gnr+vaEas5lUE2nxrdsN6P6eVJS1Jg67g08
	stblNmm+Qbmkw/VNsDj9gzG5B9Ms5JlXbqn3p08U+K1Z3AOBMsxI79Z1w0rD1FgH74whMPZCGClmI
	uu/gLCQbdP2NbrbT5qWg0bI3kupTgAmzGKoT2DVPGVwqV5u2x6u9B76qcHSgXtbloGv/RS2CSQlZg
	JJejkJEOhcA6/KMx+mSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOW6-003zHm-Ig; Fri, 13 Jan 2023 18:11:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOW4-003zGC-5Q
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 18:11:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8734BB82097;
	Fri, 13 Jan 2023 18:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42CC1C433EF;
	Fri, 13 Jan 2023 18:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673633457;
	bh=El6zsbjfdaa104rFExh3mMvqh+hk+3xX+6KrXRNYuWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nRlu2mjlU4JQyt0ARmm5dutVyGeFuuTpNXBMr1+HosWMv/PTAnVMEk3f2iKZ+pNXP
	 7VqRxNDdbpJF8oUjgWq9pFMD950sH0vU39UYYP2cRgZfGQJdNJ/5YrtgKm0fkQJIXg
	 /pF/THG6SNsZHN+PTwK3XZ9KebL5PZIbA+jt+wqwzvCB8pj/mcNf/Dmdu8KB/u6QAM
	 xoFC+zw2aW9oJG3toEuxDWgQAVWqDjAFXw/Yx4AaqTRp3CRqmx0/JWTatzpFRdz+G7
	 PCjz/GGKU8scwBtfbEilna7cMtMOygrT9TkGzlULa3pRct4N/vkP39z6hLb4q5vBwU
	 j0tuGG360TRNg==
Date: Fri, 13 Jan 2023 23:40:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: use
 fallback compatibles
Message-ID: <Y8GerZ2LweryNauI@matsya>
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_101100_379916_01393CD2 
X-CRM114-Status: UNSURE (   9.68  )
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

On 23-12-22, 17:18, Krzysztof Kozlowski wrote:
> Document SoC-specific compatibles with generic fallback (e.g.
> qcom,usb-snps-hs-7nm-phy) already used in DTSI.  Add SoC-specific
> compatibles for PHY on SDX55 and SDX65.
> 
> This disallows usage of the qcom,usb-snps-hs-5nm-phy and
> qcom,usb-snps-hs-7nm-phy generic compatibles alone.  Do not touch
> remaining two compatibles - qcom,usb-snps-femto-v2-phy and
> qcom,sc8180x-usb-hs-phy - because there are no upstream users, so not
> sure what was the intention for them.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

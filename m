Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22547C77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 10:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7EPXiuPngHR2l3f9Hml20kREIC/XA1vwk69bevsLDQ=; b=C6BtKW5k2rYnnI
	Vz9VjGSKXp7+z3xw/bC0ND6YHSDMpqnIs/0gGgJPPiC6V8Zh+eNFncoYGkKZRVMWK43mKbaW1smwf
	FeGmC6P2sfrs+Q15wPdnHf/xyfdFdZAO8cmdHJszyjX4muv+7yMUOwcO5CAd8l5WNkRkVDSwQckY8
	5v6/fCIJ/jEWRUxZD56V9AvHUYKJhOtBxfebadC4RdZd2idQavC9iONljG99u4i3IozILKKiwL5TG
	Rj8KdxInsllraiy4ZCT1qOujkzQKUkI+/IYCbvYWsirP9dyddc11sUHkrvP3tT7qcxtib4z9WPfJI
	9gSB0Uh3jeQt5Nz630nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxxH-000AS4-2J;
	Mon, 08 May 2023 10:18:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxxF-000AQS-0y
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 10:18:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9DFF562506;
	Mon,  8 May 2023 10:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 757EEC4339B;
	Mon,  8 May 2023 10:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683541131;
	bh=9KY1PeJl8oSwQTG6pnGtV+8TzHjeyBSQPgNFwcFBj1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aESE56QxrwheagOLjsp8MaUrP4FCHtu07cjol8JCg+6Z4MxCNPW6z8Tb5+g5KkfR5
	 kdyyHglqIcU7C5F7pdszqlIeprTkq2OIDz6XygbjlUWbARVElnmAa6xtx7nftZkZSt
	 jpzU/RfonVZU1WUuSbVdCx/wsW5N6I9ofWM48fdyHoTs/VgsDFMb3w28hvdlxUXHe6
	 Puuu3mEcgWOHXsX/fN/GRt6G9XHElte2SmatydCos3oPHuCdqOXsyUVeLGRmyZGD1l
	 5S47jXJNF+/0o+6pzyWKYHXVrv0Rwsf/frW/N4YAT4o1gNSHV9CF8B3eN4pJPruTUq
	 ZYOmz4fQWQJlA==
Date: Mon, 8 May 2023 15:48:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,edp-phy: allow power-domains
Message-ID: <ZFjMhmcAK9G9no+0@matsya>
References: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230416151233.346336-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_031853_409103_EA7E5ABB 
X-CRM114-Status: UNSURE (   7.24  )
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

On 16-04-23, 17:12, Krzysztof Kozlowski wrote:
> At least on SC8280XP the eDP PHY is part of power domain:
> 
>   sc8280xp-crd.dtb: phy@220c2a00: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

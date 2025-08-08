Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C48C87FDA
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 07:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeqZTeK3ZZAzhPi9gkIpGXh6qJsosmw2yMBfP9H/+8E=; b=UiApvoy0edyPY5
	OGVXIxv5x62gd5gBSj8osti4XzI9hAOncsXtr0QpWUbiMtB6yNqbpolpy8nfPQT0c9XkG547bA3yG
	FYbtihClUfZyYggSuQVEK6LCdjHDjpF0dKea2G8hvnowWeIrRGh5aT4UFryZHQOizamhGZEEZSPy2
	+PrDBiJ3A/gZCGA6jEYYbKJoMyjpGX3UUPBRIV9kExefwaqYpnKKcwKT45OOp7/r1wrkG5biN32gf
	aluI9+/cRh/p9f2pjqmrhPI8HEYz6TeHfqmlTZbsWu+4mXpYJJ9cPCbb4YcXC47sOeit8Xst74npI
	KQ/M+vt+J/kuCt6cNZMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHop-00000002FNj-0OUs;
	Fri, 08 Aug 2025 07:47:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHXU-00000002Bua-0Ryg
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 07:29:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 213D8A4ED37;
	Fri,  8 Aug 2025 07:29:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD8EC4CEED;
	Fri,  8 Aug 2025 07:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754638158;
	bh=Mk0AwKBJB1G02alhUoj1s2//Zir6rQq1FnyFyjJ8uug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dayFCIAABjhGsQl3gRNSkUBbATIoynyV8lNeOkq2M8g/Fb5dIQjUqfOOGXIAwGnDK
	 uFazo4qToFaLnkYW2gUdxEdtItxXTBkGJvyb4aYsxqRWBYw78mTPQhCtAd/YpJz+44
	 /p7GvnQWMOI+5MJqS5JcLFH1YuOWr2XECHGWWLzze+p0jH7fmafQ74BfzjaAztJtF3
	 oPrbthQDpHJ+pe+USD6MC9ldFo9q0vI2BxOzOYWGY70hNtFE/lHYdhD1U9JJcf8TC5
	 JFfhRN/F8x2GPlrPHfOsOfLxDlodPm8RoVQjiQTXCl1or42JqNWIv/PuoOnB/Jp7B6
	 lump98/ZfuMKQ==
Date: Fri, 8 Aug 2025 09:29:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, 
	conor+dt@kernel.org, bvanassche@acm.org, andersson@kernel.org, 
	neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for
 UFS PHY and PLL supplies
Message-ID: <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_002920_217948_7677F53E 
X-CRM114-Status: UNSURE (   8.19  )
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

On Wed, Aug 06, 2025 at 09:13:38PM +0530, Nitin Rawat wrote:
> Add `vdda-phy-max-microamp` and `vdda-pll-max-microamp` properties to
> the UFS PHY node in the device tree.
> 
> These properties define the maximum current (in microamps) expected
> from the PHY and PLL regulators. This allows the PHY driver to
> configure regulator load accurately and ensure proper regulator
> mode based on load requirements.

That's not the property of phy, but regulator.

Also reasoning is here incomplete - you just post downstream code. :/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

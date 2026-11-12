Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AF8606A33B
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 18:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uddYAAIh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jS3+VlNK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qqveUICpd166sR4GKS+g3hDZehNDD6D/kkdzBpmGO8o=; b=uddYAAIhGemfu7fNcAhdvdFkh7
	8tblvej2iqNh8wmpTuKBDmrKLSJDyYSwThTB2tPcAWncHzEcR8K7NeMwWOLkwxC1RypyFvmYg0XdM
	00OfjqWKNYVsEDDoegr7SvlvvKlMtHSFceROu/sjxzHghvZ0sQmYkrNXrB4b4yQ11FcDN1DwaEwav
	027u5XDRR8LijEe7YQjAjB9mS9XKL7q0m09JKT5GHD8pKmK/mqFbZA7w1v01QI1PyFramJQhz/Xkc
	tu4vQuZr7peYhBVjQko6VAe2gEFML808xo84ndo2RjdHh5q2WisSc2AXrq96Yx7X3qngiAmV0Apn+
	GWboLLog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZYk-0000000As17-2j1s;
	Thu, 12 Nov 2026 18:30:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZYk-0000000As11-022I
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 18:30:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A6611411DC;
	Thu, 12 Nov 2026 18:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 518701F000C4;
	Thu, 12 Nov 2026 18:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794508204;
	bh=Rtc92rlbJoLohK4LVxmMVpKXwZ+yJ59RVuAWYMV1ddM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jS3+VlNKNheQKWnKJjut95GHr34G+JNaUDsAWytjTmzpXs/UwgLRHqPj5GutmW7oX
	 dDBa2x+2TFu05dIOHA0x2pD0iZxHeowgDs4dM2vg3nitk21sVx9N26FbvPObzbFk9G
	 FhSuVGqbBWqql8CLciAenR0idFvAbQRC8Ua7+55XqV2bjG3ptXsC7HdWnp8wRLagaq
	 /XlU71IAuqJaSDBHumr84oYUsSzPgonQ4S7qKawOJJaAMhjvIh/i2ROGhx6GkDHDyA
	 CSlNaBROHZZokcecgOZ3SHv7x3aegxwj8wyojRwbT5sthRNboLbdMUvq0N3ACfH61x
	 FN5OzKne6wtTw==
Date: Thu, 12 Nov 2026 12:29:56 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom: Relax required supplies
Message-ID: <avX9Qrcapcnutdgh@baldur>
References: <20261021022446.3619435-1-robh@kernel.org>
 <avWbmsjkYo2LMJKs@parshuram>
 <20261112125346.GA3821108-robh@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261112125346.GA3821108-robh@kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 12, 2026 at 06:53:46AM -0600, Rob Herring wrote:
> +Konrad
> 
> On Thu, Nov 12, 2026 at 04:27:30PM +0530, Vinod Koul wrote:
> > On 20-10-26, 21:24, Rob Herring (Arm) wrote:
> > > For the QUSB2 PHY binding, keep the three regulator supplies required
> > > except for legacy IPQ6018 nodes that do not describe the board rails.
> > > 
> > > This relaxes the requirements for the IPQ5210 as well as if it is
> > > compatible with IPQ6018, then it shouldn't have more required
> > > properties either.
> > 
> > Hey Rob,
> > 
> > This fails for phy/next I see vdd-supply has been moved around..
> 
> The change in question[1] should not be applied until the .dts changes 
> in the series are applied. It introduces a bunch of warnings.

I don't understand. The change you present here relates to ipq5210 and
ipq6018.

That change doesn't touch these two IPQs, so what are you suggesting?
Are we talking about the same warnings?

> Can the QCom folks stop doing that! Coordinate applying the series or
> take the binding and dts changes in 1 tree.

I assume you're referring to "QCom folks" in the sense "any maintainer
touching a binding change related to a qcom platform"?

Do you have some CI/guidance/tooling for Vinod (and other subsystem
maintainers) to perform system-wide DT-validation when considering
merging a binding change?


I unfortunately only spotted the one-way dependency when glancing at the
seris and thereby ignored the dts patches waiting for the binding to be
merged.

> Given the patch series is 2+ months old, I'd be surprised if the rest
> gets applied.

I've applied the two dts changes today, and they do resolve a number of
warnings - presumably the ones that you're talking about, but I don't
think the ones that this patch aim to fix?

> 
> This patch OTOH fixes warnings.
> 

What warnings? Can you please provide actionable context when you're
pointing out these issues.

Is it the three "'x-supply' is a required property" warnings from
ipq6018-cp01-c1.dtb? It seems unlikely that there's one chip that
doesn't depend on those supplies.

> Rob
> 
> 
> [1] https://lore.kernel.org/all/qusb2phy-v2-1-4c3f980a4560@oss.qualcomm.com

https://lore.kernel.org/all/20260903-topic-8996_61x5_qusb2phy-v2-1-4c3f980a4560@oss.qualcomm.com/

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

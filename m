Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1345606A335
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 13:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C2c3LHZd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OCbnsPLT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ibLCoMSmfWor4MF+b4Owq/UVWPvFY2Hpmihd2BiR3r4=; b=C2c3LHZd02RTvEmuGOaDp4Jjv/
	gD4FBM1sa2Jmrofjajv2D2xTDddsdr2k86j76WqU7znOtgUXSFfMTp7lmpkiWzfVOvHtIQZND5vZM
	st8RWJOkkmiqSs/wxiLxlZ6+B56SV5GpLWLOkjiwd4gF4klaET8Vl97YcXtQC2hM29/IumVU65R1N
	31Bx+EghYO4SieyJBZHDtNl16XBwln3Sxj0/fu+wxNP7tmaiZX5AhjEs5qrhBU4yE6QxiOpIX7oxz
	4Pksd8mWiJHy/KH1GZTp2xlXzAB1nlS4OSS9BJWmYX0svp25l08zc5icDvH5qDgVQbCFHsmmLt792
	akAHklrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUy6-0000000A6Xs-13T3;
	Thu, 12 Nov 2026 13:35:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUxh-0000000A67V-1kOD
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 13:35:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A0BA140E30;
	Thu, 12 Nov 2026 13:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCAFE1F00A05;
	Thu, 12 Nov 2026 13:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794490532;
	bh=UHPmfaVCv3XumqUh3m5IWc7lSA9GngT16E5AJZp8cdg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OCbnsPLTs21tyQm+Wi5ln9bf0ZNIMHMGLbXBU2OtF1+St0c2o5RNxxgxhMObKn7IX
	 nurmQIxSH0+q0B8A8VmcAUt953RccLViCbljpL6lvaBXl4d5usemBoG0AX0ZwvYf0b
	 Rynzd4j64cQV3eMc+xGUP2XlZ+j3l9mYmUke9CGpNCknOgQfzydI6JcZx/Igk7IIqi
	 VSQ+IXEu1mjAfSqHYGVnyU8UgfMwmAGh96ZRdmfG1scnIcFlRCI2TTLF8Qh5QhERBk
	 TLZIAlDM9A97oMUctjpOF1Mgf4smjwTW4dcM/59V8j7cEES8J/dnLBmuYj2Co3vwFf
	 mSK4RornEbLaw==
Date: Thu, 12 Nov 2026 19:05:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom: Relax required supplies
Message-ID: <avXAoMcmDLeNuWED@parshuram>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 12-11-26, 06:53, Rob Herring wrote:
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
> in the series are applied. It introduces a bunch of warnings. Can the
> QCom folks stop doing that! Coordinate applying the series or take 
> the binding and dts changes in 1 tree. Given the patch series is 2+ 
> months old, I'd be surprised if the rest gets applied.

If Konrad/Bjorn want to take this all together thur QC tree they can
have my ack

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

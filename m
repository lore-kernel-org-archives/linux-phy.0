Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F73CCA480
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 10:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdVuQqEMKn4MZF6gOU0aiGp3KkRPX+oTFLP3POvAmlI=; b=J492x/3o+GcD0m
	MmzFO3owGEYYE9DsAraW6j9IYnCbDjBoeouTfuPy1jx+CdtZIJayPgV1e9DtRvDhb+hvToI7MWFES
	SYescQIrub1Xo8whpeV/+k0SbJx2pC7o5FmbQ+D0srzb2LcyEGnO1Tf9nbOdf7iCQlZd5EufXERbM
	+ZyQyfEUuRfOoiyKZRFto3IRHg5Q/YP1hXp8JG9JDGRuAQ8qr1i6NpbR5X/FenOegVyUnTEGdTnxR
	OpODinNFsjw9H1NMIaZU7sCCFghXgiDnBF095CI5kIRN+ZXHUqxjoCTWyMDv9iII5ih/hnZoprMzQ
	dSRQvgWygoulUJJQVvvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBveE-00D9AN-FC; Thu, 14 Jul 2022 10:00:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBveB-00D94Y-79
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 10:00:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 7AF73CE2395;
	Thu, 14 Jul 2022 10:00:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D54E1C34114;
	Thu, 14 Jul 2022 10:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657792830;
	bh=HoH9YJdc2U+sb80GLj9TQU8IV2cMXr3qp2pjDocp0xk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fVqvxHdjm5/kh1jkEfizpjQRdnJujKLLlp5S3PCueFNHbC8MaYDAA5hqlLM0n+Kyv
	 bXtxrqAtMzmWPx7ucIcuMGB9XGHeyyfRYL/Q1C7XJ2JirDWXaCtWz0eUGtL62SGJYf
	 O0JZ3e7PMxZZrp9XQn3FT+SbWSjVmWsOsOL7EJXUsizrQpXmfAR6gdfGFleyFZi531
	 uEwHRMbafssOa0u5dfeAEm02KI/Z/t32ajV4gQMk48CmWdRDMHZHCjJM+8twTIgrw8
	 MrL5UTZ1wITIT57aWE7v1gOf8nFn0K9BXGo1tHh9BhXuhyRbf2bpUOSq1f2t9nju9N
	 fnaJhm3Uv0YVg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oBve7-0008NT-GR; Thu, 14 Jul 2022 12:00:35 +0200
Date: Thu, 14 Jul 2022 12:00:35 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 03/30] dt-bindings: phy: qcom,qmp: drop redundant
 descriptions
Message-ID: <Ys/pQw3e0HPhLZUg@hovoldconsulting.com>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-4-johan+linaro@kernel.org>
 <26916d41-f398-8527-96f4-9a28f4f4e789@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26916d41-f398-8527-96f4-9a28f4f4e789@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_030039_788499_A5D64523 
X-CRM114-Status: GOOD (  13.62  )
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

On Thu, Jul 14, 2022 at 11:07:21AM +0200, Krzysztof Kozlowski wrote:
> On 07/07/2022 15:46, Johan Hovold wrote:
> > Drop the redundant supply and clock descriptions which did not add much
> > information beyond what can be inferred from the corresponding resource
> > names.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> 
> (...)
> 
> >              - const: ref
> >              - const: refgen
> >          resets:
> > -          items:
> > -            - description: reset of phy block.
> > +          maxItems: 1
> >          reset-names:
> >            items:
> >              - const: phy
> > @@ -376,11 +334,7 @@ allOf:
> >      then:
> >        properties:
> >          clocks:
> > -          items:
> > -            - description: Phy aux clock.
> > -            - description: 19.2 MHz ref clk source.
> > -            - description: 19.2 MHz ref clk.
> 
> Here and in other places - I think you loose information, because the
> frequency is not mentioned in clock name.

Right, but it is also arguable redundant information for the binding
(similar for the vdda-pll voltage).

I can add a comment after the name if you prefer that?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

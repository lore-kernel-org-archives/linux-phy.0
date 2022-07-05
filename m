Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D86DC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyW1opPfi07VF8FYRcmhRDCKX44j+3K/D0PTdPAUx78=; b=iRlpB8YeJKQcGA
	GnLdUX1JPpmB+iYk9JWsCN0nhf85+sI0HgZmXNBzlDEMIpr6pYWqk2Zp96ghWUyfuWCsfMSgK6fXM
	cfv+uJ9rcvxSbeOvVR0lYJGZsPHvUMrZ6+NfOmj4MsHz4hJQCbJ1oRgwMWl1c5Y0dHh8PSimbi+Z+
	+WNSIzjMTZQxEj6UQZm13+NTM3XqpCPkkQugM9HvxcEeGbZ5bBBlkLaCwbewpg2hApRdU44M/4bmk
	meu8bPNC9fy02OTbjrbx/hc6GfJOt74JVQjGtlDBNUAYmC3MqJ5Y0abPX/SOXBdTvRNBMOdqv6Cd8
	fSkB+/l12bTrcgz+9jPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hDv-00HaF3-CI; Tue, 05 Jul 2022 12:00:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hDs-00HaAN-EO
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 12:00:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 169106174B;
	Tue,  5 Jul 2022 12:00:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 714F1C341C7;
	Tue,  5 Jul 2022 12:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657022402;
	bh=P7/TRblLUfM9RD1xaDdnyulOyhjawodBZp2WEwoB/2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n+vTQpGec7eEqrXJlNGvgvWFMW1zxJkDtuqSVybOfmR1QR4KHBYmS/z0BQvJ+TnJe
	 qhoJ/L4nNOzsT79QEmWakl5WX8Kke40NnWlejH6MsMTS8PFujVR1XCVPPYkNsg4BkH
	 1dkieZ5Cmx21KjP5UZh6zIrul8jQgLreIwl0Ir7DNsX4q9lc5WAqwkuKfIUBE7mSfy
	 G4z9kVK0HaeW8LxrUWbYDh1XFnBa6dEPAJYY1YnoLXXVcWWvWs/L6hF2XSUA+Y3hYF
	 x4eskdnHcGyTJqcs7LAUzraZVbC/P+mmMQipGqHgY3U1fZ2antvH1RFnKg2tLbjD7s
	 zxPQphHyCUFeA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8hDn-000689-28; Tue, 05 Jul 2022 14:00:03 +0200
Date: Tue, 5 Jul 2022 14:00:03 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 example node
Message-ID: <YsQnwyyXcffNlkLT@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-10-johan+linaro@kernel.org>
 <8271f4d5-e12e-ddf0-46ab-86a39577755a@linaro.org>
 <YsQQ2o8aYJnnWuNa@hovoldconsulting.com>
 <3b91ee2f-3e87-c18c-aa04-2cd93273b63f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b91ee2f-3e87-c18c-aa04-2cd93273b63f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_050008_555825_AC099EE3 
X-CRM114-Status: GOOD (  18.15  )
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

On Tue, Jul 05, 2022 at 01:32:30PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 12:22, Johan Hovold wrote:
> > On Tue, Jul 05, 2022 at 12:10:29PM +0200, Krzysztof Kozlowski wrote:
> >> On 05/07/2022 11:42, Johan Hovold wrote:
> >>> Add an example node based on a cleaned up version of msm8996.dtsi.
> >>>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>
> >> Squash it, please.
> > 
> > Why? It's a new addition to the schema.
> 
> Because it is not really new. When you add new bindings or convert
> existing ones (without example), it is expected that example is within
> that commit. You do here the same - add entirely new file. Old file had
> example and the bindings. You now split some pieces, convert it, so new
> file is also expected to come with the bindings.
> 
> The same as there is no point to make half-TXT-YAML conversion, there is
> no point in half-split of existing bindings. Either this split is
> correct and complete, or it's not a finished commit and we do not commit
> half-commits.

Fair enough, I'll squash the examples in.

Thanks for the quick review.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

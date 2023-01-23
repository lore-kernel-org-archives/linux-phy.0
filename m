Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F98C38142
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 10:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaryVLa/fyx86W4GvyVpShRYShEemhEWZaUoKmf6ydg=; b=jRG3XbLmHqcYkS
	ubg+vEkwCe3OL78DrPQu1bKEdKswNFMuwjNxoCTz/K9Se1I195/dHsAPSXztX6NEGDNDOZBjyxfvY
	pxXPzN4zPYyX0SvGV5Acfpe+zdTxYHdxU9LndQ2r8eR4BGiZ+b8Hc5QT7ZVyTtbGd3TGaV1uyAPWu
	h453koq/46UDPxRu98NCaeUHzcu5MkxqUgtY8HnVA8ppZbNwhAfMrOh25Ap5LkG+4k1X7ii3RyWyM
	y/sSAU5NncQeNcsSBF2bPOGv7i+MbPj3jgiM4Ye1oHR+LSU31a1uOEflcu68OCIyxKQ24iws3VXs8
	seeVrwlG4OldDE7/k/TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJu3K-00Got5-Cr; Mon, 23 Jan 2023 10:27:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtvS-00GlNk-Du
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 10:19:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9D6BC60DFD;
	Mon, 23 Jan 2023 10:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0650CC433D2;
	Mon, 23 Jan 2023 10:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674469181;
	bh=R8TEHMiMrqLAL4VER9QYwXpcKwfMt+LaxjwixzRorjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jFlknf7bHk9HiHeO2bHfa1wcP91KT8Wf+/vJ55+DGGz1fVU5ccAny+01ENx4vhoam
	 9zjclV80G90b5WAbI+JB1QfnKQQLnuAWIsCW/3MlTiSYEW3OUTJpI3NhtZboEhJPBX
	 2hiA+UNILsBqnO4Q+nV7NblTd7CiPQhj7dPpb6uvH8Gkf3LNs+Ff9L7pt4dMXWPJ/C
	 gCq/CV4JA3Xcq8wM409qzW3/8ppWenjhhvw5N8lyxFH1kwqOw+TTR5rbDW56oRvLjH
	 xZB6rrE2ODKMQPOcVnk6Mz3HNy8tXqHPVHfLgBhczuqPOvKKYjUOU1C81V1mY4z55n
	 BL6o+MvSmZsIg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJtvO-0000fP-Ag; Mon, 23 Jan 2023 11:19:38 +0100
Date: Mon, 23 Jan 2023 11:19:38 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 04/10] dt-bindings: phy: qcom,qmp-usb: Document SM8550
 compatible
Message-ID: <Y85fOgfjEUBMnWar@hovoldconsulting.com>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-5-abel.vesa@linaro.org>
 <Y3TpzgQ1JaFs5sNk@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3TpzgQ1JaFs5sNk@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_021942_556188_3824FF76 
X-CRM114-Status: GOOD (  18.66  )
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

On Wed, Nov 16, 2022 at 02:46:54PM +0100, Johan Hovold wrote:
> On Wed, Nov 16, 2022 at 02:01:51PM +0200, Abel Vesa wrote:
> > Add the SM8550 compatible to the list.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml       | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > index 0c6b3ba7346b..cba2a252baf8 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > @@ -37,6 +37,7 @@ properties:
> >        - qcom,sm8350-qmp-usb3-phy
> >        - qcom,sm8350-qmp-usb3-uni-phy
> >        - qcom,sm8450-qmp-usb3-phy
> > +      - qcom,sm8550-qmp-usb3-phy
> 
> This one too should be based on sc8280xp rather than the legacy binding
> scheme.

I can't seem to find a v2 of this one adding a new-style binding for
sm8550.

Note that the corresponding dts changes have already been merged:

	https://lore.kernel.org/all/20230119004533.1869870-2-abel.vesa@linaro.org/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

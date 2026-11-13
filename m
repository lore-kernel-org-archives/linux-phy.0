Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10853606A88A
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LFeGz87d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=inTfj1+G
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4qZxm/s6Dp0HJwg33PbDgwVGo2NfdL3oMeiVRoD2BtI=; b=LFeGz87dEYmhjliepwDuI8zWuk
	YANLj2SwFu+idW3ibtSnFJ4yttgp5mddaAHnpCkG9wo5Qtj20zYzWOrTzFtQzyOSF/U56ZjewiwgK
	hdm0vkMqD6RfMM3Uf5z8RH4g3er3BRmQ4Uuzj5PuMMNL4Drs4lIMkF9/EPq9QSxI8051HeJBU3pMV
	lD+yvoOOGXE/maYUZ+OBGgfdVJJGSxvOe1+jb2X+o0+zaz8iIjss4sHFKFV3sKDcPGKRGSQrFcbrl
	o0VzCEGDyY3GE6+NmNGSHFt721wKhKZ1b39MFnT2dMsvNdBHM8mS97MZK+mARvo0+lZZE9ivR/0hx
	4LNl7mbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRomo-0000000CPG0-2jT3;
	Fri, 13 Nov 2026 10:45:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRomn-0000000CPFl-1fPL
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:45:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with UTF8SMTP id 7E8F962648;
	Fri, 13 Nov 2026 10:45:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 728041F000C4;
	Fri, 13 Nov 2026 10:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794566736;
	bh=/lmJpY+0emLtc/FMs83OpIAUz2pOnrJhQvermvaeEng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=inTfj1+G4YceWRniGOmdTI+A4byhwQyzmkCyVqklp9H3HZL7udVWTB/0jl4shpfJm
	 a7xoRddKBH9PN/7VEcE48mkGxZRqZeKlh1bFl9NKxp04ThHWdaJrs0vftnksSBTJwc
	 0XDBVFrD2zE5ztHKIqBaAlZdXBbjAl0B70MeU9GAawdxi3vtoYEmpductuScmpX/ha
	 E+RvTin9OLADrxrm3IRW85W003jKPfDiQlQSHsxAcqvMjI4sD6bwDckOtaUyg+u5J5
	 MyVUFAGTwB0VlniMcMWQReUlXEdSkGN15dnGwcbVmxud1fTMnuzdcTt8VWAD5+zu1e
	 YH6cD1BXseTUw==
Date: Fri, 13 Nov 2026 11:45:32 +0100
From: Bartosz Golaszewski <brgl@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add the cfg_ahb clock for Nord
Message-ID: <zo5qopdc6gxeoonqxohmnrzwmmrwa3wnim72op5zq2cjtn4pjs@kdjl3hwgxph3>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
 <20261112-qcom-nord-ahb2phy-clk-v2-1-30ad3d947217@oss.qualcomm.com>
 <20261113-influential-lumpy-goose-68ec0f@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261113-influential-lumpy-goose-68ec0f@quoll>
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 13, 2026 at 11:07:38AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Nov 12, 2026 at 04:36:38PM +0100, Bartosz Golaszewski wrote:
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > index 13e64fe510b8f..8d09e6937fef0 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > @@ -209,11 +209,13 @@ allOf:
> >          compatible:
> >            contains:
> >              enum:
> > +              - qcom,nord-qmp-usb3-dp-phy
> >                - qcom,sc7180-qmp-usb3-dp-phy
> >                - qcom,sdm845-qmp-usb3-dp-phy
> >      then:
> >        properties:
> >          clocks:
> > +          minItems: 5
> >            maxItems: 5
> >          clock-names:
> >            items:
> > @@ -229,6 +231,7 @@ allOf:
> >            compatible:
> >              contains:
> >                enum:
> > +                - qcom,nord-qmp-usb3-dp-phy
> 
> I don't understand why it is added to two blocks constraining clocks.
> Does it even pass checks?
>

Yes, it passes dtbs_check in my WiP branch for USB nodes that will be
sent as v4 and takes the binding changes into account.

First we add the "qcom,nord-qmp-usb3-dp-phy" to the if block that sets
minItems to 5. Then we exclude that compatible in the block that does an
if not and sets minItems: 4 for all non-matching compatibles. This is in
line with what's being done for existing "qcom,sc7180-qmp-usb3-dp-phy"
and "qcom,sdm845-qmp-usb3-dp-phy" compatibles.

Bart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

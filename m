Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBEF606A8A5
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 14:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uD+IIwsu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jPjxic89
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=R+3Jo4fbgixudgJb9nR2ODZAWst9ahdH7iSCjnmf/pQ=; b=uD+IIwsuwXqzvdBmJ/bfn/LuAH
	flPbOZX4PhVQ41srhfj0uiSr8VPOOTory5KwbKoClNxdq+7DNuMisy1TOEVhSNZYsxnJPGaeEMUtW
	tfpW9brQkMkOieWVzZ/IDrIO/ASzcGWdvWstujE0AISUYIkctG8AjX97jom2ywicf6a6WReBzBkL/
	bzzjH1w7O//2yQOvkH+NcnbIXkr3bjyXChW0Kc4tHhKvlhilbont2ILAhbqF0+EkP4aCgYCYsDHni
	XTYo1iorgglQBii7h4dKmjMPc63WTDSQB8xyWFZEqvOWBOU+SfgTDA4vfoiKhkPzCplc0vxV9Vyg2
	KIDT5EJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRsGs-0000000D9eb-0goS;
	Fri, 13 Nov 2026 14:28:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRsGq-0000000D9e3-34gw
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 14:28:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with UTF8SMTP id EB34F61EF9;
	Fri, 13 Nov 2026 14:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id C2A4E1F000C5;
	Fri, 13 Nov 2026 14:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794580131;
	bh=lNzgQv09ZNdkTLeSeL52VctJTRtMJtQCI0H+/MVWODc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jPjxic89jp27FBMG72SVoJCjyog9Fk72fa0sSThJpbNGUhJNO2tRE22dZ66TunITa
	 GV/peItiCNYgobVHdnuzGEn/MjyoYqK7gFw3oFM9eYQa6yipWvclbkKOp2QzMzQl9l
	 nx3Vv1Aksfxg5C0tZgQYmXrzBAEXrb3cOIZM7+0KYj6E3Z7xo/SIZ55Pvwln0M86sf
	 eKcLPdo59HY/ep/rE6YGqecNDaJJcl+cFRLif2epOxtexzQfgjUk9p7WR/RKbXEiqh
	 PXOI13Aq1+ScqVFkFSS3fKy7thLkf6DH76uC9+Imzzf20aPpVuhcJ8EoF+RtFx1i8S
	 NMkHXo0ctUi5Q==
Date: Fri, 13 Nov 2026 15:28:47 +0100
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
Message-ID: <lv6hzzf4kif7gio6vuuvy4dy6ugcnkelnfvbrcow3hkgvvondp@mrirempjyi64>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
 <20261112-qcom-nord-ahb2phy-clk-v2-1-30ad3d947217@oss.qualcomm.com>
 <20261113-influential-lumpy-goose-68ec0f@quoll>
 <zo5qopdc6gxeoonqxohmnrzwmmrwa3wnim72op5zq2cjtn4pjs@kdjl3hwgxph3>
 <4dc982c8-af04-4af8-8a56-66459f91cf3a@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4dc982c8-af04-4af8-8a56-66459f91cf3a@kernel.org>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 13, 2026 at 12:47:16PM +0100, Krzysztof Kozlowski wrote:
> On 13/11/2026 11:45, Bartosz Golaszewski wrote:
> > On Fri, Nov 13, 2026 at 11:07:38AM +0100, Krzysztof Kozlowski wrote:
> >>> @@ -229,6 +231,7 @@ allOf:
> >>>            compatible:
> >>>              contains:
> >>>                enum:
> >>> +                - qcom,nord-qmp-usb3-dp-phy
> >>
> >> I don't understand why it is added to two blocks constraining clocks.
> >> Does it even pass checks?
> >>
> > 
> > Yes, it passes dtbs_check in my WiP branch for USB nodes that will be
> > sent as v4 and takes the binding changes into account.
> > 
> > First we add the "qcom,nord-qmp-usb3-dp-phy" to the if block that sets
> > minItems to 5. Then we exclude that compatible in the block that does an
> > if not and sets minItems: 4 for all non-matching compatibles. This is in
> > line with what's being done for existing "qcom,sc7180-qmp-usb3-dp-phy"
> > and "qcom,sdm845-qmp-usb3-dp-phy" compatibles.
> 
> Oh my... what's with this binding :/
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>

I will try to untangle it but let's do it in a follow-up.

Bart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 804B3C83F10
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jul 2025 08:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUZ66/fItMxiQYfR5bUlEMRy3D1yy2C3ASKq4vgJMfA=; b=tjWcMhr4eFY2ei
	wUUBWXGDwMuI81zybEtMBOLvEJP0DPeDrVZ3N3/TNDG9ImqYT6uJoahsPiyp7upyCoHwN21N+Hi8+
	8N/dETgdsQpi0JJjm6ZszCoAGhnyNVt1ND+SAFqjumvz7Xx36fqxnEkQAxYOeACxdaiZ3e+LbN7v3
	Hi7/TKzCjuJnZgGLebL/+ajGLYtzh8b0/CwhLwFWhatn2YF9OrmGeK0UIinWsdDsD7ecDEeMb141+
	XpmFVnfhvzOiGJn7INdVz4oxmHhZOKXi/BQiBKP0bNOcT9KwwMqHOSusTrKyQ1tSTXe28ChSflvuj
	bfIy8PiZnnhQxI+C+fAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3c9-00000004jYB-0bP1;
	Tue, 08 Jul 2025 08:23:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3aU-00000004jCx-2lzk
	for linux-phy@lists.infradead.org;
	Tue, 08 Jul 2025 08:22:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CD86061471;
	Tue,  8 Jul 2025 08:22:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7FAAC4CEED;
	Tue,  8 Jul 2025 08:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751962921;
	bh=Xy3Qimr/6H1RzjOUBUNoF0Q63KzUY/WreVnonIIwPoU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NFvC7GU2ensgRjBqo4FLbNOfSIRi9ngQPU6c0RA0ieXxRDYMQhU32wnNLPBBhCyC7
	 Xnc7s9Hp5E/rqUoFRrXi/h5mSvcqUVnoPa0OZV4Lxgd9qJETZCe758O0fXXKxsHtPm
	 R3cjHn/1J/UQLMZijZucqd1RctntJ/0XYnPAiGEiPky3LoGnYUuOco2ZItX1x1i1DA
	 uknMc+LM9c+HdumaSEA9FGudaOgw1qltE3sk6rktnwgX6xPvVSPAqtJu0lQ2nbQ3Me
	 oMuDOeKXT6EGBN4S9fmK+FTijWC5kXfrrvdmpK4P9oVWu3zA9PZ3WCSasrRSq9zuRq
	 XnVUR/9vRomEQ==
Date: Tue, 8 Jul 2025 10:21:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Document
 qcom,tune-res-fsdif
Message-ID: <20250708-stoic-slim-bison-ac55ee@krzk-bin>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
 <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
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

On Tue, Jul 08, 2025 at 10:13:24AM +0200, Krzysztof Kozlowski wrote:
> On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
> > Document the FS Differential TX Output Resistance Tuning value found on
> > the eUSB2 repeater on Qualcomm PMICs.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > @@ -52,6 +52,12 @@ properties:
> >      minimum: 0
> >      maximum: 7
> >  
> > +  qcom,tune-res-fsdif:
> > +    $ref: /schemas/types.yaml#/definitions/uint8
> > +    description: FS Differential TX Output Resistance Tuning
> 
> Resistance is in Ohms, tuning could be in dB, so I wonder what are the
> actual units here. Neither commit msg nor this description helps me to
> understand that.

I checked and the values are in Ohms.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

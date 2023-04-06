Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F50BC76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 16:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISn+iM2b/f18UD7sHVUDVriSID5MivPzIBBCm9LZzUk=; b=YQXq14G/iwHPM6
	OMciTbWcE2ogu+B7gIM+puRTrrfERTOBmHyq+yKIMcbBRUP8hBz5Es13gg8OR7sHan7A61hFAV+0L
	CLRlAcSOLNhDb32/8olXokyyWaoLNTfKt8ST4u9r/opDhl/LN+hWAcMBUfatNLMfZcIukvai+1I5X
	UdyVqDhl3wgKmvvlxK1YLJX7sMz9/h2zw7NoHXupFkHRh0aQ5h7cvv7xRpuXA5AOljSKIChD2S9K3
	ElxmEwB4NaezzxpgCFKf91xKxUjaUiwZhtffKw30ekhGMGJlRQ8Ugt7k3QY3TuAb+IBfypLmdp9tP
	YgtnF+EqSOsXkrY6le2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSlM-00832v-35;
	Thu, 06 Apr 2023 16:47:04 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSlL-00831j-18
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 16:47:04 +0000
Received: by mail-ot1-f53.google.com with SMTP id f19-20020a9d5f13000000b00693ce5a2f3eso20991148oti.8
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 09:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680799619; x=1683391619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5R2nnvokLlBhefou6r+FxkRDSzpDeUjT394xl/l7UI=;
        b=vWqp7GlfLwfkQVFX91P/eJi8Z8SWUs7Bx8R0e+O35zp8bHs4KMfKHAaWPQCJZdRBsk
         Hqbh83JcZm3LGEIETTA1Z9rgs+tabncBw+zOKLf9nf59B7E+VhJDBGQNP/ZySojsJwdI
         oYr8VHBc94EjhwjIrqCCbZbaIQXtG0MCrJp539EfkwXohU3yQNzkeX1BvyHhEPEm6ZqZ
         ewHtHZdjhRJwUUCVjC8cyZXFGocOkJVGBLmWKO8njlouBNWXKvVI+G4hkG4YzrZyhoHu
         PxUGYep3mAAJiw7tJoDw1hIyShI8OFvO//HI3pOtKR+oOkeRa/KIVR/tlDzb76zWH60k
         6Xuw==
X-Gm-Message-State: AAQBX9fvJi9kJ7y9Nbi35pxoFS7l9eYokTGSTt6z4sfO7HNiVZqpRdtp
	wKtCt9gEbs4cVGs8gNQfpA==
X-Google-Smtp-Source: AKy350Z3OYaa76+/4YxtLF2Qu+11ekm4rdpDupLiBwu+MAGdjJcY/6Zgjftgeu/hCJZiZwQrzIXP8g==
X-Received: by 2002:a05:6830:1be4:b0:69f:91db:51f1 with SMTP id k4-20020a0568301be400b0069f91db51f1mr4937068otb.29.1680799618832;
        Thu, 06 Apr 2023 09:46:58 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s7-20020a0568301e0700b006a1508d348dsm875024otr.22.2023.04.06.09.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 09:46:58 -0700 (PDT)
Received: (nullmailer pid 3281922 invoked by uid 1000);
	Thu, 06 Apr 2023 16:46:57 -0000
Date: Thu, 6 Apr 2023 11:46:57 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>, Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Yuti Amonkar <yamonkar@cadence.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-sierra: drop
 assigned-clocks
Message-ID: <168079961708.3281867.11311371291138451400.robh@kernel.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_094703_388805_4666371B 
X-CRM114-Status: UNSURE (   9.98  )
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


On Tue, 04 Apr 2023 21:01:11 +0200, Krzysztof Kozlowski wrote:
> The meta schema from DT schema already defines assigned-clocks, so there
> is no need for device schema to mention it at all.  There are also no
> benefits of having it here and a board could actually need more of clock
> assignments than the schema allows.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/phy-cadence-sierra.yaml       | 8 --------
>  1 file changed, 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

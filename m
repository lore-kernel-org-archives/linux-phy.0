Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0511C83F0F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jul 2025 08:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BO3HqZrjnPvzX9Y6xTQAldofAit0DfmlHkUO8jDJAHs=; b=y8aixf4x+4cl7d
	TJfEPTUtCczkX8alqN+jldygaJ2rUqwlo3N/yvu/JZpTJEl++A9qfa+qbnsr3kCuo526I09BYeXhY
	MXG6paFZ6VNR5O7NKXksMQULftTFcmPC2ehI/5vhgsukfS+FDzu4rDkJtk6hHXF+UNa+9pI6/iUtN
	SioJ3F6KJwCzPK1tWC2gzPyVmYyxzkP/yXI53QhCxY8no7eIr9DXa9XgDsaEnxCmK7jWqiLCahFVo
	jIBl2/BRfPCe6UggzK0LGcU2E0get0Xohs50q/Q9Llo+EKJcPZZoOl5UpuYzL6wyTBGOaI4Basi+R
	deqIfjsqyVYIRxn6u2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3xD-00000004n1N-1z6W;
	Tue, 08 Jul 2025 08:45:31 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3jl-00000004kzC-4B8S
	for linux-phy@lists.infradead.org;
	Tue, 08 Jul 2025 08:31:39 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-adfb562266cso646206366b.0
        for <linux-phy@lists.infradead.org>; Tue, 08 Jul 2025 01:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751963496; x=1752568296; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SbTxGbzVn5eaG424GOYCdjKTORbkvUlYm6kHb9cg2Nc=;
        b=uPvd2DYA3loxrOBIUjotUXtkUfdSIfE/RrwvkrNzTPkJvuWxFzlVEd6T+5/p3keaz+
         PzO10ifVaxTM2UN/fNIvo04/avpQT5W6npG5dxmedwH0AKrxFAIpEMG+rOmNCvoWvkJs
         4QVSGbGSz1RWW8+fxQxUt/2EbEriG+bFvy6jVpRSq6Ro0BpNdfgYruZtI1yO1g3lul6+
         xK00XdBK0giQn3rOBika4KCDWM32FnH8ms048gCXkg2kXraPQjioXiirWEJu3jU2XxPS
         tkdfRZj3/mIHsjzKMqJIoAjlOgUlgULs2d3mLqj4Bjy86ICG/TSAPU+yqbrk+EmNPQad
         3XWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751963496; x=1752568296;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SbTxGbzVn5eaG424GOYCdjKTORbkvUlYm6kHb9cg2Nc=;
        b=rjUSmrnQ6by2Y9EOayu7/vgpYV23jVyf4OiVOoQ+AaEtwVKa04CcglKnWRljpDr2jP
         s4yDePpxjcM73/+9MYIf5W2CF3hfMon5FnKkK+J+NnGZFNe5iOWQfLxmSPyh5FRvGev4
         7jCa9UEyulZwd2ina1EVtLzAv1kZfc236JAcm+Zw3v7wRetZd8a+SgpJxPeG05Wcdx8a
         wkhG/FuNvii975CTF4lovE4bLLmZ8DNHIhYTZv7zEPXm7i9Z2L7TMGoA4EnARA81s+Ix
         cen0Ss+cEqSRlO/Jkrg1CL0ET0CzK/fzOl+UXWS86yaal98jI2+pdgjbPn92lkrcHhrt
         3PYA==
X-Forwarded-Encrypted: i=1; AJvYcCXe8Tfk0f+tC+ExMt60xjKEqhvo+cGLDHsW8DLmVporWWw3pbP/cL5urcsSAGj1aotp80Z8QFZbwOo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2Ch7EXl+JqlY/27L7ubLRKAvPoVVaZYlXN+059h9fTEAohN8I
	WJyCwIfJAnKjxdEaGGDEuM/DUc15ya+IW+ZH69qqJTLnT0TkKLCTxVaWJx+Tav/Oy5k=
X-Gm-Gg: ASbGncvD+xqaG1uSIR25FEoLiu11pDQSCd+futxAQq+pEvuJ+Te91BRc/QHlqwK0Lx5
	U7q9Gi+l+8iMO/Vdb7SNuq+E86fuRZQ5hoXrouh9oDcGkjA0aJLa2tz5k/UAYt9wjzz/pKjJRuQ
	l9xYs4MFKy7aI471R1oufWuN6ZNfcSS/+AUnVxxPA73TUeWa/3dTZf1AZxoGR/SWrbPiZd4bz7D
	R5t9rfgmFr/UjTXjj99JLyFRZ7ttpH5hd1SWpuq2zs7OVMmmuq/x5a0csGbgP6DlimzZiX+MW1c
	ql/kBoPvlxTWG0NXUGc+47VbFbayp+JIjXDZNV4SN5vGUiG4JgyYubP+k0EtdVueRMC4HIMTh2S
	yXIZpR1gNnyGMjDVaTRnJZ/wKCKPphU0=
X-Google-Smtp-Source: AGHT+IEm2XH/j6x08TGpkx5iGujBffEeCcav0ZoSdLi8Q5WO8Z9zekT2MKuOG8WCqq09Q57awzXAMw==
X-Received: by 2002:a17:907:6d22:b0:ade:6e3:7c4 with SMTP id a640c23a62f3a-ae6b058b82bmr218443366b.23.1751963495784;
        Tue, 08 Jul 2025 01:31:35 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e785sm840185766b.155.2025.07.08.01.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 01:31:35 -0700 (PDT)
Mime-Version: 1.0
Date: Tue, 08 Jul 2025 10:31:35 +0200
Message-Id: <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
 <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
 <20250708-stoic-slim-bison-ac55ee@krzk-bin>
In-Reply-To: <20250708-stoic-slim-bison-ac55ee@krzk-bin>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_013138_043427_E6983711 
X-CRM114-Status: GOOD (  16.74  )
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

On Tue Jul 8, 2025 at 10:21 AM CEST, Krzysztof Kozlowski wrote:
> On Tue, Jul 08, 2025 at 10:13:24AM +0200, Krzysztof Kozlowski wrote:
>> On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
>> > Document the FS Differential TX Output Resistance Tuning value found on
>> > the eUSB2 repeater on Qualcomm PMICs.
>> > 
>> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> > ---
>> >  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> > 
>> > diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>> > index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
>> > --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>> > +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>> > @@ -52,6 +52,12 @@ properties:
>> >      minimum: 0
>> >      maximum: 7
>> >  
>> > +  qcom,tune-res-fsdif:
>> > +    $ref: /schemas/types.yaml#/definitions/uint8
>> > +    description: FS Differential TX Output Resistance Tuning
>> 
>> Resistance is in Ohms, tuning could be in dB, so I wonder what are the
>> actual units here. Neither commit msg nor this description helps me to
>> understand that.
>
> I checked and the values are in Ohms.

Yes it's Ohms but not 0x00 = 0 ohms, and it's also an offset in ohms
from the nominal value according to the Hardware Register Description I
have, e.g. 0x7 = -12.1ohm from the default

I can try and create bindings using these Ohm offset values, I didn't
worry about it too much since the other tuning values in these bindings
are also just register values, presumably from before Konrad had access
to the docs.

Regards
Luca

>
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

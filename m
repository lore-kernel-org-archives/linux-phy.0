Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DE34C83003
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 06:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olvV6+UXex8Lr/tRymtv1qtVEkKMYW4ApCJX880I61M=; b=UtpXOjhYGBBPdk
	jB3VEK/VU6ZRrgjvzmsCnptWKGXH9/ddGJ+KdmljasdHIiiKF0e3JwHUqz58ndl8IaIK8Mt5rM3ot
	OZAHi9axU58gHWmD2piKlmP8Ive143Jj97lbQcMN9Xhsbl+oq3GNmuxxwPQ+Wa7BfU+NehgkOAOPS
	/jXMCTBO6Lbw5tYx1YuzJmyM1e2ASXcyMZVhHYPvGfxG8HZSazT3XEJkk5hpPD9FfCbx2CK1LGmIa
	vTBEH2WW4D0yd2bbo4obsFMKzr3LJaOkgrdIyQZ9llK8MHcKQ7FjR4f4kulnyjoEPP+dCUVu3rhue
	9KXGz+XQ7W9G8rmYcFzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6n7P-004drK-2M;
	Wed, 07 Jun 2023 06:58:07 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6n7M-004dqB-30
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 06:58:06 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-97454836448so929795066b.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jun 2023 23:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686121081; x=1688713081;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4r5ckWADvIeunNEBSYEKM/Q/81CyZ43oAc3SDHOV06A=;
        b=D5LHu0NTTbEdUyGlMZ43xZPsl509RpHKHHhl33Qtv5+IetJFJX9U92zpFIdk/i1RLf
         4eNXmSRqrbIQVFYTRHxZm1aKIPebzkD1fBQDFjzGsVeHKS2wzjUKeBzPqQfsxtsXV14a
         5NrG7kd/PvckTQmCTpUHGy+IUFgT+HmqoImaC/5bCXZcKq0I27285PXg1InggQEUE8HZ
         W+is7a9B9fsx+ZIlSXs3rw8bVSnUtGiyhU6jIMCulcaio0t94so88ivQS4eHRsl3S5fF
         7fiV2DEYsxx0/dsmbicQoa1YwBR23HsQGwaZ5DGaQJKKxbG7evIzlV4sP6W7HKXtVJSl
         Yojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686121081; x=1688713081;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4r5ckWADvIeunNEBSYEKM/Q/81CyZ43oAc3SDHOV06A=;
        b=HepOfJIcHGS1sE2xSnmDRvm6mg2Fpg/r+NFqweR/4aoKBq6RNiLuNkzaVeW+FP3gEt
         JZy8LvGYG7fVnef+EGY7s6Ax9LuzHQnoi9CKp2pSrMc6gw512XzFOwHGO0DtM1PWNQ5n
         xuewcKtxMI1z+0OQD8m/MWL9KDmFQrL8vaR/9/HL6ZN5yruH5W4Qo1Dy4sD/UcXI5FV/
         riYZU5+8ghyckdgv6W7B8pcJ0reWkN3mp7aQ1DiE4U/Kb15n8XQ2zeMnbd6/acqHPxAT
         vGZ9staaYcvNYST8YUYjks3WpYwFYwtvd99oq9UfewUuMMBbsJpAIvhj7OeHzCL2tWeX
         gKLw==
X-Gm-Message-State: AC+VfDy6xmtmv1xJFDoD83irXoLCW2aLJTxh7lTyeiB8ncjTkr3+rCP4
	0FsnWpg1yTlQvaITVHqgBDcEpA==
X-Google-Smtp-Source: ACHHUZ7fu0rabSgiRWnoDuVUvfCn6LZF2OhmoDNeDBuj4KR7YKeD2MulnLNleOKJe6o6wIMQqNdSFQ==
X-Received: by 2002:a17:907:2d93:b0:973:cc48:f19c with SMTP id gt19-20020a1709072d9300b00973cc48f19cmr4610485ejc.56.1686121080808;
        Tue, 06 Jun 2023 23:58:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u26-20020a1709060b1a00b00977d7bd9069sm3826614ejg.179.2023.06.06.23.57.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 23:58:00 -0700 (PDT)
Message-ID: <2edc5ad1-0000-572d-317c-387dd9c25450@linaro.org>
Date: Wed, 7 Jun 2023 08:57:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230607050025.86636-1-guptarud@gmail.com>
 <20230607050025.86636-3-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607050025.86636-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_235804_993959_5E9FDA98 
X-CRM114-Status: UNSURE (   6.25  )
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

On 07/06/2023 07:00, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

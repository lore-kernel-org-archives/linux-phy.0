Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F708C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Mar 2022 13:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAcJzBNWTwQtVYTXzUbSaKZc2IIykWBhsFOMZI4cOog=; b=Ku1j8syX55X9Zv
	nlRwNQkpFriVFzQzTwsW4aZEAfO6lFqducsdQYQf4EIC6idoR0owMGnDe6sveqwj89TMTLm+rNK+I
	ZojcKi1WOp3JpCqKDBLqa3sy/UWeuWNhF7RBQOGHog8IUiQc3TIVZv86td1ASKmbbU0t2vytnhf4S
	KjoBP+UJTy/A9J/SUtVdd0gyrdeNrjDfTpR7OP1cLdnSchmFaG6F+EuQFhJ2tkurU9lXVAVGbawtF
	JWWZOv6ha19QqiCE/Mg/pvm0MR4D1P+whsqB+4KSjYZYyb0oKyWFkhhdSF4lo2WM7gGmhMAYy06Kx
	Nerss8PDULx7WuIRmpPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWIHv-007tdW-0t; Mon, 21 Mar 2022 13:41:35 +0000
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWIHt-007tcq-6E
 for linux-phy@lists.infradead.org; Mon, 21 Mar 2022 13:41:34 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 j13-20020a05600c1c0d00b0038c8f94aac2so4150432wms.3
 for <linux-phy@lists.infradead.org>; Mon, 21 Mar 2022 06:41:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=bgZga+iTgZxl29E6bE+yhoQ9768MdEVBvsBU8JRRDE8=;
 b=IUC0/V9F3RGcRoNbU4a5ZelYau94YQWucihESG9Ept7EDJ12NFejz4jUpc8rrPjMBF
 fzgADWEF/pBvg/9gaZsGosGKelgn6cOBWu9Byyn566B7I2A+yL06NVKmb6mPPvBfX2kE
 5OEX/9B0RUzL8cvVj8qixJYUj9FuF2fR9mJ8IUlXqjCAVCKtcsS4g0P70UMg4GmEQnGE
 XeEUQO1z2iOVoAuDyPeOVcGzP+pjPNZnCfM1G5Ak4HqUsmyVy3r7golVgzOZUbV3HHbe
 zAYQcTjKlOf+P08560b4B+r1YMCG3DqZEz/44p2PMYvRz6A/BrVf/6CetOs53sW0R/EY
 7uuw==
X-Gm-Message-State: AOAM533aJAjoVfjR93DLQAIPS8p6C43fNFevG9ccq300IUMuiW7rseFp
 tjlycZ5+kjpSSgbK/H0ULZI=
X-Google-Smtp-Source: ABdhPJyyMzjTIttlNJGT9aSGuFyu/LU1exiN5s7fn3fPiNcvUU7PK+DZCRuW+H0pR2coizCwfUGpWQ==
X-Received: by 2002:a05:600c:5109:b0:38c:a4ce:ca1d with SMTP id
 o9-20020a05600c510900b0038ca4ceca1dmr5084171wms.169.1647870091636; 
 Mon, 21 Mar 2022 06:41:31 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.googlemail.com with ESMTPSA id
 c24-20020a7bc018000000b0038a18068cf5sm16635323wmb.15.2022.03.21.06.41.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Mar 2022 06:41:31 -0700 (PDT)
Message-ID: <c662c6a9-032f-01c0-7605-1e6ff58eaa40@kernel.org>
Date: Mon, 21 Mar 2022 14:41:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY
 bindings
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
 <20220321133318.99406-3-luca.weiss@fairphone.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220321133318.99406-3-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_064133_265324_C15E3281 
X-CRM114-Status: UNSURE (   9.72  )
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

On 21/03/2022 14:33, Luca Weiss wrote:
> Document the compatible string for the UFS PHY found in SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Changes in v2:
> - add second hunk for clock validation
> 
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

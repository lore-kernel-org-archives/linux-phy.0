Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B73606A32D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 21:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0RUpEcrt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=cJxTHBWL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xBJVDcldy3Ze1MSKTVJEyjLU5COXRzh2jjtgfos/zFA=; b=0RUpEcrtuWUCKJsTKHrHoH+k0J
	2CCGKCqjYdkgNuk3WSyr8U9w98ktRjZbq5o1OjNLUbU5cTxEk7D/bhxLTFzRARzucHw6Ltshm7bsU
	Y5mSbyGHB/fL515FTqb+sjrC+1J9bPay7GDqbZoapIo0mcMhu1KfycHp0c7MWeqi2z3VpiwdYvz0t
	awcw1cBw/47m+qlb1vOeivkkSSES0qlUVunTl7HMUACsztHYnqWh3ti7SAE7mJYn5v+mzdpragnKZ
	aQAPeqvJjJz2HU4D3bY+SfyGV3f6Ng9V6/B0YKqrydwfQsLH2EJZpAxOVG4q4OXRdXXliXTzvPMif
	7MNgyXPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRS7-0000000Dham-0rgu;
	Fri, 06 Nov 2026 21:26:27 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRS4-0000000DhZd-1dHY
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 21:26:26 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3ab1cb6eb70so1202821fa.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 13:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794000382; x=1794605182; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IS0n6SvtrSel8zY6vkWXqf2dHmq9Z3b4+UIE+41Cj1Y=;
        b=cJxTHBWL9wXW2icjZQqFIzIrL6bGb6A8tiKPjguk4yAqn2F1c6rfo9l9ZROmKalZxJ
         uLwtRQCAf6XnQpZ5KhfB3UAlpE4twMO/BvnXM2WDdj0kQGSl0fxc/5kPcm3naHntzolv
         R29uN9r4Ll4e90HBysofHylss/9LFqCd1LGJNbN7T/Z8xt4F8YSHHD0FMZaTgXBvAfu/
         8brnsIh2mlAvGOvTDcgNMVpGpT21YxOFxMS+Zyt2RhJf7maQJSwGaNEq03JuQGSnrHQP
         //wyq2sPAnWgtJWomg+Ax0AC35QaTFQZSmyAOTX7qsBQiugZrJK3n115smft66pq/TPY
         YOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794000382; x=1794605182;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IS0n6SvtrSel8zY6vkWXqf2dHmq9Z3b4+UIE+41Cj1Y=;
        b=SoZ8Zw29DPTmAxjFJZ7UtBS2QVhP5qQnR2oAIzkFMgpG0ON5Hb3pvvkXGSoelJiZTi
         uGX+cR4JaTnE94xOF6+rCXtSehk6SqSG9gyjb+7M+ivT/D0gW1DPbkWHUR+WtNJi3ESK
         6idFkAEUF5SetQ3S1nRx4/vrsml1/Byrtq9u3FHx0vfprqOT86YO19OaELR5o/LiE73c
         CaWY0g0VV5XvEzuRtTUjmdoey2Cx9Bnf4l2R6+PpeiJLY7DQidnPd25Hn8mpsMHksQFS
         0yh4B3jNOKkcmPdEWmZ3KvMsToQfeltTaVF/mqpb3/evKOpTtlo+SVnJA+/DGE/BrBLu
         C6Fw==
X-Forwarded-Encrypted: i=1; AL+hErEAh0BXx9bfFjZG2Q6J+TBJjG68n9HHnLdTVFOOy1VxAG5ugqeseNV9FQYCL7uGSaGePSKaveRH8EQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+attmk19YgkziSh3oMNtXM5WMhxDQAONTj0JJsiTwIyI6Rwq3E
	xiIjKPHq1GBWlrGNCES9saTGUxtdxRHet/59JpVqusJo2OVA1KUDSo9KsgrdBIs6Sjs=
X-Gm-Gg: AYBFou2qxJS37dcrUm9DraAN8BsIJ2K9qAb8g5n/7mL0Q1zqCIyaIwrGXfZeIqTMQVT
	63uQpjf/RgNFXuPkGd9QE0ho9Zp8BFbsIxZREJf5P6WQE560HQkGxX0LvSz7d5OkR0irabWSMEA
	DVQj9cJuxt9lb0E9CGUMnr/30hWr7y/8+3Xge0FU1838js+eSabAksvxQTceXJSGHAsnkByBGXR
	gYDY/bSKx8jCpRvudJuC2EOa5zuX2Lu7y/+U2VPAT7nVYZwL18PZXFwPqQvEYtonje/IhMXuLlx
	/HLNxLwpVs3bVYwV2S/6WjCtmKHVELFrOvQ1yMDdUS8QtKiRw4QXbcls8tnr1IXSqXAuRRQBnko
	DiC634ChowOVVG25+dkEPmYWhAktDN/KuJmro2SHApb14fep0H8udMjoYXLZEALm84tVqlEgSlJ
	SNy73arl6EoZHohtRotW1tCUrj5PEWzalQypNZJ4ooA+rclprSURFoiGJJoWzGd/4kK4pLnnZiH
	FWobO1S+nZ2aIB8/GNJwm7NqcPN0v+txLR1uwv0ulV1icnHeE3CKOC1cBtRJ/p59NwfwnPgqWXe
	GiFfEP+SJtbA5rVIURt/EGEeUIyOylqmPNbSRjGNhD5bnn3JTl1lYzBdyqFBYtMhcjbi9ax+Ih+
	Lnm8da73UFm1M/cPZknHHP1h37Zo=
X-Received: by 2002:ac2:5690:0:b0:5bf:ff57:b346 with SMTP id 2adb3069b0e04-5c003c44406mr1296500e87.5.1794000382152;
        Fri, 06 Nov 2026 13:26:22 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c00ba6e7d0sm4667e87.64.2026.11.06.13.26.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 13:26:21 -0800 (PST)
Message-ID: <ba22b7a6-83a9-43d3-9eab-93503e23a76e@linaro.org>
Date: Fri, 6 Nov 2026 23:26:20 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] dt-bindings: i2c: qcom-cci: Document SM8150
 compatible
To: mail@andrewgigena.dev, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-1-0103e8a0bbcd@andrewgigena.dev>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-1-0103e8a0bbcd@andrewgigena.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_132624_456846_51BE08C5 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/6/26 20:35, Andrew Gigena via B4 Relay wrote:
> From: Andrew Gigena <mail@andrewgigena.dev>
> 
> Add qcom,sm8150-cci as a CCI v2 compatible, with qcom,msm8996-cci as
> the fallback.
> 
> Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index 1e8def25ec0e..1e7a8efaa398 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -39,6 +39,7 @@ properties:
>                 - qcom,shikra-cci
>                 - qcom,sm6150-cci
>                 - qcom,sm6350-cci
> +              - qcom,sm8150-cci
>                 - qcom,sm8250-cci
>                 - qcom,sm8450-cci
>                 - qcom,sm8550-cci
> @@ -218,6 +219,7 @@ allOf:
>             contains:
>               enum:
>                 - qcom,sc7280-cci
> +              - qcom,sm8150-cci
>                 - qcom,sm8250-cci
>                 - qcom,sm8450-cci
>       then:
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

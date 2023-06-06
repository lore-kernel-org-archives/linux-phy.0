Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED632C77B73
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 08:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOdv8KblQACPiLVfJ7zFvJL6n2xUuuwNX8ZahcRVP1A=; b=nEGKjbh7fUl7HD
	UtknUol2snYnuoXATlILN0oVF/i08PzvLqAaEg3aizA/oRbEa29EWL1roHBsa77O7dc+7KEDtfjcR
	Zoi0DBsXWCcslF/zk3zihbCHAC5HB/kgYi7a8sHKO/SVxULSR4/PVmXp2suMyYHtMUxoOHCJhvnAA
	yRfzLFnVrzuknP4XuRH3hWZiwuVbfLmWQo7p0ZKUR8SDYaE6j8tA+emqPIFnyWaLZRxMZ383jPBqU
	alnomHcJFXn4pefRTimz7vz5Ny4ToaXcL/tOjqbEUWok3w9WU4lBVZYfIWao0L0yqNQ4AcdRlQ1PK
	2EP4W3V8EEAVbjSu944w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SKd-000roo-1f;
	Tue, 06 Jun 2023 08:46:23 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SKW-000rgY-1k
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 08:46:21 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-977e7d6945aso259559566b.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jun 2023 01:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686041174; x=1688633174;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhXwQM1axbZVP2R8OTg/nTjRF7LjBSXFyA1Pe1rgXwU=;
        b=rz3hnPVFfhJzaBCsj7KdnoW0gEFzBX+E4PmxU2fSGOXzX9Z736UZEzGJVbPU95rVXF
         yWbhRTdZQWTQUmRR6Al75izbMAIlNO/eI3RTB4MKzlhjY+6DitK2Ozp8ne9ElMAv8GKr
         Nqbb1sS5lku0wui9HJAOnwLD4DfDzzj2cM2j8VFtnMU/n90z0lAy1JNUb/KpNHxwz6cr
         cpCjh2bApJio4b/SQcgC5OixLa4idbENmrjA/k/8P+SxNnORYDSp6z3CCyhLWbBxpU9q
         MuDzunhAflP9gXTmwyPVs7k1gj01Z6Vth9HXUd9tAWbAIaJ0NFsaL3l2aIuDZb6VuQAM
         6f9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686041174; x=1688633174;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhXwQM1axbZVP2R8OTg/nTjRF7LjBSXFyA1Pe1rgXwU=;
        b=Ptc+I7/CX9f+tImJHhCCtgFnnVnO/2L/usJur711G4WjQlhGRd/ZiVYbHvUtGZvbPF
         nhCGdEf2kF49DcBlcXeCe3F6GpiNxravy6Jy3VN/DPZFLUKreV8AwSNHEjHdGrdOaB/f
         +VvqsjokAaMCnxkwNwvTlXUPsiEYLoY4mB+nlhR0IolOnN/I6F5dpcMesPa9nk2kdU3g
         ed59n5dkNlL21umkK/nCrGbBRDVhiRCl5113uv6cTaM2LFoK3XSJdpRPthWoHGd/QykO
         2Mpq4yAlt+PBLvc3Epp5YHO+HZJgLg5OEW34uHh+ac/bHMwD5/PbvWPh2MPWwRvjdQEW
         1H8g==
X-Gm-Message-State: AC+VfDxdCi0pQLBPCiYXYL4WutIeM7s9mGuWevNT3CoM6MUx0F+4PfUM
	GdMQr8C0C+kVM4wQiP/D2o1ehw==
X-Google-Smtp-Source: ACHHUZ6XPMkYalRlyNWE2pAPL43aV20Dl8/aCIgapDRm3k9iQeuNZMX/aNkFgm3+1GqDSzEW+qa8mg==
X-Received: by 2002:a17:907:9496:b0:970:19a2:7303 with SMTP id dm22-20020a170907949600b0097019a27303mr1672203ejc.19.1686041173683;
        Tue, 06 Jun 2023 01:46:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e4-20020a170906504400b0095342bfb701sm5455841ejk.16.2023.06.06.01.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 01:46:13 -0700 (PDT)
Message-ID: <2c3fa1f1-1859-0914-b39f-05f1f4186179@linaro.org>
Date: Tue, 6 Jun 2023 10:46:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v4 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
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
References: <20230606040529.122433-1-guptarud@gmail.com>
 <20230606040529.122433-3-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606040529.122433-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_014616_630232_64C2C1A5 
X-CRM114-Status: GOOD (  13.44  )
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

On 06/06/2023 06:05, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index aa97478dd016..bdeffb52340b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -13,7 +13,9 @@ if:
>    properties:
>      compatible:
>        contains:
> -        const: qcom,usb-hs-phy-apq8064
> +        anyOf:

Look at existing bindings how this is done. This should be enum.
Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

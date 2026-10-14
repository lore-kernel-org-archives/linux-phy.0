Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8750CC6B2A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00noK7H/R1122FmiYQ0BCjF2zyNX9FyLsH08PcdJbAQ=; b=mOo9AE6IKsp/yE
	aaAivxKOZ+xA3YIAz2/IHjwxXeASGrabONOKW6DtDn/Kq3bXlt26eaVzQ+dwzyWbPZ+pjSiT7hcwi
	ZEY+GRcgRwgJCR6LZz/b9knocfVp5RdS6eRMp5Q41jy8HEJPkbKBIe0Ooa5C/xu54X9t+99jd3liP
	YJ26kcwEORRrQqAJ7lXbHSn+7Pofmv4JH2X5W9bwKmOcso8tOrjwue8m+HYPmucA0cK2QBKUGMZjF
	7Qi4vQ5qw2BL1xMX9A0KurLAlL0l1biSq09gBNSviq1cQ+A5QAaFnnDjr90n6/rQnSsS2OXAWA0xL
	k4rzwGWXiH5gtWS2pjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvRW-0000000F4Qb-2JLT;
	Wed, 14 Oct 2026 09:38:38 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvRR-0000000F4KY-2b0S
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:38:36 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c2e8e738ae0so685093866b.1
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791970712; x=1792575512; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=g+phdlrYB/RD28JPtIDO6lYJBfhoxurBJxdEKdj89FI=;
        b=EOYyNv65iCm4GOs6Ex8l9jN0+tvz+hsuxiBM9afCWgNrYCzXZke2VMZvglhPLoVn5p
         WwYOh1HQR3gKd+2i5/kHxkTFKUXIsWvvoNQAdAoZpa/7lgp73LBX8w+v2sLfwTXtF8VM
         ptEfCI6KW4b3beKw2sDY/r2L6aHV5aXS+5gf1wOHsBJ5+Y3zjBcmhaYMk01z9M8IkvE7
         S+f1cp6r/kVI3NOw/LZCFYEsu96eGYRp338cEtz8hub9Kz1qECW6z1PZ0pyiFv9qDAMI
         GDIkcjB5Vq9pUj/GjFTiPKlmfUQQsazgP4aNhiaVJEETsCmlw7qtxifjBUs/bbJlnlVd
         4gnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791970712; x=1792575512;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=g+phdlrYB/RD28JPtIDO6lYJBfhoxurBJxdEKdj89FI=;
        b=Esmon0GuvlXDiwa4qN9Nx3tqsvZVHRnmTOjIaWJijWjCl7bTmyu8C/ZEU7Lcu5P/7n
         +KPGbg50SkimxedHWvVPZYxgb3P1AR8UQ2X30zu9+10TKpyfwGnC5owduYWZUA7/ttLY
         6qfpO6Y1rT3WYa2ksD6otrbHIOSBMGOi5sQdLPZB7Grpsalh2rl5X5SBq+XyLMVtrIJv
         3ZCpmlUQVfL61PLJe+1dpY/1i4t/tJtVS2B1BORdkXZXVZrO7ITaxLUQiaM7yv3r2ypi
         SaSeYRzyPJX3s0/CseAL85akybrpSYYwtw7/VgXl+bcQHlVhXNt7Tv1Jes5FYhQcd33X
         t0iw==
X-Forwarded-Encrypted: i=1; AKwUvBzEpY16J6LnWIkCy+gWILIu8Q2ub8ofKszNH+6PRs8DaHxuZ5Bd2yfRpzsKcNNTkdWN+mMCeHyWCik=@lists.infradead.org
X-Gm-Message-State: AFq9FYIpALuLej8WyA23V+V3FA1rlrtX/tjyFbn1JySbXmnizG6DMwrI
	weVjAaV4nP+wO2yB9SQtdz1aEcgdmfaYFfI0nt8QW2ouYOW06/gM1dqzx4T6SrN5ikQ=
X-Gm-Gg: AYBFou3kzNHpaXzx3109fqioliPnAaVM1A1XY1e6fl6+AzVujQar5DyWMtIy/w2RXOP
	Aw2JlDDVaOCK1xI6PwCb0QAgY4DJnkQwFb8KObA1xbqb5odDhgacwVDY2OaoS9wYV9m1tPRFf5x
	EwHCs0qy2FHENCBrM+jCs6t+IcMOK7kvxiPIhUtj0iVESxE96tKNPYOCi5MrWQZN+68uSnQw/E9
	VS82l0ZFxcgAuUWFEGROvfnGvl9Eg+haFu4lFtkEqvd4quJmZIVcarfP9jvNvSizIKsJ2ODftFw
	/0ZcFIkgsJlj4namxzfsE7m8B72x9YNDXbxlfs7zU5NkblPEwlF3fNyxzGmpX39cxk3TP6tiKtF
	89XvTIKpPw8+9z+qbr9RsLzxsvrrPpcAqL2QnYuJUCT0/VzMU6sP60oxXyTrPDmxuzUk2etcE7y
	DheNOpVkxgMbzhQfZaR13D1YAgoZY9TXaAeJCxYm8YmugeN2+m/zCj9eVKWfNktJ3PoINCSMM6Q
	rHddiwuSq4G
X-Received: by 2002:a17:907:2d88:b0:c25:541:fd3a with SMTP id a640c23a62f3a-c31a9a07db1mr1358197766b.7.1791970711490;
        Wed, 14 Oct 2026 02:38:31 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.126.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c31a9aa5953sm693842466b.58.2026.10.14.02.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:38:31 -0700 (PDT)
Message-ID: <47c2af33-05f1-41a2-958f-11ca13568acf@linaro.org>
Date: Wed, 14 Oct 2026 10:38:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] dt-bindings: media: Add CAMSS device for Maili
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_023834_883576_9D378ADF 
X-CRM114-Status: GOOD (  12.66  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13/10/2026 12:02, Nihal Kumar Gupta wrote:
> Maili shares the same IP as Hawi. The only difference is
> Hawi has six CSIPHY while Maili has five.
> 
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
> index 5bf0dca3d24621bfc4a09feb8e5037a925869751..d1d53d6f024cbf7d2a0f2525aa4040260353b200 100644
> --- a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
> @@ -4,17 +4,22 @@
>   $id: http://devicetree.org/schemas/media/qcom,hawi-camss.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
> -title: Qualcomm Hawi Camera Subsystem (CAMSS)
> +title: Qualcomm Hawi and Maili Camera Subsystem (CAMSS)
>   
>   maintainers:
>     - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> +  - Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
>   
>   description:
>     The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
>   
>   properties:
>     compatible:
> -    const: qcom,hawi-camss
> +    oneOf:
> +      - const: qcom,hawi-camss
> +      - items:
> +          - const: qcom,maili-camss
> +          - const: qcom,hawi-camss
>   
>     reg:
>       maxItems: 13
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

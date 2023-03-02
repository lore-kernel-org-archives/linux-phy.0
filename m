Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B41C7EE30
	for <linux-phy@archiver.kernel.org>; Thu,  2 Mar 2023 08:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QxCJm/8dVJcm0oSgKw5woMhhseKijBSmL3wzrmWQlo=; b=bmcFwXnhEuLuVW
	LxgDMlm1NqnYcKCioB72/c1ilHj/6K/xkFiBBJXa1W6OxrNmPIHwG6AdGFxB+8uwS6MAHPpgZsxzW
	leIeaBtSCMsJk8OiZfkNTIixxu7ZiBF9rA7glAxnvA06Xwqg0E7imtzOHVjEfyny4VuusQG+ubjuX
	hMbv1+wYS7yNkgWn3z1WZizdGXaqD8NhfA6+nZJENuK24fgG3Jgcm/vSVmNhLX8gSCGYSfYYBnFHs
	FUAM3aLPRXKNgjM11leTMk7RyVkUfEL4qtRyKQ/8wxnNhxqjKIYN0FqMLpkhTZJp/rBJOsg0Oa6AF
	JvLpjwUU2o9TZKbmIuaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXeXr-001Jtd-W6; Thu, 02 Mar 2023 08:44:12 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXeXp-001Jsr-Nm
	for linux-phy@lists.infradead.org; Thu, 02 Mar 2023 08:44:11 +0000
Received: by mail-ed1-x532.google.com with SMTP id a25so2045519edb.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Mar 2023 00:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677746648;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y465owWqNdZLbwA3F1DEzjK3aBGjSD5dSySmp00M9XI=;
        b=RXkVfzZ67BZ+ApfbnBwneXHfGQEIG3BqhEgoljXYcYAcyGV5S9aBmQV+vdfZvfae0c
         suhNvTXJ6ngQiOj20+8s5ZjkxG+6A+tCjQjVG/1Gb4ZT7d+3ufOyKRg1Mv+/c6Uz+REo
         ra4F+aNJLmwFZId8eI+j3lXGokA71SCKTFooweJ4D/HOU/OZP485xEWChrKZnHfNGHOj
         5k1BgyuKCllT9TykD14t3KCoV0m3dZZTZOIynO8d9+PBJvM11VNt5GGJEGsTQL2fRSbY
         KW9Xu/q+1xWPL53FZdudlojKlD6YIJYM56dwq846N9Up/9JM8Q0pxRN3J5nq7E68diif
         3kVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677746648;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y465owWqNdZLbwA3F1DEzjK3aBGjSD5dSySmp00M9XI=;
        b=TEeeflpJpDqfF2gEIqGeBlAHI+E70TsVi0IE2ONO03ssa/A+ZuoypDpYIe1yVrP4Gp
         Y8YiR5RcqBWIx/zHRvnmcAwMakcXslZHt1NQj/Ib14ZAUoJh1aqACUDp6suM1Q2+Sctq
         WDMpMi3B9tH6BKhUIz8N/u3zWy65UP67QfrhrY9FwXFUAOO2MPH89fOSlYclSrfw8/43
         HqEfeuKoWUWd2bcwB7aAOKhmRh26yy7glpxQO8b3xePeVsWk9BiJQdNSeX0uT0brtko5
         mmjVo955c3pNtsi7bNGCZq/Zw64Ssbid3CRy8SeomIYQD6eWS+zGLi2WGKzlASQ5iyCI
         wuLw==
X-Gm-Message-State: AO0yUKUnJuXh8jwlrOwfIAKF/j84WPjsU65/nGuZqM08zm4Ox+7lhnUh
	Kil7vNbHO7rw9V8v+NG7yYqFKw==
X-Google-Smtp-Source: AK7set8nFwIF3nYwyIZP+B9XzlWd7wNfrNHZmhB3/l+R9te/JWOOsnJIANNZx9K87r6RQYhEt16qtA==
X-Received: by 2002:a17:906:d28a:b0:887:2248:efd5 with SMTP id ay10-20020a170906d28a00b008872248efd5mr8497891ejb.77.1677746647764;
        Thu, 02 Mar 2023 00:44:07 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n5-20020a5099c5000000b004ad15d5ef08sm6607326edb.58.2023.03.02.00.44.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 00:44:07 -0800 (PST)
Message-ID: <567ee41a-da6e-1e5f-8ae5-b3606a9a3227@linaro.org>
Date: Thu, 2 Mar 2023 09:44:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 6/7] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: mparab@cadence.com, rogerq@kernel.org
References: <20230301131125.6084-1-sjakhade@cadence.com>
 <20230301131125.6084-7-sjakhade@cadence.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230301131125.6084-7-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_004409_820116_51660FBD 
X-CRM114-Status: GOOD (  12.84  )
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

On 01/03/2023 14:11, Swapnil Jakhade wrote:
> TI J7200 uses Torrent SD0805 version which is a special version
> derived from SD0801 that has two internal reference clocks along
> with one external reference clock. Add a separate compatible for
> TI J7200 platforms.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index 711097e167bc..1906b6df6ebd 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -21,6 +21,7 @@ properties:
>      enum:
>        - cdns,torrent-phy
>        - ti,j721e-serdes-10g
> +      - ti,j7200-serdes-10g

Any reason why adding it without keeping the order?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

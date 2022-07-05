Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2061EC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOPoXHdL/N1k8vYEDTqdGv7jsIQHTOKcxpJTtBm54LA=; b=PDf7n9BLdqlWPz
	pBYdCXZLu1xYPqU0JtDSWWArxBq0bOB8yAixn4rRVM1AgZ5npfHuevO2iiA1kV8Rzt8IkPaiE++Uz
	j1/KXy09vvg7iSRGjZgSytVK9Rp+h3Juua3MP4RwMZdxwrXxjmv6okZJgO71y9pHPTgLVAJldCKmB
	pL/k0WDXXittthDhGzP3V37lIVcow0tJbvrWD6WlIfCNvCXi7ZpNHSjMlqcazwGzKLWsL/9JdMp5O
	GQq/2SlBVGnpn44MM4sQfdOUzYzYjrHvHmupl6eYLx1WzeC98EUNH3Ob4AAAJb1SL0ylpv75LBpce
	Kjqw/II1bxSz4r8aqXcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOq-00H3eL-C3; Tue, 05 Jul 2022 10:03:20 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOo-00H3cF-79
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:03:19 +0000
Received: by mail-lf1-x130.google.com with SMTP id j21so19743649lfe.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=isi6a7fVq8cWarGbVpE2RdlMD/1CV/69s/y//iHVXgs=;
        b=lkTAbTZnFM/J04wdmLCi+WJEQrC9Kdq8gMF+MXDyk+9UAJN/1oRub4OJC3TaQPVMXe
         V0YpeC9wmJc7NPXdjK1YrsRCMe+XmEQbRX4SDZ2Me5MDOxiiTSJhTjXL+NNTpSGaj7JC
         DUx866L0jqXOJ9xStlA3wyt9lDDlb6eT5wOMQEOg8VCz3JaTSGy7CyxXgy/kxghmuWWh
         DoZSLBOKZcaNQHWaF9k2XSBVTvujdCRZOAGWiwmGnpNLYWZcKrhfKTwALDaYsq6haRQn
         PwEWvzW5kr74bRmASWAlOKHY8dpBQA1Qm4709e2A/VVJfAZh652maYxEWfCxUf7zV+AW
         S8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=isi6a7fVq8cWarGbVpE2RdlMD/1CV/69s/y//iHVXgs=;
        b=XwZqOdXdGxoMZvF2MOwJ1PrH6rKhjCYE2Ctp2m2YCbpGqPvIdYhHZbyU5HuwMz3DFL
         4eVryH+w+MzeejZUtyk2UjHmHA3uEsLL0XHrQYCXU9Ae6511N+Aonj8wN2rggU8SpIaa
         l/bqEwypQf2r8JoFRS8dN9B+6jtwvxgGxg17DlrpZxjif33+dJNBrO9lp7tTKkGMQZ3t
         1AUYAPHZTGQXDZc9kT9UhyWeOa/F4zi9adDSrciuNqYDifsWkz6E3fuwLZiyeVwLhFjm
         ULkTzXIT62q2yb7ucDxyg32SyFLfhZ1+i4Qg/610emnI1dHHv2QJGtG5ksqcIRR/omx/
         i0ew==
X-Gm-Message-State: AJIora+vywgedn0we1TyfU7IgQ33pb0/Zc5ya+3bv6gHwjFkkuaB+IDd
	prLh7wWsduFIgyqgN9MnfuP4g4c3oHHQNg==
X-Google-Smtp-Source: AGRyM1t/CCm8GtXgy4LjtshxePwKKSBsv2Rl+OeKnOAvbq3eR7yiOZ0pCoxKokhIen4sDGJEJr3WCA==
X-Received: by 2002:a05:6512:281d:b0:47f:ac1c:fcf5 with SMTP id cf29-20020a056512281d00b0047fac1cfcf5mr22921572lfb.197.1657015395138;
        Tue, 05 Jul 2022 03:03:15 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id o4-20020a056512050400b004785b66a9a4sm1923266lfb.126.2022.07.05.03.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:03:14 -0700 (PDT)
Message-ID: <f8a9e839-4a0c-238b-802e-b289e5a1e9b5@linaro.org>
Date: Tue, 5 Jul 2022 12:03:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 04/43] dt-bindings: phy: qcom,qmp: clean up example
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-5-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030318_327790_CBFAEA0B 
X-CRM114-Status: UNSURE (   7.15  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Clean up the example node somewhat by grouping consumer and provider
> properties in the child node.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

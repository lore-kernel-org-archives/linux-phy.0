Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B687BC63797
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htKkqzAulJsUNguMr7/Dg9tRhP7dWzQBo4vNaJk6SEU=; b=SobWpwNLxh8O9w
	ZhJ9PJGOkf7f8i9ejVppCSJZdl3a3cc+WFd6Vmcsk5Kn3KD54a8Z7zxLSeEf5qsI6pkjV/TopWXKT
	MlAEJYvqjsPJIuQNodlN4fskj/hKMLGdoxhRl7i9u4HJcBjg0nA9w3Qa0M1Qq11gejUP+wXzqeX86
	f9LuuPaPOqUkVEjfKziK6zZEK6CXp6weWAkrU/ivDJJ8UrkTvO98l+WVMlj1sxpEGky73PY8BmVLP
	e9QN7Zuo7e6HDgWEP/8Otw9ozmdmVXlCzP49Oh1imE/j60Bat1SCQQEsuPzFFqBHvU2EvUVvoVMyN
	5gSiETZYqXJ1b8vKArsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnFe-00Efag-4S; Tue, 17 Jan 2023 14:47:50 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnFb-00EfaC-9t
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:47:48 +0000
Received: by mail-ej1-x62e.google.com with SMTP id qx13so17515318ejb.13
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wh94K8a1yeUOU/noK9WkXCMow8tn4jBURVysgienBhI=;
        b=ZDTDpbneKrcUAWsUMYlB/DsliAwSu1H1MdlQxEsXK4OCl5wKgQe0DKiliq+cUfbrBJ
         1QiUfo4ejG7NB01f5XIIXat42kkj0VJ5OCL1fLA/7/Bcqz+TkLJdxMGC4PGhf5oda7Nu
         eYEF3IKIFyjpp1JFlzKISJzHLQU8VxH3vh5RFgrsI4/1VSjCQvpbVekSEv4uDxXQMEjW
         fN38SwicPSvbrCKTUwGlLG4YAmJsrshSyzelrcSKQ53TwbQnrj88Y0V2y+U9bMqpz/g5
         OHnCoTrg/4S6GES0kJWYx7MGbApE8zddkYiY32CVcHW4x9u4IjTYbvWVaLPmnUbNzjlF
         Zvag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wh94K8a1yeUOU/noK9WkXCMow8tn4jBURVysgienBhI=;
        b=dWKEDZs1d8J7k34yvW+icQ+6FsEkvns1fxFssxtOBiwMaZ6bhAu0c67Hs8pFTYjVmX
         WRuhLC75ip9TwVuHsMHrwO2itBmfOicaAMKopGpeW4SUvyQFHqJ8Q3Ree/WmrAFIbc0q
         Vxzf1WJdai869xfNrAt8aJoNwUT8tL+jdPiSlrYjoypepjNlxGNEb/khxzTEErUF+iai
         Z0buaQTVzKeSIS2hPdpRjXS3Zzs8AtURskbN6YodkjwFAHAgoIEx9ZHErAYciu819/29
         ekElBIBoIwnUcZCmSFrtLjTRVoe+v1iFFOjFe3olbnkfiWIrhKdG9cOC8zuT5eSFgymU
         sjAg==
X-Gm-Message-State: AFqh2koxX7pKOK5ryEhAwAI1ucX2xC+dPFovSX1xsrb0yZaVfEcMCDOk
	ns7xuZg8LRL2Ssuy+Wjvu/arVA==
X-Google-Smtp-Source: AMrXdXtOPe6BBTiewo8cA0tR0zOAYhxtjEKhMKiQ/haGi1750FasO4dhwFGRmGGPzTS+n98Du8QBDg==
X-Received: by 2002:a17:907:a092:b0:86d:c466:6b16 with SMTP id hu18-20020a170907a09200b0086dc4666b16mr3199087ejc.7.1673966865591;
        Tue, 17 Jan 2023 06:47:45 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id wb9-20020a170907d50900b0087045ae5935sm2893891ejc.1.2023.01.17.06.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:47:45 -0800 (PST)
Message-ID: <3a7fbbdf-6fb6-f9db-eed7-fe53607db69d@linaro.org>
Date: Tue, 17 Jan 2023 16:47:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 6/6] phy: qcom-qmp-ufs: Add SM8550 support
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
 <20230117142015.509675-7-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230117142015.509675-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_064747_372653_38707102 
X-CRM114-Status: UNSURE (   8.82  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 17/01/2023 16:20, Abel Vesa wrote:
> Add SM8550 specific register layout and table configs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++
>   1 file changed, 96 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

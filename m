Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDFCCC77B7C
	for <linux-phy@archiver.kernel.org>; Sun, 23 Apr 2023 08:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JMTLMNR25BGw29yPajWbmvZB45PiHYJPpscb0ElBTg=; b=DbFvNiL9ddTfHJ
	HePLNOw5d7J6LzZrOGu5rK8c49eQFM876S0ikWBNU8l69fSe6PvKk9InPFQeH9rd6pbpoEdJu+91k
	A1s3R4jq7OSY0VdwXZX0JW+Ad2h5IfqqWu1FFkeh1IaSD5Ua/jOYVgu/O6ca903PSSYmgDJBqOnPz
	j4doKd3dMozR3UsXsV92g3RJkMgdDDGhKMGjx2ihMN+wHcgPP0KSNjsebsOe8rYNxVjEagbViM2iQ
	lSwWpbC70NzZMkRTygGYfMfpCp6npmR8o/vfjfdFw+awC7XAjiZy9CCuzYvxDTazaDZjsTshwta0E
	GHE9ZdUQsqlUfgbPwmIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqV2b-00DuJe-0z;
	Sun, 23 Apr 2023 08:25:49 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqV2Z-00DuIx-0K
	for linux-phy@lists.infradead.org;
	Sun, 23 Apr 2023 08:25:48 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-506b20efd4cso5541791a12.3
        for <linux-phy@lists.infradead.org>; Sun, 23 Apr 2023 01:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682238345; x=1684830345;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qETio9rQ+I+ApbmjseQZz+b4a2GrMopfzyspvxvfmDI=;
        b=CNlnud9ixhpA7rN5EkdFypqZA/9EHtbHo0dnoloz/zm9AmQu9Q7dFAPSj4qpSWmA20
         LojHlppqQf6E2hQUooLbrCEqRzfDtZLvo/byw7QN4ujUSkjLnpmj3Ejl9UP4EoVVkVJJ
         5js84TxfRY5fzJBR9v7M6CZkkJz11L7tpmtrEsbML+0/W5NrrY2NHnQV0Y86EoVyi4tG
         dFteiFaIqHvaV4yAmni+nFeReHPTtKmlzPNBhQyj4eEC6dYOPxKpOgh7Fesd9EpWlnIp
         bB7P6hgsKucCZU2KN3vOd2+7LnBC+WlY/jANPYX1BQ0wf8f8O0Bm1xBwgY0eYj70aW5E
         hD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682238345; x=1684830345;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qETio9rQ+I+ApbmjseQZz+b4a2GrMopfzyspvxvfmDI=;
        b=YeJX4zCRQOEsArUYHgciYVYl8OwJiaJDIL2fyKhT++41WSNIfq9habX8+7rPR6g0v+
         UhOlKQtucgyyePiX87Z+5utRbVYgCZ3rjWOJHcl03LuzOq3G59MWoQNb62goRalfPb2d
         iNG6LFMOiNZMUccbq1QscG+QIzyxr+4yX9tn806K1umHmgY1zVVzGSoQiysh8mQWWwIh
         uKIZJ8wlwtiq0ho5ZjNerSWil/GSHFi5KMci5hk1vNnhUVNeGnOeVAmKxV6UpRQHoth6
         MWj9TO6x4JRx3LxJLM5TCdgfaayGT53lewkIT1j0tEzWzEtjktazFk4K7+e8Kqospgda
         kQ6g==
X-Gm-Message-State: AAQBX9cPPNxrD++31iu96S8J89VxVvXCK4ZKYqW24JvTo+CTcpfdDdDM
	nBFqS8U34CRapym+NI6oKOMoJg==
X-Google-Smtp-Source: AKy350a52plHENuAAwWUdq2bp/DaP8sNnY6cqie/09b6KCgt6I5FlFz697CL/6UK2AIp1gEeHdBZUg==
X-Received: by 2002:a05:6402:74c:b0:506:976e:5242 with SMTP id p12-20020a056402074c00b00506976e5242mr8618775edy.25.1682238344819;
        Sun, 23 Apr 2023 01:25:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5d52:d466:d57f:118c? ([2a02:810d:15c0:828:5d52:d466:d57f:118c])
        by smtp.gmail.com with ESMTPSA id p21-20020a056402075500b0050684020babsm3464665edy.27.2023.04.23.01.25.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Apr 2023 01:25:44 -0700 (PDT)
Message-ID: <80c6cfbd-5661-ba39-2193-c6ae8eba3648@linaro.org>
Date: Sun, 23 Apr 2023 10:25:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 12/12] ARM: dts: exynos: Add Samsung Galaxy Tab 3 8.0
 boards
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
 <20230416133422.1949-13-aweber.kernel@gmail.com>
 <9aba4c1d-93f3-7613-6fb5-0591a281ec0a@linaro.org>
 <5818b5be-f9cc-8009-e2a4-1049d84a944d@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5818b5be-f9cc-8009-e2a4-1049d84a944d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230423_012547_148406_E12E3510 
X-CRM114-Status: GOOD (  20.01  )
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

On 22/04/2023 15:50, Artur Weber wrote:
> Hi,
> 
> thank you for the review.
> 
> On 16/04/2023 20:26, Krzysztof Kozlowski wrote:
>> On 16/04/2023 15:34, Artur Weber wrote:
>> [...]
>>> +
>>> +		backlight: backlight@2c {
>>> +			compatible = "ti,lp8556";
>>
>> You need to convert bindings to DT schema first. I don't accept any new
>> usages of TXT bindings anymore, sorry.
>>
> 
> I'll be taking a look at the conversion (will likely submit it as a
> separate patchset, since I've been looking into some minor driver-side
> changes there as well...), although I have one question - who should I
> list as the bindings maintainer ("maintainers" field in YAML format)? Is

Anyone who has interest in the device/driver, like driver maintainer,
device developers, you erc.

> this someone specific for that subsystem, or the author of the driver,
> or someone else? (It's worth noting that there isn't a maintainer listed
> for the lp855x driver in the MAINTAINERS file.)
> Documentation/devicetree/bindings/writing-schema.rst doesn't really
> mention anything about this.
> 
>>> +&bus_acp {
>>
>> Order label/phandle overrides by name, so acp before dmc.
>>
> 
> Out of curiosity - should I order the children of the / node 

Yes.

> or the
> pinctrl nodes by name as well?

These are usually by pin name.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

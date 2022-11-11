Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 066A6C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 15:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjKQEsD3eZwQvJi1lrIbNv7w4EigupOX/YwKwV4Ey6g=; b=FAOwot1LeeepRV
	YJSnPCBCkclugbnG1h5QlsmHG0X+dS65j5XDmL/e9YNgRbozQ2pn5mKy7nX4LZxFtZzW3C3f3B44G
	6fNxGk6d1LE8qfEzmN6LM1np523lboX8PEdJnBNWKdxMNrELDVsUAmbIyuR1mCEWc47d6wwV0jSlb
	pCzEoBPjrw7YTy3yMff7Hg6kajIa6l4/Rf1iKgwa4VBcB4ggRI8xnt/AeD6WKoP/7PlESzlYbH8iW
	ZFzENZlQdlH9TES5bJyh8GY90nCkcqtRXsrrBuQkR6j1Giya2SSJqZdamAP3vkUPJyDvjPy9x49bD
	sdTGIIBJRt4aH1Wqk+pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVoS-00GX84-Bx; Fri, 11 Nov 2022 15:19:24 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVoP-00GX66-7o
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 15:19:22 +0000
Received: by mail-lf1-x12d.google.com with SMTP id a29so8746154lfj.9
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 07:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z1mqXwvWmPhab1TlCcop37vPKl3pWguvjIJOUMn4sIY=;
        b=wJXspKof+l73FTF9dDPcKuE7E4CNKAsq3ftCJuptXOd8FCp98plyuvirtPcyP+90/D
         JMFS0KgrZRuIYgddBN6t5CqXKcIoMrZWbOz4M33m/JIJIViluBGPJtEKgnCZW9gYmZJE
         XL/0tSwfwYdTK1wOItD9aOfL7+Tzz9O8fUn20ODXBYPvfpEdkDn0dQhi4WDhADYXX19G
         38WFTTJ+OXs781TmnXurOELybHMIkuw17SXvPktVxUWB/xqSO6HsYx/mgC8+TEXJ5MpY
         gyvNoaFyQ9Ztf3/b7x2Ivu4XiGBcZtNIqGjdn71+/8q/hRWihQKMzi0/aMCSdQR5PrQI
         4WbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1mqXwvWmPhab1TlCcop37vPKl3pWguvjIJOUMn4sIY=;
        b=zYdSXBdIxwkGRoq5wvGHWX4l8SbAZNLZ5d043FCiLI1cTJ1LPdccPcYIyhK0+zXE/s
         aUFNq9wZpUoHmjcPAd0WUn0SkFHKk8YnJcW87LpUxXuiFs40I6+1gjV76r6EvRoIrjb3
         F20lZXmwVjq+6rte98Pqs3YN00Q4hdPkvD3cdw+SUZE/jCeL6XDKBUwK9k6Y+PJ6uIz6
         8mSpDTaWbfszXUsasADBti5DZoeQHCaR34kiHh5Bx4Be6URuYdUQ5c7V5U9Ei0GqsC/H
         PlHawM8kL8uXKM+qaG0Anp1Gm4I+CpyYO2qmQFstMRtla9jZLThbmbgeJM4Cn89sk6wj
         Q8BQ==
X-Gm-Message-State: ANoB5plCjFW8froI1M06WBzvqXa00BQgLnPHCVhV1mCPobl/MhL48vAN
	8WdqArGbpQEE+thpr9iqZg7AgA==
X-Google-Smtp-Source: AA0mqf4diOCvKO9Vx85zIQPEsX4cJK6B1dJWLmi42WV6aaRL31ikW938hGDp3uItvL9I/3P2VYb1Wg==
X-Received: by 2002:ac2:4355:0:b0:4af:ad36:7a91 with SMTP id o21-20020ac24355000000b004afad367a91mr908980lfl.596.1668179957906;
        Fri, 11 Nov 2022 07:19:17 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id p24-20020a2eb118000000b002772b70c1acsm452812ljl.21.2022.11.11.07.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 07:19:17 -0800 (PST)
Message-ID: <79d633d5-5100-f7d3-2d5f-064f896c5f2f@linaro.org>
Date: Fri, 11 Nov 2022 16:18:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 04/14] phy: qcom-qmp-combo: restructure PHY creation
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-5-johan+linaro@kernel.org>
 <Y24Vyn8o1VkUecKY@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y24Vyn8o1VkUecKY@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_071921_305347_366527A7 
X-CRM114-Status: UNSURE (   9.34  )
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

On 11/11/2022 10:28, Johan Hovold wrote:
> On Fri, Nov 11, 2022 at 10:24:47AM +0100, Johan Hovold wrote:
>> In preparation for supporting devicetree bindings which do not use child
>> nodes, move the PHY creation to probe() proper and parse the serdes,
>> dp_com and dp_serdes resources in a dedicated legacy devicetree helper.
>>
>> Signed-off-by: Johan Hovold <johan@kernel.org>
> 
> Please drop this first stray SoB line when applying (or I'll remove it
> for v2).

You need to send a v2 anyway to have a clear check by Rob's bot, so drop
it then.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

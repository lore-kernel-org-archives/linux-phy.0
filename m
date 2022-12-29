Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E349C53210
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 19:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cG7Sb5tJ4JkmM6dP6IgSx4aSUGnxPVefwI+8C9CcE50=; b=fD2xds1XMMO4S3
	eZEbF2MgSvD2BJEgRdTSNxbqu5Ku/cjkMGWSnjQAc66bIyznm1XTozzGQnlmqAPcxa4fpXyQGscKf
	xwqN+hns2lT0nPxKgrD71i1uRzg4c7N2T/r2OKn9Z7Gj/Snk6gDmJMOgYTmyMKemEfBe0T6K62cME
	pZKJTPWXXhwOQ9U8t0GS7SJG7HTDpNKPBIsQyTyO/zqpbkHopmm9CZq/eabnwqDV9TKw0I30krqW2
	bONlKcLvPgAJdVeYp50/dOGKdhmfRCmX8Vyr/f+TRu/SR8kPbKy2Rnv0M3hhWVRvJNgaE0L3dVEU8
	Ez6CCY1rrlnkZP8a19vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAz0N-001WhI-D2; Thu, 29 Dec 2022 19:55:55 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAz0J-001WdW-VD
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 19:55:53 +0000
Received: by mail-ed1-x52a.google.com with SMTP id u28so23088674edd.10
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 11:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q6Wkge06zczYAAj7DhM5Xt+bLRLfVVDh4b53VtAv8V0=;
        b=dYcaTK2Y6q8+dBM9M9BA2CtdrLqbWMe6ub90o75QqgjvX7sIfqzklvtuDoUO7ADAa3
         3yvTRN2whJcwkjxT7a90BxMVe47IKMiW6bMUk70n1NMttP0oHWyoTTNSOVoGyNhTkHhF
         FLecafXiCsliIJU2wk2zWFuDLo+zjmW6+MLAXsIqYIw3v2vXjq2+br4dlZOxZMoJb+3k
         beA2vvrxkfDI0DLmgQW03wmDTWg6LW4fslDL9VWWmRxXS+kyi7OcGn3mNeMBSnMY+mKA
         Q3FLyV4HZ7TVO2MzbMhyPLCBxNg9Y1C49SiGgYuA2qfJGf6xp0xyoVJ0Xkg0dsLS+z3T
         PthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q6Wkge06zczYAAj7DhM5Xt+bLRLfVVDh4b53VtAv8V0=;
        b=n0fnqx84hP0HZnd49ib8Z6CiUfJdwgXK6SugOjIka5xoIFvcxK+8R6QQi2R7NZ7LDS
         BILSm8bK7c3aNkRrLjkwzaYKbIvMzbbA6Tgl1L/jKG81APPvLb0slf02zG8nW1K/+Dx8
         imAQNtBs5cwtDY1qhNiyika4KpaCRMC9cu+gjhKBCsQTUr1axF+AhBEf8sVJNpIOYWPQ
         cxXHZ5RGeTuT2GOPi3gbIKmiFIhEBm3JBmqN0odWh2cnUa9urkPCLlegN2QaSmPB0PEl
         qv1WKPfOn7hQ3TJZXMi8x506frZTeqr6+jwwCgATm4MSi+atSwCsRJg01bfAVOU46ToP
         UomQ==
X-Gm-Message-State: AFqh2kpBAi+YLr6KTo/cdrFk2ELHi9o+cTdG6Q8LFLyRwjAD3l6/SYvt
	mGs4eYqqM4oxtGngtu5h9cPpkg==
X-Google-Smtp-Source: AMrXdXvx/IQ7UCmJNw4ibq/ovq6FFnOIl9VZYTkZSTXeE7H+cJ09bEECjagxOE6AcwvCYtagZ9pzUA==
X-Received: by 2002:a05:6402:2a04:b0:463:9193:404a with SMTP id ey4-20020a0564022a0400b004639193404amr27707591edb.21.1672343747905;
        Thu, 29 Dec 2022 11:55:47 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f? (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id c17-20020a17090618b100b0084c723a626csm3333075ejf.209.2022.12.29.11.55.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:55:47 -0800 (PST)
Message-ID: <aa948164-9ef0-797a-6241-718694ae9b69@linaro.org>
Date: Thu, 29 Dec 2022 19:55:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Y63uSgMdP4m6nvhL@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_115552_111749_049140BF 
X-CRM114-Status: UNSURE (   7.27  )
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

On 29/12/2022 19:45, Stephan Gerhold wrote:
> For the implementation, I think this flag should effectively emulate the
> logic that is currently used if you assign an extcon

Actually that's fine, its a better solution than pushing the pullup 
constantly as I just suggested in my previous email, there's also zero 
potential impact to existing boards this way, so, that's obviously better.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

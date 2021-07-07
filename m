Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FE8C11F67
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 18:02:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B86061CCE
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 18:02:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B86061CCE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i4ORdqwVCygKbf+jmfi71KUkJzlLBK3OTJqDeEoQir8=; b=gVW3pkxJX/1UpRK67SWbuZdaac
	HKILeHuN4KZExHDSl7FKWQBgO30zFMeNU6MdA8acsIt4mSzcVS33ELgIates+qNZfaLiQhkuOHknM
	GP85Oz0iwrGnVB0pU9R8fSOicejYwKrNTQVt1OtNUI6H8BTURxt62h9cRmDNNILUUBZwnvJB9Zlww
	ofynb9ut5uO9UtEV5awLjO2k/HTQ7rKfQbJ9fqlQ3DK//PUU8VSjYks74hM2R/j/MlUw04RGdXt+d
	/vNJ54Vin8t1HYqVAwoqlJOpPEnshFBGZlajn3naMBly+gID160TfnmNw4d4GPGnIZ9ULWqyJfNyM
	e9eHYp6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1Bsw-00FS7R-3S; Wed, 07 Jul 2021 18:02:58 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1Bst-00FS6w-8K
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 18:02:56 +0000
Received: by mail-lf1-x131.google.com with SMTP id y42so6231433lfa.3
 for <linux-phy@lists.infradead.org>; Wed, 07 Jul 2021 11:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WdK02twy8pyO9wtpquNhBoO1ciKpkv+L2J5dgsFFjAI=;
 b=IWT3gQxefwyakiP00/D+lm+LIGY9jtFE7/cqwyQPVOZ7Y53aW7h9eD2uOr9AKLMx2S
 iShcjfYIlhkE39PvOBzpL++wwIVkqsamo0hKgk/ndFh6ec85GF23RT55NQULhVD5G7Nb
 SckKLmMeVIHfnXVsFKUBpNDahra++ElkdnocbmnDKFoDIEb9d7pLFR42F6c7eAavC2mi
 G52XiJ2DmjOZfUr8KgBeHPfN0h9NMDv+sDOSWrqgnXNpuH5NCpwHrmxBej5Q+ndij7TD
 u5X/twSz/+bET0F250cNx2DXQBAywiVBs9WIuRERzBh/8uVPwMl2mSAB/v6OY6PPYTKw
 JflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WdK02twy8pyO9wtpquNhBoO1ciKpkv+L2J5dgsFFjAI=;
 b=K+jcgtvCo02bwjYNKtnVe5N2lLJfZlZo+WNvP7kSwYlHaRcZ2mE5lBqYHEDJbO9vmt
 NeyKoaZ5MWgWYcBbL8mjzSRokNI/xgIy2SZgD/l5vfD46i86ovEHz5m5RQzvqtfc4jji
 9BWzqT0p3ai8mZAwzrEwMw8CK0ZprqLK9rz5mP1YA/wQNxoB5OlSxguKCcYPpzv+2Dwy
 tBPz0VY6s8lYHWlnnvYbJ4Y4oBC+l0VCYgBTGB9wc6ZTFL8RzNqDZfXh5Q8dQhcFXRar
 KHU3qcEXpJZYpZqoiJ87HZo6ZTmECKvvvPnYDRYDiyH1IMBGew3nw7bdrRnXkSVdFOID
 RQSQ==
X-Gm-Message-State: AOAM5333vO9n41i8MffvrN0MxvvVs+uXz2XITE4k+NdY4wZXLNZkb+MS
 yYzAt+QNz0OHKwXd1iWgNGk=
X-Google-Smtp-Source: ABdhPJzsyUmcaHOcFZvqbMBc9bFOsQRLPYXTQaY0nN+NxeE247XE0Fu6V2mcrEgVFT0LVtNPhoh63Q==
X-Received: by 2002:ac2:435a:: with SMTP id o26mr19414441lfl.216.1625680973581; 
 Wed, 07 Jul 2021 11:02:53 -0700 (PDT)
Received: from [192.168.1.102] ([178.176.76.61])
 by smtp.gmail.com with ESMTPSA id y14sm1099130lfk.81.2021.07.07.11.02.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Jul 2021 11:02:53 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] pinctrl: pistachio: Make it as a option
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
 <20210707031552.20166-7-jiaxun.yang@flygoat.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <22db9cb2-0439-7ef0-6379-ce104755a1c6@gmail.com>
Date: Wed, 7 Jul 2021 21:02:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210707031552.20166-7-jiaxun.yang@flygoat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210707_110255_367130_D5BF718D 
X-CRM114-Status: UNSURE (   8.87  )
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

On 7/7/21 6:15 AM, Jiaxun Yang wrote:

    s/a/an/ in the subject.

> So it will be avilable for generic MIPS kernel.

   3d time's a charm -- no typo in kernel this time! :-)

> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
[...]

MBR, Sergei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

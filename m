Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC63C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 03:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekYI6o03ijCR5kACWdB1HzP1TWT66cGH4qICoJQZtAk=; b=uE+y1RI/CU1TlG
	zXUzltP9aoTSUX2tKRuuELiOxJnc7sJo3jQjzzw4yJlVy5SORMOh46t98jEKciWyQZMripj00sL0F
	lFlnXP7i6o+awBC/Mnya0LmsCO3UgWhi1zzZQcyj4tkI9oG1USZAJvF7Q1aDJL5I40nxSPvQyquWI
	ncl23P8K+GY57hZ7PB4L8+zxdGdh0vZp0Bx5ETBpLx7QmUj3PpuWIShDph08Rx3limo3RrqImyltI
	ic3bEa0F7Jx32KnWHGfBq5pR7xwmIhwGbwkG0nT0YNZPTrrYAp6qzf6CQKy+oo931nQbtDjXEEJ+p
	tA0Zu0RnBFc8Szi7Untw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogeBc-006uNO-RF; Fri, 07 Oct 2022 03:38:08 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogeBa-006uAa-Hj
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 03:38:07 +0000
Received: by mail-qt1-x836.google.com with SMTP id y20so2183014qtv.5
        for <linux-phy@lists.infradead.org>; Thu, 06 Oct 2022 20:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h+7OrheKhEw/UgXjdWGZBr8IlT56BkbaBFYQu69ElzQ=;
        b=p4mjg/UnT5B0pgKEWX0oVNyE0j8bEqxntPJvbHYC6N3HTIjdoY2wngiqlA06Oj/M6v
         3TZLXSJNAUSBZYMMTbrNZ0ewhsG+0Y68p9U78mSo8jHYBVw/J5ITpoNqwsmHZHoFP8xj
         kh3SgOc0O3Zr0UvyWv4HSU/NdnB3jABUPbpvRdIGp7D6vrObef0SMT08Kg74BwmpRhW1
         N3KGzc9RToRvgOjSuMq9oSkSTPrg4AGuyw/QD16+whZYfSJM8DdoqmhB8Yt7IFdOYz3p
         GxHaRheOVP+jaCvgy8+LW+faKzllKKK0j4xXNWLbEKACDybHp+HWXVT9bG64qKDTs/P1
         ivSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h+7OrheKhEw/UgXjdWGZBr8IlT56BkbaBFYQu69ElzQ=;
        b=vFB9a7+defVuH/qcB0+y+RXVSfOTJDtO2IpB/vD1Rgho1lry/WboFij03+pMt+lRvo
         GZcm1/HH6XJ/bBgcAP9zSaYRUEQze0Ozy1NfjfD/GxwmYBpjzLJlPwO1b/8kIYr61Sfz
         gAOXfRb9EBY7a3JUsUYdqKYlQw8ddSTjMx9mv+OztMAMrgMcWXglSqtgS7XWjh2+q1qu
         4dtbT2PdT9ySopRMLw/ZhTK+8PynzoPWT2fP4SgXrD097gOo1Qn8XQ4Kt98ExWmKgW++
         21zQFQcKirHd0uFyaeYdzpI8CCiMU6WV0QGo4rtGfjn5d/uv7HexuTbRnvMXFD37RKsx
         K+sw==
X-Gm-Message-State: ACrzQf27NaqczHv9DC1LFHJtfsNwze6BqcWv0zgviNz3NlWyWMrOXAlS
	9Sbeyj3l1rnlsU1ZM8p5sCo=
X-Google-Smtp-Source: AMsMyM7+6+ATWlbRWGEdM4cqMA1+okeU7ZdShfwV63Z8scEDotwILFioY5fN2ATl1gzhPLROX5vFkg==
X-Received: by 2002:ac8:5c45:0:b0:35c:cd2c:c8f8 with SMTP id j5-20020ac85c45000000b0035ccd2cc8f8mr2776338qtj.105.1665113880411;
        Thu, 06 Oct 2022 20:38:00 -0700 (PDT)
Received: from [192.168.1.102] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id y17-20020a37f611000000b006af1f0af045sm852241qkj.107.2022.10.06.20.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 20:37:59 -0700 (PDT)
Message-ID: <17ce5b72-c2c8-ae9e-de07-568619ca3c4b@gmail.com>
Date: Thu, 6 Oct 2022 20:37:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Content-Language: en-US
To: justinpopo6@gmail.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, vkoul@kernel.org,
 kishon@ti.com, linux-phy@lists.infradead.org
Cc: alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 justin.chen@broadcom.com
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_203806_634529_47E1FEE7 
X-CRM114-Status: UNSURE (   5.82  )
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



On 10/6/2022 4:21 PM, justinpopo6@gmail.com wrote:
> From: Justin Chen <justinpopo6@gmail.com>
> 
> Al Cooper is no longer the downstream maintainer for broadcom USB.
> I will be taking his place as downstream and as an additional
> upstream maintainer.
> 
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

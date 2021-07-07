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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35224C07E9B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 17:55:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04EC561CC8
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 17:55:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04EC561CC8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4BOJkrafsRrvEx1q56OMPTAVstEut01hy9TPz5uaBvo=; b=1i+9Gbyun+IkzsF4BExy/0S5mI
	v7BsB2yzlKwe7y5dGWR6fDRHRR9R7NGPNrJzWxRhobyVbJ1/xSspp5DjjeFs0H51A8Q1WH61297in
	7oaAu2JsWV58mj8/f7Omplf/EODNd40ER7TcJWngV+aYKMEtx62uy1UTI/YIobaBmIvyETZ4kkwLI
	VDoYAnChDj3cjafwy5w+VbAlcYMyPu4KalXPbXzL/TeLoufbUSi8ou49aBK3FKpyVuUASGm6O8CxZ
	Y+IKk/sjN+xQPeq6hsAigtYRFm5/OdByOJEjfqYWLN81Tf536j+Qn6JEGCUF2djpz+L/Um9NGjlGm
	B8h7yGNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1BlZ-00FRMj-Hs; Wed, 07 Jul 2021 17:55:21 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1BlP-00FRJt-2y
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 17:55:12 +0000
Received: by mail-lf1-x12e.google.com with SMTP id p21so6043259lfj.13
 for <linux-phy@lists.infradead.org>; Wed, 07 Jul 2021 10:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zQxdG9I9Woa7S81uA0jzyR2yog0q49/Cb6/kJl+fdKw=;
 b=DPrgZiDxLxxXsaeiP6iCEpP5oqHrr32wA0cgJIU4nTet5CoaGBrMeLBSTguCnSMbsf
 gZSBa6ckD574dcRSLXAaPOlgMNbtP5ibJLmgmaQs3IZbdYdaZNtkt8ORDtjofcwHrpeo
 X0pDJA+cYDO1swW6g2Q2kqyKOTO8fpwcrGsKNfFX/veaD7X5aR4tyN0UwJxW0cVdsaAG
 wlWHp1S8Dy3fnognXmJmrEUuiv9qpsJ8J1pNRtCaj4AIEeFfDE7oFqSg21b7NKdpOwWN
 XML0iqOjspip/aEkvl7rbFttEMF9B2+b9l4hm+y9A0hch9vub5tdcE9jmGOqsqC3kS/C
 qxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zQxdG9I9Woa7S81uA0jzyR2yog0q49/Cb6/kJl+fdKw=;
 b=T29txbSfvqGH2gfaB/ANt0VrJzwnl1P5EGRsb/MvGkVyWigjapg50WFO9jOjdyQmDE
 /UCEFsTq+LCj552pFZ6TsmvOtqWhvAKViwyA+D3IHKBLTDnT0JtrtVhqCEzdAx6P4N0d
 qre/UXxWmzRwv3e+6fpHr5BAiGymltgH0CnpXH8iLP/TdT84h0cxauDb2Foa6g/9O7Sn
 6f8eRcN0INa+JhPtU1ZFHmEUzdGg0Z4sTKxJ0q77Y7fDeLD4RKYCHI9/f1s4/m/L3MlI
 h/2BJO+ldXwDzzB7FLxa64wIDof24MlAhxn25pd1hjE2405cRg5KTNuDa1bz8yLCuCEZ
 AovA==
X-Gm-Message-State: AOAM5321VtDzL04d96hFa+HBvFO1xkt4YkPsttGvP3TRajzF2IHRi1TJ
 4l4rvWPeHKKt1+FtkSJVWR4=
X-Google-Smtp-Source: ABdhPJwyOvh7JP+XAqY+4wG4EDAsP16uap1AjswsK9fEtNc3A6WHJwpiIM6SORNrG7sPVt+w1f6m0Q==
X-Received: by 2002:ac2:5189:: with SMTP id u9mr4551247lfi.161.1625680508344; 
 Wed, 07 Jul 2021 10:55:08 -0700 (PDT)
Received: from [192.168.1.102] ([178.176.76.61])
 by smtp.gmail.com with ESMTPSA id i6sm1761452lfe.164.2021.07.07.10.55.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Jul 2021 10:55:08 -0700 (PDT)
Subject: Re: [PATCH v2 4/9] clocksource/drivers/pistachio: Make it seletable
 for MIPS
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
 <20210707031552.20166-5-jiaxun.yang@flygoat.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <99803248-0a48-c4a8-e278-47e0794dbc48@gmail.com>
Date: Wed, 7 Jul 2021 20:55:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210707031552.20166-5-jiaxun.yang@flygoat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210707_105511_216753_F475C85D 
X-CRM114-Status: UNSURE (   7.88  )
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

Hello!

   "Selectable" in the subject.

On 7/7/21 6:15 AM, Jiaxun Yang wrote:

> So it will be avilable for generic MIPS kenrel.

   "Kernel" here. :-)

> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
[...]

MBR, Sergei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

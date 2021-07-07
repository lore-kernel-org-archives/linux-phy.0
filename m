Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B3CC07E95
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 17:57:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DA2861CCA
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 17:57:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DA2861CCA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LJvyByxTD4eLiFSpTLBC7i4h2edFQOfEhoU9ch0o2Hs=; b=vtX6OG4yPM1c8RRxvNJD34A83j
	6cDt0nc0X1aMdL6U98xe8XduyD3XzjZJi3ZhdlXDWlSUqtsAAlSDQ0X9+JhkOyTnXmGJfssxrYQ03
	4g1iwe9GTmTo8of2wUzHqD1z6i34cC3YqeqgH476QgPxndwHHd9M3PA7HBv8lCJJioGqTFRVdJ6E6
	nqoGi6U35GDcr4Lr5LGLeDhBzv9+ym3ivPJbak3H0tm4CedH+Fpn90l9BHlmytnR+nlZOXLf3SCq5
	jz168qCyvSmgH+PXo1GVVJXFotBrMEjVUI1CcUJHACKbzlgT7O4BiQ2UbdDV1MwnFAeS/B2CL03+5
	b6E7cfPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1Bo7-00FRma-2P; Wed, 07 Jul 2021 17:57:59 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1Bo3-00FRls-TS
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 17:57:57 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p16so6163721lfc.5
 for <linux-phy@lists.infradead.org>; Wed, 07 Jul 2021 10:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YZVtqe4dtfVKhsc5t0kNTYDDPN8aMQmhYzUMMd7LpKo=;
 b=DrNgX9da3Pgd1OAdkWUagFJY4UwGOGlTgjUEPqkpFPOhj/riNTioCHuuKHhuVqY072
 J/r1T+JbbQEuszI/d+1JKm0ulArW0rdv5HwNgIZrcZPNW+sQNq2qCcun3GFEdgTkPn2H
 50G91TpkHm6ghPVO46Ju9G2BsdWdKdswPYcEKs8g1LOTqifvijB6FmSSNWdRVkuzAprv
 5LDoxyb5iFZLzqosm3E4CNC33LvmKxRNLovx/S7n2S8fFo2dbNO/CQBe/zLfst4n8C6H
 mz/JGDDjXjftDbKgiFVl+CE4EuLnV7Is0tGddy6tYw/e5yn6RrYPvazsBTpn/A1JRYQY
 qt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YZVtqe4dtfVKhsc5t0kNTYDDPN8aMQmhYzUMMd7LpKo=;
 b=sFymqYDDGqbvjHBjY6J/rhA3Xl8qzUJ9PkKzbIl/EHkBOdrajkn7iDE98MzPuW1HXJ
 kIi8OB5T2flgplza0SH32xItgWTIQ/v2SSHdr5LqDeX/CQr4F9TsU6u1xNC4z+cQpECZ
 Wm3z6z93CrO8Yf2Ygn1kPUhBystyX33CuObJnXYETuqBF8XZXXPYgbDnjSyHJOj7pmD/
 C1jk9GPc8Ttuaq9POvu+BB8I9LStqPhVNJoOlhGHCkoCrIgvjqORidpYMociDB3RuL/B
 rDJ/DcNJI9mn74uSdcf0xrAksUCpzwT7h3f0pakI8lmeyolrPMOa/uQsegK75Hsd0cTC
 kiTA==
X-Gm-Message-State: AOAM530dTt0Xh3+vKkJHQXxiRgaIm3E/IiAC+KYQaSrO5HLHMtHJ3Uro
 UURYjxHfB63rRfUVOHYagAM=
X-Google-Smtp-Source: ABdhPJz3pxUvzvKt1n+ddxDlT3BXBsX/SDkMc7No9ccyi6e5qka6ZCS8nWcDxb6oxONmlme7aOMudQ==
X-Received: by 2002:ac2:532e:: with SMTP id f14mr19439588lfh.103.1625680674396; 
 Wed, 07 Jul 2021 10:57:54 -0700 (PDT)
Received: from [192.168.1.102] ([178.176.76.61])
 by smtp.gmail.com with ESMTPSA id g12sm50594ljj.94.2021.07.07.10.57.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Jul 2021 10:57:54 -0700 (PDT)
Subject: Re: [PATCH v2 5/9] phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
 <20210707031552.20166-6-jiaxun.yang@flygoat.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <9e588748-04b3-8399-79c9-23054cce41a1@gmail.com>
Date: Wed, 7 Jul 2021 20:57:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210707031552.20166-6-jiaxun.yang@flygoat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210707_105756_002503_16616428 
X-CRM114-Status: UNSURE (   8.44  )
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

> So it will be avilable for generic MIPS kenrel.

   Kernel. :-)

> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
[...]

MBR, Sergei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

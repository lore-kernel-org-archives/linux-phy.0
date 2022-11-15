Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8CAEC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 13:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7Ck64Kx7UYl/1YcG1gr44UHBdracZRvuWDWdTmCCLI=; b=cYlas4jO1iV+NT
	qRyNx50f32LVnIreGg8OA9HsMKsqiEzfLhqKs8QfbeCu9ExejGGvguxInsJLEt0n49TJmAAkfYbHF
	3s8NEcNgcD8VAb4HyIja3oteXWevgtYEpqkSZod5dmkSJGeqCGGy4EzZxzvQNwhOXE40jJdUKoumZ
	QP8zKqYK8FnrhjI8aaf4E7USfY7dov+Wuj5UOwni1pT2s3Sp3BLJGhg+BLAGYWRArW+cu6iQwLuK1
	K7GtJhpeMwDGTZ1IVIQLmCLoSCRkF7gaxg1pyKa8o+5tyD5kv7t1A4lUENPn6n2cP0Uy1vqS+x2GE
	F0wBYgBy5pd7YaYCxn9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouw0M-00BRyR-CH; Tue, 15 Nov 2022 13:29:34 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouw0J-00BRvc-8x
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 13:29:32 +0000
Received: by mail-lj1-x22b.google.com with SMTP id x21so17486659ljg.10
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 05:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m8/571RzD8HO7x98AMQxlDHgd69AGcRueUaHlHGZA2k=;
        b=jpMA+aALKoFqugZ/DkuZDU0yDcLbzWdAdLvx3bKcWcJ//U9YlKIJvT2cIrb0dvFALa
         Vdol+cwrROakLQObmfWUefKh3YtiSn7RBeIfeRy/AkVgZ4iOSpSIUqNDkR27/pzHtVz3
         zHPCF1JqSz91LM3GKf2U+Yu9/ce/ZzwYC2QoVPI+4SVNYN2eYeJNDmV2ZokCwNEbL4PG
         7B+IvRTKPyyodKgHStyhW9VTSGji+cknjHJYAF+cu3MXKY8JPzINY77xyKaArIcTabmw
         5qg3F+wPC991MR1+cPNvTCCJ8ynDlsrEG7O0npmzdAoIe8v6T9JwYT3cWCn04lH6CuRI
         ZcQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8/571RzD8HO7x98AMQxlDHgd69AGcRueUaHlHGZA2k=;
        b=1fAIRo6uHcKZ1cG5uyAQDMFAMRvKEYWxlebWBmwQHwk13lCzqkebPXdk0NICenPy6A
         dUSflrahBbGEHy8Fj1lPUoAhVnjALFniX5ozkXnbJi7+AA0Nk6fcg4KN6Y/kbGIsSw8u
         rDg/rXu4mhRYhGJ4Mzyx+JN7IvqlDJuxmtvcNuZVwKDCMzhjtTDPiIPPQxH1YjGZSvvQ
         ZlWN+YbHJpFH7b+/RVjOfteROHmC6ZktWEz2vZJPOWJardSx27RhH3ExG6dbfGkTkXSo
         oI1XEa/GbUbk23Sq05NGBmmSq7fV+buEqgMZwOJTiZrAH6ftl96gu3hHc+Stqs+VxGUN
         cDvA==
X-Gm-Message-State: ANoB5pn7g5//LovGkDRp/YWKLRys8ngmj3PqUxVfopFFI3R9WKk1LlEq
	Mu4exlnJXZqBCO9xi9orZOmzLQ==
X-Google-Smtp-Source: AA0mqf5lYIIfVeBC99+U3iZHmg7EN30sHOtE2HHltdeEpz34+ahL7J381NXgO+cbaTjJO1jB9Ljdmg==
X-Received: by 2002:a05:651c:2314:b0:26e:2772:ffab with SMTP id bi20-20020a05651c231400b0026e2772ffabmr5568604ljb.97.1668518967304;
        Tue, 15 Nov 2022 05:29:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o18-20020a2e0c52000000b00277351f7145sm2415833ljd.105.2022.11.15.05.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 05:29:26 -0800 (PST)
Message-ID: <205120bd-7178-0c2e-b131-e296d3d3cca8@linaro.org>
Date: Tue, 15 Nov 2022 14:29:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [EXT] Re: [PATCH v3 00/10] Initial support for Cadence
 MHDP(HDMI/DP) for i.MX8MQ
Content-Language: en-US
To: Sandor Yu <sandor.yu@nxp.com>, Jani Nikula <jani.nikula@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "robert.foss@linaro.org" <robert.foss@linaro.org>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "tzimmermann@suse.de"
 <tzimmermann@suse.de>, "lyude@redhat.com" <lyude@redhat.com>,
 "javierm@redhat.com" <javierm@redhat.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "sam@ravnborg.org" <sam@ravnborg.org>, "maxime@cerno.tech"
 <maxime@cerno.tech>,
 "penguin-kernel@I-love.SAKURA.ne.jp" <penguin-kernel@I-love.SAKURA.ne.jp>,
 Oliver Brown <oliver.brown@nxp.com>
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <87iljp8u4r.fsf@intel.com>
 <PAXPR04MB9448612AD6C7744B7C706D6FF43F9@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB9448612AD6C7744B7C706D6FF43F9@PAXPR04MB9448.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_052931_387701_96E15C1D 
X-CRM114-Status: UNSURE (   8.84  )
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

On 08/11/2022 14:50, Sandor Yu wrote:
> Run get_maintainer.pl for patch 1, 
> Your email address is list as follow,
> Jani Nikula <jani.nikula@intel.com> (commit_signer:2/8=25%)
> 
> And I add the email address that comment as "commit_signer" into Cc list.

That's not a maintainer entry, but contributor. No need to Cc occasional
contributors, except people interested in the driver.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

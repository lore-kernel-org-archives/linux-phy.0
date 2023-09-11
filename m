Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED900EEB580
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=feC/PvdsLyA5YJ+B4Q6etJWjAYE3kjUPaejbMZTX4oY=; b=IjhnycnW/v3msj
	5Ip0R6lFOBOrDZqJi3kEfSokLJwYwNq5NV8dxS7sw/wdmX/Q7vWaGX9qpYaAD+xYje7IUPmhY+U0Q
	Itt8DeHgjJItOmO8V/UK5KNuJXZUo0uYxEUDJpQDtd8yt0IEprbnCPS01V9Dxi3TzS1osJdsFng+n
	4zt9LKE6XVVCswJ3K6yQHpRy8W9dl7Los8Qh/O7Ysfk+ZBL0NbUyi0g8Wjmk6L5YOrLMaO3/fzVa/
	Rm/s1h6yUbIhVMK0jMc2lKCyj2wQ78Q2PefMWdW/L2ysElKS0jSfkavT+o+BrHzMdZ0WScb3tWjZ2
	sY0XkXMbasOmCJdknHYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnjc-001IRG-2C;
	Mon, 11 Sep 2023 20:42:16 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnjZ-001IQY-2y
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:42:15 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98377c5d53eso614991766b.0
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694464930; x=1695069730; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CZmsWVmzssZSS7Enxujm2pqxlRsGUeBP8aEo18daoV0=;
        b=SJa0qgykyfarySYzh6ETcUIhxH1dKpumVRhGNashF5jKusMZ9o2YTJHHa9oBw+qBsK
         AtbSHE3vvjDI6nam0a5FfmMPbjhbhZQvjIZ843FjtpafWgwu6H6Jc3GpcaDBh7JWgmeA
         GrvTIoJwjnW55XmYECwOMm+LMSuAaPaP4HWzU29MhLEovrBnr3aKq3eVnf3N5g8JlPbJ
         vGM4QuzY3ZfdPrYrJ3Sta1fWq+kpTWtSojPrajgbTR6AkmGoFxK/71dw8VgJBhMuhvD/
         gfmEhvXvsIwlDbw2lGpZSyF2pr5sTMS/jFtg/8EVINIGsihS0vUmowtYPNef4sO6U+Yf
         vYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694464930; x=1695069730;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CZmsWVmzssZSS7Enxujm2pqxlRsGUeBP8aEo18daoV0=;
        b=mbvRgLa5u2hKiDZtXKgKs5hK6mDLdq1UeuL/n2nNivPGxRCFma5lZ4e5yV1wtsHeEC
         pqERaaq+YdgVtOGtvfA8vdzfWfT1LEJ+IQVVvRyu74dLKBRwBSw1pIv3I+5JUA7QZSiZ
         OnkTHu/8nONxIaxXyX0LaWrtRFxmbVKrzQj4p/6NM3z28G/1fmSmYpRh1aK7fsr5S7Ft
         j5HN+ZvaFiWZvwdFJuPMDZQS/eCvUGubwz7iWwC7o2YYPX6OkTC15rqeitnCjVH4R8r3
         64agIvcKfK9gFnQ6d6YyEO2x3++o+YJMqqx46T1KkcMXMsOvc+fIbMrOiwB/t4yEuZMg
         kfhg==
X-Gm-Message-State: AOJu0YzdenSBQQS1GvzfvvqytIUmjuNuMncQgI7KXq0N9yjSJfADtENv
	bWXMRioK7SRO8AsR+6f0g7tZ4g==
X-Google-Smtp-Source: AGHT+IGuhF6cF3DCdQxsV/K2WqmvjjW0LEJWvnPBE0wgBq/nIblAuwGsCBt1PqRr6EvS7T7VQq+8Xg==
X-Received: by 2002:a17:907:b0a:b0:9a6:4fe0:4552 with SMTP id h10-20020a1709070b0a00b009a64fe04552mr8323291ejl.46.1694464930195;
        Mon, 11 Sep 2023 13:42:10 -0700 (PDT)
Received: from [192.168.37.232] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id i10-20020a170906114a00b00992076f4a01sm5815272eja.190.2023.09.11.13.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 13:42:09 -0700 (PDT)
Message-ID: <2e78c237-d321-4b85-96d5-0568f1a46601@linaro.org>
Date: Mon, 11 Sep 2023 22:42:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-combo: use v6 registers in v6 regs
 layout
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
 <20230911203842.778411-4-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230911203842.778411-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_134213_966096_8C744AFD 
X-CRM114-Status: UNSURE (   6.48  )
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

On 11.09.2023 22:38, Dmitry Baryshkov wrote:
> Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
[...]

>  /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
This comment becomes invalid

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

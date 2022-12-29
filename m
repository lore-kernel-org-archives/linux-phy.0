Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CD6CC3DA7A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 23:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaQSAtwYRnhdE8kvpVh0a84BAwFfYhLTZ9Q+jvjqMWc=; b=cyW51kEVNdoMqP
	2doi+YN2sVvDimNDi/fekT6etfdqPux0GLeNWwXGGenDBYeQa+Ysg7cV+s6C8M7b2SC8gHi6BTiNd
	i0UEtfIdp8wHqe4SlrJyy/c57x6Heq1MbIHw6v4vDqahX3jkin2hqwLMSDfwEbPU5RCB7t1TKmN5S
	8ascvUbGiGaGHyO1gyeDrsPLfbfl6rYNlc1tXmud5bF1qOPi73AMUqlcJxdG9mtRLym5Lid+h9Wz2
	6g+wz4PHS4yhkmhbDdsxI52cwlR0Z1B/tL83DnGCiYdDmsp3ljlXKNeZ0snXisR/sRicD6wHZMnIN
	t/xgjquQc6VoND95ojTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB2TU-003FFy-Lk; Thu, 29 Dec 2022 23:38:12 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB2TR-003FBC-2K
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 23:38:10 +0000
Received: by mail-ej1-x62d.google.com with SMTP id t17so48117565eju.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 15:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9vpODbbW8nv/1gmrzoOYAs/3zgZuLXQsZO+5Y3msoUU=;
        b=K7yPI0bqehDYYKmfM5pZ1XgC4V47yDWUlIWB8GHEJhQn/TDttLg7lDZ/EZjdkAQdVi
         vZQFwcOky+GluhCFel1lIXQKkeHHgbDgu1sfzQqUNil+gS9rYztr8zIgsvNZMok5Oqsn
         Wo+lPiB0IYThjUgYy7OrRjamQsmLlYf0L2kdV//k/f3W3h+RPPvWHdOMJgMxQvQM1oMq
         2/IagqkbQ7hV6fHFE309gqleJ4OpHATAmDpd2XRDNJm+oLwHu7D5fLAXYy3eGhUP+IEb
         6nQ2XuDj/SEzWistc2eWiPT5rD5351Xtl40w6t1i6s56cFt7wHZzNNdKgVeMo7sumbgN
         kTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9vpODbbW8nv/1gmrzoOYAs/3zgZuLXQsZO+5Y3msoUU=;
        b=G1XRSRp6Mg128BcBP7hgeVyGY8BqNIQxkznGbio82j0fcvUwTt0zqVh9G7A9Lsz4TK
         4eNj89UalhX1bjA1J6p1ius88WwcHTgtJ2WKPFgVt0L10cv/H7EllgXjdoVlHr8Ex3/k
         SOOo+OL/lGOECaA2SU0OOK/UGLVSkgJqlYtc2u4mlUzxhHhYNqBX5jm+qApvMjigF3xZ
         KErmtCJ0BPrO/Pc0NEvuxTCF43kzY7l7HflcoaiX22h76mexHgkSFV5+/YoLpQEdsrSV
         R3EMQX5KfVcv+DdyKeQcRLGQZdeEpjVpESZalsxoUfX2FBOvjLWTrHRJX4tUnNUqLcjl
         mezQ==
X-Gm-Message-State: AFqh2koPfEux7kK4+etyWPHKzMkDDYgU044HUPvX1+5a+lfiPQ6Vqi1i
	IDyz0YCx5wGQHE9S/YScsvWsug==
X-Google-Smtp-Source: AMrXdXtHDddptb63umIGoRiuWh8e+jb0yppN9RIWyWkJa+ed5ZRq8TA9Y5v2Z4xFLMqrd4IgIwysPw==
X-Received: by 2002:a17:907:d10:b0:82d:e258:fa55 with SMTP id gn16-20020a1709070d1000b0082de258fa55mr30292942ejc.36.1672357086039;
        Thu, 29 Dec 2022 15:38:06 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f? (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id q26-20020a17090676da00b008302732f569sm9071899ejn.78.2022.12.29.15.38.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 15:38:05 -0800 (PST)
Message-ID: <da671da3-61f5-ce4d-05aa-76f3f6ae12cf@linaro.org>
Date: Thu, 29 Dec 2022 23:38:04 +0000
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
 <Y63uSgMdP4m6nvhL@gerhold.net> <Y64AfHcUw192Pyr6@gerhold.net>
 <6061938c-b830-2fe0-2f4d-368e34c33676@linaro.org>
 <Y64CaOzWZXERrvkz@gerhold.net>
 <cdcef656-1ae7-fe8a-a4dd-3547d6395b33@linaro.org>
 <Y64Jgu2o6aJV4ggk@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Y64Jgu2o6aJV4ggk@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_153809_345509_17D3F2CC 
X-CRM114-Status: UNSURE (   6.64  )
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

On 29/12/2022 21:41, Stephan Gerhold wrote:
> That is still good enough to replace qcom,dp-manual-pullup though.

But there's no requirement to tie USB_IN_x high if VBUS is not connected 
to it.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

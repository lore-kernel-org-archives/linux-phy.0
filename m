Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE972C07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:34:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B2BC561CAD
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:34:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B2BC561CAD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7JaWAEZ5v6V44eJccN59Wd+uE/7pFaAu6snm5gjJIwQ=; b=QrIYoTegU4uhrRVGPQ/3JZBFfV
	1VaVsWP4eQmfA7XPHGTXHtXMhABgrahiF2GsCIsqpaVzYjJFy2QNqBFtGvU7V+uMA/QX/15ETS6gC
	XFkoXg4wyfpMiiVB7nM8Nsnh6wHNW/U0mz7SVWsaZKDEtNOUiGt848vCSqZoIkMLQSOx/m/LuP+En
	gNDjGDxiJ8VGNjRtYYoQ6HmJCko8Y9lkKP7hLvtJHA7hUXLW6dORrrjOvEU9cQqi31pNucRKNyeaB
	COXlyJBS93JNO64d3GooWePN/LqMIsKgk2+lw9u8lkWqCCf5jkT+Mie9EBaPpEBR3bjQTNhLELVAZ
	A5prkRBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0vVq-00D6RO-7S; Wed, 07 Jul 2021 00:34:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0vVk-00D6Qd-T9
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:34:00 +0000
Received: by mail-wr1-x429.google.com with SMTP id f17so959132wrt.6
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 17:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H0ivj7GfRsLfasbZPxiuQPzWhfXlN5upxFwfrb/o5wA=;
 b=cPNFR/uTUf0ZmG1E//I2Bgjrc6eA0TVeoEEc2vJ91w7PJ9J5OJMcycA1nVXqGeYb7o
 zLTxduTW9LN3KXZk+M8mDJzhHUGZPc5OXgDUOUzO+XCKgt4mpep/ItMxF2ZKnjHAQmqo
 +SLZesv3oqewv1n2QVZMzrY0hq8psaENNTUubD3rso+BeJMW8hwvBmY3gUpTT6SYWVe7
 o0GVT7XZ+nBuUjWbsfdX386RWXbOmb9gKMc9ytTL5jvnd3+Z3Xk05EkuKVTxyCkNVus/
 TQI6VBwiwKqJEOIKySmGfWrkKH3BHCCeDvMVMiK3LERZwHNFlUN2f7kXGTzD6sSw6OkA
 fZSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H0ivj7GfRsLfasbZPxiuQPzWhfXlN5upxFwfrb/o5wA=;
 b=MlbaUEc285WmpskxbbMxgr8IG5zSJ9RJLSvalozAgg86hfN2KpGnlEX/Dk6bwyjYWf
 wKdGcs15VZPD0ZTWQ4nFv7LQ6x8SCnRwPAwiOkvFc2P4QlxO1dz2Gr7ZL3r30B8uvUXc
 58ggOIhbG+/guZHGIVKQ5LhPN7dfCzGdGKGMntlTDvc3BONFnBdKLk9mv6Z3NZJRZKQQ
 AU85HLqaT3VX+/oHeXAUxnaldJBvTuZbZsbP9fos5k54VAjyEItAJmt2D4Jq4B0o1ltZ
 znle4Nc4KZukrRjcKvE7Yyf1uvbki5c4CSW6OeunxTQEba9k2laPXeA0HxDdfRPyUNux
 Y9Lg==
X-Gm-Message-State: AOAM532D9q/5XGIzs1tKo7IzSIxK9SxOVvSglYEu4DVsSuD/VpQ0znJi
 CSXPDdknBlc1bYNKmt2/dpbVTw==
X-Google-Smtp-Source: ABdhPJzzL9QXYAvHIs/H00tMy8lwzYzpbah7e4csorMCKStP9dp4xg69Fl2RfbBLWDrfyxqrWPBqJA==
X-Received: by 2002:a5d:548a:: with SMTP id h10mr24250272wrv.273.1625618034109; 
 Tue, 06 Jul 2021 17:33:54 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
 by smtp.gmail.com with ESMTPSA id
 f18sm18963800wru.53.2021.07.06.17.33.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Jul 2021 17:33:53 -0700 (PDT)
Subject: Re: [PATCH 2/2] phy: qcom-qmp: Register as a typec switch for
 orientation detection
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, jonathan@marek.ca,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Wesley Cheng <wcheng@codeaurora.org>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-3-bryan.odonoghue@linaro.org> <YOTuh2hYp7IC+4rt@yoga>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <9f213505-c118-b6fd-676b-1bafd83d8380@linaro.org>
Date: Wed, 7 Jul 2021 01:35:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YOTuh2hYp7IC+4rt@yoga>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_173357_018536_5A59AD2B 
X-CRM114-Status: GOOD (  14.27  )
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

On 07/07/2021 01:00, Bjorn Andersson wrote:
> In order to perform link training on 4 lanes we need to reset the
> PHY_MODE_CTRL with only DP_MODE.

We're only the two lanes for USB on sm8250 and at the moment only USB 
works - not dp on 8250.

Perhaps you've discovered why the DP times out on 8250..

> In my efforts on sc8180x I skipped the disable/enable in switch_set() (I
> believe because I didn't have the init_count check...) and then in
> qcom_qmp_phy_configure_dp_mode() I issue a reset when we're heading to 4
> lanes. Perhaps we can do the disable/enable and achieve the same thing,
> but as written here you won't get 4 lanes...
> 
> I will do some more testing.

Do you have a commit I can cherry pick ? Might be worth testing out with 
tcpm + dp on the sm8250 if its working for you on sc8180x


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

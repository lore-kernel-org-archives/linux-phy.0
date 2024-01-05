Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0391DC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 11:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEOcSEn1RsRPJzDXb0TSgdnnK6dtgM0RjxVagazPaaY=; b=X8aB9UBtW/Blrn
	TNuaOkOrKJj7YBmBgdQTxT0Iz0nLUIYwVKK5ths1B7JW5R/fhn0e3GmbgZrm/CIeH0kXq9lHrgvW+
	wV7RMtqOXk0atZScbSWARb1TC1dZCt4ToLDnIzO9ogHuccwPB9W+AxPWhkeBZoycuKx65XT7zek+Z
	nn1Ym90WQjjLAq2gXvSFx9utNs4D0j0jklXY2UJzG33vmYTia7JzTBWjLK1Zq5+i/qZtLaq91AXV9
	42E0OxnCxh/WrOIFCLdFSNJwSUFtbNSbu/cL/O/5VucyDXgUouYMHWEK4uyn/3AoUyZ3HZx2JgueI
	qkwZybloWDJ63xwGoL9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLidE-00GgJK-2E;
	Fri, 05 Jan 2024 11:44:56 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLidC-00GgHI-0C
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 11:44:55 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a28a6cef709so163377166b.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 03:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704455089; x=1705059889; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UyYSCmnUK6YYgiXudsmTQSvphLBM898fCP+LWptTAmc=;
        b=HevCV3uS99lGeSriDqPiwxwkOy399KrWBw888W+7mOhe9YpuL6u5KK5R0s2B5tE/t3
         Mk5IvUKjCxMsrkONjtWGx9i03eWX574F2MHXLv6KXM9ZMThaceRjmF7e5H7rdhnTjqh+
         gnjo+JGZAtpLpxiFy8WVI1zDmuzTYrcGoRmhxk0TSxoNqMsnQn/d5vBPyVRkq2PS4BWG
         +o06cQp8BP81FnGON+BbTjN9yZLIvbxNUfH+Y6Zo+Z7Dgc0WqeHxRZW+oiaLtTfzSr7p
         S6/Eoxbz86PA+QlTMyzc4imTaHR0akTdc7jWefK495z3JdQJTTR573fqP1qBntlIrMWS
         ewYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704455089; x=1705059889;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UyYSCmnUK6YYgiXudsmTQSvphLBM898fCP+LWptTAmc=;
        b=RINkLrR1dHyzg9RcWRPFX4P86GdcrKlIWkU0KmBzCvTp1xkjewqPGXef3cJU1j3uFj
         Xnrd5vbQl0I6bRF/a/Tw1gmweSAzdkWXm3T9NEY6X7ZFWgH2rceOl6AvG/rgG+bY16Ip
         KRRWbzIUs24rhDnQKu+co+WPDQHyBpkZCSceGAOG5kgjvZ9DHJdkTPCGBpzw1Vncyx/j
         +eUmY/11XPh7+b/PVwXqP6Akkcfloc7T3WoZuyBqr8aad9QRVAVCqE6TR33VSyToTham
         7AtZrv8SNZVcP/0hmZBkkX6HJoXgfwAYexpHzXgeVR8IXNu6jtKjg3FRV2Dh0m9MUwbe
         n37A==
X-Gm-Message-State: AOJu0Yxvt7LqteXItTtTyvKZOzVHQU4FvgSqVCcK9Nq62Romd2orLh3l
	ynAi2sahBKETMPoeGcyNioi6tdZcGAb1OdHvz7MoPBKNTCo=
X-Google-Smtp-Source: AGHT+IFa6oxfu+gyeUJNqDj991PX0xla2ldmGqqSePRfF6fdXO8w5DJJ7AJ45DBKZec0Hltfvtjepg==
X-Received: by 2002:a17:906:cd09:b0:a28:a552:ca01 with SMTP id oz9-20020a170906cd0900b00a28a552ca01mr1126235ejb.122.1704455089215;
        Fri, 05 Jan 2024 03:44:49 -0800 (PST)
Received: from [192.168.199.125] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id m13-20020a170906258d00b00a27984bd831sm785021ejb.163.2024.01.05.03.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 03:44:48 -0800 (PST)
Message-ID: <158df3b2-a7fa-449d-9cc8-1e4cdf6ef49b@linaro.org>
Date: Fri, 5 Jan 2024 12:44:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: qualcomm: eusb2-repeater: Rework init to drop
 redundant zero-out loop
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elliot Berman <quic_eberman@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
 <20240105-phy-qcom-eusb2-repeater-fixes-v2-2-775d98e7df05@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240105-phy-qcom-eusb2-repeater-fixes-v2-2-775d98e7df05@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_034454_127040_93409C37 
X-CRM114-Status: UNSURE (   8.29  )
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

On 5.01.2024 11:16, Abel Vesa wrote:
> The device match config init table already has zero values, so rework
> the container struct to hold a copy of the init table that can be
> override be the DT specified values. By doing this, only the number of
> vregs remain in the device match config that will be later needed, so
> instead of holding the cfg after probe, store the number of vregs in the
> container struct.
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

This looks good as-is, though I think my proposal of storing the
peripheral base reg instead is still better, as it'd require less
memory (no kmemdup as the regs wouldn't be modified).

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

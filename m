Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28BA3C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fthhAYMLaHM2dSgulJjZtc6Hkb0mXu4M3O8FnqZipc=; b=tZfJprQmX3zK9h
	889uQ0uxdQNEVswPC3/IT/T7eyjAv3RL6y7GLbfEh0+DzwjUz1XZNMHChzwdqjtxBlGCxAZp2KO7K
	CbFKdQzsYKzwy0j03TsbJdhUQp4NfcJML51lQYf17e5ZZJNVAFMc8aXoHQohZzY12uXPZ+vwhVIhA
	Ii6sN4MG97u4sOpPzp6MY8LVHRCkJA6uB2W8pyAZKU8UUSLwSNTz+1Tmxkrsfx1LXrEL5URqs+zU0
	K1PiexIk5tgew3w+ZwHKZv4A8VOh4z7KNZsB63KsyCEyVWWU+miHC26ChpEfxl55ffQaA2OPmYn0j
	olLtV3oOlw4xthuy24uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQad-00HED7-I3; Thu, 22 Sep 2022 18:06:23 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQab-00HEBJ-6g
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:06:22 +0000
Received: by mail-lj1-x232.google.com with SMTP id q17so11917002lji.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jeplP4YVAz5AgTFVTwn+jbvvpxdu1UqDPlqQDnM+MlQ=;
        b=rdUpjqWg8CPMq5P7m/0xLiBMIKswvdTJV+dTDMAVFQJ3gtKX1QE2NtDH7xGyouAzkv
         7VR9Q1+bi0KPx2inA8igDm9Cj5telLtNsL+//q49YORlGtkgvrcURq9ERb99W49DkhB9
         oURuGG6wX6YCd6pibqBNYCfu8aYcHdcgPNrRbDB6kBKk6Pl8QoGpxVJN7EQzzfzDT0zV
         8n/9GHtIGezohlUeNq83zR4oIZSqNLdgUW6zBzSREu/XIJbbSHhf2sRtfDy/275C9GnT
         eizmpBlnduCbavALG8kEEHxLKmOAWlP4icLoqwmOgKd8UfeI5EzruTnJiRaYdFS4qmxy
         DjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jeplP4YVAz5AgTFVTwn+jbvvpxdu1UqDPlqQDnM+MlQ=;
        b=zXW/zzlgxzTDyJk+bk7RsRMkFm2U86SLaRMickpLVRwv+PjcKzGwTmadbkqlJUK20+
         uG52MX7zNnlLHrN4k974frPL6tiJUaO+yiyEDwx7KQdJoLmtx70MTfnujHnT/7xfuVxi
         aTaWnNj0IdCpjN9Y6abAUdQTqO5j61jqCm+9djE6yBc8hkwF7fyzACqeHl0yl8m1zg+1
         Jd44ZwHHmCOBO7ZUTPJCYhX/ahXd5WUvW9aP4JpC3VVPxHtIGKh9DpQ4ia++DampE584
         q14e2xoVMuBv38vT6jlVJwH4djHeK2luYvj5f4KYicoHWErC/BsxAHtcTTsd57sbV5hf
         PHUA==
X-Gm-Message-State: ACrzQf3IsDe3LAf3a/RAwSlXF6dL1hhn/rSeR2G1qjkk3trQgtHGYgSx
	0hnAvZ2B1FMEiGZmX6r2ZalcqA==
X-Google-Smtp-Source: AMsMyM4ajuzrHOM/Y3XIDWTY6hYESDjwlRUbm17Rxh4w5ANKv2PH3nqgMia9eMOhyimAkvgfvt2lsA==
X-Received: by 2002:a2e:99c2:0:b0:26c:3fb1:4c5a with SMTP id l2-20020a2e99c2000000b0026c3fb14c5amr1504877ljj.460.1663869979615;
        Thu, 22 Sep 2022 11:06:19 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s16-20020a056512215000b0049493c14b17sm1038854lfr.181.2022.09.22.11.06.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:06:19 -0700 (PDT)
Message-ID: <e71b75ea-188c-da22-5216-2c82d9627b64@linaro.org>
Date: Thu, 22 Sep 2022 21:06:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 12/17] phy: qcom-qmp-pcie: consolidate lane config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110621_272853_4F166E18 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 20/09/2022 10:38, Johan Hovold wrote:
> For legacy reasons, there are two configuration parameters that describe
> the number of lanes a PHY has.
> 
> Replace them both with a new field simply named "lanes".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 39 ++++++++++--------------
>   1 file changed, 16 insertions(+), 23 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

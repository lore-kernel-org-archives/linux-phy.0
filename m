Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9B35C77B71
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 07:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCpE7HQ0Kof0TtdwDg428GXzcgrcsqqRT3VKNPdXx6s=; b=ZRG5bGm/Fwq7ar
	tImgod9dOa2ex3eq5/du4ynwOJyddDYpBsMdNp5x27ZnvsrhaXoflN8l/U5QmoaLOETmXu5aZqYqC
	w/96H5V3tYjqJcUYSdXdsZN8hgxgDmvy26bTvjjmukTm6YuPGWwpfRBkMCrBMrWVCjmtxajRvD80z
	64DtPpg4p0rpXPlxk2rboOI91buT+qRhH9q/mbueAXMQcs2OT4UdxqBNNlFsZjnK1g2eVyAsuMjWi
	sI/TvtqM/5zVI3g4JG+iH8GUvLiN67MKIAFBitlSmr9QFgDjaQbVnWpAFElEUjZnVqVd8N+TSS1+v
	5Zk2f9z3pPvrBuMoI/0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pofnZ-0018GT-1Q;
	Tue, 18 Apr 2023 07:30:45 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pofnW-0018Fy-1U
	for linux-phy@lists.infradead.org;
	Tue, 18 Apr 2023 07:30:43 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5058181d58dso4737367a12.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Apr 2023 00:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681803040; x=1684395040;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rVgNSlQei7ClLmAXgHdLYMij5O05eDXWOobwGEh17DQ=;
        b=vR0c1V6fHjkOyv3+jlpqY5zM6LZj07DmVTLUWBjOaBOnR6s/0Baom+vEKaqJuhxeZ/
         Xc2D6F3qbZCYol/JMWRydydPtMlGMn5e+nfsLiGcOe5rc+35obwyzfmNe1GgK97zBtTt
         1Koogst0alt2YUOp73Y6GIQGW4PtGqo+3GIbQ5sYJDaUBLFX+vSBPMZa8Z6RiFe+5SP9
         yt3weQk73jK4zbBsH2P4E87ne3NJ2xeH/QFqzjwYBdS26g7e7C44okeVj6RGWC5JQhu+
         im64hz/ErmPn7+rNBHTtTkWqnC+09/Ynd1k5kWaNwVHcekfYvFmrb29OqVqmTdj8tHfQ
         sdLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681803040; x=1684395040;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVgNSlQei7ClLmAXgHdLYMij5O05eDXWOobwGEh17DQ=;
        b=MS8w/5wdl/4S7rKpLiUvYpgwaliLhTHfYAoH2om4K/8MLQlHuE3MjjTzOJPvPiYd52
         rgPzyZnV+beTEl8WUAO3LUabj0deFScQhTWtby0XOA9LbYROzq/Vx5y/UUpOmHbfBJZM
         UNSCi2AcQIQEvQkGI4fAEPLcmMpPVRbrZNfcqmMl4iTaWzuWmxQ2dKOIpPhPoZ8k8dBU
         rzbusfkCczHdA3xocwh5m1tSZ5O+3LkVPILQY9z2pCy2pahTdu5Kh+VndZtPk+wz+JTN
         P+37Hqx+R0HBAeWCB3m4tjX1rTzehOAYS+QKvx5LoLOoXWl8gKOcFuwaqktunYrtCD7s
         030A==
X-Gm-Message-State: AAQBX9cJj0yJyMZ5e0vNwEb7AfHn6uZGBRIBpGoXGCYF5R65N0LtdbL7
	ELnhd/FP40qR9MipU+PKi3+27w==
X-Google-Smtp-Source: AKy350Zoyxpwx+/pSMVZgdFa6Mkl6usfBX3ptXBL+sCtn0/rIgDyyeOnSAiaOQ8GnTcResGJW+JT7A==
X-Received: by 2002:a50:fb17:0:b0:502:70e9:2c14 with SMTP id d23-20020a50fb17000000b0050270e92c14mr1498794edq.29.1681803039878;
        Tue, 18 Apr 2023 00:30:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id m21-20020a509995000000b0050684020babsm5369235edb.27.2023.04.18.00.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 00:30:39 -0700 (PDT)
Message-ID: <b28e6e12-6eb3-582a-25e2-34fa2f3544f8@linaro.org>
Date: Tue, 18 Apr 2023 09:30:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] dt-bindings: phy: qmp-ufs: fix clock and clock-names for
 sa8775p
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230417130522.401605-1-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230417130522.401605-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_003042_509650_FB0E0591 
X-CRM114-Status: GOOD (  10.27  )
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

On 17/04/2023 15:05, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> We must set *minItems* to 3, not maxItems as this platform requires
> exactly three clocks and maxItems is already set to 3 globally.
> 
> Fixes: e5796a9cdf73 ("dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p")

Your change makes the code easier to read (more obvious), so I am okay
with the change, but I am not okay with commit msg and Fixes tag. Issue
is described inaccurately. There is nothing to fix here, because
original code was correct.

maxItems:3 in implies minItems:3, thus everything worked as should.

Feel free to re-phrase the commit msg and remove the Fixes tag.

> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

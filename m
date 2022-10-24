Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA85ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hfNNfc2L1IZK/iHhPQpZ7l47bYkTB1TyCY8Sa+XgL8=; b=c7gVFUpkE9aEni
	7NrY+mIj9XdraEDI8Eu7z8pIaYtqMdi5mgPApTwxmxI3WTMwpYOCTIdAjnmd0PYfz65CxSieoVe25
	rtY+J8OABmK0It2vxFpcjnNmZI1cgfZXkgzZFciWEP8mBh2IcOvFdhV1lLSVWSN7MRzOUj+dlmQiw
	pjxz09a6+e4YxGPst/AeYQSd94e5SXJs7+ypmJTKxDNobdZdJ5yujx7enBNzNP8oaxkETDJD9Vob0
	zxo6mahjvbjqooenrtw0qfa0te33p4fD62QwbT8Vozm+axDdAS4b9GewuJZCTiv4GmyCKLg7BYuuE
	lcqCQXsPNMt8YGQwUBqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxWK-001i8Q-P3; Mon, 24 Oct 2022 13:29:36 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxWI-001i7R-Jn
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:29:35 +0000
Received: by mail-lj1-x22a.google.com with SMTP id bn35so4075997ljb.5
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A+qylRBb+786Bz6Lsf44iUr8vCugFrzyG1XuwwRkv70=;
        b=ex6Admfwk08htep+kUJAdnWdkI5euGZhrzT1ekLxemWWEWsH62HE6MUgzbnQGy1377
         KD6EJkf2yWkO81S2nRzJvhEMbhiPVzJcRuu1KCqP6y9zskCP3MaYU10G8WpG/bcP2mEX
         VBJWdZlTZEHxJTbi5MYz53b+q3W1fcxPBTw83DpGpLyiAEwLcLJSD773cx4GKwopSaZN
         3r9YNIGuDD8m+t6KjY+Pa8ID/2cH0xKvXJn12c6Ebbeok4/E+1eGP1uoG9kZX1PzcVij
         U8u0wF59K1Dn8pfkaD3a/je8ge+NsWt72luAVNYYtpoukoazx0zC8NyimphUUjDrMLbg
         oa2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A+qylRBb+786Bz6Lsf44iUr8vCugFrzyG1XuwwRkv70=;
        b=DkTIcL0Hi2MXSGHPIMMwW+vgW9vCARo3JO6yX+1NJVuq24kMxW6uE7NjMDqLLHIril
         lDtd7JNd/5Y+Qfrav3WI24BfOCIhWzw+C/wxBUWdNsd9RgxgjE8JZo4ZQapJgcczVW4e
         gtG/VSyMFYHGglecwaFKA6BIJ8qiWJxWfsSpT8MeUpO8iEpyr/Ttxx9Eyd7KFNbW1TUl
         pyUHpm53dwvpgi3J1m7cNjAnx5H+XkocoC+HT01KXc7gMvUUeDOkjKpgamUucOq8H6C1
         xV3/7IbMQyBeg1NqkWvmrvVhDJ5alEoKnBzEAHr2kd/ljp/NobMCBoYliuhvDTgPz5k3
         0gaA==
X-Gm-Message-State: ACrzQf17wF9/pvEBZx4LT9GN1SBOo4p7Z1gnPQNb5oFq4JxsAVc8CRea
	zvYba+CEwPwMRUpJvSiBb2f2SA==
X-Google-Smtp-Source: AMsMyM6UGKnU0sZ8INReNWkER2ORq1CKTMEL/WaIMd3224QU8/TiWVXWNUzhb0IUKZhjeoDSzddTRg==
X-Received: by 2002:a2e:bd86:0:b0:277:b58:7d1a with SMTP id o6-20020a2ebd86000000b002770b587d1amr1745894ljq.229.1666618171166;
        Mon, 24 Oct 2022 06:29:31 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v12-20020a056512048c00b004aac3944314sm759217lfq.249.2022.10.24.06.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:29:30 -0700 (PDT)
Message-ID: <7dfc5001-9899-5778-f445-5508019608e3@linaro.org>
Date: Mon, 24 Oct 2022 16:29:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 01/10] phy: qcom-qmp-ufs: move device-id table
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_062934_675546_ACCFC59F 
X-CRM114-Status: UNSURE (   8.80  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> Move the device-id table below probe() and next to the driver structure
> to keep the driver callback functions grouped together.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 78 ++++++++++++-------------
>   1 file changed, 39 insertions(+), 39 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

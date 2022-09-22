Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8326EC54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0NfS+qVE8pCknE4KCSuU7OMbVkmk7/5u/rLzPCiLfU=; b=mUQP1ypfXDl/Fu
	kvjBiymjH1qjvtm+k9HkJ59QBGIn0F9a8w+KLGYI8wJ/rZSsFRuJSOGIrilPuzdfhK5Utt4wDHrSH
	BpC27+mb1XKUq89YOT6sIAS+l3hiulgyUEnDaIdWhdeO+Lxr67rcfYr+KweX9JxGRTUY+ExPxOPpl
	M5wVrT+pGxn0MVWgsUjLn7IDGKxK/tdFboyRr2WMYp9seGPK9L/8rwYGATOn9nudZKCgFOy9BRINU
	3EjQvnbF1Bo9BUR+3RsMhOA9Fw+JoyrBZ2f8fnMMClWASGMz1YBWMFNm+N0n59h2Fh1RXANDmbX+b
	IdTHrV1rZIGkLlOR9L0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQWC-00HCdn-W7; Thu, 22 Sep 2022 18:01:49 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQWA-00HCcP-8W
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:01:47 +0000
Received: by mail-lf1-x132.google.com with SMTP id j16so16002798lfg.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=SQsjptXiB4aAKkJGA4JvrvrTX5A+rS4iPy+kbkqaYt4=;
        b=XNexgVzoKQbxs7f8mLd3aLWyn4yWulmIrPkdqsYfcXQhRKM+3KPd2Hdrq1WBR4R5Xg
         zrlfzYXsc5zpTgV8qdqnP03YytaF+9awZtQpkUveHdEudjjSh4KXYJlIq8TmtHwmtOj8
         ZnFeyBYZZumVdjDjHFk/cm33/2wsuGxULvDk7N84tbWtrfBqcZmQxek5eMBGVN9y3jjm
         su/byh9DXtswkF8Rudt2mvX60To+c5cNzEnnuydDQhMk6lQ70c0PBiFfOLTCdTWaQPNC
         xOI5DhRpPk/y8Evsp6owktq/uW1+DlKMNQpdvXjfiFni6EmvU2PXgfpo5r0DXkVB9Qwj
         Gx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=SQsjptXiB4aAKkJGA4JvrvrTX5A+rS4iPy+kbkqaYt4=;
        b=MYgbbhiUJOn1W8kUVqhfPl2OT9Nr+9TTWksYv8l00CXBevzxIk9rAqqHzIgbHiFFl4
         u39H+OZ3MwC6zAwoaNEnQZA0Z9gqtqU+m2gLc9DHsOvMs9AWXMKaRDRosUVkQ23rSwSJ
         G5fumS+Ldk4kOiR6lU1KeFqDJaP3hIASKDmoTRwabui7ZWW3Zv2ekqB4q0sxM90vTyp2
         qnLTI9qql8+5w2VcSVS7NM2gxjwqLzFt7St9Sgkw3T0eDlXDIYFl5650WPbbFzfAGaJq
         oTQTD//O8PZN80r62fmUrwL0ERL85CSS1xwgTz3547qBk3ZLS8aiCpjEf6z/XAQKcglU
         2SoA==
X-Gm-Message-State: ACrzQf3ljXOg8kp+9TmWPlsYkLF5KQy4BRblDXGJRBiEhQxwxqFwiDfy
	Dxst6fdYG8+hj7s+ztxBzLL3lnWQ2FMIDw==
X-Google-Smtp-Source: AMsMyM45gElc+J2OV1D19Dbhnm6d1ds0hZYDuo51aqlKDBxYpL/dffzPv0H//JIBmrBjpa5Z0NG5Zg==
X-Received: by 2002:a05:6512:31cf:b0:496:f023:5471 with SMTP id j15-20020a05651231cf00b00496f0235471mr1743445lfe.133.1663869704001;
        Thu, 22 Sep 2022 11:01:44 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w20-20020a19c514000000b0048aee825e2esm1028756lfe.282.2022.09.22.11.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:01:43 -0700 (PDT)
Message-ID: <943c53f7-fb06-4285-be39-658c0db403be@linaro.org>
Date: Thu, 22 Sep 2022 21:01:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 14/17] phy: qcom-qmp-combo: consolidate lane config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-15-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110146_344150_081884B1 
X-CRM114-Status: UNSURE (   9.89  )
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
> For legacy reasons, there are two configuration parameters that appear
> to describe the number of lanes a PHY has, even if "nlanes" was actually
> used for a different purpose.
> 
> Replace them both with a new field simply named "lanes".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 38 ++++++++---------------
>   1 file changed, 13 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

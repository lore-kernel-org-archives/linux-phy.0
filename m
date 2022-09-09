Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE3DCECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+Mjwj3PhAzP4tqA3SH9/tNEMtsfOJ7smEXtou1yp1o=; b=hKGWq+68HgV+Ax
	3R5sqMXnANpn81O1LShO8cBvVwxvfozQR5GqwJgi0VsJ/pR+ai4OULtfEy3crGoZkWiesvBpwNYoO
	1pMZXGn6jeKrI5AyPxnm+YFeMgLtYHwZFapzTknYgl9//BmtWF/OG1WimsL2qekNyShWtrEUd7oqZ
	b1pNLkeDk+mp8F/7JfYeDczmjUE4rHUoCQbYLJCImlVJ4BViYbP/5T2nJNgll5aVFlA0Gz4cBCByR
	RyA185a/oHx3HPgPhe/1L+IfNePN7xdeBS6gYp0dM7LXiaLkYewnHVTwS3TmdVgtjTZVCdCN7qVPE
	cAfaePzG9zJz+OEmm3aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWabl-00F9Jy-7W; Fri, 09 Sep 2022 09:47:33 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWabe-00F9Cv-MX
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:47:28 +0000
Received: by mail-lf1-x135.google.com with SMTP id i26so1741317lfp.11
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=v4ZqJESqWEDqaIz6R+zp2/x1nVd3NULUMDv3pG+GOq4=;
        b=Zh89azYzcvL1KK99kdg8dL5hwP1TOMs46RS3tyx6ccu2sNlSmxjN4FTc3DTkMpcDw1
         z3w/rlcBV1N3iv05Bk9b8LpIthKMSeFdXXpIDWuP7ZvUP2DrZ/iHRDID03U/sBwQSVZl
         ALr49/V3fMiF7j1mXGTS/5GK0vlWYJvkfuiAuscNfc0H6XHFbXUF76P8vvLesWHT+ACu
         KTweSG1g16wTF5l3US5O7akQA2aCucezmMsKKchRQTD4h8m+vtVvSGm53i5YRkKb839O
         fwqR+Ju9WrAQyZ8XFBlfn+W/WXmZhZVKkeM4bzoNddRskgWEj0MHvlbGQBGOg+jV1MoT
         IXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=v4ZqJESqWEDqaIz6R+zp2/x1nVd3NULUMDv3pG+GOq4=;
        b=AN4z/EddmKUb5KhpWHDRNoJ9CdMbHcuzUBqfwSazlBlHTjkPv5d04/Wj5Gd9gWPxLQ
         tRsljLnGm4ywWlV5riAoqKCbbxo0/sdGUW7HardEkR+mAtPpQ3n8dMdNSSXwv+IoWrao
         vWdXNUTIynHCzg2ox44EzS/yNzCv9yD48hjU8FC+eto0kbyBXcw8mebFi9/3luSrxfCn
         LoSGFrXftsjLUa9azNQkLplIZERrW1yqL9M3e/2ZbCvLf/+rs7V9gBjWst5aR9wuusUv
         y/sKQD9z5xiGI0ngxs7iYr66TusKjpB2yOtkIPVouVOOZ/U+D3STCjSiYbq8oYCw0ppQ
         W18w==
X-Gm-Message-State: ACgBeo1Jk32hzwReAsfYDCjc33WoZmq/bL67h/R6RDt+goV4G101iNrz
	d8CEokFUEt9Kx38KAH/Li2h6aQ==
X-Google-Smtp-Source: AA6agR7ictm0hi0zGBTrEMlAhD5zXwZHeImTpbkkQLuEw05MdbjhA91y32yrf70t+577Wlx0JkMYLQ==
X-Received: by 2002:a05:6512:10c1:b0:492:a27d:ff44 with SMTP id k1-20020a05651210c100b00492a27dff44mr3819219lfg.405.1662716840687;
        Fri, 09 Sep 2022 02:47:20 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e3-20020a05651236c300b00497a5a91763sm21221lfs.12.2022.09.09.02.47.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:47:20 -0700 (PDT)
Message-ID: <e1a2c231-b524-821c-afb5-865cd88606b4@linaro.org>
Date: Fri, 9 Sep 2022 12:47:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 13/16] phy: qcom-qmp-pcie-msm8996: drop unused secondary
 init tables
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024726_812455_BEB80C51 
X-CRM114-Status: UNSURE (   8.32  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Drop the secondary register initialisation tables which aren't used by
> this driver.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 26 -------------------
>   1 file changed, 26 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

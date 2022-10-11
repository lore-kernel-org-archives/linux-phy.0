Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C86CC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6VYGKTnndGB/vq6TuwzTSArHJ9MWo8RFUQn1aNM2xs=; b=Ssi4oFPWMRPVBm
	SEJfe4udbB+YEjLI3xEBkbh6pQpaZy7JE18mb/ZpNmxn98zD6YbnT6aMCmjrTAkodAla+J6/zSHzt
	HxRgcd9nPt5SU1aepsvAJAzEMVDbHkO1jlHL4roDsZwLxL4OKg0OVxfAog++dNBjCFvDuYHoO5+2R
	80KpxZR0O0QvlaCDr08nTnKzI1jTxYYWs2oTXDvbN2nBvYgYe7WTCFItLWz+pAAlH2AgJ5S3R3Pvb
	XecwvxCnkE4zxgBEAMa+XXNnYnHa0qKtxxMjHKpBEObwV7j0xElOkjUS96tlUFpeEjQeXuJjPC7zW
	PJPFaF9XaeSSFl0HS1Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFfk-004ORx-Q4; Tue, 11 Oct 2022 13:51:52 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFfi-004OPy-B4
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:51:51 +0000
Received: by mail-lj1-x22e.google.com with SMTP id r22so15594024ljn.10
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i+GJVBDiQoKlcdpvWj7Wr2feggyQRs292x8Y6paqx9M=;
        b=WYjxpQ0r945EtRA1I0SfwP401Kw9DUSKubLEunDI3iaw1WrlG2hLvDNR9uvWePEIb0
         VyWZ8ALERIUQNlKqZu7sBaCxhQm/ERYxWqKHphBVesLuLUOmExA4ddy4D4wG1NU13Gb9
         YYP49Q/8InnyneY7x99+ufgF4Gh/VI5Ur6d0PMhM7RCb5gMciyzYe1Wkha+ZKiZFiRCS
         b19aCBRNPL0AZl43l1uhfUjKvcL4gDrqFCE1wLCCHPNVEKOjWT2aEe8AsVIjRR70id9b
         UHIEeS60oALmBCphk6II45kmnM0ReY9eaXF1llcycLSolx2+sZqyB2MemzaDLTou1q7n
         cZtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+GJVBDiQoKlcdpvWj7Wr2feggyQRs292x8Y6paqx9M=;
        b=LUI3UPGstsiPWYWdIB8n1eBIS3ZCywmt8ncMpsXJPZqMF4T43F4x6A/RI9jIiWgcUv
         tKohShAHk+Y8+QFVmjPzTPibSfczlvyn7NN7ji1baZFigABNv6bk2/5OEqIn3JnRiAHy
         TaUOw/LKP4BB0PRUf+FTU32jrENoTHP+VRIztRjqj07nwx8c8K0KOj8WO2VsJtzhA5b/
         g+z4vABezP2FqgrHZQ2zyeGgJwiAdv6PStLdnzUtRTjej7NMU7xtHTreq8mhiX3PyKZW
         vHSuk7sY5tKCBclzi5aCMhwQthvIh9wwq7KY1IMUJq/rm7vgWpWkm3xblqS11oJwz+gX
         k7RQ==
X-Gm-Message-State: ACrzQf07gRfcVKQZ5KonOcXmKFsMS9NDUm+7oFMCyqsBzqOpXtW/QjzG
	allDX8SLOwGuWxgE3a6asGQGIg==
X-Google-Smtp-Source: AMsMyM6E1eC7kLTPBDegKefLnqqmQ5YynQknd3ZkHYzAGzc+XA7Yo4cgEvFY5JgCpyhZRS1/ANlZXA==
X-Received: by 2002:a2e:a607:0:b0:26c:42c8:13af with SMTP id v7-20020a2ea607000000b0026c42c813afmr8574466ljp.267.1665496306686;
        Tue, 11 Oct 2022 06:51:46 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a20-20020a056512201400b004948497e07esm1876436lfb.15.2022.10.11.06.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:51:46 -0700 (PDT)
Message-ID: <8481f2aa-eee2-881f-5a35-c8a77f468689@linaro.org>
Date: Tue, 11 Oct 2022 16:51:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 02/13] phy: qcom-qmp: drop superfluous comments
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065150_403684_B39C39D1 
X-CRM114-Status: UNSURE (   7.17  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> Drop some unnecessary or incorrect comments.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 4 ----
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 3 ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 3 ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 5 -----
>   5 files changed, 18 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

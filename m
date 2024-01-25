Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A709AC47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=at4YMoBi/wryhtsIdYaA9B0tUw+o8e90uuggKJqFGYo=; b=RYl/tUM3iJ4o2A
	hVKlwTiAiP0dp2SAFuqUcxm/suuEcnegDTqC3vI+q0uZGhLNswRRP+tiV6aUPiwOuxJ9V+LhWKwc+
	EX+lnOd2/J2CMhehfawZqKMVUTsmXWnNTtB81mH8Y2QIGWxIwadbPHV1PPPEyC4AJ7fJzE+vWBon+
	TyD2PEerxYsmR0qnwDKSr5KpVqnR+h5p/rlAUwRcMQ/4wnbP7OQNHDElLDM0C7RtWzp57UNfVoRbZ
	g3xbUorrmS9pe+p614t0ZHpW3P9j9qLnb9HvcnS4s85Rkv19iVoaaNnX7R/JOkgJqTTPpPg0g8A9P
	jAwhb4VEJhBsii9dwRnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT9ci-00000002YH7-0g9L;
	Thu, 25 Jan 2024 23:59:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT9cf-00000002YEv-1zoh
	for linux-phy@bombadil.infradead.org;
	Thu, 25 Jan 2024 23:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=xUQoT0CqkTx4RdOASZu5iDw95CBsXpS9e0dYJzMD4Zg=; b=HB+5se47qa54FJ4xuD9s3fqe2b
	RDpOyzt7ifocslk+ZKSzJnh+GKQyaNdI6KSEupSOOQSY6dF1AtkPE20Cet60jSnX88H5tFIU/FZ+f
	7YGAlQ8WxmoKHSgFpJsk64EMNXlCUVa3uSx1fKRM1ZHyMkOd8rZhtUmUSP3ByEb+H+YlQkyd3Oe5A
	e6qBSI3gxaoTrb7zbwwgKO0uL6i1noO5dZ2Sw5Zf/fuHbq25I7iWDAzgrKaOAPFDvciWVUJQUm8+z
	ew/h8fWnhcTilXLxnWJyUzKPB/IN43M5AVkyOGZ+dPtLVpIrFSfElFx/W/LA1P/Ld4rcDGntS0BFu
	oJitDpWA==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT9cX-0000000BnPO-30CS
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:59:04 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5100893015fso4456547e87.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706227133; x=1706831933; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xUQoT0CqkTx4RdOASZu5iDw95CBsXpS9e0dYJzMD4Zg=;
        b=qTzcrc7Cqr54KLizK9Ws0ZEqMFK49+wZvCfAn14QUiIs04mU89hbLiQYRslpnXJ8i0
         7URsMFwieRoN6Q711dZIZKYGbbFe2e8FrZMV0rerCOSK7+K2ByUFDU5wUl2BY3jTlZIX
         y/LhMc1o3blWkM3NBGFgZ8+yzLOE1Tug74zcdZM81FzmZQbsIQD1J4vC/HimOZih2ecD
         w+th3qLLaeGIuVATsaXsi9Ng1v6XQ5y/l23xv/7oLKZEfXRNHaczrgDpRRlmA8SI7YpI
         FI/CYN7UQq3hjsUaNkTBFFXiyDiJvuD/J41h8d2Ja0V38n4CWdq9/FuLYjc2uDBcnesR
         YiHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706227133; x=1706831933;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xUQoT0CqkTx4RdOASZu5iDw95CBsXpS9e0dYJzMD4Zg=;
        b=uVnU8mEcr9D84Et39KrhTakijU0KtIGy29l+d3eJdaQABe7hHBv3q2A/asMytUa1Bo
         VemhwEYUlwfSLdD61AQIAK5C3nsYTRYAYVP2uTXBjPqjpGjcC76Ubwn0d6zbf7lQrpO0
         sZoasneDfdWraqtUgexJed959zua1mUUeInUgA2I+7FxqZn8Mb8ZYbuWNCevybjIUSFu
         rMYTlzI36ZO5VnacdSeAooIKlJ9pUiE7Ne5QbIsiM1jmUUEoWMJccjRYk9SYm9p99xl0
         INJ7fosZsOS01PJxSe+78+gY+iRodTuwXhpCvdf5BPToN7ywVCniAEf+ZGXP2xXnXhKA
         Po9g==
X-Gm-Message-State: AOJu0Yy16qcXpFHzDm4nytkjY6jTmbKwMdV/fw/l3Texhb9n7l+Xmb4Y
	xzRiwvQIciOAUe6ymhNEtvunP6WRGIDnc3Rmpbh0NUePKdbCJlUtYBuf1Uj+w/KzTWRKY2YqzaE
	9CaY=
X-Google-Smtp-Source: AGHT+IHo6AiqxuqV7NyrAINNh1GNxMRCwCWG46Vnh6uaxPiIE2xFOo+X6kFSrtvayPDqzIBtXXLiXw==
X-Received: by 2002:ac2:5928:0:b0:510:dff:59e6 with SMTP id v8-20020ac25928000000b005100dff59e6mr164531lfi.146.1706227133232;
        Thu, 25 Jan 2024 15:58:53 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w20-20020ac24434000000b0050e64a0c62dsm12363lfl.240.2024.01.25.15.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 15:58:52 -0800 (PST)
Message-ID: <b8f588cc-712d-4f22-92d9-a613acc8d1b0@linaro.org>
Date: Fri, 26 Jan 2024 00:58:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] phy: qcom: qmp-usb-legacy: drop single-lane
 support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
 <20240126-phy-qmp-merge-common-v2-1-a463d0b57836@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-1-a463d0b57836@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_235859_136998_D0B709B8 
X-CRM114-Status: UNSURE (   5.01  )
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



On 1/26/24 00:22, Dmitry Baryshkov wrote:
> All PHYs supported by usb-legacy have two lanes. Drop support for
> single-lane configuration.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad DYbcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F377C54F51
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 09:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QuVitaGR67ZylVoHOcammIbp5e8CgTPYEFcAsmiDzY=; b=P7YKEVAI9LEhLv
	PJ0o5OL3pdrnVM80vq02U3bBdnTYe8O6eFUUtRN66loGp2gMNJ56/zFvTydZIVtWmokn7qKa+0NpP
	9MnTUCKXxGlyUIVuVptmd3MivS4UwsPHLYMFiUMeznXCHSM3yluVgYoxTxp1yOtGyCwYAqrqmJ+d9
	gisHn9Zq/s5oFtahdR+q+FLHZJZ5Wk26TssXDbPVmbyDb9+PMiPXfigcIZL7EDacmwKXyaLV/sodE
	slipHfqNBIp1+WW2KYPSyr1t6qF3+Cgywx6p9zSdXjbG6QeKd97qnMrM7Y7xQCR9VGHCo7G2i9OfC
	ei7CTFc241YBbhIaTdWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0En-00000007JfE-14g0;
	Wed, 29 Jul 2026 09:06:05 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0El-00000007Je8-06Ek
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 09:06:04 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-c169ae1cb26so320339666b.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 02:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785315960; x=1785920760; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=S/MLmidGDM5QU9T+4fBVHNCPTr7RK0V7QVFC0bGSvSY=;
        b=wxprcGabRy+0ttzrZAwJm/EcFU6cP2mUsX/qD0d31HjRKyVqJObY+Er9o4ZKhrkif6
         efrd/XpJr1ylnl+DUV3haZUj6aueC4I3HTAaAhRo20wlt50O79EMXEyUDKh04rqlpyRu
         LOLMXmpt+lYxtOWyp1A3TxowNzHCI+ha7hrpHxC3ekTqP7+wdcQcSDy7mNywrAjcXQ9l
         FEwwDnCrhnO2HohAQEkavfyn7d2dB53OzEAcWx0mmDeDPCv2JtOWOPlx+R7aVk67LgSm
         yeAHY9noe90MZP1/fCP9PUSRjFIyd1HanndQstT87dRy9WHjGpGj7gvzG7y6Gytr6Zrc
         sSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785315960; x=1785920760;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S/MLmidGDM5QU9T+4fBVHNCPTr7RK0V7QVFC0bGSvSY=;
        b=hwWPtZ8LW7IXVuEdntNWCARZ/5S06s2nqhfzxgZVoFskxd0YqzNjN5nQD/s9BENmhq
         9G9upixN+XVSRAda1Sb+RPxXlheem5gqi54GMuK663lpg5OlqOrwEgQKfnWGSZsZ/dxW
         FyhQLe6ZFO3m9/0RZvkKIkMaS8ADvc/Fwv5kGyzAPmX8lXc2bEz0IRgT/eRInMrGm/jG
         U57f4n+bjLkObIOD5v1G/P/b3qLU5XL6ugwGdrwDzv+S7PgTrppG+apZ67X0JUeVxhpT
         JIW5p4+VOx0hg+20NA1o0J5JFSTMBeRpG90xv7udEESPr9tqwTlkrEY1KV0pZWvMiWyy
         SYJw==
X-Forwarded-Encrypted: i=1; AHgh+RoP/ZI2U9GFgcuHb08G6ETllmJ1Bxxfvk1IsJ1Rd92xKwYVAr7jsgIbst9fs/xd7tACYQ0irNFOxds=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ/tjZ4No1/cQBlpOrt8o9J3tGuJ9Zi0yVfxGK0M92s47sIb9i
	AgojEnu2AjX+xYnTzxPT0u/Uu54NWEJntsAB+LDYT9+ia9rRKkKb4RHiH0s4JuK1+1U=
X-Gm-Gg: AR+sD12ItjdTDM2/2AZSS7b/IO6iE3MJ6rWM2GmE7+mDKVHnUpgJZmkjUxHbbslMFxx
	UBiqpzn39TPz6jAtWBb99UxsPlNe6kHvK7yI8tUlGPObQ+t86M9oFvty+geldW2xaWuTzuVHur/
	6+zretR9UXUi9Qr/k6Z0N9+EM1cWzflkNKFCXq/2894Rm8+Ynf0p+7NdE1Ub2mxSbnDwqFQjx3Q
	yKD1MDegxgkdQOyzjcOUrsB/z0sG9l12kb9CRjWkCv6xMil08LuSpOihEYGibnH37nhjGMzBGO2
	5KqBldB/2DIRsa5zkz3mf8NxIwA4xeEi78XsFJb2x5nb6c894B87wMYGw9XjXo5pGaOqkBRSPOG
	l/yyHC7D1iEvtVzWPAI1OORkomAobeSRLkz+bLvoXycAJ995D8Wu+Eq63DcjbBwpeXwXbewax6C
	NiZga7HM9XAkIkrM7qb5/nVh6qalfzG3ZEP/FoNn4jP3tshhBxa33ajfK3KBOdzJTR0xLjyg==
X-Received: by 2002:a17:907:6d0a:b0:c15:a7b9:2ae1 with SMTP id a640c23a62f3a-c1f8cbc0449mr86006066b.6.1785315960387;
        Wed, 29 Jul 2026 02:06:00 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.24.32])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1f83cebf3fsm87314766b.25.2026.07.29.02.05.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2026 02:05:59 -0700 (PDT)
Message-ID: <a661e25a-c889-4c6a-9052-5429d9924030@linaro.org>
Date: Wed, 29 Jul 2026 10:05:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 4/5] dt-bindings: media: qcom,x1e80100-camss: Describe
 iommu entries
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-4-ae811e2f0799@linaro.org>
 <20260728144448.GA2141274-robh@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260728144448.GA2141274-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_020603_138690_DD03BF91 
X-CRM114-Status: GOOD (  10.33  )
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

On 28/07/2026 15:44, Rob Herring wrote:
> On Tue, Jul 28, 2026 at 10:35:35AM +0100, Bryan O'Donoghue wrote:
>> The original iommus list included entries for ICP and BPS/IPE S1
>> contexts. Only the five S1 HLOS stream IDs are required by the CAMSS
>> ISP hardware: IFE/IFE_LITE read and write, SFE read and write, and
>> CDM IFE. The remaining entries serve other hardware blocks which will
>> be described in their own nodes as support is added.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> What happened to krzk's reviewed-by?
> 
>> ---
>>   .../bindings/media/qcom,x1e80100-camss.yaml        | 26 ++++++++++++++++------
>>   1 file changed, 19 insertions(+), 7 deletions(-)

I didn't run `b4 tailers --update` is what.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

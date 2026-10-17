Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0A44CCF2C7
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 13:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6L8OTVhlcRK5AaVSLMZJFrUfb88oUaLJrw/qW25AWs=; b=bKpV04MGST1GQL
	VurA2PJQhxfcTb8b5qG0KEThnx8fNg9/ByI316Ob+k9v3vfWA8apz8Ax+xwSCXUNICuqACveoTodq
	jtzyD3kJEilroRbN6U5DXQb93OizEix/eG9Gyjq3BjRnqqr79r/DRSpcgWOt5tweg2nT9nSxv7W2i
	FW9wxmpNj4yZlzNRnXCyInYG1GRP9SfteumVZlcjrz8vOK/YnOGLGl2pADodOHlR1DHzqBF9TaXqb
	qXf2fg+bsjRu8F38KaasRviW3L7GiCdd5dnOjpjywRfFT4sIZANrAZfKGLdXXUpUfGIpRJ8hdu8zl
	yV86Kq0d8ZNv1AbiUkOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI4ZU-00000004nJq-06BW;
	Sat, 17 Oct 2026 13:35:36 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI4ZQ-00000004nJV-193x
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 13:35:33 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a1d665a5efso7020145e9.3
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 06:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792244129; x=1792848929; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Bg8gcmVf98z+OPBCGbYb/r+iHjc/oki2rBnkAci8HgU=;
        b=J5RI0TsLkmm67fe2IOyDXDz578+KoFMa/nUBaPU+BawRylIlieL1lYI0SgJlfVCB/n
         cXedhd1LO+GJ6vKmOG6duTcVW3wYQWFpDsHgr5jk5j0WNeS8YaJXsxgAjRHV4WtnjRMQ
         19Kv91D19SgcS7kHa2AVpfUf2VGCm+YENUW/iR6FNzZz0A33w49ETGV8hbDIHiET5br9
         3WKyNkrG9iQszfqe0p73DU4CD6WbsRqTgkl46ZQghm9LSyFQXh10mvGMWFdUTqrEy6Cq
         3UTG+4R70bAgQku5RlbAwNGJJQEQaar8n2b1/h490Hh76HFUUK5tOS9GTI50POMpFD6J
         dhtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792244129; x=1792848929;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Bg8gcmVf98z+OPBCGbYb/r+iHjc/oki2rBnkAci8HgU=;
        b=MdoTPdT96Qj1ag4ULPION/wuKi3G6f9D0fjShTT+eR3qKGYz8z7aViOvxzJg8r/Waw
         OTNr0+uw43D8bwlheeXOM8pIscs7hm8WFqUuuu2MaSMlzDd70Fip7TFo9rEw2ewaJ4MK
         /7Nz4KSsFAI3COw1SRWZzf8D7qL4vNVj8nUibfdF/mM4Yrg4Inm47wwWO7A+AhAxB52U
         26TlJGukyZhrHX3AKJ3G4wb8YPPk/F1FBEOrIgP9rQ7jr71GahGMnIQ7jIH5zMpeL+qJ
         Ilw8XQRdhZipg/ktNIg9oOgwBf1Y4kBgFFPiK1LWhSvJOi2ReZytSmgu3O7B7OxPJrdE
         /Pew==
X-Forwarded-Encrypted: i=1; AKwUvBwk46n2alVxL9esVY6M0wi24PMtmU1LyBf1sY5kmSzS8SUxZF5+Y/qGeuGuUSdKSk53Tpf3ks4Uf5g=@lists.infradead.org
X-Gm-Message-State: AFq9FYJKy+bdnfnMgUqKSClqtif9joOke/4PUnpaaNhBoa0AFXb/ilRm
	CcuJh7OVZGY78jwmUem+VVN8BQHjvX2ACsPv1RQiDSpZpXx8/Me/SFJRu6qyNzWivIg=
X-Gm-Gg: AYBFou13eX/q2wTrMbHgnU0MeANGYxWV0dLMnIj5kwUYclobW8XyRvb23eOr5TEMB3H
	PDtottS0zTlHmi6lH0gw0r0RVeXJec/akMBRKjdqDtohMs9wpjGzlsLiEW1U47jZwvwlOTIbTTB
	LP7lJxsOAxwqRQgXQ+9ygN4PfnmJcvllJPqdZFOOCQ+7hKp1HsM8yMpWqca4LlQTWT0qcftrxVo
	MLPLT5SgCMeO8aVnpfWlbfkitEKGzYNoGkIbq5eleNZX05KVtBoYUO/PYuFsh9tw+aEXrCoxy9L
	dfXqK0W7pzpCQ2ekj82XCUbR2DEW9ZuzrMYNqMwdztv2toxJAinv6+6jA0SYa7DU5bKVCJF8N9N
	qoVlPoZvL7DQXS79Yfc/K27sn2Y528ncw2Afb7UlvQ5Zgay0Twn9OGGlQp5Fwfo91JSdgHxdXdd
	10VGaW5LrcVjmwQyiENFkMmBwmlj5YI7ms9OTwDkGXDpc4Fpu7bixF2RH9vrRTg0nZksChgKLlW
	P4Z2qw1wump
X-Received: by 2002:a05:600c:3b2a:b0:4a1:d1f7:bf4 with SMTP id 5b1f17b1804b1-4a1d75fcdc6mr63156145e9.12.1792244129542;
        Sat, 17 Oct 2026 06:35:29 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.131.195])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ce33155fsm90508865e9.4.2026.10.17.06.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 06:35:28 -0700 (PDT)
Message-ID: <4d307e32-04c1-4df2-b93f-9dd187fa53b5@linaro.org>
Date: Sat, 17 Oct 2026 14:35:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] phy: qcom-mipi-csi2: C-PHY for X1E80100
To: George Neacsu <geocausa@gmail.com>,
 Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 David Heidelberg <david@ixit.cz>, Neil Armstrong
 <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, jigarkumar.zala@oss.qualcomm.com,
 hariram.purushothaman@oss.qualcomm.com
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
 <db2fffdd-634c-4728-a2a6-2ab1816b07ba@oss.qualcomm.com>
 <20261017070443.989736-1-geocausa@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261017070443.989736-1-geocausa@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_063532_347564_FC3FB440 
X-CRM114-Status: UNSURE (   7.79  )
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

On 17/10/2026 08:04, George Neacsu wrote:
> Bryan, Vinod: unless you would rather take this series, I will follow
> Anusha's.

Fine by me, TBH I hadn't yet cottoned-on to the fact that the cphy init 
sequences had been buried in the dphy file so, I'm happier with an 
approach that = a separation of concerns between CPHY and DPHY as well 
as absorption of both your and David's prior art - with appropriate 
Co-Developed-by citations and SOBs.

One thing I am picking up on with an initial scan is the absence of the 
clock calculation helper functions in this new series.

Anyway let's see if that turns out to be required with a deep dive on 
this one.

I will mark your series as superseded in patchwork on the understanding 
you will rebase on top of Anusha's work.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC914C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 10:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWghC4mFFA/EHc+DNCzcDI3Wz7UAHLqlQF4un0fB+gE=; b=o339Svj4OS+VQg
	Ot/LGAfWjhJBLIYRO76SaoRCIh4xk5S9qmnJtdWJ8OiQVUaE3N4ja7UbYjvtKk0MgwrcZUJsfPgYX
	UM7qn/jo7p3dHOjX+pFwjVMGtdoK3diY0zE+qDshqEjWjaB40JZe4hkOkzqyVnrfXIU1f4TYwfsRq
	F/yzxdQb+PTEyph5fjicGxsK4IvGXwueXLvoJCxZy4HtGd2d1X1cFZra/aOhoR8LHaj/YH+x/Vvt4
	EKI5aig2tCX2l+z78V7Fr93tBgkQXgpuB7OsBnIMw/kRCaZqHnJT+l1/nS6m7cH809wHX3gB+gHMd
	1OrGnK/VcAOUWGuHobnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4FoT-0000000BT9F-17bg;
	Wed, 09 Sep 2026 10:45:57 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4FoP-0000000BT7z-3g6A
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 10:45:55 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a99c5de614so16351a12.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 03:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788950751; x=1789555551; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5MH6BpfVCqGiCGTmNR3nzVfS3qVLZltUsj1CqM88T+M=;
        b=zMAS52jPVreGEerJUltmmAjr+1TWuWiD+4ugE7BwXQ+dPqWFUw/qd7rI2wnUZb55w5
         TTUQ2FKJyBrsVkgMVHc2tGSeS5Q4V3wJBMSjf34XNG2E4mlzqZyRuv1kInVdwkSFqZ5s
         JSBZS2Bhjinz/N00sjpvZs3ymd6R9KzqIDwztpmzGk2lvJzOMgo9wBdL+CQHF5bUD3hk
         UKZdbgRBZOeJ/9/ibx+dslZDY8F4pFWm+0Ev3OR2tsww4hwxa2DDZwiXzInjRr/99hdu
         +hpqDd/SlOfu3VbKBILr5fMxeFurW1ZNT8Nm8YULIPVlvgsNvYlCSuJ70b5f7wAZZkSw
         iUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788950751; x=1789555551;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5MH6BpfVCqGiCGTmNR3nzVfS3qVLZltUsj1CqM88T+M=;
        b=VEWWUgTzBncfecKHzwySdu1uxk+zVfSAt6ve7x3qD5BDFnISinB/MLRoP6OA8NU5vk
         jen+zeiqwoCp6p+nUmCQhXAU1HYJIuYKrHE5t524zrnPc/3UMkx0rCNn4742E9wk4ZkC
         2U8VQs9kYZeYeD0aHgolzd7xFEJa2yIsH1ueephy0Wly10Z3PhgPHpxg5Son96s5EBqb
         MRdot9qTtDr4CJA+zXAbQ3cf9WbcabSg9aZbWsVC2RwilSP0HKjOl1gKrEomPEqYZz1c
         ISobhOUU4DS4qG0gdkC5fEHQ6CLUbOtcQfQIMi5wXgQHWDpvMzdQHucpyRNQFo7E/vZZ
         kGJg==
X-Forwarded-Encrypted: i=1; AKwUvBwVftDdWhAecfTpd/qBroGyvDr1Bpwi2xY0lDEUUe4stPunu83AR9WzyS8kbX+RbtJ5wwt0PTFwB3Q=@lists.infradead.org
X-Gm-Message-State: AFuF++nBu88f43RMx5RTQNXj8dJpznj/UXr4dS3WRSSXi3Rec5iKx1eW
	KJ9xSB5V2fhesV4A+GaEKJMgVyBLam1ChKRQfNf4r6PmhOsV9CGQL1835sFd2u61uUk=
X-Gm-Gg: AYBFou2BsGJFM0/kEpSsJH+xhYpqcgUO7ahFksHDT0zpdfJhaNl64QRXm2qH+MsMTf2
	arosJlOMHkGeduFln9p17wrlxLtVUsAXqamXGpyjgjXBRZrjrOj/jTU0nWRPnw4vAHHzXoH0eE9
	aCUrcS4izm56JR4On8bXeKiOpg806TEA0SpVLa6LpHUrcYez6CSm7vXwIosjNzhv6I/FStz5fDa
	xTI1CpihX8qsCTW9rt144P1Z0yUSJkqyD1OYLJ5fL71mEGyyiazye9y1X+v+CJ4NIrepU72JyYd
	HDsgozyG3on/pk3tfeWs1FdxDHKb4UsyQBPTBOZqnP+gr+DKcd/ooWzbasNRDD5WaTwRYXtHpz7
	nX58mfC6Eog7GWBckqeIqg+Xxf6d3CoZB5saTzH9jp21zcDcQNpnU89rLnjm/jFFt1N8y3a94Yw
	jPih3qX5xgA/OUpO7PViuc+BCxqoOTaSYIJ4vzzgqWv/F1JorFTzLpFn4TBW3fGg1o0lkL5QDka
	YpvtV3U
X-Received: by 2002:a05:6402:3253:b0:6a7:f5b1:2726 with SMTP id 4fb4d7f45d1cf-6a99ccc2f32mr65130a12.8.1788950750705;
        Wed, 09 Sep 2026 03:45:50 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.32.60])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a7e6c20c0fsm6886762a12.30.2026.09.09.03.45.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2026 03:45:49 -0700 (PDT)
Message-ID: <eab4c6be-e3dc-458d-8011-304a98f2354b@linaro.org>
Date: Wed, 9 Sep 2026 11:45:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
 Guru Das Srinagesh <linux@gurudas.dev>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
 Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <0wqEOKsKQUG-cPJyVkrWjcUUrp4POMvOxwKLbIaM_HQ9goiCr0D4llW4AHLrRfqjnLWyFVvpWNGbwqu6DNBM7w==@protonmail.internalid>
 <20260907-glymur_camss-v2-2-75f7982dc983@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260907-glymur_camss-v2-2-75f7982dc983@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_034553_973353_D142E45D 
X-CRM114-Status: UNSURE (   6.98  )
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

On 07/09/2026 09:13, Nihal Kumar Gupta wrote:
> X1E80100 supports both the legacy CSIPHY resources and the new PHY API;
> Glymur uses only the new PHY API via standalone phy@ child nodes,
> so per-CSIPHY clocks, interrupts and supplies are absent here.
> 
> X1E80100 has four CSIPHY instances while Glymur has three
> (CSIPHY0, CSIPHY1, CSIPHY4), expressed entirely in DT.
> 
> Co-developed-by: Vikram Sharma <vikram.sharma@oss.qualcomm.com>
> Signed-off-by: Vikram Sharma <vikram.sharma@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

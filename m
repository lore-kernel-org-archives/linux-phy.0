Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD92B606A88F
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 12:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I9uNXhQr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=WE2h+vfu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ofqXEPgYKYSi1ZBNBZNDlokpp+e7cvH9NYmAXuSLkwc=; b=I9uNXhQrNrvy5fYhqBxAeHPzL1
	vPqoq9ZBVOoc7W60wiaAAKjy+VauTdLTlJ5nC63eQiblTfnNyGjHjIkRUFT0igwAVL+34v5315hnp
	VyEaAg54YkeBLKeEJGaKnwuMHOxrcrJlJK4nYSbjJY7Jv3gkN3MqMc5qEQf2EcsYqrVyuBCpDewau
	C3xM0SeSAizbz1nfwDNY+kRUYiyat+R99QxrhsBy41AuqzEmFObVo0+RD1nr9onmM2zdmnq/cw5ym
	xoA7ANAcrRQZJC8LnXB1zLp4YOFMb/TGLYOWSjw+5mJR3TzqeydYvMCXfBU4Jt4XngZONL2vt03PT
	2OUGj1Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSYyq-0000000HUT6-1qvy;
	Sun, 15 Nov 2026 12:05:08 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSYyo-0000000HUSU-0GEl
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 12:05:07 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a2d6d01ecbso16822495e9.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 04:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794744304; x=1795349104; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZX7ZEhQfl7zn0ja70UCAxY+bTQCiZDULfmlHtdn9utU=;
        b=WE2h+vfu29+/kUkv135sJ/yJxLwUm0HIAK7ACvlDP7iLQwjyqxDPRFs/T3U0SyXcIz
         s1VEig8BROSqaiZiNdfpQxB21mXK/p5uDCUUYyZJNSTPoBMwbSGn6sm882l5DbuWYu5X
         g9VgdnWCsEq0z14bKqD6Tkac2LapICrS9bfGl+nkLLJWLPjL1wgT+FDtnlVz3gYFgm7l
         bc6lWeEfbVWVQ5qp2SARTzApRdEmmImLysSbJ8+ibOUJQqbK8XlHeT1DTwKJ1dZ7ouDh
         7UGSZDQfzt4ZZmgHIbbLYTR7I5LXJkJgKTPA+JOBUo0UgYFG2c9za8axrrQmpa/P8vLq
         q1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794744304; x=1795349104;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZX7ZEhQfl7zn0ja70UCAxY+bTQCiZDULfmlHtdn9utU=;
        b=fx6ob5Tj67VL65yR19wI/4DINWKZCQkOtc+i/Eg8IzH/aZEVGZ2F3ZtTEDsLn+OmvE
         UYl0Xt+7QcTWOjazwIi+I3lMR+y2U/c5qASezcYEmbeeXugCf0Vd0+rbwYNfQD+Mol5h
         C9gIoQRi2Ca4wCCexGF7mBP4TauJZFV9G6gPsXH9vQ+QBkmqSZJj9xaVLlCbTsbgsIqX
         0xs+uaYOBOWNncHuQkG8T/d4ZrMOMHfAidLozUUrx95N1Jt/RwM7h88GVrKOvgBb9kj1
         a7TQDS1lq/hqWjTE+SKbIHkOe2emO9sm9a7IGLPNYR+kUihJkt5OWvT9lzC+lHgLisl+
         k7vg==
X-Gm-Message-State: APuU4Z/QTgjL8XClnbeglbvJdGvgldS1L1RurOlT0wlTWIiepmTb9emO
	WSwNZJF0R+Xaiyi5RcL7jFpssZqRduDwuqqc+ig1ZctJD1PP6NLmW/3lLSlenkEuvio=
X-Gm-Gg: AYBFou3C9RH8WykNwV65X3P3NQpagenLCqb88ckDu/v68dwepGPc3v0j4K5UU4WUjbT
	AfLW1UhsWdyL2D4705kPBMJZofZAeh/Fp7jkcOmjmo2b+r0JCgd/KcawqCJYILzHvc1SuOFP58L
	vKabuoHLiHGtxAOOoukRSqBouwznZQVsRiWeVcRGU3BTpUZ5uX7XJ07DK0UFE7Hrw95Sig9NtiO
	2c67DPaGS22cCUxn3b7ny6gvkdba9mXEu5XvkpReXnocLUa78PF6HuJ5kKqUCq2dDZr3AwjN/KE
	lTWz2kp1NV1NgIBG04HAXo4lxZhq9W7OfS7Qh7TKekUNejmq59GxEns2/N98BTqyR9OVPCCIFLM
	T9xmu7fllwjIMhjIOv/vcJAq1hvy/8RQFgzov63c4SHAeMfjXqblvl2WrNqbv3ZBtlcXBHkLYGD
	iia7zdLDpm87lLaziB4zzyrjwRiwsMIUm1lxJu8zLNRr3w5J4VWjAQXpfOhgv03ZCac5tR26BLt
	cOGOUf4fj+5AU6Wbqdo2xbgdyrYelTSQZsTciY5DV1FIhwIrDL+Y+noYw1Q8Agvufe3O0UiGtSB
	Wo6pj5K2pIoPy6DICzLagpRV0fRS2LB1qjB3P//fTqo=
X-Received: by 2002:a05:600c:698d:b0:4bb:5de1:e92c with SMTP id 5b1f17b1804b1-4bb5de1f262mr108419295e9.26.1794744304054;
        Sun, 15 Nov 2026 04:05:04 -0800 (PST)
Received: from [192.168.0.167] ([78.152.238.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb4e33ae5bsm267265565e9.3.2026.11.15.04.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 04:05:03 -0800 (PST)
Message-ID: <a4a3df2a-eb90-427f-8881-f857100779db@linaro.org>
Date: Sun, 15 Nov 2026 12:05:02 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_040506_148938_F194BD71 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/11/2026 11:29, Wenmeng Liu wrote:
> The SM8750 camera subsystem has six CSI2 D-PHY blocks. Describe them
> with a standalone "qcom,sm8750-csi2-phy" compatible, so the CAMSS
> binding can instantiate the CSIPHY nodes as separate phy devices.

C-PHY, D-PHY and combo mode ?

It would be nice to get an accurate description.

> Signed-off-by: Hangxiang Ma<hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Wenmeng Liu<wenmeng.liu@oss.qualcomm.com>

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

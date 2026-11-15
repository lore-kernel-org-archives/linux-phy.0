Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93724606A338
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yH0w/cEk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=ODMUxxoi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xWsF/INxjHQqY/kseDsmoEtG4oloGJyeBKwUALEKuEc=; b=yH0w/cEkBbGtfrGl/GLYDm7hvC
	aUsabRZQpbtTY1B/o1kzXxlSdoRcoFRbRTZ0CsxfTnr42QWl8B3Z8RtH1oSYQMgSWI2oYTCdX4+/u
	clKy043evaoZuRrd68ZmcF8kggmC2zp7M+/wPJSyCakOEcXQu8LP0FdGUKEvBBigE7v8ZDFU41sm/
	LKdNVcWP5aUJq9cCTqHmJSddfpdVaZfNnBQ+9Kfplz5pPTCGT8WD4bLY4DOtsQZ1HAMHur16TUqSr
	HHUqcBE++NlDxu2hYuNUwS+F4fFo8zWjWSMEjH4t9YK7PESD3QW/NThxmztxaV7cgejQ7269pcUGv
	tLsvANgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSZ8H-0000000HVBA-0mYU;
	Sun, 15 Nov 2026 12:14:53 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSZ8E-0000000HVAr-26HB
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 12:14:51 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4bb5b8ef642so13107625e9.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 04:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794744888; x=1795349688; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=uGgu6l3Ky8kvEE8GWOoo1yyQfvRZHOX/bqL3OvucLGQ=;
        b=ODMUxxoiHaFfqHvhAOx8RjtYNmC4IszlyDA6z08TZFjXMxmBo24W5shT03k1v62+I1
         +BYTG4Wl5Q4WgBEnYa5MlrDpICi6mg2oSk8xKEGtMG06pJyqHGKX5BxkVm+ScS8e+CuS
         cpWJBmokTNbsWyyl1EsJ4qpnUh72NYBbiFYqzcN1LtgpT6V+omgx3lmuZd7hjGfjIIjv
         PPc8IaC29ePmGj2dAOHnR6vhD34sCEnsEMpep/jNKwXCGrA3b28qScdL9B4zsIqsOP/u
         St5pVj3cUYExvqiEn+f1RFDjDNZAePnN863txnQphcSwnhOKOIQ3ZZcaks+I8EoGHZW4
         IcCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794744888; x=1795349688;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uGgu6l3Ky8kvEE8GWOoo1yyQfvRZHOX/bqL3OvucLGQ=;
        b=GDPuqqE/3any2YmV/ikuxwpqpIvcf4Ov/Oc80zOX8LOkC89BgdP4aoLpJc5kqBPQqS
         MpXDJQ3iwqQaMBCzZ5Ex/T518QlkbWue/4jH8t3FO0jFDPlcKFMagwGO0CeFDmdpP8vc
         VnToSSFrJ8piSCdoigQ/e+n5VH8Qnj0mFJGjh4sMy+EnadiqNWD4+366ACkJW9iDkspH
         iEnwzcd28YscVpPIWnzJGW9n32fT8X6XYchI3kYWcMMhidpc8P4Bl8cMaXlXPUAS5zcZ
         luIp5ihSSQJxXWscxzGESSyKCrZtLM+wjKT1N30R2ZhYYTGD5LNaE8jNYA1nPKAtWANG
         hwgQ==
X-Gm-Message-State: APuU4Z/sVoSJmeNJBbmzUb/goPtobofmjZ2/+twfrBsRQl6k+Jnzc6tL
	pIvnZ8M0bLfigEQv+ZjD22/s83wvcPca0sCzhefHDazHicw0rYZ0fLu+69Q2XT0BthU=
X-Gm-Gg: AYBFou1ahgNukQpkynhxeQ6B2WrbvkiYIi1mClvymvuz1itLpST5rzZGAiwpFxgYUxX
	C4KOwiNaZ8Qlv2TxL3pY2GrjsbC0RSw82+vluT15tcC3G0aNOAehJz6nO6ZLGMcpNDwCKwUyXd6
	fLRPqZJzODICjXkUJHTOXQDzkn3c7cgd7Op61JqJ//1v0UxeqzOVk8c0txJKvTl9vQRdQxM/wGB
	SQ10MgLbKzjx+iWvwA3+FEI61BECYjlRMGKNmqTsnB3gVCshhZ7GdceMdVvLbphtxwT//VXDqbn
	1j8rSo9JC1nStxrWG6Ff6cR0vcVM9OwHhGS5TOfIGgbyubgZIOgHg2hOZNt51v5i/KCVjSTzL/W
	3vc+LAAxC0dDHPfyuM7WWkfMztejDh+3bKKNFz1Szt8A8D1ZvC+n2wbRlDjoTAURskij1MQO6gt
	WqMMqBm5Q77YQBESKjiKpFOKXlW80s5J/lb5FJ9RPmBZVvV44xxdAe0lRWVFWG48idQqYIuw5ZN
	kbnU7FN0vZAHvW9JEB0QBNjTJJM6GJclJss2IPjJQI7GFljRh1NUSOS9yqv9AJEErPu1MbsPkfr
	ddCZjMdDD2fLgsGL2qM7IySsY6lGYh3WbKqkzo9bX30G
X-Received: by 2002:a05:600c:548e:b0:4bb:5c92:ce12 with SMTP id 5b1f17b1804b1-4bb5c92cedemr125712795e9.17.1794744888294;
        Sun, 15 Nov 2026 04:14:48 -0800 (PST)
Received: from [192.168.0.167] ([78.152.238.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49dc430fa15sm10124007f8f.13.2026.11.15.04.14.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 04:14:47 -0800 (PST)
Message-ID: <130fecb6-5372-44d9-8261-c3ac88248631@linaro.org>
Date: Sun, 15 Nov 2026 12:14:44 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/23] media: qcom: camss: csid: Add support for CSID
 980
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
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-10-8ff2a11835f6@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-10-8ff2a11835f6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_041450_577273_4AA1F712 
X-CRM114-Status: UNSURE (   6.14  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/11/2026 11:29, Wenmeng Liu wrote:
> +			for (k = 0; k < CAMSS_INIT_BUF_COUNT; k++) {
> +				__csid_addr_update(csid, i);
> +				__csid_reg_update(csid, i);
> +			}

Why does this run twice for the same index ?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

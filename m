Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9487CCA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 10:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHfUDOkgvGKyq67FZHDOA0MgvxOFxBXWcB6VMBmAe04=; b=oh18hIBdoNLt5B
	XFs7u0qmSgVdVlMW+SB3TtYVqaTrg+CvC0aEWdixsPNYmGfjRVucXwmpwytNBLvCuqKB5xYDPSbll
	lP2etIJtCcY5jgBq0bsROpL3uL7jJhNXRmKBSQZfiix0Ko+BZr2Z5BO8chZtRw4ZlTj+sorQAA1Gl
	2xpUadonevEiaYoI3QLqRkAh/+pGlk9BHsXA8BmMmSQ+///SJHT0HtemSpgDz79bK1mCeIzcV9IM4
	pzuFVPA690aYKyysZLDA9FV0umDqjuGnvJkLar05fdFIbOUXk8cNEDDB/JYP0MjpvF5lCRdweegth
	tqcu60iMvy2BzlMVl2+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGz-0000000DOIB-1ENp;
	Sat, 03 Oct 2026 10:47:21 +0000
Received: from mail-ed2-x19.google.com ([2a00:1450:4864:33::19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGw-0000000DOGN-04sc
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 10:47:19 +0000
Received: by mail-ed2-x19.google.com with SMTP id 4fb4d7f45d1cf-6afa5b9150eso362796a12.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 03:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791024436; x=1791629236; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=p88yqRzBtcIHaHKazkQdIPEyby4tpYcGRuIGuiev+70=;
        b=yBX753/gPtSFPZnV0EqrLF1CIc0JRybHe/oJa5eCdvRjFY9yu4ht0pkXE0jJ3jZruD
         bBQoQJxjpOPhZUzaNay+2yXs8dDQSN7NDbfkIGIZRy2zM6CjydXsNcGv+F2wXYW+6A+1
         Jf0CvGMfDn69/v4qd93j/MDvf9oOLfe+7Ojr7JrG4SJkrM6Pl0afk6L2ArubDjJspkoq
         urL9oNkZ0vjvAJGxBfhfWDdyIjEFxW1uLRcxJ2vxwqQagVVFwyWUiPjidd1BMzHCfAtB
         Yvr8yMB2rGAbcADk5ld2Gmk9sthOJEdrWnezJ8k7Hw/o+Y9KK47mxnAPWfLfmeUWAGKT
         lLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791024436; x=1791629236;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p88yqRzBtcIHaHKazkQdIPEyby4tpYcGRuIGuiev+70=;
        b=AESz/gstwober7O7djgxLBPzguy8ramoX7SksWRIt6CkNfIQnQLNe9kl88QQveugC8
         eaOSDXeVWJN1VPTXswkziUsyKG/qMHOuvVN6FG42V8oVOZ7dRjYqK9RijRWqgYZRSIeJ
         s7w/qfdxaVi7wVXCX+djaSmnMhWjwjOy+7FtR8y9+lg4c94fjAZZpFUFcQc2rkzxyYOp
         WuT2fGAPYssgZIqnngbHC4ev7OrpMj3mRqMEKOPONR8pkd+QRm9S6bYPhO+rqaP59WbF
         5pUI65BdpSCdiUFq6YQBYF5Gv86cbSSfeiGug8Y90wrDrfTzuI/09qe4bJ+ws03zIs+r
         q8xw==
X-Forwarded-Encrypted: i=1; AKwUvBwoxOS3AOXAnfgidOcT0+EpsYGNJTGUioCFjEPyYNhpdMqLHREI9xYcoGH9b2KQOTIkNwCXiRGt0Rc=@lists.infradead.org
X-Gm-Message-State: AFuF++nymyqzeLd103Krs48GGrxI8J9Y3J1dWTFrrSrZwoeOjjBbcJWt
	d7PGqXtl39n6J3km1jlW4SV4HW23BDkwvUCl6CjgitNL0Fzvv/IppKeAq8sBx/iIMkE=
X-Gm-Gg: AYBFou0xc1ZfNRlxcFBJuUnxA6l+0KNwRX5R48in/DEMG5+hFl509pq81QiqXGqtKrO
	qxSXiIBXc1A/HlLGyNpIKjv2kAsuJS/PuiQ/3QhRTpZdLD4sTf3TMncnDxEbugJNlxPs7jFTFiu
	XsHPknv93V40tALjzMrtwPWB++Gw4VFwt95+1Q3hdCaM1s4uzMmLACAT2non/ODG6SqvFOguoyx
	hXNpEtpm0CwKbgxTz41tBFsVSwnCk2KO2pX4NMFkws8sj6cNuJuLnBKYeuSA9xika03igrlQVfK
	JQ3MDHQZN356EuE88YghRbVV8/6lTcGK2D1Ne3pqYVwoLNxsrBKEBzjgc/rL37zRnN0j0FnDRJf
	VyjL9VYlDugdIubrFjGh6rRhWFjyb+6TP6nU6F7kRPXzYeqqoCEvAd7R78zBRexRlykOXeevutb
	q1z1FIeOsbqMzxlXI6MX6oDM4CMA0ZA6gBww5gtatXosMUcYee05caqzRmkQ9lAzwykF6Pg1YE4
	1Q1hdeQcsyN
X-Received: by 2002:a17:907:7292:b0:c29:f0a4:a4f8 with SMTP id a640c23a62f3a-c2e4a6a1e60mr460884166b.0.1791024436000;
        Sat, 03 Oct 2026 03:47:16 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cf5f4e4sm192867866b.42.2026.10.03.03.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 03:47:15 -0700 (PDT)
Message-ID: <27eea513-dbab-46c6-a1bb-8d9817f39ae9@linaro.org>
Date: Sat, 3 Oct 2026 11:47:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add
 support for rk3576 variant
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
 <6HuMsILf2j8sOpHhyUAGmHbTeavDsa4sI8LzGK1bRrT-XdkhCbQBfa3ytLaMUPaXjfPyHA_3DGWmAaaAbS1tsw==@protonmail.internalid>
 <20260915-rk3576-dphy-v2-3-b56e68b54b8c@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260915-rk3576-dphy-v2-3-b56e68b54b8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_034718_069828_271F3411 
X-CRM114-Status: UNSURE (   7.84  )
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

On 15/09/2026 11:42, Amin Gattout wrote:
> The two RK3576 MIPI CSI-2 DPHYs can be supported using the existing
> phy-rockchip-inno-csidphy driver, but they need their own driver data:
> as on RK3588 the GRF control bits live in a dedicated CSI-DPHY GRF at
> offset 0x0, while each PHY instance only has an APB reset line, as on
> RK3568.
> 
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

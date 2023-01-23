Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65D84C54EED
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 12:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIedTaAm3JZecVyIQek4xT5Nt3D/T0QjMu1OPVjBxpA=; b=JQum/3uIMYQu3Y
	lqyQTmuoMg1zNMqTYww17D6CLLVpbiwvVUZ17s+iRJ+kWuXbyKeiT6hhnMRkVtT8zWmIQV1Qut6PE
	lP0KF5Bg2cWIDPDJ0Sja81X9snLsqoGnJl4jA+csios7Rg1QrxAMnZ3oRWDKTv9evmce42HI2d6gn
	osZbu32xEOBSHSBR7QVRqOrT5T1777pwU6YPw4FbIGbAEQHM1Md2aYgFjkfdBOb4X8X6VBMRx4NOk
	kSHkIKIs2P5M31OoZaCi9qz+xbo2/r4vAhhRI7ELktUI5cy91gU5cQ5uQZelK6kSjsput9YBgN6qn
	WU3EfHGC92T5Wv1fEFCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvdX-00H2Kf-QH; Mon, 23 Jan 2023 12:09:19 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvdV-00H2Ji-6O
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 12:09:18 +0000
Received: by mail-lf1-x12a.google.com with SMTP id w11so14135283lfu.11
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 04:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JtdbPPpjc+lx28u1inpjC8tVRtBtdkFrZzr/s7CL3PY=;
        b=ACfNot6L0Pw218eURjk9SmTS0Scf9EwrubmhuEKdKaqCwd+wyh+hMwhY5d3PUNVhe8
         cnIS8wmytuoXYpHSqdMWlMkxhI3ZyH91bc/Q6i3M0yBSlgMDl3ScaZVGLE1f7gz5h11I
         1pnyYwwNOqrU5d71MpsYpLa2NzjZ18me6qmLQwrRrmJ2CFsWP4z2zEKfWZPMFDEcTFS2
         S+iE9aZ/AvIJuwa4Imm8d7P92wdtYp7ZLvFd/MTDfWzItdaYI0kjekOeqRA4vJ8EgtpR
         s+ONP7aVvM2hMqFeBt05vApK0JjerbUnEg7CENA3un4jYHrxJTlzz8Ot0TR391xBbRgw
         pAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JtdbPPpjc+lx28u1inpjC8tVRtBtdkFrZzr/s7CL3PY=;
        b=mdffbGDN86MH9Wy7XxC7ZjkmdK0suLxeYSl2gSgLPahFzWVlQAkpKEN9fGA5NPs+DS
         iyePXfO+vDjUNPsaPe2AlWzGvitMesYdRcplJsMpFu2y/ry3lmrseVMmtvrV/QGZw2/T
         W2HdPn8mV9Yym6zfvkgZUa2m2fnoG9MQNnUe4Ufi5d5kP+LFm1mse2IG5n/1aV5NPjaq
         gGja44yodRjZCKtb1VUahzAKqxR69mnDbZQgEfO+MBvngGAQHR9dcaZYU5nipyzbrXSN
         KCgR4JM/0xGK4ObwpGtd4Kjq1izOjsj6ytFzCBK7g7Dy5q9DNz6OtdIpUZajIVvLAlcl
         Gwwg==
X-Gm-Message-State: AFqh2krv8MtT6JEwiqif9TrXoSugVma/jvOEYnK8mCIzTdSInhviLBkb
	VwnASDdzWw2J/E6lKQmzZNH3Og==
X-Google-Smtp-Source: AMrXdXv5gtv2B9DndvEPlMU7gIlEJOv+lFyjdYn94QbF0uqfgW3SYBTF+M6BUu9PMB72ZX4xbu2v9g==
X-Received: by 2002:ac2:5622:0:b0:4cc:9736:3551 with SMTP id b2-20020ac25622000000b004cc97363551mr5538071lff.31.1674475754288;
        Mon, 23 Jan 2023 04:09:14 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j22-20020ac253b6000000b004cc8a07c6e0sm4755764lfh.120.2023.01.23.04.09.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 04:09:13 -0800 (PST)
Message-ID: <86012074-5080-4a90-9a46-f87f3fc1f548@linaro.org>
Date: Mon, 23 Jan 2023 14:09:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
 <CPR2LS3SJQ3I.Z7UY505COG3@otso>
 <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
 <CPX2VVT5EUDV.2LH6VI2586F02@otso> <Y85WqDrGXAXp7gS/@hovoldconsulting.com>
 <a18359f8-6495-dbea-2323-8ab73bbfc472@linaro.org>
 <Y854Iz7gG6/APILo@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y854Iz7gG6/APILo@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_040917_296838_1743AB66 
X-CRM114-Status: GOOD (  11.96  )
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

On 23/01/2023 14:05, Johan Hovold wrote:
> On Mon, Jan 23, 2023 at 01:15:52PM +0200, Dmitry Baryshkov wrote:
>> On 23/01/2023 11:43, Johan Hovold wrote:
> 
>>> We'll convert the older platforms over to use the new binding scheme
>>> soon and then we'd need this anyway. And if it turns out later that this
>>> was all bogus, at least we only need to fix the driver (and not worry
>>> about dts backward compatibility as we had to with the old style
>>> bindings).
>>
>> As you mentioned this. Do you have plans to work on this conversion? If
>> not, I'll probably take a look during next development window.
> 
> Yes, I was planning on looking at this after Luca's series is merged. I
> have some higher prio stuff to get out the door these next couple of
> weeks first, though.

Ack, I'll sync with you then, let's see who has spare time for that.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

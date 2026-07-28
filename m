Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38250C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcV0WA7C5zORYRfxyhmWH06rh714S0jPgxkHo+LJ3mw=; b=z8UzOEkeFkaRZk
	ZqWH8MR+C0jPBQGx7Z34Rm9uqfL7fC8m1YRo4XCipzgR0srZtxweaYMJfRfrG7cTAlMIl2usfIkuJ
	wpapPE6L+OfVkvrCmx4rT0DT1xT3Iz5owPlAwyRHPaq+kk2MI8Ww7T+k/b/w0IFlm8qgOkuck4V4H
	5Vogruni+tAs9cnLWP4mY7LSbsN2H6QDjd0Dbylknidn7Lk8X1giKhXiRDpIT/D/X5bO/Vnkthw2F
	qoVNyUbydM7ocopmMeGwofiBRq7+BxoFDcMY6FkEen3bYf1RWat+LeHB4ySrybjEfFAWB5lU9lnfM
	7vW4+wxuofnD/KEhoAtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woecy-00000004uSJ-3B4Q;
	Tue, 28 Jul 2026 10:01:36 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woecw-00000004uRM-1cfd
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:01:35 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-69fec980a30so2401435a12.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785232892; x=1785837692; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=AEeoUs3PfQSMgYTm929Uz2Dor8kEgnImRfKTABiu/ws=;
        b=RzeWOsyKLkcCebno1l1Fd9AP+DyZFeq27kirU3zH31a1Uv5N6BDaoY1pGEBpMpdtao
         /XLu/tCv+1o2fUQ6E4GiQO9nzntO/72siOrwrl+kO6biTwJOc1awWi1J9/A8ykiFavIn
         0IqeDzn9DB8miPXn1eYT15BJdP7t5HFUZtmmwsJJmaHp96tg+/AivfFGmCCPVJ91Oqf3
         vZBRVQdQz2Dw9BFJEgbdd1lp/eTmWcQE+/hmKL+5ixic6RDFnVG3OCI0elWMWBJgVagw
         cfv/MWV2A2a8COnFD8Rix4baek0w+RMzfM2bXHE6oe4e3k84bpPoq033JYXyPiYnCjgP
         q08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785232892; x=1785837692;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AEeoUs3PfQSMgYTm929Uz2Dor8kEgnImRfKTABiu/ws=;
        b=WLPaNhh0fd3VIbj3kca0euaGlFkEuffdUqkQo2xOl8isp1WsOhJJcc8LVt5eTe2KPb
         Vh3wxJvdi1QYT/8zqcuZFCDKheMG6/pziIahwDarDiOzmWQFSJ69ycGTCW3qDJ6Tc671
         +hazeHWKoLiHDEyQPo2jGQlbkRNGEHKWQpBxRlatSXNhxJYJdAivKJ9WVJPOQlNyG6AF
         JwEnrbK3HF7VA9EtF7av3/xJiSaPmHnKj5QYmXdE4og6TFg3txDxH4yT4Mq0hTm5rVbJ
         M8Yt+OdfgAUXLcTuFq86IxCYp88C4KKWUcBbjyhRCyycsu1G4BHAwMuzRc97uVwNFEQw
         OdMA==
X-Forwarded-Encrypted: i=1; AHgh+Rro3/2l2BBgEVVVNFg34LeUN9Vmg+7wlfFey7L+ox6o8DS/820uKSIGhNF5hOwWiiDmNOiU/PWQjSw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzl+EhjM+Z7m1ZajeQ5G3amn0xpdAzoC5/ibnVf20NhY8aFYZi+
	bBszVa95Zi62BRvC5gdIPeddlTqo90ffk1bNdHi4KlXPfF3QcAZnpEkaefq6+1basvQ=
X-Gm-Gg: AR+sD112nA95oHeV0Vmyl9k30Yp7E/0sJFknDgbO9OIv4ywA+Fc2diNAU//ZFE1Gwgf
	itIQ/sFLThBVrDm4Yx00hS+XgFPYzllxPneDcbkEHmYfEEjH9sluA8t5GRp65FK/CxoxRh4MNcq
	TzRYg/PoGeY8ffZgTtVJGXd9USdoSc4L4y6TfCAhS7MynAMeOqTfyuMJ6D/Zg8ZvrfPhWpwRZtv
	9YPVPf/w5C2Ry7+cmL4YwfPLGFMVNa4jhJHhSleV759saGjS0UtjU8dSym0htpOy2q4nEOr46IG
	rfzgtvnNcklIxBCyL1hKHs+7YZ8QUy8iEV1Gl/e8QdQIXDNrwsGsZ7WT7/Nlw8UPgUzplabO18D
	OhCzRvbffpV+tFlj0b/ChtftCDgBDlIO4BfIKkycYOQ/X2hQPKfRWr/ID9WQlyEqmaD9h0WV270
	pZ5jN/UwUXgktfuA==
X-Received: by 2002:a05:6402:5114:b0:6a0:33f6:13c2 with SMTP id 4fb4d7f45d1cf-6a034a5efc0mr809800a12.24.1785232892204;
        Tue, 28 Jul 2026 03:01:32 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69fb50bd467sm3697785a12.1.2026.07.28.03.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 03:01:31 -0700 (PDT)
Message-ID: <328f2c30-b43e-4ae4-b926-7375f5edd5a5@linaro.org>
Date: Tue, 28 Jul 2026 11:01:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/5] phy: core: Add phy_get_by_of_node()
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org,
 media-ci@linuxtv.org, linux-phy@lists.infradead.org,
 neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-1-ae811e2f0799@linaro.org>
 <20260728094619.830C91F00A3A@smtp.kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260728094619.830C91F00A3A@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_030134_506164_BAA7964D 
X-CRM114-Status: UNSURE (   6.95  )
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

On 28/07/2026 10:46, sashiko-bot@kernel.org wrote:
> [Severity: High]
> If a caller uses the new phy_get_by_of_node() API on a device node compatible
> with "usb-nop-xceiv", will it bypass this check?

No it won't but, it is not _supposed_ to.

Literally just doing functional decomposition here. If someone misuses 
that decomp, that's on them, not part of this patch.

I don't see much point in moving that specific workaround into a 
lower-level boiler-plate but, its up to the PHY maintainers to decide.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

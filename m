Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADDEF46127
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 14:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5pYbMWwfL+MsSGMPzjkwBIAzvUCNGIZb+bZNtCRMZg=; b=IQn3WNhLusroh+
	KDbx6ydJ3labZ1oBkr+qQwyiJ0YPepte3msavbem/3iHlCyUgg8qwxAgS5XVZn4qDCPPKdbuQxKoI
	QV1a92MID9iK8XiuFBpvPjVpK0m0RSqAefJgAnPJCAjbKBsTonJIUkj3GQU66mw/j9Cvl+9qRyG2R
	yt2DSdUlJqX7YzfmVYwrcU0z2LqY9pfkJZGv1nOgIv0H0FMing6rkstnnpojBQs6KiqQbRaKEqaBi
	zjs/fTYMKmrikSIACXIqB8ScqMpHgOGfLk2Aa6cp/JjvxE7If0PPen1+zngDN7BfJw0pB/EXv9VM/
	DBh9ZaQtQjBYvDZITx/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gIA-0000000Gw0o-3Rbt;
	Mon, 23 Mar 2026 14:30:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gI9-0000000Gw0L-0R5x
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Mar 2026 14:30:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UWptjvE5w87hMNihQLfqZsM0Pn6ChnKPjJO5RmlXBPI=; b=DIYoYhr9okyACA1lr2EWaUIyI6
	STXFfbcFd4g/nO6D7jFVlwvpFukUEO1mMjRy6kKvcg2Z28d9/xNE2XT/U6+Senk+imnMRniJLMObZ
	RLQQmqgbyukEssimjuCVz+SlWHdjCLto0Lbx41YPP4J7KoqqCjde0/f57uu9Parw6IIjoLGd4mv5R
	CCcODZxugXE4xBx/ikAY8Zvd9wFCBduCCK+XeCTjmBcQEBBqZiu6gBfkGqypahJGzuzbch0BthL87
	Xe5IBtySPY5Cfz6/r/S8BR0la6xRLAfdWJhH/jEwmpbGHecevPcRkDUXbjCvZNvEXHN35ZDiTWf60
	keuRoGhQ==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gI5-00000001jiD-1hzc
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 14:30:04 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4852e9ca034so27209545e9.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774276199; x=1774880999; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UWptjvE5w87hMNihQLfqZsM0Pn6ChnKPjJO5RmlXBPI=;
        b=fCetctBPO1qKmTYltUb9YTE64xEYW2CtwDcb9MmsTRqLUBoGboAM8wWBQ/5sCGbRkT
         OJPtHreoi2hF31d1o4v27/UBARP0FXUwwOdcG3IpPMGP2tGpYAnXRH2Ns125y5nub2Kl
         yfTyIp62tHHQdzpCnHxnvYtokqmGyqN+N3utzAcrvBibRBY/NIR5xh2hBR5C3DqiusiB
         avGZ9LBMivlRHbMRVSBJHqddjRaRciiTalibqwWvRImFbQltxPi0cu5Ohm/ElVXQ+gq9
         0ZfBAN/1FLa9Y368ZbE8CLyEJKem9GMXkLryoxVW/TVI9nEsFX8JvhG+iEoSHz41K1Gn
         SkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774276199; x=1774880999;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UWptjvE5w87hMNihQLfqZsM0Pn6ChnKPjJO5RmlXBPI=;
        b=dUw9oKe4/Gc5ADv1SYJiVoypclSCXhXtPWHbl3Y/+uH2fxSLp9L4ut1nMQDSn4DCtX
         gCRcb7zdPthagF23oHPQFPMZqgq9afybvPhkK0CFV2iscu9z+KQJ/DSMY3r6FUK2lAMm
         K3IKzDaeVsgeqp3Th1JM5xtbib/pvgYhWH+CiOjkqHnBHkoxSKLBgDTA5ZcxCd2yyrcD
         S+k4Li3d0iR9gqv4hRT6AYGIOHe1E/bRS9r1vmhJnTYwsUTjHySVOU7k9rHABUwikf/k
         k+fUzzkSEVtqrPUZvh9534HrJAyVQQrEEZRc/OD2I2Kc6VKzkDreKbu4kcu+w9YT1VRq
         eBiA==
X-Forwarded-Encrypted: i=1; AJvYcCUVbmar1jGLqCqs6xeVjbxhUGBA3nLW0+m1m/4BLOMnPySuZTNJFmHi05KA/QblYqq6D3FhXW3xdw0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzu0vDAh7fAVW1pocZ0kbrUrP9HRG55WZnWBHrxdV4hx5JydYuP
	wO5uwc2SMAZWa5/nxLqrQ6AsvHvrfzikE2PMgXZmqpFii3j3tO291Wvhanhv+0PdEJY=
X-Gm-Gg: ATEYQzz8JKni+16K6NqMTg7kt4wGdzLEIQXKh97s+VRA50d8/XqmVukt+b3bAsDY11n
	gcrkmtC5FUURjWPLMicVcIMGqu3vPntsQPcLvw+EP40j97DEJ71dZQB2RnfZ2H6jml1LutRk2mu
	Mhp6/ntrikUJ0sVOZcqfWV5+XcvcQheDiglNu7G/3zpjgeRCLSTh1sw7Qa9J6EtT9k0ylHqHV9r
	z9Pr8b1HTmn/ev1cu+SGhoNjSs2wBaEFQDPy1vFzPjnlMG/HpmmbZDvapYPPBpITkqbdUTR86Us
	p5nfLRoJLSspovG+RXtlWbV8ZUMpTFbuYw9Jh1ycX+ixuaJ+CSTOP1R+MUeIndDgnDKVUdvd+Ta
	LkM7x11EdhkUvOEEG1IHZMouC/YXJztwO9NlPwf4hBgY/BoPw0WLNzUeLTLCzL6vAhernpVRpOl
	xHjKBY9oKc4pVSyOwLV76nEKa+DupIRk4NtKKG
X-Received: by 2002:a05:600c:698e:b0:486:f4d2:eac6 with SMTP id 5b1f17b1804b1-486fedd80c9mr156967985e9.13.1774276198953;
        Mon, 23 Mar 2026 07:29:58 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.102.198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fe967c64sm280452265e9.2.2026.03.23.07.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2026 07:29:58 -0700 (PDT)
Message-ID: <8acb3888-0ef8-440a-a680-14478bba3ed1@linaro.org>
Date: Mon, 23 Mar 2026 14:29:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <3VqSGUgMUKaCja5WYOrOP8nJ_mw_eDPdItA8d1CvqUg4ASPS5IUc_aT2E-XIo0YmnYo8QltXVw8_6NDxtdqGGw==@protonmail.internalid>
 <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
 <edf766b8-2664-4dac-b626-551807b3e5ef@kernel.org>
 <4afceefe-8053-4c10-8595-39dab9379aab@oss.qualcomm.com>
 <4b1b5b79-df37-499e-99c4-1a965a9b2455@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <4b1b5b79-df37-499e-99c4-1a965a9b2455@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_143002_218456_0D15A697 
X-CRM114-Status: UNSURE (   9.96  )
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

On 23/03/2026 14:22, Konrad Dybcio wrote:
>> Sure, FYI: Dmitry, Konrad.
> I'll admit I haven't yet read up on all of the background discussions that you
> guys had on LKML, but*if* we're going to put the PHY under camss, the GDSC and
> CPAS_AHB/CAMNOC_AXI_RT references should be unnecessary, given they're not
> related strictly to this PHY itself, rather it sitting in a specific corner of
> the subsystem that needs them to be active (see related:
> https://lore.kernel.org/linux-arm-msm/cb2430f2-8601-4c72- 
> af6b-10f1ff16c188@oss.qualcomm.com/
> )

That's fair comment with the PHYs inside of the CAMSS block. Obviously 
if its outside of the block we need the full gamut of clocks defined.

..

Yeah I think I'm happy enough to drop these predicated on sub-nodes.

> For the other names, I*think* we won't need to rely on them (i.e. only operate
> the resources through PHY APIs from the V4L2 driver) and can come up with new
> ones. And hence I think we can turn "csiphy" to "core" and "csiphy_timer" to
> "timer" (because we really don't need to repeat the csiphy_ prefix)

Works for me.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E72606A31D
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4gSGrA6l;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=uYMAvwUa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X6kbPV6DbOV5d+mVmF9SKjLwA1XBdVxYuvAKjZzBONU=; b=4gSGrA6lJ/G6h8J0w5JLAdQHeg
	4CRC+wU2PFalKJLzq6ZccLJ0wBx/8/7Wd5iKhNAUWhUPSNp1LJ6Jip9ySaejHub23dVfneODHCKjr
	6XEb2j4mbJdRIuSle+YUd0I+f6/l7/AfAZWoOT1vC7yZ5Oct+mvi3bGP1VawA6nflmD4iMs72hFj4
	Ak/9AMOucxUFetFQQcPwHdCxXcqxaMOjkon2vuW/mSlA0cP79zYohZT58aoxxR+xw9JdsIboAMI6H
	Eibr1R78ii7QFOMnoozm0tBUlDUIS7fx40bsi9bjTR73Jr3VlpY7FchgLpyDhyD4HSal7AszqFTHe
	LdTkiF7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5jV-00000007QMK-0IXH;
	Wed, 28 Oct 2026 15:38:33 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5jS-00000007QKJ-2eRG
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:38:32 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c315869241fso177427266b.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793201908; x=1793806708; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=v2xPMZsBlMMHkm+gRncrQAOKCD6wJbIFyj55a8+d/IY=;
        b=uYMAvwUamQP/5qh0mqwmbFBLS2PmxP68mYc0DioPotN4J2g91nlnOZnUBNi36L54BT
         dTnBKeOfVhCBLPaMMsY1mxATrjbOGHhMLkH2jLXa9EYEiThlnuwQwQloW9iZqeP+T5Th
         GNxiAPBwayHBENLu37JrmaQ5nlJHw0HsHYUdrdemZSd0PXM9//zvQBiy5mMChme9LYT5
         MmacWaO83kGtPqp4tN1aqDXH8nPZarAafxjny2Z1Pu6eVjFcDUvU/Q7G3t6wXrazNb3m
         0533wSQdoHoClNSZn6Yx8qIOAfh94KpPRRqjSnW5OcaaAsx/ZQMIrza4rahJZ3HSb2tG
         XLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201908; x=1793806708;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=v2xPMZsBlMMHkm+gRncrQAOKCD6wJbIFyj55a8+d/IY=;
        b=tsV9W3CkgOmavLNp0NBDWhMxpQu7L6oa0VFTdCpkvglJsDZn5uSREQajU6Qct6SNJn
         v3Us7Oc/JNCR49+Cwvnt1XvmBADr47+hz6k5HdPE0Lty6YGce3nudXUkl14EWM4iMpTR
         ZWMGYizfCAw2Asxka+4P129zDmTrpUjAaSKMIYoYkcR1VSNLwrDv3bEKp2OsFqk6i3JT
         EtrXMBykZUkzjqRRCK7G790YC26Ssd9ZuSISBHjKy0ce4kOFFth5mYP5tZQsLKrd9lK3
         KEbkD3ncMlKAMPPQkq8OkWPioru+gjVRiBI7snvHCq8aMh2GU71WQL4R6MZq3k+z/cFR
         ACZQ==
X-Gm-Message-State: AFq9FYLdqdtZKZYgwv9wRBCyg0E54xF8AWe0mG3f+eKrtXdlGK0a/CBD
	k+k+L1aHOuLFPwMz5x5vR+58VeIGbc+7Y5MsnT0tEd/p2MvU6sD6lPPlvcY/ysEz6yYOtjlMw8h
	oPa58
X-Gm-Gg: AYBFou2xFHgf2Fu3V9zp8Xcs8a8uhdCgaZhJBDlqWsjp7OBFJ8XqzzUURWtUtmVZ20E
	50N/Yc8z7jqDMRMyBMsGB0/hoWT/1/f+6EQu/FlId5aQT2AwBiJ1ngJlaiVDtY0pS0hGb3O+ozs
	OIHpZXFbl3X+Co5WrTIZqndywY7ij5qtNlGFkGJIN8ycQM7f7SYOCAKK4P/Fuq3x/c8xuIvWuNv
	xL2Ly/+/7TUErlzFf2rejRhn79UkujRqSWBoOCAxW+FRd5mihAXACJpJVbZ3q4jMCymm1BiQHEF
	xIedofjYUNB31bCYsj0GW0TxbWS1FYoeuSgMQ64MoWlmMjAq0GriFgy1L1ngjOOxMjr/MK+7ZJN
	/8ZLemkoN5Q5HRq8kzivFnDUoIl0BGMXzIkXGlHySByL8II8Eic41OLYRZ2JAZ5/psxVGBQsEu/
	B/XKgC1b07kcX9hIUrEHY8pYB6kaBJ03DV82bp4v4AEzNWKAMSjGAAWCVpXGeBpyJV1CP4eQfUo
	JzS54AfAgCeeW6vD7kenkSOj55wAsXUYYKUBhFh8Ql2ePANtzo6v4rgq12pXtpKyToWepYJvVIl
	zjKUg/7tgpE/ynRPWnZlVb/iP9vm7GCs8sxnGJ0zYE4j3RaHuLkXNk5rYSTRrZU=
X-Received: by 2002:a05:6000:41c9:b0:488:5d44:6680 with SMTP id ffacd0b85a97d-48e5d5a45cbmr6725057f8f.36.1793201403193;
        Wed, 28 Oct 2026 08:30:03 -0700 (PDT)
Received: from [192.168.0.167] ([109.79.76.222])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebc3a1csm29519048f8f.16.2026.10.28.08.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 08:30:02 -0700 (PDT)
Message-ID: <577e81ea-56d9-4d94-b5e6-364f728c1493@linaro.org>
Date: Wed, 28 Oct 2026 15:29:56 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 04/15] media: qcom: camss: Add addr_update hooks and
 guard CSID reg_update
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-4-95f250b18612@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <20261028-kaanapali-camss-v23-4-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_083830_710048_31B58B16 
X-CRM114-Status: GOOD (  10.90  )
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

On 28/10/2026 15:20, Hangxiang Ma wrote:
>  From CSID 680 on, CAMIF was moved into the CSID and the CSID became
> responsible for issuing RUP commands. Starting with CSID 980, RUP and
> AUP are issued separately, and each command must have its corresponding
> SET bit asserted in RUP_AUP_CMD; otherwise, the hardware ignores it.
> 
> CSID 980 and newer require a specific stream-on sequence. After the RX
> is configured and before the RDI path is enabled, the CSID must first
> issue an AUP and then a RUP. A RUP issued before that point would leave
> the VFE without a BUF_DONE event. Therefore, once addr_update is set,
> the VFE must skip the initial RUP during stream-on.
> 
> Add addr_update hooks and camss_addr_update, and make camss_reg_update
> handle a missing callback safely. The VFE keeps issuing its initial RUP
> during stream-on and behavior is unchanged if nullify addr_update. The
> skip takes effect once a generation that sets addr_update is enabled.
> 
> Signed-off-by: Hangxiang Ma<hangxiang.ma@oss.qualcomm.com>

I think we should probably serialise reg_update() and addr_update() with 
the completion in the ISR but, I also think that can be done in a later 
series.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

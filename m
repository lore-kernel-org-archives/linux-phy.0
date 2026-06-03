Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A6FECD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 12:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0nvnv+Vhi9XWMIBAwUG/+170BSDp79CeGVTuoEXswc=; b=XXcvBooc/Fp4oo
	B+sXO0jgHvUmjBbqyy5zvMiF8VXwkbFA+hKEHFOY7IO6wfzxGcVb0jsOvh2C+9V2cbBjaRdo9Kx1O
	xFOLireKFv/rWB9z+IQGc9U6yZFMez9uO+8SVgM4i7rXZcSpNIgpzpGGoc5qu+do2IwwNM8au/5Hg
	ogV/sgYZ5NgpTx8tyamDTNtRrt6z3WvjEi8CCknuONamYFP7VgqBZV1l6j3Hy3zmS2ewgkrVYHwVA
	NC8dte095OkAbfxwJLNCPn/DN9R1hWXrwZA4zqNOQzoUXUXWlGtiaQLAq5I00PXtEvY0HhC8eZm7x
	TNIqZpBSIxN6+lj/MFQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUkby-0000000F3qH-17KV;
	Wed, 03 Jun 2026 12:22:18 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUkbw-0000000F3pW-07BL
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 12:22:17 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-68d234218bcso419596a12.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 05:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780489334; x=1781094134; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LR+NPsTQNV2+0FxZsktMoZucngyJOnTRFU/6OwaVMIY=;
        b=bp+Wmy0QKViLJAIPgCiZFR+qiNXnHnvchq/gUhGOuXSSCARNtW0gWQFcAysPoRMI7c
         Bw0etAQhZnhvjp5koyrY5itSKH6FNrFl3iBXCyLRF/zoTyG81IYDVCS/iQGiSPcRPLHt
         Im7qTgoYqX4msj532yb4uo0pa8JKro1zBKojtK4XfU2ntUZopjN5C8r9C+QIq3T8cEsx
         nhhdezy/OM3vBgJbFAMwcUD2sCHnI3iU/pqeLbiOpKfXs5XRr9WjeZuvgPcXmGVeOg9U
         eLa2Zu5jSCWApmWYuflIbJebT8ebE0+1WVI7fa8TrwrHObLhJywod6c8cGSK3k65hNyZ
         8Zjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780489334; x=1781094134;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LR+NPsTQNV2+0FxZsktMoZucngyJOnTRFU/6OwaVMIY=;
        b=FFJWg/zz5TPEW62UzPcD4d8hy1R1GJFvuMGATzISSnqyBhWWqMK6jjbLM5W6/4HVMc
         b2S4GnxCa3AYNcbf8RjUcCskpfNFsEsPMDUg+hcYaCLLd1hK1v6EkW9ql0LJ4P+w/cHa
         KhMA2rq7Pj8QXYDpYtvO+i8+69UvNMvRfqXPrXvKxJxR5rHbJDC+yh7kq7P475f97Al9
         BFacEnKYTER5/R93+DR4CoQ34Ce9F9DGLy77Xrc3/qcDw7h6IPzvBNt2KifcUT8TTGUT
         R1xquwAGVQRVXK/SvR9EvZXWDfeLdvVy9F/IrAc48sWEZwKiqdA0B7xhkYj7LpQM9a0K
         nSbg==
X-Forwarded-Encrypted: i=1; AFNElJ/3NfW/6fjE/BV8QYT5AKGCaDVikDE7Itve5Cewnrhbb9pt8Or7Wite7CL/gSujeaj7HAuw/9KfpCI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUnutSvvAua9e5xQ6OeUgMwSyy2hAkIOcK5lrx3yJznxgpWA/0
	isxtsY1TAedcREk1LRQ++gh/+xoyuYFJWjJpnamUyhagtgIEKkw4ILBkIZCOgyaSCK0=
X-Gm-Gg: Acq92OFez7t4GqrTVy8ELO7iqY8Bfk3vdcG0Fn/kugLT8zrkHZX6LS6PtL2tJPbYOGI
	Ho+lXue/PJibzavYCjUfu/HO6sRPyonriKtJKTOe79/XhBfmKlCXIGcEDBTUixDbJ1+xkaDnTAb
	5w+RY7E757asmlpQktKgTBdma73hmHU1o7huYUh+oxTXzAS7ufVzmVEYnz6eee3mG2Nm1m0xM0X
	J5sNdwMZIEUTwV0liEygn8zo0vuHSrwRWZb7/mquio33VtxP99yecNq4Bb40eooH77PRMrv8UbJ
	vmU47ND74Td3y2xDaFmJQvgzQx4NAH+fm/Jbdzs9e23ZWZ629ZL28d3i2ylc8/KFu0+TJwwfpVQ
	X2qNkkmrmK7zRFQVmJot/PI4IOJQvsTy40zkFIXFxtY2YCH/KeVRc0d/H9rwlryJvi9UWpkBbm6
	E16QD4wwQqJq93Y7hRHSYshL09aafNm7Sn+vYaI3v+fJpo8g==
X-Received: by 2002:a05:6402:348e:b0:689:816a:5367 with SMTP id 4fb4d7f45d1cf-68e6be91165mr1508878a12.0.1780489333977;
        Wed, 03 Jun 2026 05:22:13 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.42.178])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65851786sm1064884a12.17.2026.06.03.05.22.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 05:22:12 -0700 (PDT)
Message-ID: <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
Date: Wed, 3 Jun 2026 13:22:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_052216_083638_02B82BAC 
X-CRM114-Status: UNSURE (   6.91  )
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

On 03/06/2026 13:10, Dmitry Baryshkov wrote:
>> Documentation shows clock lane at lane 7.
>>
>> Truthfully it makes no sense that the clock lane would genuinely be locked
>> to lane 7 but the documentation does seem to suggest it.
>>
>> Yes in fact I agree. clock-lanes can be reintroduced if someone can show
>> hardware that supports/depends on it.
> Konrad and I checked, Hamoa supports using other lanes as a clock lane.

Are you sure about that ?

ipcat I thought designated lane 7 specifically as clk-lane i.e. named it 
CLK_LN of some description.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

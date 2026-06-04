Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E57FCCD6E60
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 00:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXZxdKeCt7cFLBYLlJBKWhwkgaBotoUKOlZAd/NtNm0=; b=X5LHudeSRyAi+3
	Y6sTjozAqa+4NrcaSnZwIaO+1OY08mc8Rj1WWwQUNVh5H08izChTME+tIt7e6myfJDJ/dhh9tm0rO
	31ont6BkG884ynZzbdApEkwvsMQBO3Yqg5PnVlKRwAMEA36ASCPbpxdddZ+z2/W2GD6YEX6a2+LDs
	1Fcis+fcfh+zqeFnYdCJr9Bogp0dmeMhdOBF1T7LBdj06RuJwljbDsCw43oqmBDVofIRP2RxUrMyt
	tirhAdFB4ha0her0g5WS1QWtIhKyAJDUycYClV0V/aJL0wgdaHSb9zk4FpEwiA+Y7sa8xXrmOSBZz
	Nhrt1LukLPTNZebnRNoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUvcD-0000000FxOv-2QNy;
	Thu, 04 Jun 2026 00:07:17 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUvcB-0000000FxOX-0ngg
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 00:07:16 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5aa4a98cf0aso10610e87.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 17:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780531633; x=1781136433; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WKFOB3y1f0a/8eMDecdjOklsltsKxIJ4YPYh7+XMfw=;
        b=no8uvJFo0TxazjOOLpEIp7w9iARS/IT3uzXEAJreJXxIV8eWdtbsXoLttJse4jl+Nx
         Kfl0uMvWsmzRgXnsFxQ0QtE+HXuum5tld3eCPN50/BEXxioWCzwlolJFG3LhyOZ9E1H+
         Os9eZ6s7gGP/FdOa7A6CRgAX7ARlm6Y10qVba3m79Db2RMBRkA2czXfPd3er2LF1XlCi
         V7562PUDPmx4YzlWwKBpK1uQ3VfVsHTcc3qO1WzybqclKC7adb6XYZR73FDGiM7P/SWc
         jeN52JOhu4SGxvI1gOef4RK8VTLgC40+q2RxK6ieIIZk1hO5amskIia3BKASq/kIqESq
         UcCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780531633; x=1781136433;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9WKFOB3y1f0a/8eMDecdjOklsltsKxIJ4YPYh7+XMfw=;
        b=Qg4HUAH+s6B0Oi0VhoZpoawGRvEUNOnbWzTeuKn6YNJ59+EVrOawF42tufxMRVagPX
         DV/5JLphwxzHFn3jhmb/VnyMfz/hNNkHb9WA81a0wiXoYk2kswuQLD3JFkmCxHd/PaTN
         Q2J2Af8s6Wb3kqKh+gmDFY20necDFeXnZklZzxy4NykYYpeZr/NKWKxXYBCBcJsxHVA2
         IDlEnoZSGy2/Kv0CEoiblDAzaUHE0pMmi1DlGxsM+UmixdrK29cGd6+0rzo/i1hqq5yg
         4yu6pZ3Qxfq0Er0SiJ4mcwyOS5OPIO+SI/XfvcKERp+m8S63ZGBjNHOxt9fzjra0gkay
         r8QA==
X-Forwarded-Encrypted: i=1; AFNElJ9GPhjTC+cFjVgk4XS+/7Qzvmw+lpEbcofdbi/nLITr6Sfk8/rMnMbVGXUXtEMZknKHzCHY+R/agOs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0me1jGXwtkqjD0W0185oGVxw7dPM44dWKIWKJFhbJIi6gOBvg
	CfDdSNVtQ+y1EOr4Q5jrpx0LHp7qsDvxatGQqrb7ba7HDL4Qnh0HooKQcKhPvxhKsTU=
X-Gm-Gg: Acq92OHRPnMIByrnGyjwTExn9i5kmmGay4KGIoNSBT0Lu1HoLNez57jFSSmoBHhSp0T
	iEDBE/efbjZ1MvTieAflcb02XEA27LOrsk0jWcDpQy22Z5LdEKIwJSjLoLg+JvX2RQWieIaipkC
	sHZWRIMW0o7ZzgI5nJiiiIr8xxsIlGRLjp9CIz0GwEBx3eM7vTaCT+SvmkumnPReuNq1WJ2kyme
	AGb9WcUCau9BdM186Ny1A1cs9C31OYe5xsw4XODv9nN2IIB2uY5hICAiU1j545/cE+TyfOiYzQx
	LVq7dVWCQTZ1jY1j/PGiQ4yWKOOgMAlp/bUbykZfCfyoxnBDM/olJJaWTMA/1H1C5+7aVNTTXbI
	7FKljR+ws5yZq7bln4qgO5o0UvJqPdhVAvOLL7+kYSsmmoTq3fZ/OxFIoyV81Dp3WdgdNEsY2C3
	lVTQKnUFqVXEyXmxQhu1OK/eJOQZ8ouIPrAHookcfPY9Ki2kVbHHIvenQr3CJj6hlza4qCwyy9t
	ufrN9QCRPnJi6LC
X-Received: by 2002:a05:651c:1594:b0:38a:325a:8a0b with SMTP id 38308e7fff4ca-396bf26804fmr522041fa.5.1780531632840;
        Wed, 03 Jun 2026 17:07:12 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2ed9e1sm12353711fa.38.2026.06.03.17.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 17:07:12 -0700 (PDT)
Message-ID: <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
Date: Thu, 4 Jun 2026 03:07:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_170715_291908_3D65CE33 
X-CRM114-Status: GOOD (  11.62  )
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

On 6/4/26 00:18, Bryan O'Donoghue wrote:
> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>> described as subnodes, then likely none of power domains are needed to be
>> repeatedly described in the children device nodes, since this information
>> can be obtained from the parent device by the driver.
>>
>> Technically 'power-domains' property can be safely removed, I believe.
> 
> The policy is to describe the power-domain dependency fully since DT
> describes hardware not software architecture.

It brings no contardiction to the statement I've given above, the needed
power domans will be properly described in the parent device, and there is no
sense to repeat the properties it again and again in every child subdevice.

> Also for a very practical reason a sub-devices can probe/run
> asynchronously of the parent device being active so in fact we do need
> to describe the PDs fully.

In opposite to the above this one is precisely a software centric argument,
which should be excluded from the consideration, as well it's not a big
deal to make a proper async initialization, removing excessive dt properties
is worth it.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

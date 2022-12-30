Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A81BFC3DA7C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Dec 2022 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sBjIf8MvrQ/s1r5KBlUjGhVWf/vpbg63trrUMVHPu0=; b=Wf/rEwy4xq9rZ1
	i1QQ+vqDRer9dtbfaXPhAiz1w96GiEhATIuQOXcluQtqWV1E27et4Qlzn0wEQcgMgbWQwei8cUjNg
	b5u7GoG0T5MNRlcrFZy4w8BP3loqeVYUIcY89HQaA8E4CG/mS6E5TuM9WAucLi4vvS0TFZBHyf1+u
	LBk6G0D/DESygmOUf1O8oNYo4P3TcJ8KzQtPNPP57RWQCybHh0SmKcMbte9hsh5pYydtA8kYQv5qL
	fom6kLGH+DBwGIno4uMf/w5ie/zVAO2f+XHGNgW2kXuDLLatVP42IZY0wQ0Kv2Ccfp5CcGHgUFSL/
	Zbgg53h3jkb1QIjww5ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBEL2-008uXC-1t; Fri, 30 Dec 2022 12:18:16 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBEGE-008tA2-VR
	for linux-phy@lists.infradead.org; Fri, 30 Dec 2022 12:13:20 +0000
Received: by mail-lf1-x133.google.com with SMTP id m6so21120910lfj.11
        for <linux-phy@lists.infradead.org>; Fri, 30 Dec 2022 04:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tOV4608QXvjceJ4orI18C2FMI82fRREo3ytAKFrDAno=;
        b=oKfWKWbyNwZodxgmd7818YAECzl/XyC2dFCzkj/S2x0O2WO3uO/ZQrtF3roTdI+gOC
         Y5oZV2aG9isdrkBf6/w01OUplJH6tNL97VgSLhxTd30ng5UsYQ/q6hVTadLEENw0kHEW
         +qISic/+E4+a027OBf7uO2nDbWo1WGtxjyPCVwirKtEIJCSqK3FkUBGiU5ZWtLbcvfcg
         0dmjM+z8SSh3IOSgtXAi4mN3WZyJ4RHh8YvTJj5o6D1AR3ihFtkqJtremVVtYhf9GOs2
         DuFOLoe9YSwL36RbFHGZ9DLT0kYqRa1aer3ZEa/jRFqLj2osPXUp5B2omNiGo1ZQowFO
         Dmqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tOV4608QXvjceJ4orI18C2FMI82fRREo3ytAKFrDAno=;
        b=b86OfPxMn35ufvEK3hVxohAZbvyiqxbhcL8rnwZZcevcnQNVXueCEYFSReVa/ppXJ7
         01ZtAUAE1Wr2HXj+maPzb8O9y9pyD5PKZ7A40b8LL4QfMJllWWASeAYjHXoLNUwTUjy9
         ZRibVG4WgYI7ahpg4Rnboy3CqP9syIy/6t1LUuSMtay2vjOhHml/SUjtPtF3bMluc49y
         ncnpBFDj1X0z7zyliqdw3nC7lwrkapomX3xHPGYcqPLXRIJfkM4KK4LhVTvq4YPkP2fD
         Y8iMpqNLRBEkZnhfPgWC5IhF0UQV8fPN9wm3LwhV2YJq3HkZNJQJWudHbpAKFb8nC0Ak
         u/4w==
X-Gm-Message-State: AFqh2kqUfDn2GCDk8bPi3KNAD2eiKIesMv8FFWNk/M4KkmzeVopFiu5E
	E3PqOJ0aG22Bd+Cr/Z1tIfwG4A==
X-Google-Smtp-Source: AMrXdXusvA7Bqp0kTD6ocUkCT45Y8k7XajNQ/mNEXARtiL/stEyuuSH+ZWkdiQok1QaZKKe0pfCC2Q==
X-Received: by 2002:ac2:430c:0:b0:4cb:10ad:76bd with SMTP id l12-20020ac2430c000000b004cb10ad76bdmr3410731lfh.64.1672402394062;
        Fri, 30 Dec 2022 04:13:14 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w5-20020ac254a5000000b004b4bb6286d8sm3429914lfk.84.2022.12.30.04.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 04:13:13 -0800 (PST)
Message-ID: <9dfbb21c-b430-193b-a51c-56cc9827eaa1@linaro.org>
Date: Fri, 30 Dec 2022 14:13:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: (subset) [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350
 platform
Content-Language: en-GB
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>, Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
 <167239965740.745771.6371707855803359101.b4-ty@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <167239965740.745771.6371707855803359101.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_041319_149689_27BA285C 
X-CRM114-Status: GOOD (  10.22  )
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

On 30/12/2022 13:27, Lorenzo Pieralisi wrote:
> On Sat, 19 Nov 2022 01:32:34 +0200, Dmitry Baryshkov wrote:
>> SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
>> Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.
>>
>> Note: the PCIe0 table is based on the lahaina-v2.1.dtsi file, so it
>> might work incorrectly on earlier SoC revisions.
>>
>> Dependencies:
>> - phy/next (for PHY patches only)
>>
>> [...]
> 
> Applied to pci/qcom, thanks!
> 
> [3/8] PCI: qcom: Add support for SM8350
>        https://git.kernel.org/lpieralisi/pci/c/a39fb9fabdb7


Thank you! Would you also pick the patch 1/8 (dt-bindings: PCI: qcom: 
Add sm8350 to bindings)?

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

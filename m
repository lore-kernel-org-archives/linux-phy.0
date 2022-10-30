Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86925FA3745
	for <linux-phy@archiver.kernel.org>; Sun, 30 Oct 2022 14:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJdegTq69+PYI79ep/TfZ3qy3FAAJwQgO33UjgUwWfM=; b=Z2f3kWyELsAGvZ
	EqMDQ+KwZJy5wrBRjh+dFHBqsj7qqYN2yKjFPtESKQVPZqZAvPZA6pIO/P2mv4tAQVt4OeS7kyphF
	C0UagzTifXP4xBqkDaU3yFOunpNc5q0Kq+GZsq167TtXR719ofFcmNULBh5B0s1zTuyRiAHeWgm2j
	QJ/Mb5eTfGg9WxoilISJSw83Q9FnIxeDdF+qERInascyWpGvfWm+aTUgdCFU0d7eTl5H1DxcjOIDq
	M5Deo6C4xfwLl1rLQwFnGTyi0mzDi9S9y8lTgNv+gPrITMmicrnuMjovzvOGV2Xqmjr09If2LkWSZ
	l6wk4nc9/ogUILj5FT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op8wW-00Gi6y-Sh; Sun, 30 Oct 2022 14:05:40 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op8wU-00Gi3y-GP
	for linux-phy@lists.infradead.org; Sun, 30 Oct 2022 14:05:39 +0000
Received: by mail-lf1-x130.google.com with SMTP id f37so15550151lfv.8
        for <linux-phy@lists.infradead.org>; Sun, 30 Oct 2022 07:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BHFM6mvpTc4ovqs5hhJhMynku+IEtunZuiq9YKhbLO8=;
        b=aNCdPv27ZhT3eaK9iQRkbyXiOIF7+cejYtDoXdFQtNGF6ZTU0Ql6y/EBjCpagSvEa8
         VHPAdIE6kWNyyrFGMf/a00PHc+m3SrHKiX64fy6wr3vAF6tu5F0/KtTwQUWe7U6Th4Nz
         6FLhxtbRPjFxvynUhKY9332rtrNJ1vCu5BdGpfJ5aHWEZdbSijFA/8kycbx9aDHI6UJ8
         Lo6E1BET643GndbeB4vA4L7mlHoySvnYBeaD/59oP5k3aLmVOAOpCuPOI3AY7HElyCKZ
         kdUZ7fPMTSljM5ebyVUy28CR4bIogFCZiXOugH2kbKJhT03pIFMOGts9kkaQGwHc8rlT
         qZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BHFM6mvpTc4ovqs5hhJhMynku+IEtunZuiq9YKhbLO8=;
        b=XgDPe9kkXwFbHQhtnkwBCJ30D2xz6kyKDKlg9JFphHhD8+TKhhQtj1ngYbONyOyXOs
         JCDjXRA82Dv2JH8QhVALiPpdKCdIdznS+z/MNsyy+pzILy1qBCbA7keOiyT0dLErnETK
         SKTL8tTA/nStzLcfwrj71ux10+Y1vPPvuilpgbjySvFU82xUKXiQa35L2+d+Wq68AkAo
         wp3mpQjRbEnKdmW3c/5RpQsqq9jGQ8qQ0Air7x8wIu9MZmqnSop3wbD832oySykA8vpk
         qbI0KBU7t1rsIaOh0JzZgLLYYIeajroC9McGbXgml4DjeneWvagldKVljdc2TWJBb3Va
         mHXA==
X-Gm-Message-State: ACrzQf2SOsnh9+parhldZ8XupnmQ9dttpzrPdc+IpzLShB+oum04Nbjz
	2loCp6moTyFAoNufijtEYiXdmQ==
X-Google-Smtp-Source: AMsMyM4FUc8GR+0YDkgT8hruq9bgJEOQQsm3HZUJ90dhns2FXIDm/jLELOwKhHdv41CBKeDAYF32Dg==
X-Received: by 2002:a05:6512:b21:b0:4ae:391c:e655 with SMTP id w33-20020a0565120b2100b004ae391ce655mr3217997lfu.45.1667138735120;
        Sun, 30 Oct 2022 07:05:35 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id n5-20020a05651203e500b004a63193058asm807083lfq.92.2022.10.30.07.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 07:05:34 -0700 (PDT)
Message-ID: <63a38833-7c9e-ea43-81f5-2f9b98584e62@linaro.org>
Date: Sun, 30 Oct 2022 17:05:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v1 4/7] phy: qcom-qmp-pcie: split and rename the sm8450
 gen3 PHY config tables
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221030122525.GA1022832@bhelgaas>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221030122525.GA1022832@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_070538_637103_5E109999 
X-CRM114-Status: GOOD (  12.24  )
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

On 30/10/2022 15:25, Bjorn Helgaas wrote:
> On Sun, Oct 30, 2022 at 12:13:09AM +0300, Dmitry Baryshkov wrote:
>> SM8350 PHY config tables are mostly the same as SM8450 gen3 PHY config
>> tables. Split these tables to be used by SM8350 config. Following this
>> split rename generic tables to remove x1 suffix.
> 
> Commit logs that say "Following this ..." always make me ask whether
> this could or should be split into two patches, one that is a trivial
> rename that's easier to review.

Point noted. I'll split the commit for v2.

> But I guess this is a phy patch that Lorenzo will look for somebody
> else to ack :)

I think the patches will be applied to three different threes (PCI, phy 
and arm-soc/qcom). I have sent them as a single series to let reviewers 
see the whole story.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

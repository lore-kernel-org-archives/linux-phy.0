Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E5DC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 15:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/caFYLJwXarr22DaDChSbYe1gB1l40t5S1iqb7EtCfM=; b=MJDp4RKcXoXk4a
	waVEGHCNoQSIW+9RKCBEp4l6vZ1EcM01bLBKJg73I9lsjGTDdYI1TejWhMJ+O/ToFVl5M7J/D5TRE
	L1ncD4ZwWMdkuYIsjlQH/3b4CECviJOqpSxMBhA9mcHuxgFRVtsWeFgbFIqj4CHV1+dCIoH3jWI/a
	dX2IH/fDLM9ZUAiB2eXu+4g+1Ja5+sqFo9xrnPwMzEapUiX4wkEF/dflDBqxZeM5MhCzNOtwbqurW
	lyzXu+nrjJBp01YjQxZDwkD1fIBZXNBm8WCEMmauqRkR7BhiGS1U3pNavYswlAfbnvbGF/R/Fa+LC
	VnC9PPixr86blVK0/IFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okocE-007kBp-CU; Tue, 18 Oct 2022 15:34:50 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoZg-007hMM-3C
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 15:32:13 +0000
Received: by mail-qk1-x730.google.com with SMTP id z30so8837018qkz.13
        for <linux-phy@lists.infradead.org>; Tue, 18 Oct 2022 08:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G1/uDkzke1I9MIXgJReSc/5yrjYBWTdhHs4pK5HuUcU=;
        b=eU7bFamSLI28JsgdEar8LiWEMX6cc97/5zuKhkJeJI96D4MPCqmHgaUXqVhvD47bW1
         A+wxdY1mbuEqCwwaHmNlZz5jqMtpS6XfsJg4eyRrmKtvtutpHVZfeeeU82AKjIcRHwbR
         zBspuDGnsCBnr06GRU9iP4HbzQk7me66qHm4DBgl1ZjhJjdT0+8FZB/doPw7kNA1O4fF
         R13sZi9dqR3SHx8H9/9woXnOdBZHbS4bro7KjScFRupf4n35o2J1ij8CPtYJ5sVYAjRw
         GWqwqj5FxwAQXMka1zN5L0WlOFNgCTFxjwQK1Hql7oFnh1JI1sg6F/9Sag0qsJsaJwhO
         TGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G1/uDkzke1I9MIXgJReSc/5yrjYBWTdhHs4pK5HuUcU=;
        b=OSIdllPAlf+4m/W0e8GOxIupsjK8f1Ri3HAUHLwopNH7kMk/pfK7SSmmNNgNE0Z0Xe
         V0f5Oax0FvBerCJLKUy4YopKPmpCSg1NabDeHuU3nhnyGyMfI780D6JOHd3JZflYql63
         RtP+o7pyqMxU1w+dSv31HVwGsFKfTm5JPclDPTzWk7WyzgPwVUJ+Q2Ys7d7jOq1xBBTy
         wHuX+fTXfsErKZyasXo8K5m20SVD6Wwba+/LJb34LSb3rezCJ7PLx/26+AJE7VdRerdo
         ZubLk9mGp+k9nrACocbtXJirA8kig/R8oo5KSKbl81fcSU4UYs3XJPjU339OtyehOy6P
         DFqA==
X-Gm-Message-State: ACrzQf0gbJkLsFh8eRA4vN5YrW4GPzHU39pV3dfE9K/QtqNw2UL6+D8L
	aOmCxpxA4EBOxMAkepKKISJliA==
X-Google-Smtp-Source: AMsMyM7eVweGu17+jtxN0kMIKkC2qER56wGixOvLXX1kSLjhAlxUlN+fkkmcKGJrQWP5eMoSC3HGQQ==
X-Received: by 2002:a05:620a:46a7:b0:6ee:dea7:cc1c with SMTP id bq39-20020a05620a46a700b006eedea7cc1cmr2303292qkb.506.1666107129262;
        Tue, 18 Oct 2022 08:32:09 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id c25-20020ac81119000000b003996aa171b9sm2043401qtj.97.2022.10.18.08.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 08:32:08 -0700 (PDT)
Message-ID: <b0c1bdfb-4a31-9deb-1f0a-0ed813707464@linaro.org>
Date: Tue, 18 Oct 2022 11:32:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current
 bindings as legacy
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-10-johan+linaro@kernel.org>
 <CAA8EJpqSWmy5Z4cmJnsdjMjkmACW7HSi-k5JxZ0gLCeUAWEnxQ@mail.gmail.com>
 <Y05+E90tmlq2tNFa@hovoldconsulting.com>
 <CAA8EJprwhEvUfUr-zDir4zFh_NAyr0qPbrHi6Hf8=2HC1dAhaw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAA8EJprwhEvUfUr-zDir4zFh_NAyr0qPbrHi6Hf8=2HC1dAhaw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_083212_199915_ABC5D801 
X-CRM114-Status: GOOD (  15.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18/10/2022 07:37, Dmitry Baryshkov wrote:
> 
>>> And yes, I think we should also upgrade
>>> older DTs, keeping drivers backwards compatible (for some time?).
>>
>> Possibly, but I'm not sure it's worth the dts churn. As I mentioned
>> elsewhere, supporting both the old and new binding in the driver is
>> mostly trivial, while encoding the deprecated bindings in DT schema
>> sounds like it would be painful.
> 
> This is probably the time where Krzysztof can advise us. I'm still not
> sure when it is expected to encode both old and new bindings in the
> schema and when we can update both the schema and the DT.

I do not follow what exactly the proposal is. Are you asking whether to:
1. keep existing DTS compatible with old driver?
or
2. update existing DTS so it is working only with new driver (and not
compatible with old driver thus having ABI break)?

If so, it is less question to bindings but more to the usage of DTS in
other projects (like bootloaders, firmware, BSD) and generic
recommendation is: do not break other users, if possible. It is however
up to the platform maintainer (Bjorn) to decide on this, not on me.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

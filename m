Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D81C38159
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaikI5QKsO703zQxlclmPdA6RjACZZC0UwIE+YMjvt4=; b=liI6CxImxIWWXk
	+u+0Sv9YC6Z9yQ6Ey+73/KONndmf9BHNgm+R6AaLi2/j5kz89oh0xcV3Pj9gXW2XCczAbANqd4iZe
	yywIJgHME857pA2ScbpZKrs6VIxgltmyZQF88dUrw1LzQ/ROCqPS+w5N9zUEpiEreXhjjYFfs3yel
	V9dChKYD1OUd6aWJPsXpXEHflSE7McuJeFnBgXHpk0BZ3yvUEKcFX25Rb+pxIIxTsKdLTuIKMLbEU
	ns02kyUyXsFDvT361xlYNT3qeS8vJCTrTrxeWyHEyH20sIwPl44xvZq317R3kidweFhgHFnBVKFdt
	yow1o98ASKhZ5bctyuPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwWh-00GLz3-9A; Wed, 18 Jan 2023 00:42:03 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwWe-00GLxx-56
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:42:01 +0000
Received: by mail-wr1-x42e.google.com with SMTP id r30so7959842wrr.10
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RfUH6vxkGTJcxdxitYWr1pxKffe1+NgMp91YrVEBau4=;
        b=Phk9fd0xgzPORCCqHCoGdckMrohDDK6ehcyxD5DqGXK90HWpvDg8J8h93atSQnc8RW
         +n3oKEjuPGhVi4GV8Sz8MbedhW9ap6Vs+/8/VYzKh9GBSNZebpmAGa8gm+hO53vIoUjG
         6nKXDseRf510hU+2TKJmJEPcE0SaOU67wgJ6koZ0L1d8qTOsHy31OZq87ujjauc8x+BE
         C0UrwqGbKN+wOKmKNhRpKMn5IiZiiG3pU6h0p995l3frCvC8t6LgOC20n7z5lDaKCkN9
         hhYRsBcJSVxPmbqPmCKH4//ev4lmO9/nxz7GxMSZHmeL+8xWXxbnW4Paqt123XmtAngE
         DpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RfUH6vxkGTJcxdxitYWr1pxKffe1+NgMp91YrVEBau4=;
        b=30XBl7ioP12dckbiQChVwwZSnCX1BeLnVm3kRpcMgE/N083bO8urXCWwJDNLYIDzLx
         rvHR5zO4BjbzFYGLN01i5HEqBvtKojNXng2TM8jHq+I3bLVOrYuyzoTQ7nfrHCu1ZRbt
         A/J4ZH7DRJkvb133xI+0Cz4tXMj+g7wS9/wucUwCOp33Vzp9J3klrpcZJEYi8IBJcukP
         7SSmUqjuGB+elXwrJqv/DCGPGpNDL2yClhe4AcVaZuwu3hLf+mrrAXoQnXy46nUC/A6e
         pRT+mpqZC8u/vmmSmHjlBEVllSI+AR+AxWMNXjfo1tERKUUVp0gB/xI24DJ2PUR00IRn
         KRfQ==
X-Gm-Message-State: AFqh2krCP6JQZ4r5+r6RuCfmhuExe/dY3+vzlU2oyFLwH9nLIWjLnF8t
	7ctUNdyPoZiefwIrem0CZVUrbg==
X-Google-Smtp-Source: AMrXdXtCLhSYacWmXztH3AnKfK4xq0jJH3N0aeFi245GN4xo2GPRzjI1itK7T93YdsbUeFM0cQ1Etg==
X-Received: by 2002:adf:f54d:0:b0:273:7d1b:7337 with SMTP id j13-20020adff54d000000b002737d1b7337mr13046851wrp.7.1674002516557;
        Tue, 17 Jan 2023 16:41:56 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020adff68e000000b002365730eae8sm30124380wrp.55.2023.01.17.16.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:41:56 -0800 (PST)
Date: Wed, 18 Jan 2023 02:41:54 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v2 0/7] phy: qualcomm: Add PCIe support for SM8550
Message-ID: <Y8dAUqRglBphxjQb@linaro.org>
References: <20230118003834.2330028-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230118003834.2330028-1-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_164200_287837_CACFA688 
X-CRM114-Status: GOOD (  15.43  )
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

On 23-01-18 02:38:27, Abel Vesa wrote:
> This patchset relies on the following patchset:
> https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/
> 
> The v1 of this patchset is:
> https://lore.kernel.org/all/20221116120157.2706810-1-abel.vesa@linaro.org/
> 

Please ignore this version. I missed the bindings update patch.

> Changes since v1:
>  * dropped all PCIe unrelated patches and also register offsets
>  * split all the offsets into separate patches, like Vinod suggested
>  * dropped the legacy dt parse changes since we intend to support
>    only the new dt parse mechanism from now on
> 
> Abel Vesa (7):
>   phy: qcom-qmp: pcs: Add v6 register offsets
>   phy: qcom-qmp: pcs: Add v6.20 register offsets
>   phy: qcom-qmp: pcs-pcie: Add v6 register offsets
>   phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
>   phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
>   phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
>   phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 371 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
>  .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
>  .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
>  .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
>  8 files changed, 526 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
